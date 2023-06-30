import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.*;
import org.stringtemplate.v4.*;

@SuppressWarnings("CheckReturnValue")
public class Compiler extends TablanBaseVisitor<ST> {

   STGroup stg = null;
   Map<String,Type> varTypes = new HashMap<>();
   Map<String,TableInfo> tablesInfo = new HashMap<>();  
   boolean tableOp = false;
   String tableFieldOpType = "";
   boolean generatingTable = false;
   ArrayList<ArrayList<String>> resColl= new ArrayList<>();
   String LastVarAssigned="";
   Map<String,String> aliases = new HashMap<>();

   int nLoopIterators = 0;
   String currentIterator = "";
   String getNewLoopIterator()
   {
      return "i" + nLoopIterators++;
   }

   @Override public ST visitProgram(TablanParser.ProgramContext ctx) {
      stg = new STGroupFile("template.stg");
      ST res = stg.getInstanceOf("module"); 
      res.add("stat",visit(ctx.statList()));
      return res;
   }

   @Override public ST visitStatList(TablanParser.StatListContext ctx) {
      ST res = stg.getInstanceOf("stats");
      for(TablanParser.StatContext sc : ctx.stat())
         res.add("stat",visit(sc));

      return res;
   }

   @Override public ST visitTableDef(TablanParser.TableDefContext ctx) {
      ST res = stg.getInstanceOf("table");
      generatingTable = true;
      String tableName = ctx.name.getText();
      TableInfo tInfo = new TableInfo();
      try {
         PrintWriter pw = new PrintWriter(new File(tableName + ".java"));
         res.add("name",tableName);
         if(ctx.title != null)
            res.add("header",ctx.title.getText());
         else
            res.add("header","\"undefined\"");

         ST declLambda = stg.getInstanceOf("decl");
         declLambda.add("type",tableName + "Lambda");
         declLambda.add("var","addLineLambda");
         declLambda.add("public",true);
         res.add("stat",declLambda.render());

         ST lengthFunc = stg.getInstanceOf("function");
         ST type = stg.getInstanceOf("type");
         

         type.add("type","integer");
         lengthFunc.add("type",type.render());
         lengthFunc.add("name","length");

         ST tableConstructor = stg.getInstanceOf("function");
         tableConstructor.add("name",tableName);
         res.add("stat",tableConstructor.render()); //empty constructor

         ST addLine = stg.getInstanceOf("function");
         addLine.add("name","addLine");
         addLine.add("type","void");

         ST addLineConditional = stg.getInstanceOf("conditional");
         addLineConditional.add("cond","addLineLambda == null");

         ST addLineConditionalStats = stg.getInstanceOf("stats");

         ST addLineLambdaFunctionCall = stg.getInstanceOf("functionCall");
         addLineLambdaFunctionCall.add("name","method");
         addLineLambdaFunctionCall.add("var","addLineLambda");

         ST maxFuncCall = stg.getInstanceOf("functionCall");
         maxFuncCall.add("class","Utils");
         maxFuncCall.add("name","max");

         ST copyFunc = stg.getInstanceOf("function");
         copyFunc.add("type","void");
         copyFunc.add("name","copy");
         copyFunc.add("args",tableName + " other");
         ST assign = stg.getInstanceOf("assign");
         assign.add("var","header");
         assign.add("value","other.header");
         copyFunc.add("stat",assign.render());

         ST copyLoop = stg.getInstanceOf("forLoop");
         copyLoop.add("iterator","i");
         copyLoop.add("var","other.length()");

         ST copyAddLineCall = stg.getInstanceOf("functionCall");
         copyAddLineCall.add("name","addLine");
         copyAddLineCall.add("semicolon",true);

         List<ColumnRepresentation> columns = new ArrayList<>();

         for(TablanParser.FieldContext fc : ctx.field())
         {
            String cIt = currentIterator;
            String it = getNewLoopIterator();
            currentIterator = it;

            ST x = visit(fc);

            ColumnRepresentation cr = new ColumnRepresentation();
            cr.name = fc.fName;
            cr.isFormula = fc.isFormula;
            if(invariantes.containsKey(fc._type.name()))
               cr.type = invariantes.get(fc._type.name());
            else
               cr.type = fc._type;

            varTypes.put(cr.name,cr.type);
            res.add("stat",x.render());

            assign = stg.getInstanceOf("assign");
            assign.add("var",fc.fName + ".header");
            assign.add("value","other." + fc.fName + ".header");
            copyFunc.add("stat",assign.render());

            if(!fc.isFormula)
            {
               addLineLambdaFunctionCall.add("args","l" + fc.fName);
               ST getFieldCall = stg.getInstanceOf("functionCall");
               getFieldCall.add("name","getField");
               getFieldCall.add("var","other." + fc.fName);
               getFieldCall.add("args","i");
               copyAddLineCall.add("args",getFieldCall.render());

               maxFuncCall.add("args",fc.fName + ".length()");               

               tInfo.numberOfCols++;
               tInfo.types.add(fc._type.name());
               tInfo.header.add(fc.fName);

               ST declConst = stg.getInstanceOf("tableArgVariable");
               declConst.add("type",fc._type.name());
               declConst.add("var","c" + fc.fName);
               tableConstructor.add("args",declConst.render());

               ST cond = stg.getInstanceOf("conditional");
               cond.add("cond","c" + fc.fName + " != null");
               ST stat = stg.getInstanceOf("stats");
               stat.add("stat",fc.fName + ".copy(c" + fc.fName + ");");
               cond.add("statTrue",stat.render());
               tableConstructor.add("stat",cond.render());

               ST decl = stg.getInstanceOf("initClassVar");
               decl.add("type",fc._type.name());
               decl.add("var","l" + fc.fName);
               addLine.add("args",decl.render());
               
               ST addField = stg.getInstanceOf("functionCall");
               addField.add("name","addField");
               addField.add("var",fc.fName);
               addField.add("args","l" + fc.fName);
               addField.add("semicolon",true);
               addLineConditionalStats.add("stat",addField.render());
            }
            else
            {
               cr.formula = fc.formula;    
               ST formulaCall = stg.getInstanceOf("functionCall");
               formulaCall.add("name","getField");
               formulaCall.add("var",fc.fName);
               formulaCall.add("args","length() - 1");
               addLineLambdaFunctionCall.add("args",formulaCall.render()); 
               addLineConditionalStats.add("stat",fc.fName + ".add();");
               ST assgn = stg.getInstanceOf("assign");
               assgn.add("var",fc.fName + ".length");
               assgn.add("value","length()");
               tableConstructor.add("stat",assgn.render());
            }

            columns.add(cr);
            currentIterator = cIt;
            nLoopIterators--;
         }

         tInfo.crs = columns;

         copyLoop.add("stat",copyAddLineCall.render());
         copyFunc.add("stat",copyLoop.render());
         res.add("stat",copyFunc.render());

         addLineConditional.add("statTrue",addLineConditionalStats.render());
         addLineConditional.add("statFalse",addLineConditionalStats.render());

         ST addLineElseConditional = stg.getInstanceOf("conditional");
         addLineElseConditional.add("cond","!" + addLineLambdaFunctionCall.render());
         addLineElseConditional.add("statTrue","removeLast();");
         addLineConditional.add("statFalse",addLineElseConditional.render());

         addLine.add("stat",addLineConditional.render());
         
         maxFuncCall.add("semicolon",true);
         lengthFunc.add("stat","return " + maxFuncCall.render());
         res.add("stat",lengthFunc.render());


         res.add("stat",addLine.render());
         res.add("stat",tableConstructor.render());
         tablesInfo.put(tableName,tInfo);

         ST removeLastFunc = generateRemoveLastFunction(columns);
         res.add("stat",removeLastFunc.render());

         ST removeFuncs = generateRemoveFunctions(tableName,columns);
         res.add("stat",removeFuncs.render());

         ST readFunc = generateReadFunction(tableName,columns);
         res.add("stat",readFunc.render());

         ST printFunc = generatePrintFunction(columns);
         res.add("stat",printFunc.render());

         ST removeInterface = generateRemoveInterface(tableName,columns);
         res.add("stat",removeInterface.render());

         generatingTable = false;
         varTypes.clear();
         pw.print(res.render());
         pw.close();
      }
      catch(Exception ex) {
         ex.printStackTrace();
      }
      return null;
   }

