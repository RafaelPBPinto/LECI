// Generated from FractionCalculator.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link FractionCalculatorParser}.
 */
public interface FractionCalculatorListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link FractionCalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(FractionCalculatorParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link FractionCalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(FractionCalculatorParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link FractionCalculatorParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(FractionCalculatorParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link FractionCalculatorParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(FractionCalculatorParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link FractionCalculatorParser#print}.
	 * @param ctx the parse tree
	 */
	void enterPrint(FractionCalculatorParser.PrintContext ctx);
	/**
	 * Exit a parse tree produced by {@link FractionCalculatorParser#print}.
	 * @param ctx the parse tree
	 */
	void exitPrint(FractionCalculatorParser.PrintContext ctx);
	/**
	 * Enter a parse tree produced by {@link FractionCalculatorParser#assign}.
	 * @param ctx the parse tree
	 */
	void enterAssign(FractionCalculatorParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by {@link FractionCalculatorParser#assign}.
	 * @param ctx the parse tree
	 */
	void exitAssign(FractionCalculatorParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by {@link FractionCalculatorParser#fraction}.
	 * @param ctx the parse tree
	 */
	void enterFraction(FractionCalculatorParser.FractionContext ctx);
	/**
	 * Exit a parse tree produced by {@link FractionCalculatorParser#fraction}.
	 * @param ctx the parse tree
	 */
	void exitFraction(FractionCalculatorParser.FractionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprVar}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprVar(FractionCalculatorParser.ExprVarContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprVar}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprVar(FractionCalculatorParser.ExprVarContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprAddSub(FractionCalculatorParser.ExprAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprAddSub(FractionCalculatorParser.ExprAddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprPot}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprPot(FractionCalculatorParser.ExprPotContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprPot}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprPot(FractionCalculatorParser.ExprPotContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprRead}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprRead(FractionCalculatorParser.ExprReadContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprRead}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprRead(FractionCalculatorParser.ExprReadContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprParent(FractionCalculatorParser.ExprParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprParent(FractionCalculatorParser.ExprParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprUnary}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprUnary(FractionCalculatorParser.ExprUnaryContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprUnary}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprUnary(FractionCalculatorParser.ExprUnaryContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprInteger}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprInteger(FractionCalculatorParser.ExprIntegerContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprInteger}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprInteger(FractionCalculatorParser.ExprIntegerContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprReduce}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprReduce(FractionCalculatorParser.ExprReduceContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprReduce}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprReduce(FractionCalculatorParser.ExprReduceContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprFraction}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprFraction(FractionCalculatorParser.ExprFractionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprFraction}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprFraction(FractionCalculatorParser.ExprFractionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprMultDivMod}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprMultDivMod(FractionCalculatorParser.ExprMultDivModContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprMultDivMod}
	 * labeled alternative in {@link FractionCalculatorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprMultDivMod(FractionCalculatorParser.ExprMultDivModContext ctx);
}