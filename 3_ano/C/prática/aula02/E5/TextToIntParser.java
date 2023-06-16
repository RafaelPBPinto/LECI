// Generated from TextToInt.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class TextToIntParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.12.0", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		Text=1, NEWLINE=2, WS=3;
	public static final int
		RULE_program = 0, RULE_stat = 1;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "stat"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "Text", "NEWLINE", "WS"
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
	public String getGrammarFileName() { return "TextToInt.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public TextToIntParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(TextToIntParser.EOF, 0); }
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TextToIntListener ) ((TextToIntListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TextToIntListener ) ((TextToIntListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(7);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Text) {
				{
				{
				setState(4);
				stat();
				}
				}
				setState(9);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(10);
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

	@SuppressWarnings("CheckReturnValue")
	public static class StatContext extends ParserRuleContext {
		public StatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stat; }
	 
		public StatContext() { }
		public void copyFrom(StatContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprTextContext extends StatContext {
		public TerminalNode Text() { return getToken(TextToIntParser.Text, 0); }
		public TerminalNode NEWLINE() { return getToken(TextToIntParser.NEWLINE, 0); }
		public ExprTextContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TextToIntListener ) ((TextToIntListener)listener).enterExprText(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TextToIntListener ) ((TextToIntListener)listener).exitExprText(this);
		}
	}

	public final StatContext stat() throws RecognitionException {
		StatContext _localctx = new StatContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_stat);
		try {
			_localctx = new ExprTextContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(12);
			match(Text);
			setState(13);
			match(NEWLINE);
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

	public static final String _serializedATN =
		"\u0004\u0001\u0003\u0010\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001"+
		"\u0001\u0000\u0005\u0000\u0006\b\u0000\n\u0000\f\u0000\t\t\u0000\u0001"+
		"\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000"+
		"\u0000\u0002\u0000\u0002\u0000\u0000\u000e\u0000\u0007\u0001\u0000\u0000"+
		"\u0000\u0002\f\u0001\u0000\u0000\u0000\u0004\u0006\u0003\u0002\u0001\u0000"+
		"\u0005\u0004\u0001\u0000\u0000\u0000\u0006\t\u0001\u0000\u0000\u0000\u0007"+
		"\u0005\u0001\u0000\u0000\u0000\u0007\b\u0001\u0000\u0000\u0000\b\n\u0001"+
		"\u0000\u0000\u0000\t\u0007\u0001\u0000\u0000\u0000\n\u000b\u0005\u0000"+
		"\u0000\u0001\u000b\u0001\u0001\u0000\u0000\u0000\f\r\u0005\u0001\u0000"+
		"\u0000\r\u000e\u0005\u0002\u0000\u0000\u000e\u0003\u0001\u0000\u0000\u0000"+
		"\u0001\u0007";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}