   ST generateRemoveLastFunction(List<ColumnRepresentation> columns) {
      ST func = stg.getInstanceOf("function");
      func.add("name","removeLast");
      func.add("type","void");

      for(var col : columns)
      {
         ST funcCall = stg.getInstanceOf("functionCall");
         funcCall.add("var",col.name);
         funcCall.add("name","removeLast");
         funcCall.add("semicolon",true);
         func.add("stat",funcCall.render());
      }

      return func;
   }

   ST generateRemoveInterface(String tableName,List<ColumnRepresentation> columns) {
      ST rmInterface = stg.getInstanceOf("tableRemoveInterface");
      rmInterface.add("tableName",tableName);

      for(var col : columns)
      {
         ST decl = stg.getInstanceOf("initVar");
         decl.add("type",col.type.name());
         decl.add("var",col.name);
         rmInterface.add("args",decl.render());
      }

      return rmInterface;
   }

   ST generateRemoveFunctions(String tableName,List<ColumnRepresentation> columns) {
      ST stats = stg.getInstanceOf("stats");
      
      ST funcNoArgs = stg.getInstanceOf("function");
      funcNoArgs.add("type","void");
      funcNoArgs.add("name","remove");

      ST func = stg.getInstanceOf("function");
      func.add("type","void");
      func.add("name","remove");
      func.add("args",tableName + "Lambda rm");

      ST forLoop = stg.getInstanceOf("forLoop");
      forLoop.add("iterator","i");
      forLoop.add("var","length()");
      ST cond = stg.getInstanceOf("conditional");

      ST finalAssign = stg.getInstanceOf("stats");
      ST removeArgs = stg.getInstanceOf("args");
      removeArgs.add("sep",",");
      for(var column : columns)
      {
         ST decl = stg.getInstanceOf("decl");
         ST classPrimitive = stg.getInstanceOf("classPrimitiveType");
         classPrimitive.add("type",column.type.name());
         if(column.isFormula)
         {
            decl.add("type","Formula<" + classPrimitive.render() + ">");
            decl.add("value","new Formula<>(" + column.name + ".header," + column.formula + ")");
         }
         else
         {
            decl.add("type","Column<" +  classPrimitive.render() + ">");
            decl.add("value","new Column<>(" + column.name + ".header)");
         }
         decl.add("var","n" + column.name);
         func.add("stat",decl.render());

         funcNoArgs.add("stat",column.name + ".clear();");

         if(column.isFormula)
            cond.add("statTrue","n" + column.name + ".add();");
         else
            cond.add("statTrue","n" + column.name + ".addField(" + column.name+ ".getField(i));");

         removeArgs.add("arg",column.name + ".getField(i)");
         ST assign = stg.getInstanceOf("assign");
         assign.add("var",column.name);
         assign.add("value","n" + column.name);
         finalAssign.add("stat",assign.render());
      }

      cond.add("cond","!rm.method(" + removeArgs.render() + ")");
      forLoop.add("stat",cond.render());
      func.add("stat",forLoop.render());
      func.add("stat",finalAssign.render());
   
      stats.add("stat",funcNoArgs.render());
      stats.add("stat",func.render());

      return stats;
   }

