// Generated from TextToInt.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link TextToIntParser}.
 */
public interface TextToIntListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link TextToIntParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(TextToIntParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link TextToIntParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(TextToIntParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprText}
	 * labeled alternative in {@link TextToIntParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterExprText(TextToIntParser.ExprTextContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprText}
	 * labeled alternative in {@link TextToIntParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitExprText(TextToIntParser.ExprTextContext ctx);
}