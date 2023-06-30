import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import org.antlr.v4.runtime.ParserRuleContext;

@SuppressWarnings("CheckReturnValue")
public class SemanticCheck extends TablanBaseVisitor<Boolean> {
   protected Map<String, Symbol<Object>> symbolTable = new HashMap<>();
   protected Map<String, List<Symbol<Object>>> tableFields = new HashMap<String, List<Symbol<Object>>>();
   protected Map<String, Type> invariantTable = new HashMap<>();
   protected static final Type realType = new RealType();
   protected static final Type integerType = new IntegerType();
   protected static final Type textType = new TextType();
   protected static final Type tableType = new TableType();
   protected static final Type boolType = new BooleanType();
   protected static final Type formulaType = new FormulaType();

   protected static int errorCounter = 0;

   // error colors
   public static final String RESET = "\033[0m";
   public static final String RED = "\033[0;31m";

   @Override
   public Boolean visitTableDef(TablanParser.TableDefContext ctx) {
      Boolean res = null;
      String table = ctx.name.getText();
      if (symbolTable.containsKey(table)) {
         printError(getLine(ctx), "Table - table " + table + " already declared!");
         res = false;
      } else {
         TableSymbol<Object> ts = new TableSymbol<Object>(table);
         List<Symbol<Object>> fields = new ArrayList<>();
         for (TablanParser.FieldContext fieldContext : ctx.field()) {
            res = visitField(fieldContext);
            if (res) {
               String fieldName = fieldContext.declaration().varName;
               Type fieldType = fieldContext.declaration()._type;
               if (fieldContext.fieldAssign() == null || fieldContext.fieldAssign().isHeader) {
                  ts.addField(fieldName, fieldType);
                  fields.add(new VariableSymbol<Object>(fieldName, fieldType));
                  symbolTable.remove(fieldName);
               } else {
                  fields.add(new VariableSymbol<Object>(fieldName, new FormulaType(fieldType)));
                  symbolTable.remove(fieldName);
               }
            }
         }
         tableFields.put(table, fields);
         symbolTable.put(table, ts);
         res = true;
      }
      if (ctx.title != null) {
         res = visit(ctx.title);
         if (res) {
            if (!ctx.title._type.subtype(textType)) {
               printError(getLine(ctx), "Table - title must be text!");
               return false;
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitNewType(TablanParser.NewTypeContext ctx) {
      Boolean res = visit(ctx.type()) && visit(ctx.expr(0)) && visit(ctx.expr(1));
      if (res) {
         if (!ctx.expr(0)._type.subtype(boolType)) {
            printError(getLine(ctx), "NewType - first argument must be of type boolean!");
            res = false;
         }else if (!ctx.expr(1)._type.subtype(textType)) {
            printError(getLine(ctx), "NewType - second argument must be text!");
            res = false;
         } else {
            Type t = ctx.type()._type;
            invariantTable.put(ctx.ID().getText(), t);
         }
      }
      return res;
   }

   @Override
   public Boolean visitField(TablanParser.FieldContext ctx) {
      boolean res = visit(ctx.declaration());
      if (res) {
         if (ctx.fieldAssign() != null) {
            res = visit(ctx.fieldAssign());
            if (res) {
               if (!ctx.fieldAssign().isHeader) {
                  if (!ctx.declaration()._type.subtype(ctx.fieldAssign()._type)) {
                     printError(getLine(ctx), "Field - type mismatch!");
                     res = false;
                  }
               }
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitValueFieldAssign(TablanParser.ValueFieldAssignContext ctx) {
      boolean res = visit(ctx.expr());
      if (res) {
         ctx._type = ctx.expr()._type;
         ctx.isHeader = false;
      }
      return res;
   }

   @Override
   public Boolean visitHeaderFieldAssign(TablanParser.HeaderFieldAssignContext ctx) {
      boolean res = visit(ctx.expr());
      if (res) {
         if (!ctx.expr()._type.subtype(textType)) {
            printError(getLine(ctx), "HeaderFieldAssign - header must be text!");
            res = false;
         }
         ctx._type = ctx.expr()._type;
         ctx.isHeader = true;
      }
      return res;
   }

   @Override
   public Boolean visitAssignExpr(TablanParser.AssignExprContext ctx) {
      boolean res = visit(ctx.expr()) && visit(ctx.target());
      if (res) {
         Type targetType;
         if (ctx.target()._childType != null) {
            targetType = ctx.target()._childType;
         } else {
            targetType = ctx.target()._type;
         }
         if (!symbolTable.containsKey(ctx.target().varName)) {
            printError(getLine(ctx), "AssignExpr - variable " + ctx.target().varName + " not declared!");
            res = false;
         } else if (targetType.subtype(formulaType)) {
            printError(getLine(ctx), "AssignExpr - cannot assign to formula!");
            res = false;

         } else if (ctx.expr()._type.subtype(formulaType)) {
            printError(getLine(ctx), "AssignExpr - cannot assign formula!");
            res = false;
         } else {
            // Se for view verifica se target é uma tabela e se são tabelas do mesmo tipo
            // Se nao for view verifica se as variaveis sao do mesmo tipo de dados
            if (ctx.expr().isView) {
               if (!targetType.subtype(tableType)) {
                  printError(getLine(ctx), "AssignExpr - target " + ctx.target().varName + " not a table!");
                  res = false;
               } else {
                  String expr = ctx.expr().varName;
                  if (!symbolTable.containsKey(expr)) {
                     printError(getLine(ctx), "AssignExpr - variable " + expr + " not declared!");
                     res = false;
                  } else {
                     Type exprType = symbolTable.get(expr).type();
                     if (!exprType.subtype(targetType)) {
                        printError(getLine(ctx), "AssignExpr - variable " + expr + " type mismatch!");
                        res = false;
                     }
                  }
               }
            } else {
               if (!ctx.expr()._type.subtype(targetType)) {
                  printError(getLine(ctx), "AssignExpr - variable " + ctx.target().varName + " type mismatch!");
                  res = false;
               }
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitAssignNew(TablanParser.AssignNewContext ctx) {
      boolean res = visit(ctx.target());
      if (res) {
         String var = ctx.target().varName;
         if (!symbolTable.containsKey(var)) {
            printError(getLine(ctx), "AssignNew - variable " + var + " not declared!");
            res = false;
         } else if (ctx.target()._type.subtype(formulaType)) {
            printError(getLine(ctx), "AssignNew - cannot assign to formula!");
            res = false;
         } else {
            Symbol<Object> s = symbolTable.get(var);
            if (!(s.type().subtype(tableType))) {
               printError(getLine(ctx), "AssignNew - variable " + var + " not a table!");
               res = false;
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitAssignHeader(TablanParser.AssignHeaderContext ctx) {
      boolean res = visit(ctx.expr());
      visit(ctx.target());
      String var = ctx.target().varName;
      if (res) {
         if (!symbolTable.containsKey(var)) {
            printError(getLine(ctx), "AssignHeader - variable " + var + " not declared!");
            res = false;
         } else {
            Symbol<Object> s = symbolTable.get(var);
            if (!s.type().subtype(tableType)) {
               printError(getLine(ctx), "Assign Header - variable " + var + " not a table!");
               res = false;
            } else if (!ctx.expr()._type.subtype(textType)) {
               printError(getLine(ctx), "Assign Header - Header must be text!");
               res = false;
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitAssignWhenExpr(TablanParser.AssignWhenExprContext ctx) {
      boolean res = visit(ctx.target()) && visit(ctx.expr(0)) && visit(ctx.expr(1));
      if (res) {
         if (!symbolTable.containsKey(ctx.target().varName)) {
            printError(getLine(ctx), "AssignWhenExpr - variable " + ctx.target().varName + " not declared!");
            res = false;
         } else if (ctx.target()._type.subtype(formulaType)) {
            printError(getLine(ctx), "AssignExpr - cannot assign to formula!");
            res = false;
         } else if (ctx.expr(0)._type.subtype(formulaType)) {
            printError(getLine(ctx), "AssignExpr - cannot assign formula!");
            res = false;
         } else if (!ctx.expr(0)._type.subtype(ctx.target()._type)) {
            printError(getLine(ctx), "AssignWhenExpr - type mismatch!");
            res = false;
         } else if (!ctx.expr(1)._type.subtype(boolType)) {
            printError(getLine(ctx), "AssignWhenExpr - condition must be boolean!");
            res = false;
         }
      }
      return res;
   }

   @Override
   public Boolean visitDeclaration(TablanParser.DeclarationContext ctx) {
      Boolean res = null;

      if (ctx.type() != null) {
         res = visit(ctx.type()) && visit(ctx.target(0));
         if (res) {
            String var = ctx.target(0).varName;
            res = declareVar(var, ctx.type()._type, getLine(ctx));
            if (res) {
               ctx._type = ctx.type()._type;
               ctx.varName = var;
            }
         }
      } else {
         res = visit(ctx.target(0)) && visit(ctx.target(1));
         if (res) {
            String var = ctx.target(1).varName;
            String var2 = ctx.target(0).varName;
            if (symbolTable.containsKey(var)) {
               Symbol<Object> s = symbolTable.get(var);
               if (!(s.type().subtype(tableType))) {
                  printError(getLine(ctx), "Declaration - variable " + var + " not a table!");
                  res = false;
               } else {
                  Type t = new TableType(s.name());
                  res = declareVar(var2, t, getLine(ctx));
                  if (res) {
                     ctx._type = t;
                     ctx.varName = var;
                  }
               }
            } else if (invariantTable.containsKey(var)) {
               Type t = invariantTable.get(var);
               res = declareVar(var2, t, getLine(ctx));
               if (res) {
                  ctx._type = t;
                  ctx.varName = var;
               }
            } else {
               printError(getLine(ctx), "Declaration - table " + var + " not declared!");
               res = false;
            }
         }
      }
      return res;
   }

   protected boolean declareVar(String var, Type type, int line) {
      if (symbolTable.containsKey(var)) {
         printError(line, "Declaration - variable " + var + " already declared!");
         return false;
      } else {
         if (type.subtype(tableType)) {
            symbolTable.put(var, symbolTable.get(((TableType) type).alias()));
            return true;
         } else {
            symbolTable.put(var, new VariableSymbol<Object>(var, type));
            return true;
         }
      }
   }

   @Override
   public Boolean visitAdd_line(TablanParser.Add_lineContext ctx) {
      Boolean res = visit(ctx.target());
      if (res) {
         String var = ctx.target().varName;
         if (!symbolTable.containsKey(var)) {
            printError(getLine(ctx), "Add_line - variable " + var + " not declared!");
            res = false;
         } else {
            Symbol<Object> s = symbolTable.get(var);
            if (!(s.type().subtype(tableType))) {
               printError(getLine(ctx), "Add_line - variable " + var + " not a table!");
               res = false;
            } else {
               TableSymbol ts = (TableSymbol) s;
               if (ctx.expr().size() != ts.size() && ctx.expr().size() != 0) {
                  printError(getLine(ctx), "Add_line - wrong number of fields!");
                  res = false;
               } else {
                  for (int i = 0; i < ctx.expr().size(); i++) {
                     res = visit(ctx.expr(i));
                     if (res) {
                        if (!ctx.expr(i)._type.subtype(ts.getFieldType(i))) {
                           printError(getLine(ctx), "Add_line - field " + i + " type mismatch!");
                           res = false;
                        }
                     }
                  }
               }
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitRemove_table(TablanParser.Remove_tableContext ctx) {
      boolean res = visit(ctx.target());
      if (res) {
         String var = ctx.target().varName;
         if (!symbolTable.containsKey(var)) {
            printError(getLine(ctx), "Remove_table - variable " + var + " not declared!");
            res = false;
         } else {
            Symbol<Object> s = symbolTable.get(var);
            if (!(s instanceof TableSymbol)) {
               printError(getLine(ctx), "Remove_table - variable " + var + " not a table!");
               res = false;
            }
         }
         if (ctx.expr() != null) {
            res = visit(ctx.expr());
            if(res) {
               if(!ctx.expr()._type.subtype(boolType)){
                  printError(getLine(ctx), "Remove_table - condition must be boolean!");
                  res = false;
               }
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitPrint(TablanParser.PrintContext ctx) {
      Boolean res = null;
      for (int i = 0; i < ctx.expr().size(); i++) {
         res = visit(ctx.expr(i));
      }
      return res;
   }

   @Override
   public Boolean visitFor_loop(TablanParser.For_loopContext ctx) {
      Boolean res = visit(ctx.target(0)) && visit(ctx.target(1));
      if (res) {
         String var = ctx.target(0).varName;
         String table = ctx.target(1).varName; // table
         if (!symbolTable.containsKey(table)) {
            printError(getLine(ctx), "For_loop - variable " + table + " not declared!");
            res = false;
         } else {
            Symbol<Object> s = symbolTable.get(table);
            if (!(s.type().subtype(tableType))) {
               printError(getLine(ctx), "For_loop - variable " + table + " not a table!");
               res = false;
            } else {
               // create a temporary table
               symbolTable.put(var, s);
               res = visit(ctx.block());
               // remove the temporary table
               symbolTable.remove(var);
            }
         }
      }
      return res;
   }

   @Override
   public Boolean visitWhile_loop(TablanParser.While_loopContext ctx) {
      Boolean res = visit(ctx.expr());
      if (res) {
         if (!ctx.expr()._type.subtype(boolType)) {
            printError(getLine(ctx), "While_loop - condition must be boolean!");
            res = false;
         } else {
            res = visit(ctx.block());
         }
      }
      return res;
   }

   @Override
   public Boolean visitExprAddSub(TablanParser.ExprAddSubContext ctx) {
      boolean res = visit(ctx.expr(0)) && visit(ctx.expr(1));
      if (res) {
         res = checkCompatible(ctx.expr(0)._type, ctx.expr(1)._type, getLine(ctx));  
         if (res) {
            if(ctx.expr(0)._type.name().equals("text") || ctx.expr(1)._type.name().equals("text"))
               ctx._type = textType;   
            else if(ctx.expr(0)._type.name().equals("real") || ctx.expr(1)._type.name().equals("real"))
               ctx._type = realType;
            else
               ctx._type = integerType;
         }
      }
      ctx.isView = false;
      return res;
   }

   public boolean checkCompatible(Type t1, Type t2, int line) {
      if (t1.subtype(t2) || t2.subtype(t1)) {
         return true;
      } else {
         printError(line, "Expr - type mismatch!");
         return false;
      }
   }

   @Override public Boolean visitExprRead(TablanParser.ExprReadContext ctx) {
      boolean res = true;
      if (ctx.readAttribute().size() > 0) {
         for (int i = 0; i < ctx.readAttribute().size(); i++) {
            res = visit(ctx.readAttribute(i));
         }
      }
      if (ctx.fich != null) {
         ctx._type = tableType;
      } else {
         ctx._type = textType;
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprTypeCast(TablanParser.ExprTypeCastContext ctx) {
      Boolean res = visit(ctx.type());
      if (res) {
         if (!ctx.type()._type.subtype(integerType) && !ctx.type()._type.subtype(realType)
               && !ctx.type()._type.subtype(textType)) {
            printError(getLine(ctx), "ExprTypeCast - type " + ctx.type()._type + " not supported!");
            res = false;
         } else {
            ctx._type = ctx.type()._type;
         }
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprTernary(TablanParser.ExprTernaryContext ctx) {
      boolean res = visit(ctx.expr(0)) && visit(ctx.expr(1)) && visit(ctx.expr(2));
      if (res) {
         if (!ctx.expr(0)._type.subtype(boolType)) {
            printError(getLine(ctx), "ExprTernary - condition must be boolean!");
            res = false;
         } else {
            res = checkCompatible(ctx.expr(1)._type, ctx.expr(2)._type, getLine(ctx));
            if (res) {
               if(ctx.expr(0)._type.name().equals("text") || ctx.expr(1)._type.name().equals("text"))
               ctx._type = textType;   
               else if(ctx.expr(0)._type.name().equals("real") || ctx.expr(1)._type.name().equals("real"))
                  ctx._type = realType;
               else
                  ctx._type = integerType;
            }
         }
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprParent(TablanParser.ExprParentContext ctx) {
      boolean res = visit(ctx.expr());
      if (res)
         ctx._type = ctx.expr()._type;
      ctx.isView = false;
      return res;
   }

   @Override public Boolean visitConditionalBlock(TablanParser.ConditionalBlockContext ctx) {
      Boolean res = visit(ctx.expr());
      if (res) {
         Type exprType = ctx.expr()._type;
         // A expressão condicional deve ser do tipo booleano
         if (!exprType.subtype(boolType)) {
            printError(getLine(ctx), "ConditionalBlock - expression must be of type 'boolean'!");
            res = false;
         } else {
            for (int i = 0; i < ctx.block().size(); i++) {
               res = visit(ctx.block(i));
            }
         }
      }
      
      return res;
   }

   @Override public Boolean visitBlock(TablanParser.BlockContext ctx) {
      Boolean res = true;
      for (var inst : ctx.inst()) {
         res = visit(inst);
      }
      return res;
   }

   @Override public Boolean visitExprLength(TablanParser.ExprLengthContext ctx) {
      boolean res = visit(ctx.target());
      if (res) {
         String var = ctx.target().varName;
         if (!symbolTable.containsKey(var)) {
            printError(getLine(ctx), "ExprLength - variable " + var + " not declared!");
            res = false;
         } else {
            Symbol<Object> s = symbolTable.get(var);
            // tanto pode ser coluna como tabela
            if (!(s.type().subtype(tableType))){ //&& !(s.type().subtype(columnType))) {
               printError(getLine(ctx), "ExprLength - variable " + var + " not a table!");
               res = false;
            } else {
               ctx._type = integerType; // Resultado do length vai ser inteiro
            }
         }
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprBooleanRelational(TablanParser.ExprBooleanRelationalContext ctx) {
      boolean res = visit(ctx.expr(0)) && visit(ctx.expr(1));
      if (res) {
         if (ctx.expr(0)._type.subtype(ctx.expr(1)._type) || ctx.expr(1)._type.subtype(ctx.expr(0)._type)) {                                                               
            ctx._type = boolType; // The result of a comparison operation is boolean
         } else {
            printError(getLine(ctx), "ExprBoolean - type mismatch in comparison operation!");
            res = false;
         }
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprBooleanEquality(TablanParser.ExprBooleanEqualityContext ctx) {
      boolean res = visit(ctx.expr(0)) && visit(ctx.expr(1));
      if (res) {
         if (ctx.expr(0)._type.subtype(ctx.expr(1)._type) || ctx.expr(1)._type.subtype(ctx.expr(0)._type)) {                                                               
            ctx._type = boolType; // The result of a comparison operation is boolean
         } else {
            printError(getLine(ctx), "ExprBoolean - type mismatch in comparison operation!");
            res = false;
         }
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprBooleanOR(TablanParser.ExprBooleanORContext ctx) {
      Boolean res = visit(ctx.expr(0)) && visit(ctx.expr(1));

      if (res) {
         if (ctx.expr(0)._type.subtype(boolType) && !ctx.expr(1)._type.subtype(boolType)) {
            printError(getLine(ctx), "ExprBooleanOR - expressions must be of type 'boolean'!");
            res = false;
         } else {
            ctx._type = boolType;
         }
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprBooleanAND(TablanParser.ExprBooleanANDContext ctx) {
      Boolean res = visit(ctx.expr(0)) && visit(ctx.expr(1));

      if (res) {
         if (!ctx.expr(0)._type.subtype(boolType) && !ctx.expr(1)._type.subtype(boolType)) {
            printError(getLine(ctx), "ExprBooleanAND - expressions must be of type 'boolean'!");
            res = false;
         } else {
            ctx._type = boolType;
         }
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprBoolean(TablanParser.ExprBooleanContext ctx) {
      ctx._type = boolType;
      ctx.isView = false;
      return true;
   }

   @Override
   public Boolean visitExprUnary(TablanParser.ExprUnaryContext ctx) {
      boolean res = visit(ctx.expr());
      if (res){
         ctx._type = ctx.expr()._type;}
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprReal(TablanParser.ExprRealContext ctx) {
      ctx._type = realType;
      ctx.isView = false;
      return true;
   }

   @Override
   public Boolean visitExprText(TablanParser.ExprTextContext ctx) {
      ctx._type = textType;
      ctx.isView = false;
      return true;
   }

   @Override
   public Boolean visitExprInteger(TablanParser.ExprIntegerContext ctx) {
      ctx._type = integerType;
      ctx.isView = false;
      return true;
   }

   @Override
   public Boolean visitExprMultDivMod(TablanParser.ExprMultDivModContext ctx) {
      boolean res = visit(ctx.e1) && visit(ctx.e2);
      if (res) {
         if (ctx.e1._type.subtype(textType) || ctx.e2._type.subtype(textType)) {
            printError(getLine(ctx), "ExprMultDiv - text type not allowed in this operation");
            res = false;
         } else if(ctx.expr(0)._type.subtype(realType) || ctx.expr(1)._type.subtype(realType))
            ctx._type = realType;
         else
            ctx._type = integerType;
      }
      ctx.isView = false;
      return res;
   }

   @Override
   public Boolean visitExprTarget(TablanParser.ExprTargetContext ctx) {
      boolean res = visit(ctx.target());
      if (res) {
         String var = ctx.target().varName;
         if (symbolTable.containsKey(var)) {
            Symbol<Object> s = symbolTable.get(var);
            
            if (ctx.target()._childType != null){     // só é uma view se tiver um childType e se só fizer este visit no ExprContext
               ctx._type = ctx.target()._childType;
               ctx.isView = true;
            } else {
               ctx._type = s.type();
               ctx.isView = false;
            }
            ctx.varName = var;
         } else {
            ctx._type = integerType;
         }
      }
      return res;
   }

   
   @Override 
   public Boolean visitColumnAttribute(TablanParser.ColumnAttributeContext ctx) {
      Boolean res = visit(ctx.expr());
      if(res){
         if (!ctx.expr()._type.subtype(integerType)){
            printError(getLine(ctx), "ColumnAttribute - columns must be integer!");
            res = false;
         }
      }
      return res;
   }

   @Override 
   public Boolean visitNamedAttribute(TablanParser.NamedAttributeContext ctx) {
      Boolean res = visit(ctx.name);
      if(res) {
         if (!ctx.name._type.subtype(textType)){
            printError(getLine(ctx), "NamedAttribute - expressions must be of type text");
            res = false;
         }
      }
      return res;
   }
   

   @Override
   public Boolean visitTypeInteger(TablanParser.TypeIntegerContext ctx) {
      ctx._type = integerType;
      return true;
   }

   @Override
   public Boolean visitTypeReal(TablanParser.TypeRealContext ctx) {
      ctx._type = realType;
      return true;
   }

   @Override
   public Boolean visitTypeText(TablanParser.TypeTextContext ctx) {
      ctx._type = textType;
      return true;
   }

   @Override
   public Boolean visitTypeTable(TablanParser.TypeTableContext ctx) {
      ctx._type = tableType;
      return true;
   }

   @Override
   public Boolean visitTypeID(TablanParser.TypeIDContext ctx) {
      if (symbolTable.containsKey(ctx.ID().getText())) {
         ctx._type = symbolTable.get(ctx.ID().getText()).type();
         return true;
      } else if(invariantTable.containsKey(ctx.ID().getText())) {
         ctx._type = invariantTable.get(ctx.ID().getText());
         return true;
      } else{
         printError(getLine(ctx), "TypeID - variable " + ctx.ID().getText() + " not declared!");
         return false;
      }
   }

   @Override
   public Boolean visitTypeBoolean(TablanParser.TypeBooleanContext ctx) {
      ctx._type = boolType;
      return true;
   }

   @Override
   public Boolean visitTarget(TablanParser.TargetContext ctx) {
      ctx.varName = ctx.ID().getText();
      if (ctx.target() != null) {
         Boolean res = visit(ctx.target());
         if (res) {
            // verificar se a tabela existe
            if (symbolTable.containsKey(ctx.ID().getText())) {
               if (symbolTable.get(ctx.ID().getText()).type().subtype(tableType)) {
                  TableType aux = (TableType)symbolTable.get(ctx.ID().getText()).type();
                  String table = aux.alias();
                  Type t = getFieldType(table, ctx.target().varName);
                  if (t != null) {
                     ctx._childType = t;
                  } else {
                     printError(getLine(ctx), "Target - field " + ctx.target().varName + " not declared in table " + table);
                     return false;
                  }
               } else {
                  printError(getLine(ctx), "Target - variable " + ctx.ID().getText() + " is not a table");
                  return false;
               }
            } else {
               printError(getLine(ctx), "Target - table " + ctx.ID().getText() + " not declared");
               return false;
            }
         }
      }
      if (symbolTable.containsKey(ctx.varName)) {
         ctx._type = symbolTable.get(ctx.varName).type();
      }
      return true;
   }

   private Type getFieldType(String table, String field) {
      List<Symbol<Object>> fields = tableFields.get(table);
      if (fields != null) {
         for (Symbol<Object> s : fields) {
            if (s.name().equals(field)) {
               return s.type();
            }
         }
      }
      return null;
   }

   @Override
   public Boolean visitExprCenter(TablanParser.ExprCenterContext ctx) {
      Boolean resExpr1 = visit(ctx.expr(0));
      Boolean resExpr2 = visit(ctx.expr(1));
      if (resExpr1 != null && resExpr2 != null && resExpr1 && resExpr2) {
         // Verificar se os tipos das expressões são adequados
         Type textType = ctx.expr(0)._type;
         Type lengthType = ctx.expr(1)._type;

         if (!(textType.subtype(textType))) {
            printError(getLine(ctx), "ExprCenter - text expression must be of type Text");
            resExpr1 = false;
         }
         if (!(lengthType.subtype(integerType))) {
            printError(getLine(ctx), "ExprCenter - length expression must be of type Integer");
            resExpr2 = false;
         }
      } else {
         // Se uma das visitas falhou ou o resultado não é true, defina res como false
         resExpr1 = false;
         resExpr2 = false;
      }

      // Verificar se ambos os resultados são true antes de atribuir a res
      Boolean res = resExpr1 && resExpr2;

      // Definir o tipo do contexto atual como TextType ou null em caso de erro
      ctx._type = res ? textType : null;
      ctx.isView = false;
      return res;
   }

   public int getLine(ParserRuleContext ctx) {
      return ctx.getStart().getLine();
   }

   public void printError(int line, String msg) {
      System.err.println(RED + "line: " + line + " - " + msg + RESET);
      errorCounter++;
   }

   public int getNumberOfSemanticErrors() {
      return errorCounter;
   }
}