   ST generateReadFunction(String tableName,List<ColumnRepresentation> columns) {
      ST func = stg.getInstanceOf("function");
      func.add("type",tableName);
      func.add("name","read");
      func.add("args","Map<String,Column> map");

      ST args = stg.getInstanceOf("args");
      args.add("sep",",");
      for(var col : columns)
      {
         if(!col.isFormula)
            args.add("arg","map.get(\"" + col.name + "\")");
      }
      func.add("stat","return new " + tableName + "(" + args.render() + ");");
      return func;
   }

   ST generatePrintFunction(List<ColumnRepresentation> columns) {
      ST printFunc = stg.getInstanceOf("toStringFunc");
      ST decl = stg.getInstanceOf("decl");
      decl.add("var","sb");
      decl.add("type","StringBuilder");
      decl.add("value","new StringBuilder()");
      printFunc.add("stats",decl.render());

      decl = stg.getInstanceOf("decl");
      decl.add("var","max");
      decl.add("type","integer");
      decl.add("value","header.length()");

      printFunc.add("stats",decl.render());

      ST argsMax = stg.getInstanceOf("args");
      argsMax.add("sep",",");
      argsMax.add("arg","max");

      ST assignMax = stg.getInstanceOf("assign");
      assignMax.add("var","max");

      ST tableHeaderArgs = stg.getInstanceOf("args");
      tableHeaderArgs.add("sep","+\"|\"+");

      ST sbArgs = stg.getInstanceOf("args");
      sbArgs.add("sep","+");

      for(var cr : columns)
      {
         sbArgs.add("arg","Utils.centerString(" + cr.name + ".getFieldAsString(i),max) + \"|\"");
         argsMax.add("arg",cr.name + ".biggestElementLength()");
         tableHeaderArgs.add("arg","Utils.centerString(" + cr.name + ".header,max)");
      }

      assignMax.add("value","Utils.max("+argsMax.render()+")");

      printFunc.add("stats",assignMax.render());

      decl = stg.getInstanceOf("decl");
      decl.add("type","text");
      decl.add("var","seps");
      decl.add("value","Utils.generateLineSeparator(" + (columns.size()) + " * max + " + (columns.size() - 2) + ",\"-\")");

      printFunc.add("stats",decl.render());

      ST stats = stg.getInstanceOf("stats");
      stats.add("stat","sb.append(\" \" + seps + \" \" + \"\\n|\" + Utils.centerString(header," + columns.size() + "*max+" 
      + (columns.size() - 1) + ") + \"|\\n|\" + seps + \"|\\n\");");
      
      stats.add("stat","sb.append(\"|\"+" + tableHeaderArgs.render() + "+\"|\");");

      stats.add("stat","sb.append(\"\\n|\" + seps + \"|\");");

      ST forLoop = stg.getInstanceOf("forLoop");
      forLoop.add("iterator","i");
      forLoop.add("var","length()");
      forLoop.add("stat","sb.append(\"\\n|\" + " + sbArgs.render() + ");");

      stats.add("stat",forLoop.render());

      stats.add("stat","sb.append(\"\\n \" + seps);");
      stats.add("stat","return sb.toString();");

      printFunc.add("stats",stats.render());

      return printFunc;
   }

   @Override public ST visitField(TablanParser.FieldContext ctx) {
      ST res = stg.getInstanceOf("tableColumnDecl");
      visit(ctx.declaration());
      ctx.fName = ctx.declaration().varName;
      ctx._type = ctx.declaration()._type;
      res.add("type",ctx._type.name());
      res.add("var",ctx.fName);
      ctx.isFormula = false;
      if(ctx.fieldAssign() != null)
      {
         ST expr = visit(ctx.fieldAssign());
         if(ctx.fieldAssign().isHeader)
         {
            res.add("value",expr.render());
         }
         else
         {
            res = stg.getInstanceOf("tableFormulaDecl");

            ST decl = stg.getInstanceOf("initVar");
            decl.add("type","integer");
            decl.add("var",currentIterator);
            ST lambda = stg.getInstanceOf("lambdaFunction");
            lambda.add("args",decl.render());
            if(invariantes.containsKey(ctx._type.name()))
               lambda.add("stat","return new " + ctx._type.name() + "(" + expr.render() + ");");
            else
               lambda.add("stat","return " + expr.render() + ";");

            res.add("type",ctx._type.name());
            res.add("var",ctx.fName);
            ST args = stg.getInstanceOf("args");
            args.add("sep",",");
            args.add("arg","\"" + ctx.fName + "\"");
            args.add("arg",lambda.render());
            res.add("value",args.render());
            ctx.formula = lambda.render();
            ctx.isFormula = true;
         }
      }

      return res;
   }

