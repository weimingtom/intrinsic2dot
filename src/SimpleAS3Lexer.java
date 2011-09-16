// $ANTLR 3.3 Nov 30, 2010 12:45:30 SimpleAS3.g 2011-09-16 06:32:29

import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

public class SimpleAS3Lexer extends Lexer {
    public static final int EOF=-1;
    public static final int T__14=14;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__19=19;
    public static final int T__20=20;
    public static final int T__21=21;
    public static final int T__22=22;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int T__29=29;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int T__32=32;
    public static final int T__33=33;
    public static final int T__34=34;
    public static final int T__35=35;
    public static final int T__36=36;
    public static final int T__37=37;
    public static final int T__38=38;
    public static final int T__39=39;
    public static final int T__40=40;
    public static final int T__41=41;
    public static final int T__42=42;
    public static final int T__43=43;
    public static final int T__44=44;
    public static final int T__45=45;
    public static final int T__46=46;
    public static final int T__47=47;
    public static final int T__48=48;
    public static final int T__49=49;
    public static final int T__50=50;
    public static final int SL_COMMENT=4;
    public static final int ML_COMMENT=5;
    public static final int ID=6;
    public static final int INT_LIT=7;
    public static final int DOUBLE_LIT=8;
    public static final int BOOLEAN_LIT=9;
    public static final int STR_LIT=10;
    public static final int NULL_LIT=11;
    public static final int CHAR_LIT=12;
    public static final int WS=13;

    // delegates
    // delegators

