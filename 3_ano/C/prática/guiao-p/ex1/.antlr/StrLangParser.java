// Generated from /home/rafael/LECI/3_ano/C/guiao-p/ex1/StrLang.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class StrLangParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		ID=10, STRING=11, WS=12, COMMENT=13;
	public static final int
		RULE_program = 0, RULE_statement = 1, RULE_assignment = 2, RULE_print = 3, 
		RULE_expr = 4, RULE_input = 5, RULE_trim = 6;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "statement", "assignment", "print", "expr", "input", "trim"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "':'", "'print'", "'+'", "'-'", "'('", "')'", "'/'", "'input'", 
			"'trim'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, "ID", "STRING", 
			"WS", "COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "StrLang.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public StrLangParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(StrLangParser.EOF, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(17);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__4) | (1L << T__7) | (1L << T__8) | (1L << ID) | (1L << STRING))) != 0)) {
				{
				{
				setState(14);
				statement();
				}
				}
				setState(19);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(20);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public AssignmentContext assignment() {
			return getRuleContext(AssignmentContext.class,0);
		}
		public PrintContext print() {
			return getRuleContext(PrintContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_statement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(24);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__4:
			case T__7:
			case T__8:
			case ID:
			case STRING:
				{
				setState(22);
				assignment();
				}
				break;
			case T__1:
				{
				setState(23);
				print();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AssignmentContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AssignmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignment; }
	}

	public final AssignmentContext assignment() throws RecognitionException {
		AssignmentContext _localctx = new AssignmentContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_assignment);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(26);
			expr(0);
			setState(27);
			match(T__0);
			setState(28);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PrintContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PrintContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_print; }
	}

	public final PrintContext print() throws RecognitionException {
		PrintContext _localctx = new PrintContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_print);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(30);
			match(T__1);
			setState(31);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprContext extends ParserRuleContext {
		public boolean isID;
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
			this.isID = ctx.isID;
		}
	}
	public static class ExprRemoveContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprRemoveContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprConcatContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprConcatContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprStringContext extends ExprContext {
		public TerminalNode STRING() { return getToken(StrLangParser.STRING, 0); }
		public ExprStringContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprParentContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprParentContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprSubContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprSubContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprInputContext extends ExprContext {
		public InputContext input() {
			return getRuleContext(InputContext.class,0);
		}
		public ExprInputContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprTrimContext extends ExprContext {
		public TrimContext trim() {
			return getRuleContext(TrimContext.class,0);
		}
		public ExprTrimContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprIDContext extends ExprContext {
		public TerminalNode ID() { return getToken(StrLangParser.ID, 0); }
		public ExprIDContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 8;
		enterRecursionRule(_localctx, 8, RULE_expr, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(42);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__8:
				{
				_localctx = new ExprTrimContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(34);
				trim();
				}
				break;
			case T__4:
				{
				_localctx = new ExprParentContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(35);
				match(T__4);
				setState(36);
				expr(0);
				setState(37);
				match(T__5);
				}
				break;
			case T__7:
				{
				_localctx = new ExprInputContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(39);
				input();
				}
				break;
			case STRING:
				{
				_localctx = new ExprStringContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(40);
				match(STRING);
				}
				break;
			case ID:
				{
				_localctx = new ExprIDContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(41);
				match(ID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(58);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,4,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(56);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
					case 1:
						{
						_localctx = new ExprConcatContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(44);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(45);
						match(T__2);
						setState(46);
						expr(9);
						}
						break;
					case 2:
						{
						_localctx = new ExprRemoveContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(47);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(48);
						match(T__3);
						setState(49);
						expr(8);
						}
						break;
					case 3:
						{
						_localctx = new ExprSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(50);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(51);
						match(T__6);
						setState(52);
						expr(0);
						setState(53);
						match(T__6);
						setState(54);
						expr(5);
						}
						break;
					}
					} 
				}
				setState(60);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,4,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class InputContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public InputContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_input; }
	}

	public final InputContext input() throws RecognitionException {
		InputContext _localctx = new InputContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_input);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(61);
			match(T__7);
			setState(62);
			match(T__4);
			setState(64);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__4) | (1L << T__7) | (1L << T__8) | (1L << ID) | (1L << STRING))) != 0)) {
				{
				setState(63);
				expr(0);
				}
			}

			setState(66);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TrimContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TrimContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_trim; }
	}

	public final TrimContext trim() throws RecognitionException {
		TrimContext _localctx = new TrimContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_trim);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(68);
			match(T__8);
			setState(69);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 4:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 8);
		case 1:
			return precpred(_ctx, 7);
		case 2:
			return precpred(_ctx, 4);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\17J\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\3\2\7\2\22\n\2\f\2\16\2\25"+
		"\13\2\3\2\3\2\3\3\3\3\5\3\33\n\3\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\6\3\6\3"+
		"\6\3\6\3\6\3\6\3\6\3\6\3\6\5\6-\n\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3"+
		"\6\3\6\3\6\3\6\7\6;\n\6\f\6\16\6>\13\6\3\7\3\7\3\7\5\7C\n\7\3\7\3\7\3"+
		"\b\3\b\3\b\3\b\2\3\n\t\2\4\6\b\n\f\16\2\2\2L\2\23\3\2\2\2\4\32\3\2\2\2"+
		"\6\34\3\2\2\2\b \3\2\2\2\n,\3\2\2\2\f?\3\2\2\2\16F\3\2\2\2\20\22\5\4\3"+
		"\2\21\20\3\2\2\2\22\25\3\2\2\2\23\21\3\2\2\2\23\24\3\2\2\2\24\26\3\2\2"+
		"\2\25\23\3\2\2\2\26\27\7\2\2\3\27\3\3\2\2\2\30\33\5\6\4\2\31\33\5\b\5"+
		"\2\32\30\3\2\2\2\32\31\3\2\2\2\33\5\3\2\2\2\34\35\5\n\6\2\35\36\7\3\2"+
		"\2\36\37\5\n\6\2\37\7\3\2\2\2 !\7\4\2\2!\"\5\n\6\2\"\t\3\2\2\2#$\b\6\1"+
		"\2$-\5\16\b\2%&\7\7\2\2&\'\5\n\6\2\'(\7\b\2\2(-\3\2\2\2)-\5\f\7\2*-\7"+
		"\r\2\2+-\7\f\2\2,#\3\2\2\2,%\3\2\2\2,)\3\2\2\2,*\3\2\2\2,+\3\2\2\2-<\3"+
		"\2\2\2./\f\n\2\2/\60\7\5\2\2\60;\5\n\6\13\61\62\f\t\2\2\62\63\7\6\2\2"+
		"\63;\5\n\6\n\64\65\f\6\2\2\65\66\7\t\2\2\66\67\5\n\6\2\678\7\t\2\289\5"+
		"\n\6\79;\3\2\2\2:.\3\2\2\2:\61\3\2\2\2:\64\3\2\2\2;>\3\2\2\2<:\3\2\2\2"+
		"<=\3\2\2\2=\13\3\2\2\2><\3\2\2\2?@\7\n\2\2@B\7\7\2\2AC\5\n\6\2BA\3\2\2"+
		"\2BC\3\2\2\2CD\3\2\2\2DE\7\b\2\2E\r\3\2\2\2FG\7\13\2\2GH\5\n\6\2H\17\3"+
		"\2\2\2\b\23\32,:<B";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}