   @Override public ST visitValueFieldAssign(TablanParser.ValueFieldAssignContext ctx) {
      //formula
      ctx.isHeader = false;
      tableOp = true;
      String previousOpType = tableFieldOpType;
      tableFieldOpType = "get";
      ST res = visit(ctx.expr());
      if(ctx._type != null && ctx._type.subtype(new TableType()))
         res.add("semicolon",true);
      tableFieldOpType = previousOpType;
      tableOp = false;
      
      return res;
   }

   @Override public ST visitHeaderFieldAssign(TablanParser.HeaderFieldAssignContext ctx) {
      ctx.isHeader = true;
      return visit(ctx.expr());
   }


   Map<String,InvariantType> invariantes = new HashMap<>();
   @Override public ST visitNewType(TablanParser.NewTypeContext ctx) {
      try {
         PrintWriter pw = new PrintWriter(new File(ctx.ID().getText() + ".java"));
         ST res = stg.getInstanceOf("invariant");
         visit(ctx.type());
         res.add("type",ctx.type()._type.name());
         res.add("name",ctx.ID().getText());
         
         ST lambda = stg.getInstanceOf("lambdaFunction");
         lambda.add("args","value");
         lambda.add("stat","return " + visit(ctx.expr(0)).render() + ";");
   
         res.add("lam",lambda.render());
         res.add("serr",visit(ctx.expr(1)).render());
   
         invariantes.put(ctx.ID().getText(),new InvariantType(ctx.ID().getText(),ctx.type()._type));
   
         pw.println(res.render());
         pw.close();
      }
      catch(Exception ex)
      {
         ex.printStackTrace();
         System.exit(1);
      }

      return null;
   }

   @Override public ST visitAssignExpr(TablanParser.AssignExprContext ctx) {
      ST res = stg.getInstanceOf("assign");
      String previousOpType = tableFieldOpType;
      tableFieldOpType = "set";
      ST target = visit(ctx.target());
      LastVarAssigned=ctx.target().varName;
      tableFieldOpType = "get";
      ST expr = visit(ctx.expr());
      
      if(tableOp && ctx.target()._type.subtype(new TableType()))
      {
         target.add("args",expr.render());
         target.add("semicolon",true);
         return target;
      }
      else if(ctx.target()._type.subtype(new InvariantType()))
      {
         if(target.getAttribute("name").equals("set"))
         {
            if(ctx.target()._type.subtype(new RealType()))
               target.add("args","new Double(" + expr.render() + ")");
            else
               target.add("args",expr.render());
         }
         target.add("semicolon",true);
         return target;
      }

      String targetSt = target.render();
      String exprSt = expr.render();
      if(exprSt.contains(".") && ctx.expr()._type.subtype(new TableType())) 
      {
         //ref
         ST newStat = stg.getInstanceOf("assign");
         newStat.add("value",exprSt);
         String newTarget = targetSt;
         newTarget += "." + exprSt.substring(exprSt.indexOf(".") + 1);
         newStat.add("var",newTarget);
         return newStat;
      }
 
      tableFieldOpType = previousOpType;
      res.add("var",ctx.target().varName);
      res.add("value",expr.render());
      return res;
   }

   @Override public ST visitAssignNew(TablanParser.AssignNewContext ctx) {
      ST res = stg.getInstanceOf("assign");
      visit(ctx.target());
      res.add("var",ctx.target().varName);
      TableInfo tInfo = tablesInfo.get(varTypes.get(ctx.target().varName).name());
      int nOfArgs = 0;

      ST args = stg.getInstanceOf("args");
      args.add("sep",",");

      ST copies = stg.getInstanceOf("stats");
      ST assign = stg.getInstanceOf("assign");
      assign.add("var",ctx.target().varName);
      assign.add("value","new " + varTypes.get(ctx.target().varName).name() + "()");
      copies.add("stat",assign.render());
      int numCopies = 0;

      for(var expr : ctx.expr())
      {
         nOfArgs++;
         ST res_expr = visit(expr);
         if(expr._type != null && expr._type.subtype(new TableType()) && !res_expr.render().contains(".")) {
            numCopies++;
            ST call = stg.getInstanceOf("functionCall");
            call.add("var",ctx.target().varName);
            call.add("name","copy");
            call.add("args",res_expr.render());
            call.add("semicolon",true);
            copies.add("stat",call.render());
         }
         args.add("arg",res_expr == null ? "null" : res_expr.render());
      }

      if(numCopies > 0)
         return copies;

      if(nOfArgs == 0)
         return null;

      if(nOfArgs < tInfo.numberOfCols)
      {
         for(; nOfArgs < tInfo.numberOfCols; nOfArgs++)
         {
            args.add("arg","null");
         }
      }

      res.add("value","new " + varTypes.get(ctx.target().varName).name() + "(" + args.render() + ")");

      return res;
   }

   @Override public ST visitAssignHeader(TablanParser.AssignHeaderContext ctx) {
      ST res = stg.getInstanceOf("assign");
      res.add("var",visit(ctx.target()).render() + ".header");
      res.add("value",visit(ctx.expr()).render());
      return res;
   }