    public SimpleAS3Lexer() {;} 
    public SimpleAS3Lexer(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public SimpleAS3Lexer(CharStream input, RecognizerSharedState state) {
        super(input,state);

    }
    public String getGrammarFileName() { return "SimpleAS3.g"; }

    // $ANTLR start "T__14"
    public final void mT__14() throws RecognitionException {
        try {
            int _type = T__14;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:3:7: ( 'package' )
            // SimpleAS3.g:3:9: 'package'
            {
            match("package"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__14"

    // $ANTLR start "T__15"
    public final void mT__15() throws RecognitionException {
        try {
            int _type = T__15;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:4:7: ( '{' )
            // SimpleAS3.g:4:9: '{'
            {
            match('{'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__15"

    // $ANTLR start "T__16"
    public final void mT__16() throws RecognitionException {
        try {
            int _type = T__16;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:5:7: ( '}' )
            // SimpleAS3.g:5:9: '}'
            {
            match('}'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__16"

    // $ANTLR start "T__17"
    public final void mT__17() throws RecognitionException {
        try {
            int _type = T__17;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:6:7: ( '.' )
            // SimpleAS3.g:6:9: '.'
            {
            match('.'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__17"

    // $ANTLR start "T__18"
    public final void mT__18() throws RecognitionException {
        try {
            int _type = T__18;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:7:7: ( 'import' )
            // SimpleAS3.g:7:9: 'import'
            {
            match("import"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__18"

    // $ANTLR start "T__19"
    public final void mT__19() throws RecognitionException {
        try {
            int _type = T__19;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:8:7: ( ';' )
            // SimpleAS3.g:8:9: ';'
            {
            match(';'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__19"

    // $ANTLR start "T__20"
    public final void mT__20() throws RecognitionException {
        try {
            int _type = T__20;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:9:7: ( '.*' )
            // SimpleAS3.g:9:9: '.*'
            {
            match(".*"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__20"

    // $ANTLR start "T__21"
    public final void mT__21() throws RecognitionException {
        try {
            int _type = T__21;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:10:7: ( 'public' )
            // SimpleAS3.g:10:9: 'public'
            {
            match("public"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__21"

    // $ANTLR start "T__22"
    public final void mT__22() throws RecognitionException {
        try {
            int _type = T__22;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:11:7: ( 'internal' )
            // SimpleAS3.g:11:9: 'internal'
            {
            match("internal"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__22"

    // $ANTLR start "T__23"
    public final void mT__23() throws RecognitionException {
        try {
            int _type = T__23;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:12:7: ( 'dynamic' )
            // SimpleAS3.g:12:9: 'dynamic'
            {
            match("dynamic"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__23"

    // $ANTLR start "T__24"
    public final void mT__24() throws RecognitionException {
        try {
            int _type = T__24;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:13:7: ( 'class' )
            // SimpleAS3.g:13:9: 'class'
            {
            match("class"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__24"

    // $ANTLR start "T__25"
    public final void mT__25() throws RecognitionException {
        try {
            int _type = T__25;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:14:7: ( 'interface' )
            // SimpleAS3.g:14:9: 'interface'
            {
            match("interface"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__25"

    // $ANTLR start "T__26"
    public final void mT__26() throws RecognitionException {
        try {
            int _type = T__26;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:15:7: ( 'extends' )
            // SimpleAS3.g:15:9: 'extends'
            {
            match("extends"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__26"

    // $ANTLR start "T__27"
    public final void mT__27() throws RecognitionException {
        try {
            int _type = T__27;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:16:7: ( 'implements' )
            // SimpleAS3.g:16:9: 'implements'
            {
            match("implements"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__27"

    // $ANTLR start "T__28"
    public final void mT__28() throws RecognitionException {
        try {
            int _type = T__28;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:17:7: ( ',' )
            // SimpleAS3.g:17:9: ','
            {
            match(','); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__28"

    // $ANTLR start "T__29"
    public final void mT__29() throws RecognitionException {
        try {
            int _type = T__29;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:18:7: ( 'protected' )
            // SimpleAS3.g:18:9: 'protected'
            {
            match("protected"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__29"

    // $ANTLR start "T__30"
    public final void mT__30() throws RecognitionException {
        try {
            int _type = T__30;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:19:7: ( 'static' )
            // SimpleAS3.g:19:9: 'static'
            {
            match("static"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__30"

    // $ANTLR start "T__31"
    public final void mT__31() throws RecognitionException {
        try {
            int _type = T__31;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:20:7: ( 'var' )
            // SimpleAS3.g:20:9: 'var'
            {
            match("var"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__31"

    // $ANTLR start "T__32"
    public final void mT__32() throws RecognitionException {
        try {
            int _type = T__32;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:21:7: ( 'const' )
            // SimpleAS3.g:21:9: 'const'
            {
            match("const"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__32"

    // $ANTLR start "T__33"
    public final void mT__33() throws RecognitionException {
        try {
            int _type = T__33;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:22:7: ( ':' )
            // SimpleAS3.g:22:9: ':'
            {
            match(':'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__33"

    // $ANTLR start "T__34"
    public final void mT__34() throws RecognitionException {
        try {
            int _type = T__34;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:23:7: ( 'private' )
            // SimpleAS3.g:23:9: 'private'
            {
            match("private"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__34"

    // $ANTLR start "T__35"
    public final void mT__35() throws RecognitionException {
        try {
            int _type = T__35;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:24:7: ( 'function' )
            // SimpleAS3.g:24:9: 'function'
            {
            match("function"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__35"

    // $ANTLR start "T__36"
    public final void mT__36() throws RecognitionException {
        try {
            int _type = T__36;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:25:7: ( 'get' )
            // SimpleAS3.g:25:9: 'get'
            {
            match("get"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__36"

    // $ANTLR start "T__37"
    public final void mT__37() throws RecognitionException {
        try {
            int _type = T__37;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:26:7: ( '(' )
            // SimpleAS3.g:26:9: '('
            {
            match('('); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__37"

    // $ANTLR start "T__38"
    public final void mT__38() throws RecognitionException {
        try {
            int _type = T__38;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:27:7: ( ')' )
            // SimpleAS3.g:27:9: ')'
            {
            match(')'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__38"

    // $ANTLR start "T__39"
    public final void mT__39() throws RecognitionException {
        try {
            int _type = T__39;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:28:7: ( 'set' )
            // SimpleAS3.g:28:9: 'set'
            {
            match("set"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__39"

    // $ANTLR start "T__40"
    public final void mT__40() throws RecognitionException {
        try {
            int _type = T__40;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:29:7: ( '=' )
            // SimpleAS3.g:29:9: '='
            {
            match('='); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__40"

    // $ANTLR start "T__41"
    public final void mT__41() throws RecognitionException {
        try {
            int _type = T__41;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:30:7: ( '[' )
            // SimpleAS3.g:30:9: '['
            {
            match('['); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__41"

    // $ANTLR start "T__42"
    public final void mT__42() throws RecognitionException {
        try {
            int _type = T__42;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:31:7: ( ']' )
            // SimpleAS3.g:31:9: ']'
            {
            match(']'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__42"

    // $ANTLR start "T__43"
    public final void mT__43() throws RecognitionException {
        try {
            int _type = T__43;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:32:7: ( '+' )
            // SimpleAS3.g:32:9: '+'
            {
            match('+'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__43"

    // $ANTLR start "T__44"
    public final void mT__44() throws RecognitionException {
        try {
            int _type = T__44;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:33:7: ( '-' )
            // SimpleAS3.g:33:9: '-'
            {
            match('-'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__44"

    // $ANTLR start "T__45"
    public final void mT__45() throws RecognitionException {
        try {
            int _type = T__45;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:34:7: ( '*' )
            // SimpleAS3.g:34:9: '*'
            {
            match('*'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__45"

    // $ANTLR start "T__46"
    public final void mT__46() throws RecognitionException {
        try {
            int _type = T__46;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:35:7: ( '/' )
            // SimpleAS3.g:35:9: '/'
            {
            match('/'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__46"

    // $ANTLR start "T__47"
    public final void mT__47() throws RecognitionException {
        try {
            int _type = T__47;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:36:7: ( '%' )
            // SimpleAS3.g:36:9: '%'
            {
            match('%'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__47"

    // $ANTLR start "T__48"
    public final void mT__48() throws RecognitionException {
        try {
            int _type = T__48;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:37:7: ( '<<' )
            // SimpleAS3.g:37:9: '<<'
            {
            match("<<"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__48"

    // $ANTLR start "T__49"
    public final void mT__49() throws RecognitionException {
        try {
            int _type = T__49;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:38:7: ( '>>' )
            // SimpleAS3.g:38:9: '>>'
            {
            match(">>"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__49"

    // $ANTLR start "T__50"
    public final void mT__50() throws RecognitionException {
        try {
            int _type = T__50;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:39:7: ( 'new' )
            // SimpleAS3.g:39:9: 'new'
            {
            match("new"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__50"

    // $ANTLR start "INT_LIT"
    public final void mINT_LIT() throws RecognitionException {
        try {
            int _type = INT_LIT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:98:1: ( '0' | '1' .. '9' ( '0' .. '9' )* | ( '0x' | '0X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )* )
            int alt4=3;
            int LA4_0 = input.LA(1);

            if ( (LA4_0=='0') ) {
                int LA4_1 = input.LA(2);

                if ( (LA4_1=='X'||LA4_1=='x') ) {
                    alt4=3;
                }
                else {
                    alt4=1;}
            }
            else if ( ((LA4_0>='1' && LA4_0<='9')) ) {
                alt4=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 4, 0, input);

                throw nvae;
            }
            switch (alt4) {
                case 1 :
                    // SimpleAS3.g:98:3: '0'
                    {
                    match('0'); 

                    }
                    break;
                case 2 :
                    // SimpleAS3.g:98:9: '1' .. '9' ( '0' .. '9' )*
                    {
                    matchRange('1','9'); 
                    // SimpleAS3.g:98:18: ( '0' .. '9' )*
                    loop1:
                    do {
                        int alt1=2;
                        int LA1_0 = input.LA(1);

                        if ( ((LA1_0>='0' && LA1_0<='9')) ) {
                            alt1=1;
                        }


                        switch (alt1) {
                    	case 1 :
                    	    // SimpleAS3.g:98:19: '0' .. '9'
                    	    {
                    	    matchRange('0','9'); 

                    	    }
                    	    break;

                    	default :
                    	    break loop1;
                        }
                    } while (true);


                    }
                    break;
                case 3 :
                    // SimpleAS3.g:99:3: ( '0x' | '0X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )*
                    {
                    // SimpleAS3.g:99:3: ( '0x' | '0X' )
                    int alt2=2;
                    int LA2_0 = input.LA(1);

                    if ( (LA2_0=='0') ) {
                        int LA2_1 = input.LA(2);

                        if ( (LA2_1=='x') ) {
                            alt2=1;
                        }
                        else if ( (LA2_1=='X') ) {
                            alt2=2;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 2, 1, input);

                            throw nvae;
                        }
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 2, 0, input);

                        throw nvae;
                    }
                    switch (alt2) {
                        case 1 :
                            // SimpleAS3.g:99:4: '0x'
                            {
                            match("0x"); 


                            }
                            break;
                        case 2 :
                            // SimpleAS3.g:99:9: '0X'
                            {
                            match("0X"); 


                            }
                            break;

                    }

                    // SimpleAS3.g:99:15: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )*
                    loop3:
                    do {
                        int alt3=2;
                        int LA3_0 = input.LA(1);

                        if ( ((LA3_0>='0' && LA3_0<='9')||(LA3_0>='A' && LA3_0<='F')||(LA3_0>='a' && LA3_0<='f')) ) {
                            alt3=1;
                        }


                        switch (alt3) {
                    	case 1 :
                    	    // SimpleAS3.g:
                    	    {
                    	    if ( (input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='F')||(input.LA(1)>='a' && input.LA(1)<='f') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;

                    	default :
                    	    break loop3;
                        }
                    } while (true);


                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "INT_LIT"

    // $ANTLR start "DOUBLE_LIT"
    public final void mDOUBLE_LIT() throws RecognitionException {
        try {
            int _type = DOUBLE_LIT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:102:12: ( INT_LIT '.' ( '0' .. '9' )* | '.' ( '0' .. '9' )+ )
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( ((LA7_0>='0' && LA7_0<='9')) ) {
                alt7=1;
            }
            else if ( (LA7_0=='.') ) {
                alt7=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 7, 0, input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // SimpleAS3.g:102:14: INT_LIT '.' ( '0' .. '9' )*
                    {
                    mINT_LIT(); 
                    match('.'); 
                    // SimpleAS3.g:102:26: ( '0' .. '9' )*
                    loop5:
                    do {
                        int alt5=2;
                        int LA5_0 = input.LA(1);

                        if ( ((LA5_0>='0' && LA5_0<='9')) ) {
                            alt5=1;
                        }


                        switch (alt5) {
                    	case 1 :
                    	    // SimpleAS3.g:102:27: '0' .. '9'
                    	    {
                    	    matchRange('0','9'); 

                    	    }
                    	    break;

                    	default :
                    	    break loop5;
                        }
                    } while (true);


                    }
                    break;
                case 2 :
                    // SimpleAS3.g:102:40: '.' ( '0' .. '9' )+
                    {
                    match('.'); 
                    // SimpleAS3.g:102:44: ( '0' .. '9' )+
                    int cnt6=0;
                    loop6:
                    do {
                        int alt6=2;
                        int LA6_0 = input.LA(1);

                        if ( ((LA6_0>='0' && LA6_0<='9')) ) {
                            alt6=1;
                        }


                        switch (alt6) {
                    	case 1 :
                    	    // SimpleAS3.g:102:45: '0' .. '9'
                    	    {
                    	    matchRange('0','9'); 

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt6 >= 1 ) break loop6;
                                EarlyExitException eee =
                                    new EarlyExitException(6, input);
                                throw eee;
                        }
                        cnt6++;
                    } while (true);


                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "DOUBLE_LIT"

    // $ANTLR start "CHAR_LIT"
    public final void mCHAR_LIT() throws RecognitionException {
        try {
            int _type = CHAR_LIT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:104:9: ( '\\'' (~ ( '\\\\' | '\\r' | '\\n' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) ) '\\'' )
            // SimpleAS3.g:104:11: '\\'' (~ ( '\\\\' | '\\r' | '\\n' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) ) '\\''
            {
            match('\''); 
            // SimpleAS3.g:104:16: (~ ( '\\\\' | '\\r' | '\\n' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) )
            int alt8=2;
            int LA8_0 = input.LA(1);

            if ( ((LA8_0>='\u0000' && LA8_0<='\t')||(LA8_0>='\u000B' && LA8_0<='\f')||(LA8_0>='\u000E' && LA8_0<='[')||(LA8_0>=']' && LA8_0<='\uFFFF')) ) {
                alt8=1;
            }
            else if ( (LA8_0=='\\') ) {
                alt8=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 8, 0, input);

                throw nvae;
            }
            switch (alt8) {
                case 1 :
                    // SimpleAS3.g:104:18: ~ ( '\\\\' | '\\r' | '\\n' )
                    {
                    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\t')||(input.LA(1)>='\u000B' && input.LA(1)<='\f')||(input.LA(1)>='\u000E' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                        input.consume();

                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}


                    }
                    break;
                case 2 :
                    // SimpleAS3.g:104:38: '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' )
                    {
                    match('\\'); 
                    if ( input.LA(1)=='\"'||input.LA(1)=='\''||input.LA(1)=='\\'||input.LA(1)=='n'||input.LA(1)=='r'||input.LA(1)=='t' ) {
                        input.consume();

                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}


                    }
                    break;

            }

            match('\''); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "CHAR_LIT"

    // $ANTLR start "STR_LIT"
    public final void mSTR_LIT() throws RecognitionException {
        try {
            int _type = STR_LIT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:107:1: ( '\\'' (~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) )* '\\'' | '\\\"' (~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) )* '\\\"' )
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0=='\'') ) {
                alt11=1;
            }
            else if ( (LA11_0=='\"') ) {
                alt11=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 11, 0, input);

                throw nvae;
            }
            switch (alt11) {
                case 1 :
                    // SimpleAS3.g:107:3: '\\'' (~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) )* '\\''
                    {
                    match('\''); 
                    // SimpleAS3.g:107:8: (~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) )*
                    loop9:
                    do {
                        int alt9=3;
                        int LA9_0 = input.LA(1);

                        if ( ((LA9_0>='\u0000' && LA9_0<='\t')||(LA9_0>='\u000B' && LA9_0<='\f')||(LA9_0>='\u000E' && LA9_0<='!')||(LA9_0>='#' && LA9_0<='&')||(LA9_0>='(' && LA9_0<='[')||(LA9_0>=']' && LA9_0<='\uFFFF')) ) {
                            alt9=1;
                        }
                        else if ( (LA9_0=='\\') ) {
                            alt9=2;
                        }


                        switch (alt9) {
                    	case 1 :
                    	    // SimpleAS3.g:107:10: ~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\t')||(input.LA(1)>='\u000B' && input.LA(1)<='\f')||(input.LA(1)>='\u000E' && input.LA(1)<='!')||(input.LA(1)>='#' && input.LA(1)<='&')||(input.LA(1)>='(' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;
                    	case 2 :
                    	    // SimpleAS3.g:107:40: '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' )
                    	    {
                    	    match('\\'); 
                    	    if ( input.LA(1)=='\"'||input.LA(1)=='\''||input.LA(1)=='\\'||input.LA(1)=='n'||input.LA(1)=='r'||input.LA(1)=='t' ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;

                    	default :
                    	    break loop9;
                        }
                    } while (true);

                    match('\''); 

                    }
                    break;
                case 2 :
                    // SimpleAS3.g:108:3: '\\\"' (~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) )* '\\\"'
                    {
                    match('\"'); 
                    // SimpleAS3.g:108:8: (~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' ) | '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' ) )*
                    loop10:
                    do {
                        int alt10=3;
                        int LA10_0 = input.LA(1);

                        if ( ((LA10_0>='\u0000' && LA10_0<='\t')||(LA10_0>='\u000B' && LA10_0<='\f')||(LA10_0>='\u000E' && LA10_0<='!')||(LA10_0>='#' && LA10_0<='&')||(LA10_0>='(' && LA10_0<='[')||(LA10_0>=']' && LA10_0<='\uFFFF')) ) {
                            alt10=1;
                        }
                        else if ( (LA10_0=='\\') ) {
                            alt10=2;
                        }


                        switch (alt10) {
                    	case 1 :
                    	    // SimpleAS3.g:108:10: ~ ( '\\\\' | '\\r' | '\\n' | '\\'' | '\\\"' )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\t')||(input.LA(1)>='\u000B' && input.LA(1)<='\f')||(input.LA(1)>='\u000E' && input.LA(1)<='!')||(input.LA(1)>='#' && input.LA(1)<='&')||(input.LA(1)>='(' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;
                    	case 2 :
                    	    // SimpleAS3.g:108:40: '\\\\' ( 't' | 'r' | 'n' | '\\\\' | '\\\"' | '\\'' )
                    	    {
                    	    match('\\'); 
                    	    if ( input.LA(1)=='\"'||input.LA(1)=='\''||input.LA(1)=='\\'||input.LA(1)=='n'||input.LA(1)=='r'||input.LA(1)=='t' ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;

                    	default :
                    	    break loop10;
                        }
                    } while (true);

                    match('\"'); 

                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "STR_LIT"

    // $ANTLR start "BOOLEAN_LIT"
    public final void mBOOLEAN_LIT() throws RecognitionException {
        try {
            int _type = BOOLEAN_LIT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:111:13: ( 'true' | 'false' )
            int alt12=2;
            int LA12_0 = input.LA(1);

            if ( (LA12_0=='t') ) {
                alt12=1;
            }
            else if ( (LA12_0=='f') ) {
                alt12=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 12, 0, input);

                throw nvae;
            }
            switch (alt12) {
                case 1 :
                    // SimpleAS3.g:111:15: 'true'
                    {
                    match("true"); 


                    }
                    break;
                case 2 :
                    // SimpleAS3.g:111:24: 'false'
                    {
                    match("false"); 


                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "BOOLEAN_LIT"

    // $ANTLR start "NULL_LIT"
    public final void mNULL_LIT() throws RecognitionException {
        try {
            int _type = NULL_LIT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:113:10: ( 'null' )
            // SimpleAS3.g:113:12: 'null'
            {
            match("null"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "NULL_LIT"

    // $ANTLR start "ID"
    public final void mID() throws RecognitionException {
        try {
            int _type = ID;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:115:4: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '$' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* )
            // SimpleAS3.g:115:6: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '$' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
            {
            if ( input.LA(1)=='$'||(input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // SimpleAS3.g:115:34: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
            loop13:
            do {
                int alt13=2;
                int LA13_0 = input.LA(1);

                if ( ((LA13_0>='0' && LA13_0<='9')||(LA13_0>='A' && LA13_0<='Z')||LA13_0=='_'||(LA13_0>='a' && LA13_0<='z')) ) {
                    alt13=1;
                }


                switch (alt13) {
            	case 1 :
            	    // SimpleAS3.g:
            	    {
            	    if ( (input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop13;
                }
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ID"

    // $ANTLR start "SL_COMMENT"
    public final void mSL_COMMENT() throws RecognitionException {
        try {
            int _type = SL_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:117:12: ( '//' (~ ( '\\r' | '\\n' ) )* ( '\\r' )? '\\n' )
            // SimpleAS3.g:117:14: '//' (~ ( '\\r' | '\\n' ) )* ( '\\r' )? '\\n'
            {
            match("//"); 

            // SimpleAS3.g:117:19: (~ ( '\\r' | '\\n' ) )*
            loop14:
            do {
                int alt14=2;
                int LA14_0 = input.LA(1);

                if ( ((LA14_0>='\u0000' && LA14_0<='\t')||(LA14_0>='\u000B' && LA14_0<='\f')||(LA14_0>='\u000E' && LA14_0<='\uFFFF')) ) {
                    alt14=1;
                }


                switch (alt14) {
            	case 1 :
            	    // SimpleAS3.g:117:20: ~ ( '\\r' | '\\n' )
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\t')||(input.LA(1)>='\u000B' && input.LA(1)<='\f')||(input.LA(1)>='\u000E' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop14;
                }
            } while (true);

            // SimpleAS3.g:117:37: ( '\\r' )?
            int alt15=2;
            int LA15_0 = input.LA(1);

            if ( (LA15_0=='\r') ) {
                alt15=1;
            }
            switch (alt15) {
                case 1 :
                    // SimpleAS3.g:117:37: '\\r'
                    {
                    match('\r'); 

                    }
                    break;

            }

            match('\n'); 
            _channel = HIDDEN;

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SL_COMMENT"

    // $ANTLR start "ML_COMMENT"
    public final void mML_COMMENT() throws RecognitionException {
        try {
            int _type = ML_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:119:12: ( '/*' ( . )* '*/' )
            // SimpleAS3.g:119:14: '/*' ( . )* '*/'
            {
            match("/*"); 

            // SimpleAS3.g:119:19: ( . )*
            loop16:
            do {
                int alt16=2;
                int LA16_0 = input.LA(1);

                if ( (LA16_0=='*') ) {
                    int LA16_1 = input.LA(2);

                    if ( (LA16_1=='/') ) {
                        alt16=2;
                    }
                    else if ( ((LA16_1>='\u0000' && LA16_1<='.')||(LA16_1>='0' && LA16_1<='\uFFFF')) ) {
                        alt16=1;
                    }


                }
                else if ( ((LA16_0>='\u0000' && LA16_0<=')')||(LA16_0>='+' && LA16_0<='\uFFFF')) ) {
                    alt16=1;
                }


                switch (alt16) {
            	case 1 :
            	    // SimpleAS3.g:119:19: .
            	    {
            	    matchAny(); 

            	    }
            	    break;

            	default :
            	    break loop16;
                }
            } while (true);

            match("*/"); 

            _channel = HIDDEN;

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ML_COMMENT"

    // $ANTLR start "WS"
    public final void mWS() throws RecognitionException {
        try {
            int _type = WS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // SimpleAS3.g:121:3: ( ( ' ' | '\\t' | '\\r' | '\\n' ) )
            // SimpleAS3.g:121:5: ( ' ' | '\\t' | '\\r' | '\\n' )
            {
            if ( (input.LA(1)>='\t' && input.LA(1)<='\n')||input.LA(1)=='\r'||input.LA(1)==' ' ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            _channel = HIDDEN;

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "WS"

    public void mTokens() throws RecognitionException {
        // SimpleAS3.g:1:8: ( T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | INT_LIT | DOUBLE_LIT | CHAR_LIT | STR_LIT | BOOLEAN_LIT | NULL_LIT | ID | SL_COMMENT | ML_COMMENT | WS )
        int alt17=47;
        alt17 = dfa17.predict(input);
        switch (alt17) {
            case 1 :
                // SimpleAS3.g:1:10: T__14
                {
                mT__14(); 

                }
                break;
            case 2 :
                // SimpleAS3.g:1:16: T__15
                {
                mT__15(); 

                }
                break;
            case 3 :
                // SimpleAS3.g:1:22: T__16
                {
                mT__16(); 

                }
                break;
            case 4 :
                // SimpleAS3.g:1:28: T__17
                {
                mT__17(); 

                }
                break;
            case 5 :
                // SimpleAS3.g:1:34: T__18
                {
                mT__18(); 

                }
                break;
            case 6 :
                // SimpleAS3.g:1:40: T__19
                {
                mT__19(); 

                }
                break;
            case 7 :
                // SimpleAS3.g:1:46: T__20
                {
                mT__20(); 

                }
                break;
            case 8 :
                // SimpleAS3.g:1:52: T__21
                {
                mT__21(); 

                }
                break;
            case 9 :
                // SimpleAS3.g:1:58: T__22
                {
                mT__22(); 

                }
                break;
            case 10 :
                // SimpleAS3.g:1:64: T__23
                {
                mT__23(); 

                }
                break;
            case 11 :
                // SimpleAS3.g:1:70: T__24
                {
                mT__24(); 

                }
                break;
            case 12 :
                // SimpleAS3.g:1:76: T__25
                {
                mT__25(); 

                }
                break;
            case 13 :
                // SimpleAS3.g:1:82: T__26
                {
                mT__26(); 

                }
                break;
            case 14 :
                // SimpleAS3.g:1:88: T__27
                {
                mT__27(); 

                }
                break;
            case 15 :
                // SimpleAS3.g:1:94: T__28
                {
                mT__28(); 

                }
                break;
            case 16 :
                // SimpleAS3.g:1:100: T__29
                {
                mT__29(); 

                }
                break;
            case 17 :
                // SimpleAS3.g:1:106: T__30
                {
                mT__30(); 

                }
                break;
            case 18 :
                // SimpleAS3.g:1:112: T__31
                {
                mT__31(); 

                }
                break;
            case 19 :
                // SimpleAS3.g:1:118: T__32
                {
                mT__32(); 

                }
                break;
            case 20 :
                // SimpleAS3.g:1:124: T__33
                {
                mT__33(); 

                }
                break;
            case 21 :
                // SimpleAS3.g:1:130: T__34
                {
                mT__34(); 

                }
                break;
            case 22 :
                // SimpleAS3.g:1:136: T__35
                {
                mT__35(); 

                }
                break;
            case 23 :
                // SimpleAS3.g:1:142: T__36
                {
                mT__36(); 

                }
                break;
            case 24 :
                // SimpleAS3.g:1:148: T__37
                {
                mT__37(); 

                }
                break;
            case 25 :
                // SimpleAS3.g:1:154: T__38
                {
                mT__38(); 

                }
                break;
            case 26 :
                // SimpleAS3.g:1:160: T__39
                {
                mT__39(); 

                }
                break;
            case 27 :
                // SimpleAS3.g:1:166: T__40
                {
                mT__40(); 

                }
                break;
            case 28 :
                // SimpleAS3.g:1:172: T__41
                {
                mT__41(); 

                }
                break;
            case 29 :
                // SimpleAS3.g:1:178: T__42
                {
                mT__42(); 

                }
                break;
            case 30 :
                // SimpleAS3.g:1:184: T__43
                {
                mT__43(); 

                }
                break;
            case 31 :
                // SimpleAS3.g:1:190: T__44
                {
                mT__44(); 

                }
                break;
            case 32 :
                // SimpleAS3.g:1:196: T__45
                {
                mT__45(); 

                }
                break;
            case 33 :
                // SimpleAS3.g:1:202: T__46
                {
                mT__46(); 

                }
                break;
            case 34 :
                // SimpleAS3.g:1:208: T__47
                {
                mT__47(); 

                }
                break;
            case 35 :
                // SimpleAS3.g:1:214: T__48
                {
                mT__48(); 

                }
                break;
            case 36 :
                // SimpleAS3.g:1:220: T__49
                {
                mT__49(); 

                }
                break;
            case 37 :
                // SimpleAS3.g:1:226: T__50
                {
                mT__50(); 

                }
                break;
            case 38 :
                // SimpleAS3.g:1:232: INT_LIT
                {
                mINT_LIT(); 

                }
                break;
            case 39 :
                // SimpleAS3.g:1:240: DOUBLE_LIT
                {
                mDOUBLE_LIT(); 

                }
                break;
            case 40 :
                // SimpleAS3.g:1:251: CHAR_LIT
                {
                mCHAR_LIT(); 

                }
                break;
            case 41 :
                // SimpleAS3.g:1:260: STR_LIT
                {
                mSTR_LIT(); 

                }
                break;
            case 42 :
                // SimpleAS3.g:1:268: BOOLEAN_LIT
                {
                mBOOLEAN_LIT(); 

                }
                break;
            case 43 :
                // SimpleAS3.g:1:280: NULL_LIT
                {
                mNULL_LIT(); 

                }
                break;
            case 44 :
                // SimpleAS3.g:1:289: ID
                {
                mID(); 

                }
                break;
            case 45 :
                // SimpleAS3.g:1:292: SL_COMMENT
                {
                mSL_COMMENT(); 

                }
                break;
            case 46 :
                // SimpleAS3.g:1:303: ML_COMMENT
                {
                mML_COMMENT(); 

                }
                break;
            case 47 :
                // SimpleAS3.g:1:314: WS
                {
                mWS(); 

                }
                break;

        }

    }


    protected DFA17 dfa17 = new DFA17(this);
    static final String DFA17_eotS =
        "\1\uffff\1\42\2\uffff\1\50\1\42\1\uffff\3\42\1\uffff\2\42\1\uffff"+
        "\2\42\10\uffff\1\70\3\uffff\1\42\2\75\2\uffff\1\42\2\uffff\3\42"+
        "\3\uffff\14\42\3\uffff\2\42\2\75\1\uffff\1\75\2\uffff\1\40\1\uffff"+
        "\14\42\1\146\1\147\2\42\1\152\1\153\1\42\1\75\2\uffff\15\42\2\uffff"+
        "\2\42\2\uffff\1\174\1\175\10\42\1\u0087\1\u0088\3\42\1\175\2\uffff"+
        "\1\42\1\u008d\2\42\1\u0090\4\42\2\uffff\1\42\1\u0096\1\42\1\u0098"+
        "\1\uffff\1\42\1\u009a\1\uffff\3\42\1\u009e\1\u009f\1\uffff\1\42"+
        "\1\uffff\1\42\1\uffff\1\42\1\u00a3\1\42\2\uffff\1\u00a5\1\u00a6"+
        "\1\42\1\uffff\1\u00a8\2\uffff\1\u00a9\2\uffff";
    static final String DFA17_eofS =
        "\u00aa\uffff";
    static final String DFA17_minS =
        "\1\11\1\141\2\uffff\1\52\1\155\1\uffff\1\171\1\154\1\170\1\uffff"+
        "\1\145\1\141\1\uffff\1\141\1\145\10\uffff\1\52\3\uffff\1\145\2\56"+
        "\1\0\1\uffff\1\162\2\uffff\1\143\1\142\1\151\3\uffff\1\160\1\164"+
        "\1\156\1\141\1\156\1\164\1\141\1\164\1\162\1\156\1\154\1\164\3\uffff"+
        "\1\167\1\154\2\56\1\uffff\1\56\1\0\1\42\1\47\1\uffff\1\165\1\153"+
        "\1\154\1\164\1\166\1\154\1\145\1\141\2\163\1\145\1\164\2\60\1\143"+
        "\1\163\2\60\1\154\1\56\1\uffff\1\0\1\145\1\141\1\151\1\145\1\141"+
        "\1\162\1\145\1\162\1\155\1\163\1\164\1\156\1\151\2\uffff\1\164\1"+
        "\145\2\uffff\2\60\1\147\2\143\2\164\1\155\1\146\1\151\2\60\1\144"+
        "\1\143\1\151\1\60\2\uffff\1\145\1\60\1\164\1\145\1\60\1\145\2\141"+
        "\1\143\2\uffff\1\163\1\60\1\157\1\60\1\uffff\1\145\1\60\1\uffff"+
        "\1\156\1\154\1\143\2\60\1\uffff\1\156\1\uffff\1\144\1\uffff\1\164"+
        "\1\60\1\145\2\uffff\2\60\1\163\1\uffff\1\60\2\uffff\1\60\2\uffff";
    static final String DFA17_maxS =
        "\1\175\1\165\2\uffff\1\71\1\156\1\uffff\1\171\1\157\1\170\1\uffff"+
        "\1\164\1\141\1\uffff\1\165\1\145\10\uffff\1\57\3\uffff\1\165\1\170"+
        "\1\71\1\uffff\1\uffff\1\162\2\uffff\1\143\1\142\1\157\3\uffff\1"+
        "\160\1\164\1\156\1\141\1\156\1\164\1\141\1\164\1\162\1\156\1\154"+
        "\1\164\3\uffff\1\167\1\154\2\146\1\uffff\1\71\1\uffff\1\164\1\47"+
        "\1\uffff\1\165\1\153\1\154\1\164\1\166\1\157\1\145\1\141\2\163\1"+
        "\145\1\164\2\172\1\143\1\163\2\172\1\154\1\146\1\uffff\1\uffff\1"+
        "\145\1\141\1\151\1\145\1\141\1\162\1\145\1\162\1\155\1\163\1\164"+
        "\1\156\1\151\2\uffff\1\164\1\145\2\uffff\2\172\1\147\2\143\2\164"+
        "\1\155\1\156\1\151\2\172\1\144\1\143\1\151\1\172\2\uffff\1\145\1"+
        "\172\1\164\1\145\1\172\1\145\2\141\1\143\2\uffff\1\163\1\172\1\157"+
        "\1\172\1\uffff\1\145\1\172\1\uffff\1\156\1\154\1\143\2\172\1\uffff"+
        "\1\156\1\uffff\1\144\1\uffff\1\164\1\172\1\145\2\uffff\2\172\1\163"+
        "\1\uffff\1\172\2\uffff\1\172\2\uffff";
    static final String DFA17_acceptS =
        "\2\uffff\1\2\1\3\2\uffff\1\6\3\uffff\1\17\2\uffff\1\24\2\uffff"+
        "\1\30\1\31\1\33\1\34\1\35\1\36\1\37\1\40\1\uffff\1\42\1\43\1\44"+
        "\4\uffff\1\51\1\uffff\1\54\1\57\3\uffff\1\7\1\4\1\47\14\uffff\1"+
        "\55\1\56\1\41\4\uffff\1\46\4\uffff\1\50\24\uffff\1\50\16\uffff\1"+
        "\32\1\22\2\uffff\1\27\1\45\20\uffff\1\53\1\52\11\uffff\1\13\1\23"+
        "\4\uffff\1\10\2\uffff\1\5\5\uffff\1\21\1\uffff\1\1\1\uffff\1\25"+
        "\3\uffff\1\12\1\15\3\uffff\1\11\1\uffff\1\26\1\20\1\uffff\1\14\1"+
        "\16";
    static final String DFA17_specialS =
        "\37\uffff\1\2\37\uffff\1\0\30\uffff\1\1\121\uffff}>";
    static final String[] DFA17_transitionS = {
            "\2\43\2\uffff\1\43\22\uffff\1\43\1\uffff\1\40\1\uffff\1\42"+
            "\1\31\1\uffff\1\37\1\20\1\21\1\27\1\25\1\12\1\26\1\4\1\30\1"+
            "\35\11\36\1\15\1\6\1\32\1\22\1\33\2\uffff\32\42\1\23\1\uffff"+
            "\1\24\1\uffff\1\42\1\uffff\2\42\1\10\1\7\1\11\1\16\1\17\1\42"+
            "\1\5\4\42\1\34\1\42\1\1\2\42\1\13\1\41\1\42\1\14\4\42\1\2\1"+
            "\uffff\1\3",
            "\1\44\20\uffff\1\46\2\uffff\1\45",
            "",
            "",
            "\1\47\5\uffff\12\51",
            "\1\52\1\53",
            "",
            "\1\54",
            "\1\55\2\uffff\1\56",
            "\1\57",
            "",
            "\1\61\16\uffff\1\60",
            "\1\62",
            "",
            "\1\64\23\uffff\1\63",
            "\1\65",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\67\4\uffff\1\66",
            "",
            "",
            "",
            "\1\71\17\uffff\1\72",
            "\1\51\51\uffff\1\74\37\uffff\1\73",
            "\1\51\1\uffff\12\76",
            "\12\77\1\uffff\2\77\1\uffff\24\77\1\102\4\77\1\101\64\77\1"+
            "\100\uffa3\77",
            "",
            "\1\103",
            "",
            "",
            "\1\104",
            "\1\105",
            "\1\107\5\uffff\1\106",
            "",
            "",
            "",
            "\1\110",
            "\1\111",
            "\1\112",
            "\1\113",
            "\1\114",
            "\1\115",
            "\1\116",
            "\1\117",
            "\1\120",
            "\1\121",
            "\1\122",
            "\1\123",
            "",
            "",
            "",
            "\1\124",
            "\1\125",
            "\1\51\1\uffff\12\126\7\uffff\6\126\32\uffff\6\126",
            "\1\51\1\uffff\12\126\7\uffff\6\126\32\uffff\6\126",
            "",
            "\1\51\1\uffff\12\76",
            "\12\40\1\uffff\2\40\1\uffff\24\40\1\uffff\4\40\1\127\uffd8"+
            "\40",
            "\1\130\4\uffff\1\130\64\uffff\1\130\21\uffff\1\130\3\uffff"+
            "\1\130\1\uffff\1\130",
            "\1\102",
            "",
            "\1\131",
            "\1\132",
            "\1\133",
            "\1\134",
            "\1\135",
            "\1\137\2\uffff\1\136",
            "\1\140",
            "\1\141",
            "\1\142",
            "\1\143",
            "\1\144",
            "\1\145",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\150",
            "\1\151",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\154",
            "\1\51\1\uffff\12\126\7\uffff\6\126\32\uffff\6\126",
            "",
            "\12\40\1\uffff\2\40\1\uffff\24\40\1\uffff\4\40\1\127\uffd8"+
            "\40",
            "\1\155",
            "\1\156",
            "\1\157",
            "\1\160",
            "\1\161",
            "\1\162",
            "\1\163",
            "\1\164",
            "\1\165",
            "\1\166",
            "\1\167",
            "\1\170",
            "\1\171",
            "",
            "",
            "\1\172",
            "\1\173",
            "",
            "",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\176",
            "\1\177",
            "\1\u0080",
            "\1\u0081",
            "\1\u0082",
            "\1\u0083",
            "\1\u0085\7\uffff\1\u0084",
            "\1\u0086",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\u0089",
            "\1\u008a",
            "\1\u008b",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "",
            "",
            "\1\u008c",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\u008e",
            "\1\u008f",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\u0091",
            "\1\u0092",
            "\1\u0093",
            "\1\u0094",
            "",
            "",
            "\1\u0095",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\u0097",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "",
            "\1\u0099",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "",
            "\1\u009b",
            "\1\u009c",
            "\1\u009d",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "",
            "\1\u00a0",
            "",
            "\1\u00a1",
            "",
            "\1\u00a2",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\u00a4",
            "",
            "",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "\1\u00a7",
            "",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "",
            "",
            "\12\42\7\uffff\32\42\4\uffff\1\42\1\uffff\32\42",
            "",
            ""
    };

    static final short[] DFA17_eot = DFA.unpackEncodedString(DFA17_eotS);
    static final short[] DFA17_eof = DFA.unpackEncodedString(DFA17_eofS);
    static final char[] DFA17_min = DFA.unpackEncodedStringToUnsignedChars(DFA17_minS);
    static final char[] DFA17_max = DFA.unpackEncodedStringToUnsignedChars(DFA17_maxS);
    static final short[] DFA17_accept = DFA.unpackEncodedString(DFA17_acceptS);
    static final short[] DFA17_special = DFA.unpackEncodedString(DFA17_specialS);
    static final short[][] DFA17_transition;

    static {
        int numStates = DFA17_transitionS.length;
        DFA17_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA17_transition[i] = DFA.unpackEncodedString(DFA17_transitionS[i]);
        }
    }

    class DFA17 extends DFA {

        public DFA17(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 17;
            this.eot = DFA17_eot;
            this.eof = DFA17_eof;
            this.min = DFA17_min;
            this.max = DFA17_max;
            this.accept = DFA17_accept;
            this.special = DFA17_special;
            this.transition = DFA17_transition;
        }
        public String getDescription() {
            return "1:1: Tokens : ( T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | INT_LIT | DOUBLE_LIT | CHAR_LIT | STR_LIT | BOOLEAN_LIT | NULL_LIT | ID | SL_COMMENT | ML_COMMENT | WS );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            IntStream input = _input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA17_63 = input.LA(1);

                        s = -1;
                        if ( (LA17_63=='\'') ) {s = 87;}

                        else if ( ((LA17_63>='\u0000' && LA17_63<='\t')||(LA17_63>='\u000B' && LA17_63<='\f')||(LA17_63>='\u000E' && LA17_63<='!')||(LA17_63>='#' && LA17_63<='&')||(LA17_63>='(' && LA17_63<='\uFFFF')) ) {s = 32;}

                        if ( s>=0 ) return s;
                        break;
                    case 1 : 
                        int LA17_88 = input.LA(1);

                        s = -1;
                        if ( (LA17_88=='\'') ) {s = 87;}

                        else if ( ((LA17_88>='\u0000' && LA17_88<='\t')||(LA17_88>='\u000B' && LA17_88<='\f')||(LA17_88>='\u000E' && LA17_88<='!')||(LA17_88>='#' && LA17_88<='&')||(LA17_88>='(' && LA17_88<='\uFFFF')) ) {s = 32;}

                        if ( s>=0 ) return s;
                        break;
                    case 2 : 
                        int LA17_31 = input.LA(1);

                        s = -1;
                        if ( ((LA17_31>='\u0000' && LA17_31<='\t')||(LA17_31>='\u000B' && LA17_31<='\f')||(LA17_31>='\u000E' && LA17_31<='!')||(LA17_31>='#' && LA17_31<='&')||(LA17_31>='(' && LA17_31<='[')||(LA17_31>=']' && LA17_31<='\uFFFF')) ) {s = 63;}

                        else if ( (LA17_31=='\\') ) {s = 64;}

                        else if ( (LA17_31=='\'') ) {s = 65;}

                        else if ( (LA17_31=='\"') ) {s = 66;}

                        if ( s>=0 ) return s;
                        break;
            }
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 17, _s, input);
            error(nvae);
            throw nvae;
        }
    }
 

}