   Map<String,ArrayList<String>> tableRefs = new HashMap<>();
   @Override public ST visitAssignWhenExpr(TablanParser.AssignWhenExprContext ctx) {
      ST res = stg.getInstanceOf("stats");
      ST target = visit(ctx.target());
      ST table = visit(ctx.expr(0));

      currentTabInfo = tablesInfo.get(varTypes.get(ctx.expr(0).varName).name());
      ST expr = visit(ctx.expr(1));
      currentTabInfo = null;
      ST assign = stg.getInstanceOf("assign");
      assign.add("var",ctx.target().varName + ".addLineLambda");

      ST lambda = stg.getInstanceOf("lambdaFunction");
      TableInfo info = tablesInfo.get(varTypes.get(ctx.expr(0).varName).name());
      for(var col : info.crs)
      {
         lambda.add("args",col.name);
      }

      ST trycatch = stg.getInstanceOf("tryCatch");
      trycatch.add("stat","return " + expr.render() + ";");
      trycatch.add("catchStat","return false;");
      lambda.add("stat",trycatch.render());
      assign.add("value",lambda.render());
      res.add("stat",assign.render());

      ST funcCall = stg.getInstanceOf("functionCall");
      funcCall.add("name","copy");
      funcCall.add("var",ctx.target().varName);
      funcCall.add("args",ctx.expr(0).varName);
      funcCall.add("semicolon",true);
      res.add("stat",funcCall.render());

      if(tableRefs.containsKey(ctx.expr(0).varName))
      {
         tableRefs.get(ctx.expr(0).varName).add(ctx.target().varName);
      }
      else
      {
         var arr = new ArrayList<String>();
         arr.add(ctx.target().varName);
         tableRefs.put(ctx.expr(0).varName,arr);
      }

      return res;
   }

   @Override public ST visitDeclaration(TablanParser.DeclarationContext ctx) {
      visit(ctx.target(0));
      ST stats = stg.getInstanceOf("stats");
      ST res = stg.getInstanceOf("decl");
      ST assignNew = null;
      ctx.varName = ctx.target(0).varName;
      res.add("var",ctx.varName);
      if(ctx.type() != null)
      {
         visit(ctx.type());
         ctx._type = ctx.type()._type;
         if(ctx._type.subtype(new TableType()) || ctx._type.subtype(new InvariantType()))
         {
            assignNew = stg.getInstanceOf("assign");
            assignNew.add("var",ctx.varName);
            assignNew.add("value","new " + ctx._type.name() + "()");
         }
         
         if(!generatingTable)
         {
            if(invariantes.containsKey(ctx._type.name()))
               varTypes.put(ctx.varName,invariantes.get(ctx._type.name()));
            else
               varTypes.put(ctx.varName,ctx._type);
         }
      }
      else if(ctx.target(1) != null)
      {
         //MUITO IMPROVAVEL QUE CAIA AQUI PORQUE TYPE JA INCLUI ID
         visit(ctx.target(1));
         ctx._type = new IDType(ctx.target(1).varName);
      }

      res.add("type",ctx._type.name());
      stats.add("stat",res.render());
      if(assignNew != null)
         stats.add("stat",assignNew.render());

      return stats;
   }

   @Override public ST visitAdd_line(TablanParser.Add_lineContext ctx) {
      ST stats = stg.getInstanceOf("stats");
      ST res = stg.getInstanceOf("functionCall");
      res.add("semicolon",true);
      res.add("name","addLine");
      visit(ctx.target());
      res.add("var",ctx.target().varName);
      int nOfArgs = 0;
      TableInfo info = tablesInfo.get(varTypes.get(ctx.target().varName).name());
      var crs = info.crs;
      for(int i = 0; i < ctx.expr().size(); i++)
      {
         nOfArgs++;
         ST res_expr = visit(ctx.expr(i));
         if(res_expr == null)
            res.add("args","null");
         else if(crs.get(i).type.subtype(new InvariantType()))
            res.add("args","new " + crs.get(i).type.name() + "(" + res_expr.render() + ")");
         else 
            res.add("args",res_expr.render());
      }

      for(int i = nOfArgs; i < info.numberOfCols; i++)
         res.add("args","null");

      stats.add("stat",res.render());

      if(tableRefs.containsKey(ctx.target().varName))
      {
         var arr = tableRefs.get(ctx.target().varName);

         for(var table : arr)
         {
            ST addLine = stg.getInstanceOf("functionCall");
            addLine.add("semicolon",true);
            addLine.add("name","addLine");
            addLine.add("var",table);
            addLine.add("args",res.getAttribute("args"));
            stats.add("stat",addLine.render());
         }
      }

      return stats;
   }

   @Override public ST visitRemove_table(TablanParser.Remove_tableContext ctx) {
      ST res = stg.getInstanceOf("stats");
      visit(ctx.target());
      String target = ctx.target().varName;
      var table = tablesInfo.get(varTypes.get(target).name());
      currentTabInfo = table;

      if(ctx.expr() != null)
      {
         ST lambda = stg.getInstanceOf("lambdaFunction");
         for(var col : table.crs)
         {
            lambda.add("args",col.name);
         }

         lambda.add("stat","return " + visit(ctx.expr()).render() + ";");
         res.add("stat",target + ".remove(" + lambda.render() +");");
         return res;
      }

      res.add("stat",target + ".remove();");
      currentTabInfo = null;
      return res;
   }

   @Override public ST visitPrint(TablanParser.PrintContext ctx) {
      ST res = stg.getInstanceOf("print");
      String prevOpType = tableFieldOpType;
      tableFieldOpType = "print";

      if(ctx.instPrint.getText().equals("println"))
         res.add("newLine",true);

      ST output = stg.getInstanceOf("args");
      output.add("sep","+");

      for(var expr : ctx.expr()) {
         output.add("arg",visit(expr).render());
      }

      res.add("string", output.render());
      tableFieldOpType = prevOpType;

      return res;
   }

   @Override public ST visitFor_loop(TablanParser.For_loopContext ctx) {

      ST res = stg.getInstanceOf("forLoop");
      String var1 = visit(ctx.target(0)).render();

      String table = visit(ctx.target(1)).render(); 
      res.add("var", table + ".length()");

      aliases.put(var1,table);

      boolean cTOp = tableOp;
      tableOp = true;
      String cIt = currentIterator;
      String it = getNewLoopIterator();
      currentIterator = it;
      res.add("iterator", it);
      res.add("stat", visit(ctx.block()).render());

      tableOp = cTOp;
      currentIterator = cIt;
      nLoopIterators--;
      aliases.remove(var1);
      return res;
   }

   @Override public ST visitWhile_loop(TablanParser.While_loopContext ctx) {
      ST res = stg.getInstanceOf("whileLoop");
      res.add("cond",visit(ctx.expr()).render());
      res.add("stat",visit(ctx.block()).render());
      return res;
   }

   @Override public ST visitExprAddSub(TablanParser.ExprAddSubContext ctx) {
      ST res = stg.getInstanceOf("exprArithm");
      res.add("expr1", visit(ctx.expr(0)).render());
      res.add("op", ctx.op.getText());
      res.add("expr2", visit(ctx.expr(1)).render());
      if(ctx.expr(0)._type == null || ctx.expr(1)._type == null)
         return res;

      if(ctx.expr(0)._type.name().equals("text") || ctx.expr(1)._type.name().equals("text"))
         ctx._type = new TextType();
      else if(ctx.expr(0)._type.name().equals("real") || ctx.expr(1)._type.name().equals("real"))
         ctx._type = new RealType();
      else
         ctx._type = new IntegerType();
      return res;
   }

   @Override public ST visitExprRead(TablanParser.ExprReadContext ctx) {
      if(ctx.in != null) {
         ST read = stg.getInstanceOf("functionCall");
         read.add("var","Utils");
         read.add("name","input");
         if(ctx.TEXT() != null)
            read.add("args",ctx.TEXT().getText());
         else
            read.add("args","\"\"");

         ctx._type = new TextType();
         return read;
      }
      else {
         ST res = stg.getInstanceOf("readCSV");
         ctx._type = new TextType();
         TableInfo aux=tablesInfo.get(varTypes.get(LastVarAssigned).name());
         ArrayList<String> auxList = new  ArrayList<>();
         resColl.add(auxList);
         resColl.add(new ArrayList<String>(aux.types));
         resColl.add(new ArrayList<String>(aux.header));
         res.add("var",LastVarAssigned);
         if( ctx.readAttribute().isEmpty()){
            Collections.reverse(resColl.get(1));
            Collections.reverse(resColl.get(2));
   
   
            String res1= "" ;
            String res2= "" ;
            String res3= "" ;
   
            for( int i =0 ;i< resColl.get(1).size();i++)
            {
               //res1+="\""+ resColl.get(0).get(i)+ "\"," ;
               res2+="\""+ resColl.get(1).get(i)+ "\"," ;
               res3+="\""+ resColl.get(2).get(i)+ "\"," ;
            }
            //res1 = res1.substring(0,res1.length()-1);
            res2 = res2.substring(0,res2.length()-1);
            res3 = res3.substring(0,res3.length()-1);
   
            res.add("file",ctx.fich.getText());
            res.add("res1",res1);
            res.add("res2",res2);
            res.add("res3",res3);
         }
         else{
            for (TablanParser.ReadAttributeContext fieldCtx : ctx.readAttribute()) { 
               visit(fieldCtx);
            }
              
   
            String res1= "" ;
            String res2= "" ;
            String res3= "" ;
   
            for( int i =0 ;i< resColl.get(1).size();i++)
            {
               if( !Character.isDigit(resColl.get(0).get(i).charAt(0)))
               {
                  res1+=resColl.get(0).get(i) + ",";
               }
               else{
                  res1+="\""+ resColl.get(0).get(i)+ "\"," ;
               }
               res2+="\""+ resColl.get(1).get(i)+ "\"," ;
               res3+="\""+ resColl.get(2).get(i)+ "\"," ;
            }
            res1 = res1.substring(0,res1.length()-1);
            res2 = res2.substring(0,res2.length()-1);
            res3 = res3.substring(0,res3.length()-1);
   
            res.add("file",ctx.fich.getText());
            res.add("res1",res1);
            res.add("res2",res2);
            res.add("res3",res3);
         }
         resColl.clear();
         return res;
      }
   }

   @Override public ST visitExprTypeCast(TablanParser.ExprTypeCastContext ctx) {
      visit(ctx.type());
      ctx._type = ctx.type()._type;
      ST res = stg.getInstanceOf("stats");
      ST expr = visit(ctx.expr());
      if(ctx.type()._type.name().equals("integer") && ctx.expr()._type.name().equals("real"))
      {
         ST type = stg.getInstanceOf("type");
         type.add("value","integer");
         res.add("stat","(" + type.render() + ")(" + expr.render() + ")");
      }   
      else
      {
         ST type = stg.getInstanceOf("classPrimitiveType");
         type.add("type",ctx.type()._type.name());
         res.add("stat",type.render() + ".valueOf(" + expr.render() + ")");
      }

      return res;
   }

   int numOfCenterCols = 0;
   @Override public ST visitExprCenter(TablanParser.ExprCenterContext ctx) {
      numOfCenterCols = 0;
      ST res = stg.getInstanceOf("stats");
      ST text = visit(ctx.expr(0));
      ST length = visit(ctx.expr(1));
      ctx._type = new TextType();
      ST centerStringCall = stg.getInstanceOf("functionCall");
      centerStringCall.add("class","Utils");
      centerStringCall.add("name","centerString");
      centerStringCall.add("args",text.render());
      ST expr = stg.getInstanceOf("exprArithm");
      expr.add("expr1",length.render());
      expr.add("op","+");
      expr.add("expr2",numOfCenterCols * 3);
      centerStringCall.add("args",expr.render());
      res.add("stat",centerStringCall.render());
      return res;
   }

   @Override public ST visitExprParent(TablanParser.ExprParentContext ctx) {
      ST res = stg.getInstanceOf("stats");
      res.add("stat","(" + visit(ctx.expr()).render() + ")");
      ctx._type = ctx.expr()._type;
      ctx.varName = ctx.expr().varName;
      return res;
   }

   @Override public ST visitExprLength(TablanParser.ExprLengthContext ctx) {
      ST res = stg.getInstanceOf("stats");
      String tableName = ctx.target().getText();
      res.add("stat", tableName +  ".biggestElementLength()");
      ctx._type = new IntegerType();
      numOfCenterCols++;
      return res;
   }

   @Override public ST visitExprBooleanRelational(TablanParser.ExprBooleanRelationalContext ctx) {
      ST res = stg.getInstanceOf("exprArithm");
      ctx._type = new BooleanType();
      res.add("expr1",visit(ctx.expr(0)).render());
      res.add("expr2",visit(ctx.expr(1)).render());
      res.add("op",ctx.op.getText());
      return res;
   }

   @Override public ST visitExprBooleanEquality(TablanParser.ExprBooleanEqualityContext ctx) {
      ST res = stg.getInstanceOf("exprArithm");
      ctx._type = new BooleanType();
      String expr0 = visit(ctx.expr(0)).render();
      String expr1 = visit(ctx.expr(1)).render();
      res.add("expr1",expr0);
      res.add("expr2",expr1);
      res.add("op",ctx.op.getText());

      if(ctx.expr(0)._type.subtype(new TextType()) || ctx.expr(1)._type.subtype(new TextType()))
      {
         res = stg.getInstanceOf("functionCall");
         res.add("name","equals");
         if(ctx.op.getText().equals("!"))
            res.add("var","!" + expr0);
         else
            res.add("args",expr1);
         
         return res;
      }
      return res;
   }

   @Override public ST visitExprBooleanAND(TablanParser.ExprBooleanANDContext ctx) {
      ST res = stg.getInstanceOf("exprArithm");
      ctx._type = new BooleanType();
      res.add("expr1",visit(ctx.expr(0)).render());
      res.add("expr2",visit(ctx.expr(1)).render());
      res.add("op","and");
      return res;
   }

   @Override public ST visitExprBooleanOR(TablanParser.ExprBooleanORContext ctx) {
      ST res = stg.getInstanceOf("exprArithm");
      ctx._type = new BooleanType();
      res.add("expr1",visit(ctx.expr(0)).render());
      res.add("expr2",visit(ctx.expr(1)).render());
      res.add("op","or");
      return res;
   }

   @Override public ST visitExprTernary(TablanParser.ExprTernaryContext ctx) {
      ST res = stg.getInstanceOf("inLineConditional");
      res.add("cond",visit(ctx.expr(0)).render());
      res.add("statTrue",visit(ctx.expr(1)).render());
      res.add("statFalse",visit(ctx.expr(2)).render());
      return res;
   }

   @Override public ST visitExprUnary(TablanParser.ExprUnaryContext ctx) {
      ST res = stg.getInstanceOf("stats");
      ST expr = visit(ctx.expr()); 
      String op = ctx.op.getText();
      if (op.equals("+")) {
         res.add("stat", expr.render());
      } else {
         res.add("stat", ctx.op.getText() + expr.render());
      }
      ctx.varName = ctx.expr().varName;
      return res;
   }

   @Override public ST visitExprTarget(TablanParser.ExprTargetContext ctx) {
      ST r = visit(ctx.target());
      ctx._type = ctx.target()._type;
      ctx.varName = ctx.target().varName;
      return r;
   }

   @Override public ST visitExprReal(TablanParser.ExprRealContext ctx) {
      ST res = stg.getInstanceOf("stats");
      res.add("stat", ctx.REAL().getText());
      ctx._type = new RealType();
      return res;
   }

   @Override public ST visitExprInteger(TablanParser.ExprIntegerContext ctx) {
      ST res = stg.getInstanceOf("stats");
      res.add("stat", ctx.INTEGER().getText());
      ctx._type = new IntegerType();
      return res;
   }
   
   @Override public ST visitExprText(TablanParser.ExprTextContext ctx) {
      ST res = stg.getInstanceOf("stats");
      res.add("stat",ctx.TEXT().getText());
      ctx._type = new TextType();
      return res;
   }

   @Override public ST visitExprMultDivMod(TablanParser.ExprMultDivModContext ctx) {
      ST res = stg.getInstanceOf("exprArithm");
      res.add("expr1",visit(ctx.e1).render());
      res.add("expr2",visit(ctx.e2).render());
      String op = ctx.op.getText();
      if(op.equals("\\\\"))
         op = "\\";
      res.add("op",op);

      if(ctx.expr(0)._type == null)
         return res;

      if(ctx.expr(0)._type.name().equals("text") || ctx.expr(1)._type.name().equals("text"))
         ctx._type = new TextType();
      else if(ctx.expr(0)._type.name().equals("real") || ctx.expr(1)._type.name().equals("real"))
         ctx._type = new RealType();
      else
         ctx._type = new IntegerType();
      
      return res;
   }

   @Override public ST visitConditionalBlock(TablanParser.ConditionalBlockContext ctx) {
      ST res = stg.getInstanceOf("conditional");
      String prevOp = tableFieldOpType;
      tableFieldOpType = "get";
      res.add("cond",visit(ctx.expr()).render());
      res.add("statTrue",visit(ctx.block(0)).render());
      tableFieldOpType = prevOp;
      if(ctx.block(1) != null) {
         res.add("statFalse",visit(ctx.block(1)).render());
      }


      return res;
   }

   @Override public ST visitBlock(TablanParser.BlockContext ctx) {
      ST res = stg.getInstanceOf("stats");

      for(var inst : ctx.inst()) {
         res.add("stat",visit(inst).render());
      }

      return res;
   }

   @Override public ST visitColumnAttribute(TablanParser.ColumnAttributeContext ctx) {
      ST res = null;
      
      String idx=  visit( ctx.expr()).render();

      resColl.get(0).add(idx);

      return res;
   }

   @Override public ST visitNamedAttribute(TablanParser.NamedAttributeContext ctx) {
      ST res = null;
      
      String idx=  visit( ctx.expr()).render();

      resColl.get(0).add(idx);
      return res;
   }

   @Override public ST visitTypeInteger(TablanParser.TypeIntegerContext ctx) {
      ctx._type = new IntegerType();
      return null;
   }

   @Override public ST visitTypeReal(TablanParser.TypeRealContext ctx) {
      ctx._type = new RealType();
      return null;
   }

   @Override public ST visitTypeText(TablanParser.TypeTextContext ctx) {
      ctx._type = new TextType();
      return null;
   }

   @Override public ST visitTypeTable(TablanParser.TypeTableContext ctx) {
      ctx._type = new TableType();
      return null;
   }

   @Override public ST visitTypeID(TablanParser.TypeIDContext ctx) {
      String id =  ctx.ID().getText();
      if(varTypes.containsKey(id))
         ctx._type = varTypes.get(id);
      else
         ctx._type = new IDType(ctx.ID().getText());
      
      return null;
   }

   boolean firstTarget = false;
   TableInfo currentTabInfo = null;
   @Override public ST visitTarget(TablanParser.TargetContext ctx) {
      ctx.varName = ctx.ID().getText();
      if(!firstTarget)
      {
         firstTarget = true;         
         if(aliases.containsKey(ctx.varName))
            ctx.varName = aliases.get(ctx.varName);
         
         ctx._type = varTypes.get(ctx.varName);
         if(ctx._type == null && currentTabInfo != null) {
            for(var cr : currentTabInfo.crs) {
               if(cr.name.equals(ctx.varName))
               {
                  ctx._type = cr.type;
                  break;
               }
            }
         }

         if(ctx.target() != null){
            visit(ctx.target());
            if(ctx.target()._type != null)
               ctx._type = ctx.target()._type;
            ctx.varName += "." + ctx.target().varName;
         }
         firstTarget = false;
      } else {
         if(currentTabInfo != null)
         {
            for(var cr : currentTabInfo.crs) {
               if(cr.name.equals(ctx.varName))
               {
                  ctx._type = cr.type;
                  break;
               }
            }
         }
         if(ctx.target() != null){
            visit(ctx.target());
            ctx.varName += "." + ctx.target().varName;
         }
      }

      ST res = null;
      if(tableOp && (generatingTable || ctx.varName.contains("."))){
         res = stg.getInstanceOf("functionCall");
         if(tableFieldOpType.equals("get"))
            res.add("name","getField");
         else if(tableFieldOpType.equals("set"))
            res.add("name","setField");
         else if(tableFieldOpType.equals("print"))
            res.add("name","getFieldAsString");

         res.add("var",ctx.varName);
         res.add("args",currentIterator);
      }
      else
      {
         res = stg.getInstanceOf("stats");
         res.add("stat",ctx.varName);
      }
      
      if(ctx._type != null && (ctx._type.subtype(new InvariantType())))
      {
         if(tableOp)
         {
            ST call = stg.getInstanceOf("functionCall");
            if(tableFieldOpType.equals("get") || tableFieldOpType.equals("print"))
               call.add("name","get");
            else if(tableFieldOpType.equals("set"))
               call.add("name","set");

            call.add("var",res.render());
            return call;
         }
         else
         {
            res = stg.getInstanceOf("functionCall");
            if(tableFieldOpType.equals("get") || tableFieldOpType.equals("print"))
               res.add("name","get");
            else if(tableFieldOpType.equals("set"))
               res.add("name","set");
            else
               System.err.println("Op type not specified: " + tableFieldOpType);
            res.add("var",ctx.varName);
         }
      }


      return res;
   }
}
