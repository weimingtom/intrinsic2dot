// $ANTLR 3.3 Nov 30, 2010 12:45:30 SimpleAS3.g 2011-09-16 06:32:29

import java.util.HashSet;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

public class SimpleAS3Parser extends Parser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "SL_COMMENT", "ML_COMMENT", "ID", "INT_LIT", "DOUBLE_LIT", "BOOLEAN_LIT", "STR_LIT", "NULL_LIT", "CHAR_LIT", "WS", "'package'", "'{'", "'}'", "'.'", "'import'", "';'", "'.*'", "'public'", "'internal'", "'dynamic'", "'class'", "'interface'", "'extends'", "'implements'", "','", "'protected'", "'static'", "'var'", "'const'", "':'", "'private'", "'function'", "'get'", "'('", "')'", "'set'", "'='", "'['", "']'", "'+'", "'-'", "'*'", "'/'", "'%'", "'<<'", "'>>'", "'new'"
    };
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


        public SimpleAS3Parser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public SimpleAS3Parser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return SimpleAS3Parser.tokenNames; }
    public String getGrammarFileName() { return "SimpleAS3.g"; }


    HashSet memory = new HashSet();
    String classname = null;
    String basename = null;
    HashSet interfaces = new HashSet(); 



    // $ANTLR start "program"
    // SimpleAS3.g:14:1: program : ( SL_COMMENT | ML_COMMENT )* 'package' packagename '{' packagebody '}' ;
    public final void program() throws RecognitionException {
        try {
            // SimpleAS3.g:15:1: ( ( SL_COMMENT | ML_COMMENT )* 'package' packagename '{' packagebody '}' )
            // SimpleAS3.g:15:3: ( SL_COMMENT | ML_COMMENT )* 'package' packagename '{' packagebody '}'
            {
            // SimpleAS3.g:15:3: ( SL_COMMENT | ML_COMMENT )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( ((LA1_0>=SL_COMMENT && LA1_0<=ML_COMMENT)) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // SimpleAS3.g:
            	    {
            	    if ( (input.LA(1)>=SL_COMMENT && input.LA(1)<=ML_COMMENT) ) {
            	        input.consume();
            	        state.errorRecovery=false;
            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        throw mse;
            	    }


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);

            match(input,14,FOLLOW_14_in_program31); 
            pushFollow(FOLLOW_packagename_in_program33);
            packagename();

            state._fsp--;

            match(input,15,FOLLOW_15_in_program35); 
            pushFollow(FOLLOW_packagebody_in_program37);
            packagebody();

            state._fsp--;

            match(input,16,FOLLOW_16_in_program39); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "program"


    // $ANTLR start "packagename"
    // SimpleAS3.g:18:1: packagename : ID ( '.' ID )* ;
    public final void packagename() throws RecognitionException {
        try {
            // SimpleAS3.g:19:1: ( ID ( '.' ID )* )
            // SimpleAS3.g:19:3: ID ( '.' ID )*
            {
            match(input,ID,FOLLOW_ID_in_packagename49); 
            // SimpleAS3.g:19:6: ( '.' ID )*
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( (LA2_0==17) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // SimpleAS3.g:19:7: '.' ID
            	    {
            	    match(input,17,FOLLOW_17_in_packagename52); 
            	    match(input,ID,FOLLOW_ID_in_packagename54); 

            	    }
            	    break;

            	default :
            	    break loop2;
                }
            } while (true);


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "packagename"


    // $ANTLR start "packagebody"
    // SimpleAS3.g:22:1: packagebody : ( importstatement )* classblock ;
    public final void packagebody() throws RecognitionException {
        try {
            // SimpleAS3.g:23:1: ( ( importstatement )* classblock )
            // SimpleAS3.g:23:3: ( importstatement )* classblock
            {
            // SimpleAS3.g:23:3: ( importstatement )*
            loop3:
            do {
                int alt3=2;
                int LA3_0 = input.LA(1);

                if ( (LA3_0==18) ) {
                    alt3=1;
                }


                switch (alt3) {
            	case 1 :
            	    // SimpleAS3.g:23:4: importstatement
            	    {
            	    pushFollow(FOLLOW_importstatement_in_packagebody66);
            	    importstatement();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop3;
                }
            } while (true);

            pushFollow(FOLLOW_classblock_in_packagebody70);
            classblock();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "packagebody"


    // $ANTLR start "importstatement"
    // SimpleAS3.g:26:1: importstatement : 'import' importpackagename ( ';' )? ;
    public final void importstatement() throws RecognitionException {
        try {
            // SimpleAS3.g:27:1: ( 'import' importpackagename ( ';' )? )
            // SimpleAS3.g:27:3: 'import' importpackagename ( ';' )?
            {
            match(input,18,FOLLOW_18_in_importstatement79); 
            pushFollow(FOLLOW_importpackagename_in_importstatement81);
            importpackagename();

            state._fsp--;

            // SimpleAS3.g:27:30: ( ';' )?
            int alt4=2;
            int LA4_0 = input.LA(1);

            if ( (LA4_0==19) ) {
                alt4=1;
            }
            switch (alt4) {
                case 1 :
                    // SimpleAS3.g:27:31: ';'
                    {
                    match(input,19,FOLLOW_19_in_importstatement84); 

                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "importstatement"


    // $ANTLR start "importpackagename"
    // SimpleAS3.g:30:1: importpackagename : ID ( '.' ID )* ( '.*' )? ;
    public final void importpackagename() throws RecognitionException {
        try {
            // SimpleAS3.g:31:1: ( ID ( '.' ID )* ( '.*' )? )
            // SimpleAS3.g:31:3: ID ( '.' ID )* ( '.*' )?
            {
            match(input,ID,FOLLOW_ID_in_importpackagename95); 
            // SimpleAS3.g:31:6: ( '.' ID )*
            loop5:
            do {
                int alt5=2;
                int LA5_0 = input.LA(1);

                if ( (LA5_0==17) ) {
                    alt5=1;
                }


                switch (alt5) {
            	case 1 :
            	    // SimpleAS3.g:31:7: '.' ID
            	    {
            	    match(input,17,FOLLOW_17_in_importpackagename98); 
            	    match(input,ID,FOLLOW_ID_in_importpackagename100); 

            	    }
            	    break;

            	default :
            	    break loop5;
                }
            } while (true);

            // SimpleAS3.g:31:16: ( '.*' )?
            int alt6=2;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==20) ) {
                alt6=1;
            }
            switch (alt6) {
                case 1 :
                    // SimpleAS3.g:31:17: '.*'
                    {
                    match(input,20,FOLLOW_20_in_importpackagename105); 

                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "importpackagename"

    public static class classname_return extends ParserRuleReturnScope {
    };

    // $ANTLR start "classname"
    // SimpleAS3.g:34:1: classname : ID ;
    public final SimpleAS3Parser.classname_return classname() throws RecognitionException {
        SimpleAS3Parser.classname_return retval = new SimpleAS3Parser.classname_return();
        retval.start = input.LT(1);

        try {
            // SimpleAS3.g:35:1: ( ID )
            // SimpleAS3.g:35:3: ID
            {
            match(input,ID,FOLLOW_ID_in_classname116); 

            }

            retval.stop = input.LT(-1);

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "classname"


    // $ANTLR start "classaccessattr"
    // SimpleAS3.g:38:1: classaccessattr : ( 'public' | 'internal' | 'dynamic' );
    public final void classaccessattr() throws RecognitionException {
        try {
            // SimpleAS3.g:39:1: ( 'public' | 'internal' | 'dynamic' )
            // SimpleAS3.g:
            {
            if ( (input.LA(1)>=21 && input.LA(1)<=23) ) {
                input.consume();
                state.errorRecovery=false;
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                throw mse;
            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "classaccessattr"


    // $ANTLR start "classblock"
    // SimpleAS3.g:44:1: classblock : classaccessattr ( 'class' | 'interface' ) classname ( classextends )* '{' ( declaration )* '}' ;
    public final void classblock() throws RecognitionException {
        SimpleAS3Parser.classname_return classname1 = null;


        try {
            // SimpleAS3.g:45:1: ( classaccessattr ( 'class' | 'interface' ) classname ( classextends )* '{' ( declaration )* '}' )
            // SimpleAS3.g:45:3: classaccessattr ( 'class' | 'interface' ) classname ( classextends )* '{' ( declaration )* '}'
            {
            pushFollow(FOLLOW_classaccessattr_in_classblock142);
            classaccessattr();

            state._fsp--;

            if ( (input.LA(1)>=24 && input.LA(1)<=25) ) {
                input.consume();
                state.errorRecovery=false;
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                throw mse;
            }

            pushFollow(FOLLOW_classname_in_classblock150);
            classname1=classname();

            state._fsp--;

            /*System.out.println("class name:" + (classname1!=null?input.toString(classname1.start,classname1.stop):null));*/ classname = (classname1!=null?input.toString(classname1.start,classname1.stop):null); 
            // SimpleAS3.g:46:2: ( classextends )*
            loop7:
            do {
                int alt7=2;
                int LA7_0 = input.LA(1);

                if ( ((LA7_0>=26 && LA7_0<=27)) ) {
                    alt7=1;
                }


                switch (alt7) {
            	case 1 :
            	    // SimpleAS3.g:46:3: classextends
            	    {
            	    pushFollow(FOLLOW_classextends_in_classblock156);
            	    classextends();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);

            match(input,15,FOLLOW_15_in_classblock160); 
            // SimpleAS3.g:46:22: ( declaration )*
            loop8:
            do {
                int alt8=2;
                int LA8_0 = input.LA(1);

                if ( (LA8_0==21||(LA8_0>=29 && LA8_0<=32)||(LA8_0>=34 && LA8_0<=35)) ) {
                    alt8=1;
                }


                switch (alt8) {
            	case 1 :
            	    // SimpleAS3.g:46:23: declaration
            	    {
            	    pushFollow(FOLLOW_declaration_in_classblock163);
            	    declaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop8;
                }
            } while (true);

            match(input,16,FOLLOW_16_in_classblock167); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "classblock"


    // $ANTLR start "classextends"
    // SimpleAS3.g:49:1: classextends : ( 'extends' base= ID | 'implements' inter1= ID ( ',' inter2= ID )* );
    public final void classextends() throws RecognitionException {
        Token base=null;
        Token inter1=null;
        Token inter2=null;

        try {
            // SimpleAS3.g:50:1: ( 'extends' base= ID | 'implements' inter1= ID ( ',' inter2= ID )* )
            int alt10=2;
            int LA10_0 = input.LA(1);

            if ( (LA10_0==26) ) {
                alt10=1;
            }
            else if ( (LA10_0==27) ) {
                alt10=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 10, 0, input);

                throw nvae;
            }
            switch (alt10) {
                case 1 :
                    // SimpleAS3.g:50:3: 'extends' base= ID
                    {
                    match(input,26,FOLLOW_26_in_classextends176); 
                    base=(Token)match(input,ID,FOLLOW_ID_in_classextends180); 
                     basename=(base!=null?base.getText():null); 

                    }
                    break;
                case 2 :
                    // SimpleAS3.g:51:3: 'implements' inter1= ID ( ',' inter2= ID )*
                    {
                    match(input,27,FOLLOW_27_in_classextends186); 
                    inter1=(Token)match(input,ID,FOLLOW_ID_in_classextends190); 
                    interfaces.add((inter1!=null?inter1.getText():null));
                    // SimpleAS3.g:51:58: ( ',' inter2= ID )*
                    loop9:
                    do {
                        int alt9=2;
                        int LA9_0 = input.LA(1);

                        if ( (LA9_0==28) ) {
                            alt9=1;
                        }


                        switch (alt9) {
                    	case 1 :
                    	    // SimpleAS3.g:51:59: ',' inter2= ID
                    	    {
                    	    match(input,28,FOLLOW_28_in_classextends195); 
                    	    inter2=(Token)match(input,ID,FOLLOW_ID_in_classextends199); 
                    	    interfaces.add((inter2!=null?inter2.getText():null));

                    	    }
                    	    break;

                    	default :
                    	    break loop9;
                        }
                    } while (true);


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "classextends"


    // $ANTLR start "declaration"
    // SimpleAS3.g:54:1: declaration : ( ( 'public' | 'protected' )? ( 'static' )? ( 'var' | 'const' ) ID ':' vartype= ID ( assignment )? ( ';' )? | 'private' ( 'static' )? ( 'var' | 'const' ) ID ':' ID ( assignment )? ( ';' )? | ( 'public' | 'protected' )? 'function' 'get' ID '(' ')' ':' gettype= ID ( ';' )? | 'private' 'function' 'get' ID '(' ')' ':' ID ( ';' )? | ( 'public' | 'protected' )? 'function' 'set' ID '(' ID ':' settype= ID ')' ( ':' ID )? ( ';' )? | 'private' 'function' 'set' ID '(' ID ':' ID ')' ( ':' ID )? ( ';' )? | ( 'public' | 'protected' )? ( 'static' )? 'function' fname= ID '(' ( ID ':' argtype1= ID ( assignment )? ( ',' ID ':' argtype2= ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )? | 'private' ( 'static' )? 'function' ID '(' ( ID ':' ID ( assignment )? ( ',' ID ':' ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )? );
    public final void declaration() throws RecognitionException {
        Token vartype=null;
        Token gettype=null;
        Token settype=null;
        Token fname=null;
        Token argtype1=null;
        Token argtype2=null;

        try {
            // SimpleAS3.g:55:1: ( ( 'public' | 'protected' )? ( 'static' )? ( 'var' | 'const' ) ID ':' vartype= ID ( assignment )? ( ';' )? | 'private' ( 'static' )? ( 'var' | 'const' ) ID ':' ID ( assignment )? ( ';' )? | ( 'public' | 'protected' )? 'function' 'get' ID '(' ')' ':' gettype= ID ( ';' )? | 'private' 'function' 'get' ID '(' ')' ':' ID ( ';' )? | ( 'public' | 'protected' )? 'function' 'set' ID '(' ID ':' settype= ID ')' ( ':' ID )? ( ';' )? | 'private' 'function' 'set' ID '(' ID ':' ID ')' ( ':' ID )? ( ';' )? | ( 'public' | 'protected' )? ( 'static' )? 'function' fname= ID '(' ( ID ':' argtype1= ID ( assignment )? ( ',' ID ':' argtype2= ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )? | 'private' ( 'static' )? 'function' ID '(' ( ID ':' ID ( assignment )? ( ',' ID ':' ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )? )
            int alt41=8;
            alt41 = dfa41.predict(input);
            switch (alt41) {
                case 1 :
                    // SimpleAS3.g:55:3: ( 'public' | 'protected' )? ( 'static' )? ( 'var' | 'const' ) ID ':' vartype= ID ( assignment )? ( ';' )?
                    {
                    // SimpleAS3.g:55:3: ( 'public' | 'protected' )?
                    int alt11=2;
                    int LA11_0 = input.LA(1);

                    if ( (LA11_0==21||LA11_0==29) ) {
                        alt11=1;
                    }
                    switch (alt11) {
                        case 1 :
                            // SimpleAS3.g:
                            {
                            if ( input.LA(1)==21||input.LA(1)==29 ) {
                                input.consume();
                                state.errorRecovery=false;
                            }
                            else {
                                MismatchedSetException mse = new MismatchedSetException(null,input);
                                throw mse;
                            }


                            }
                            break;

                    }

                    // SimpleAS3.g:55:27: ( 'static' )?
                    int alt12=2;
                    int LA12_0 = input.LA(1);

                    if ( (LA12_0==30) ) {
                        alt12=1;
                    }
                    switch (alt12) {
                        case 1 :
                            // SimpleAS3.g:55:28: 'static'
                            {
                            match(input,30,FOLLOW_30_in_declaration221); 

                            }
                            break;

                    }

                    if ( (input.LA(1)>=31 && input.LA(1)<=32) ) {
                        input.consume();
                        state.errorRecovery=false;
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        throw mse;
                    }

                    match(input,ID,FOLLOW_ID_in_declaration233); 
                    match(input,33,FOLLOW_33_in_declaration238); 
                    vartype=(Token)match(input,ID,FOLLOW_ID_in_declaration242); 
                    /*System.out.println((vartype!=null?vartype.getText():null));*/memory.add((vartype!=null?vartype.getText():null)); 
                    // SimpleAS3.g:57:3: ( assignment )?
                    int alt13=2;
                    int LA13_0 = input.LA(1);

                    if ( (LA13_0==40) ) {
                        alt13=1;
                    }
                    switch (alt13) {
                        case 1 :
                            // SimpleAS3.g:57:4: assignment
                            {
                            pushFollow(FOLLOW_assignment_in_declaration249);
                            assignment();

                            state._fsp--;


                            }
                            break;

                    }

                    // SimpleAS3.g:57:17: ( ';' )?
                    int alt14=2;
                    int LA14_0 = input.LA(1);

                    if ( (LA14_0==19) ) {
                        alt14=1;
                    }
                    switch (alt14) {
                        case 1 :
                            // SimpleAS3.g:57:18: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration254); 

                            }
                            break;

                    }


                    }
                    break;
                case 2 :
                    // SimpleAS3.g:58:3: 'private' ( 'static' )? ( 'var' | 'const' ) ID ':' ID ( assignment )? ( ';' )?
                    {
                    match(input,34,FOLLOW_34_in_declaration260); 
                    // SimpleAS3.g:58:13: ( 'static' )?
                    int alt15=2;
                    int LA15_0 = input.LA(1);

                    if ( (LA15_0==30) ) {
                        alt15=1;
                    }
                    switch (alt15) {
                        case 1 :
                            // SimpleAS3.g:58:14: 'static'
                            {
                            match(input,30,FOLLOW_30_in_declaration263); 

                            }
                            break;

                    }

                    if ( (input.LA(1)>=31 && input.LA(1)<=32) ) {
                        input.consume();
                        state.errorRecovery=false;
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        throw mse;
                    }

                    match(input,ID,FOLLOW_ID_in_declaration275); 
                    match(input,33,FOLLOW_33_in_declaration277); 
                    match(input,ID,FOLLOW_ID_in_declaration279); 
                    // SimpleAS3.g:58:53: ( assignment )?
                    int alt16=2;
                    int LA16_0 = input.LA(1);

                    if ( (LA16_0==40) ) {
                        alt16=1;
                    }
                    switch (alt16) {
                        case 1 :
                            // SimpleAS3.g:58:54: assignment
                            {
                            pushFollow(FOLLOW_assignment_in_declaration282);
                            assignment();

                            state._fsp--;


                            }
                            break;

                    }

                    // SimpleAS3.g:58:67: ( ';' )?
                    int alt17=2;
                    int LA17_0 = input.LA(1);

                    if ( (LA17_0==19) ) {
                        alt17=1;
                    }
                    switch (alt17) {
                        case 1 :
                            // SimpleAS3.g:58:68: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration287); 

                            }
                            break;

                    }


                    }
                    break;
                case 3 :
                    // SimpleAS3.g:59:3: ( 'public' | 'protected' )? 'function' 'get' ID '(' ')' ':' gettype= ID ( ';' )?
                    {
                    // SimpleAS3.g:59:3: ( 'public' | 'protected' )?
                    int alt18=2;
                    int LA18_0 = input.LA(1);

                    if ( (LA18_0==21||LA18_0==29) ) {
                        alt18=1;
                    }
                    switch (alt18) {
                        case 1 :
                            // SimpleAS3.g:
                            {
                            if ( input.LA(1)==21||input.LA(1)==29 ) {
                                input.consume();
                                state.errorRecovery=false;
                            }
                            else {
                                MismatchedSetException mse = new MismatchedSetException(null,input);
                                throw mse;
                            }


                            }
                            break;

                    }

                    match(input,35,FOLLOW_35_in_declaration300); 
                    match(input,36,FOLLOW_36_in_declaration302); 
                    match(input,ID,FOLLOW_ID_in_declaration304); 
                    match(input,37,FOLLOW_37_in_declaration309); 
                    match(input,38,FOLLOW_38_in_declaration311); 
                    match(input,33,FOLLOW_33_in_declaration313); 
                    gettype=(Token)match(input,ID,FOLLOW_ID_in_declaration317); 
                    /*System.out.println((gettype!=null?gettype.getText():null));*/memory.add((gettype!=null?gettype.getText():null)); 
                    // SimpleAS3.g:61:3: ( ';' )?
                    int alt19=2;
                    int LA19_0 = input.LA(1);

                    if ( (LA19_0==19) ) {
                        alt19=1;
                    }
                    switch (alt19) {
                        case 1 :
                            // SimpleAS3.g:61:4: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration324); 

                            }
                            break;

                    }


                    }
                    break;
                case 4 :
                    // SimpleAS3.g:62:3: 'private' 'function' 'get' ID '(' ')' ':' ID ( ';' )?
                    {
                    match(input,34,FOLLOW_34_in_declaration330); 
                    match(input,35,FOLLOW_35_in_declaration332); 
                    match(input,36,FOLLOW_36_in_declaration334); 
                    match(input,ID,FOLLOW_ID_in_declaration336); 
                    match(input,37,FOLLOW_37_in_declaration338); 
                    match(input,38,FOLLOW_38_in_declaration340); 
                    match(input,33,FOLLOW_33_in_declaration342); 
                    match(input,ID,FOLLOW_ID_in_declaration344); 
                    // SimpleAS3.g:62:48: ( ';' )?
                    int alt20=2;
                    int LA20_0 = input.LA(1);

                    if ( (LA20_0==19) ) {
                        alt20=1;
                    }
                    switch (alt20) {
                        case 1 :
                            // SimpleAS3.g:62:49: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration347); 

                            }
                            break;

                    }


                    }
                    break;
                case 5 :
                    // SimpleAS3.g:63:3: ( 'public' | 'protected' )? 'function' 'set' ID '(' ID ':' settype= ID ')' ( ':' ID )? ( ';' )?
                    {
                    // SimpleAS3.g:63:3: ( 'public' | 'protected' )?
                    int alt21=2;
                    int LA21_0 = input.LA(1);

                    if ( (LA21_0==21||LA21_0==29) ) {
                        alt21=1;
                    }
                    switch (alt21) {
                        case 1 :
                            // SimpleAS3.g:
                            {
                            if ( input.LA(1)==21||input.LA(1)==29 ) {
                                input.consume();
                                state.errorRecovery=false;
                            }
                            else {
                                MismatchedSetException mse = new MismatchedSetException(null,input);
                                throw mse;
                            }


                            }
                            break;

                    }

                    match(input,35,FOLLOW_35_in_declaration360); 
                    match(input,39,FOLLOW_39_in_declaration362); 
                    match(input,ID,FOLLOW_ID_in_declaration364); 
                    match(input,37,FOLLOW_37_in_declaration369); 
                    match(input,ID,FOLLOW_ID_in_declaration371); 
                    match(input,33,FOLLOW_33_in_declaration375); 
                    settype=(Token)match(input,ID,FOLLOW_ID_in_declaration379); 
                     memory.add((settype!=null?settype.getText():null)); 
                    match(input,38,FOLLOW_38_in_declaration385); 
                    // SimpleAS3.g:66:7: ( ':' ID )?
                    int alt22=2;
                    int LA22_0 = input.LA(1);

                    if ( (LA22_0==33) ) {
                        alt22=1;
                    }
                    switch (alt22) {
                        case 1 :
                            // SimpleAS3.g:66:8: ':' ID
                            {
                            match(input,33,FOLLOW_33_in_declaration388); 
                            match(input,ID,FOLLOW_ID_in_declaration390); 

                            }
                            break;

                    }

                    // SimpleAS3.g:66:17: ( ';' )?
                    int alt23=2;
                    int LA23_0 = input.LA(1);

                    if ( (LA23_0==19) ) {
                        alt23=1;
                    }
                    switch (alt23) {
                        case 1 :
                            // SimpleAS3.g:66:18: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration395); 

                            }
                            break;

                    }


                    }
                    break;
                case 6 :
                    // SimpleAS3.g:67:3: 'private' 'function' 'set' ID '(' ID ':' ID ')' ( ':' ID )? ( ';' )?
                    {
                    match(input,34,FOLLOW_34_in_declaration401); 
                    match(input,35,FOLLOW_35_in_declaration403); 
                    match(input,39,FOLLOW_39_in_declaration405); 
                    match(input,ID,FOLLOW_ID_in_declaration407); 
                    match(input,37,FOLLOW_37_in_declaration409); 
                    match(input,ID,FOLLOW_ID_in_declaration411); 
                    match(input,33,FOLLOW_33_in_declaration413); 
                    match(input,ID,FOLLOW_ID_in_declaration415); 
                    match(input,38,FOLLOW_38_in_declaration417); 
                    // SimpleAS3.g:67:51: ( ':' ID )?
                    int alt24=2;
                    int LA24_0 = input.LA(1);

                    if ( (LA24_0==33) ) {
                        alt24=1;
                    }
                    switch (alt24) {
                        case 1 :
                            // SimpleAS3.g:67:52: ':' ID
                            {
                            match(input,33,FOLLOW_33_in_declaration420); 
                            match(input,ID,FOLLOW_ID_in_declaration422); 

                            }
                            break;

                    }

                    // SimpleAS3.g:67:61: ( ';' )?
                    int alt25=2;
                    int LA25_0 = input.LA(1);

                    if ( (LA25_0==19) ) {
                        alt25=1;
                    }
                    switch (alt25) {
                        case 1 :
                            // SimpleAS3.g:67:62: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration427); 

                            }
                            break;

                    }


                    }
                    break;
                case 7 :
                    // SimpleAS3.g:68:3: ( 'public' | 'protected' )? ( 'static' )? 'function' fname= ID '(' ( ID ':' argtype1= ID ( assignment )? ( ',' ID ':' argtype2= ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )?
                    {
                    // SimpleAS3.g:68:3: ( 'public' | 'protected' )?
                    int alt26=2;
                    int LA26_0 = input.LA(1);

                    if ( (LA26_0==21||LA26_0==29) ) {
                        alt26=1;
                    }
                    switch (alt26) {
                        case 1 :
                            // SimpleAS3.g:
                            {
                            if ( input.LA(1)==21||input.LA(1)==29 ) {
                                input.consume();
                                state.errorRecovery=false;
                            }
                            else {
                                MismatchedSetException mse = new MismatchedSetException(null,input);
                                throw mse;
                            }


                            }
                            break;

                    }

                    // SimpleAS3.g:68:27: ( 'static' )?
                    int alt27=2;
                    int LA27_0 = input.LA(1);

                    if ( (LA27_0==30) ) {
                        alt27=1;
                    }
                    switch (alt27) {
                        case 1 :
                            // SimpleAS3.g:68:28: 'static'
                            {
                            match(input,30,FOLLOW_30_in_declaration441); 

                            }
                            break;

                    }

                    match(input,35,FOLLOW_35_in_declaration445); 
                    fname=(Token)match(input,ID,FOLLOW_ID_in_declaration449); 
                    /*System.out.println("function name:" + (fname!=null?fname.getText():null));*/ 
                    match(input,37,FOLLOW_37_in_declaration455); 
                    // SimpleAS3.g:69:7: ( ID ':' argtype1= ID ( assignment )? ( ',' ID ':' argtype2= ID ( assignment )? )* )?
                    int alt31=2;
                    int LA31_0 = input.LA(1);

                    if ( (LA31_0==ID) ) {
                        alt31=1;
                    }
                    switch (alt31) {
                        case 1 :
                            // SimpleAS3.g:69:8: ID ':' argtype1= ID ( assignment )? ( ',' ID ':' argtype2= ID ( assignment )? )*
                            {
                            match(input,ID,FOLLOW_ID_in_declaration458); 
                            match(input,33,FOLLOW_33_in_declaration460); 
                            argtype1=(Token)match(input,ID,FOLLOW_ID_in_declaration464); 
                             /*System.out.println((argtype1!=null?argtype1.getText():null));*/ memory.add((argtype1!=null?argtype1.getText():null)); 
                            // SimpleAS3.g:69:99: ( assignment )?
                            int alt28=2;
                            int LA28_0 = input.LA(1);

                            if ( (LA28_0==40) ) {
                                alt28=1;
                            }
                            switch (alt28) {
                                case 1 :
                                    // SimpleAS3.g:69:100: assignment
                                    {
                                    pushFollow(FOLLOW_assignment_in_declaration469);
                                    assignment();

                                    state._fsp--;


                                    }
                                    break;

                            }

                            // SimpleAS3.g:70:3: ( ',' ID ':' argtype2= ID ( assignment )? )*
                            loop30:
                            do {
                                int alt30=2;
                                int LA30_0 = input.LA(1);

                                if ( (LA30_0==28) ) {
                                    alt30=1;
                                }


                                switch (alt30) {
                            	case 1 :
                            	    // SimpleAS3.g:70:4: ',' ID ':' argtype2= ID ( assignment )?
                            	    {
                            	    match(input,28,FOLLOW_28_in_declaration477); 
                            	    match(input,ID,FOLLOW_ID_in_declaration479); 
                            	    match(input,33,FOLLOW_33_in_declaration481); 
                            	    argtype2=(Token)match(input,ID,FOLLOW_ID_in_declaration485); 
                            	     /*System.out.println((argtype2!=null?argtype2.getText():null));*/ memory.add((argtype2!=null?argtype2.getText():null)); 
                            	    // SimpleAS3.g:70:99: ( assignment )?
                            	    int alt29=2;
                            	    int LA29_0 = input.LA(1);

                            	    if ( (LA29_0==40) ) {
                            	        alt29=1;
                            	    }
                            	    switch (alt29) {
                            	        case 1 :
                            	            // SimpleAS3.g:70:100: assignment
                            	            {
                            	            pushFollow(FOLLOW_assignment_in_declaration490);
                            	            assignment();

                            	            state._fsp--;


                            	            }
                            	            break;

                            	    }


                            	    }
                            	    break;

                            	default :
                            	    break loop30;
                                }
                            } while (true);


                            }
                            break;

                    }

                    match(input,38,FOLLOW_38_in_declaration500); 
                    // SimpleAS3.g:70:123: ( ':' ID )?
                    int alt32=2;
                    int LA32_0 = input.LA(1);

                    if ( (LA32_0==33) ) {
                        alt32=1;
                    }
                    switch (alt32) {
                        case 1 :
                            // SimpleAS3.g:70:124: ':' ID
                            {
                            match(input,33,FOLLOW_33_in_declaration503); 
                            match(input,ID,FOLLOW_ID_in_declaration505); 

                            }
                            break;

                    }

                    // SimpleAS3.g:70:133: ( ';' )?
                    int alt33=2;
                    int LA33_0 = input.LA(1);

                    if ( (LA33_0==19) ) {
                        alt33=1;
                    }
                    switch (alt33) {
                        case 1 :
                            // SimpleAS3.g:70:134: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration510); 

                            }
                            break;

                    }


                    }
                    break;
                case 8 :
                    // SimpleAS3.g:71:3: 'private' ( 'static' )? 'function' ID '(' ( ID ':' ID ( assignment )? ( ',' ID ':' ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )?
                    {
                    match(input,34,FOLLOW_34_in_declaration516); 
                    // SimpleAS3.g:71:13: ( 'static' )?
                    int alt34=2;
                    int LA34_0 = input.LA(1);

                    if ( (LA34_0==30) ) {
                        alt34=1;
                    }
                    switch (alt34) {
                        case 1 :
                            // SimpleAS3.g:71:14: 'static'
                            {
                            match(input,30,FOLLOW_30_in_declaration519); 

                            }
                            break;

                    }

                    match(input,35,FOLLOW_35_in_declaration523); 
                    match(input,ID,FOLLOW_ID_in_declaration525); 
                    match(input,37,FOLLOW_37_in_declaration527); 
                    // SimpleAS3.g:71:43: ( ID ':' ID ( assignment )? ( ',' ID ':' ID ( assignment )? )* )?
                    int alt38=2;
                    int LA38_0 = input.LA(1);

                    if ( (LA38_0==ID) ) {
                        alt38=1;
                    }
                    switch (alt38) {
                        case 1 :
                            // SimpleAS3.g:71:44: ID ':' ID ( assignment )? ( ',' ID ':' ID ( assignment )? )*
                            {
                            match(input,ID,FOLLOW_ID_in_declaration530); 
                            match(input,33,FOLLOW_33_in_declaration532); 
                            match(input,ID,FOLLOW_ID_in_declaration534); 
                            // SimpleAS3.g:71:54: ( assignment )?
                            int alt35=2;
                            int LA35_0 = input.LA(1);

                            if ( (LA35_0==40) ) {
                                alt35=1;
                            }
                            switch (alt35) {
                                case 1 :
                                    // SimpleAS3.g:71:55: assignment
                                    {
                                    pushFollow(FOLLOW_assignment_in_declaration537);
                                    assignment();

                                    state._fsp--;


                                    }
                                    break;

                            }

                            // SimpleAS3.g:71:68: ( ',' ID ':' ID ( assignment )? )*
                            loop37:
                            do {
                                int alt37=2;
                                int LA37_0 = input.LA(1);

                                if ( (LA37_0==28) ) {
                                    alt37=1;
                                }


                                switch (alt37) {
                            	case 1 :
                            	    // SimpleAS3.g:71:69: ',' ID ':' ID ( assignment )?
                            	    {
                            	    match(input,28,FOLLOW_28_in_declaration542); 
                            	    match(input,ID,FOLLOW_ID_in_declaration544); 
                            	    match(input,33,FOLLOW_33_in_declaration546); 
                            	    match(input,ID,FOLLOW_ID_in_declaration548); 
                            	    // SimpleAS3.g:71:83: ( assignment )?
                            	    int alt36=2;
                            	    int LA36_0 = input.LA(1);

                            	    if ( (LA36_0==40) ) {
                            	        alt36=1;
                            	    }
                            	    switch (alt36) {
                            	        case 1 :
                            	            // SimpleAS3.g:71:84: assignment
                            	            {
                            	            pushFollow(FOLLOW_assignment_in_declaration551);
                            	            assignment();

                            	            state._fsp--;


                            	            }
                            	            break;

                            	    }


                            	    }
                            	    break;

                            	default :
                            	    break loop37;
                                }
                            } while (true);


                            }
                            break;

                    }

                    match(input,38,FOLLOW_38_in_declaration561); 
                    // SimpleAS3.g:71:107: ( ':' ID )?
                    int alt39=2;
                    int LA39_0 = input.LA(1);

                    if ( (LA39_0==33) ) {
                        alt39=1;
                    }
                    switch (alt39) {
                        case 1 :
                            // SimpleAS3.g:71:108: ':' ID
                            {
                            match(input,33,FOLLOW_33_in_declaration564); 
                            match(input,ID,FOLLOW_ID_in_declaration566); 

                            }
                            break;

                    }

                    // SimpleAS3.g:71:117: ( ';' )?
                    int alt40=2;
                    int LA40_0 = input.LA(1);

                    if ( (LA40_0==19) ) {
                        alt40=1;
                    }
                    switch (alt40) {
                        case 1 :
                            // SimpleAS3.g:71:118: ';'
                            {
                            match(input,19,FOLLOW_19_in_declaration571); 

                            }
                            break;

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "declaration"


    // $ANTLR start "assignment"
    // SimpleAS3.g:74:1: assignment : '=' expression ;
    public final void assignment() throws RecognitionException {
        try {
            // SimpleAS3.g:75:1: ( '=' expression )
            // SimpleAS3.g:75:3: '=' expression
            {
            match(input,40,FOLLOW_40_in_assignment582); 
            pushFollow(FOLLOW_expression_in_assignment584);
            expression();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "assignment"


    // $ANTLR start "expression"
    // SimpleAS3.g:78:1: expression : ( '(' expression ')' | '[' expression ']' | '{' expression '}' | expr_var ( ( '+' | '-' | '*' | '/' | '%' | '=' | '<<' | '>>' | ',' ) expr_var )* );
    public final void expression() throws RecognitionException {
        try {
            // SimpleAS3.g:79:1: ( '(' expression ')' | '[' expression ']' | '{' expression '}' | expr_var ( ( '+' | '-' | '*' | '/' | '%' | '=' | '<<' | '>>' | ',' ) expr_var )* )
            int alt43=4;
            switch ( input.LA(1) ) {
            case 37:
                {
                alt43=1;
                }
                break;
            case 41:
                {
                alt43=2;
                }
                break;
            case 15:
                {
                alt43=3;
                }
                break;
            case ID:
            case INT_LIT:
            case DOUBLE_LIT:
            case BOOLEAN_LIT:
            case STR_LIT:
            case NULL_LIT:
            case 50:
                {
                alt43=4;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 43, 0, input);

                throw nvae;
            }

            switch (alt43) {
                case 1 :
                    // SimpleAS3.g:79:3: '(' expression ')'
                    {
                    match(input,37,FOLLOW_37_in_expression593); 
                    pushFollow(FOLLOW_expression_in_expression595);
                    expression();

                    state._fsp--;

                    match(input,38,FOLLOW_38_in_expression597); 

                    }
                    break;
                case 2 :
                    // SimpleAS3.g:80:3: '[' expression ']'
                    {
                    match(input,41,FOLLOW_41_in_expression601); 
                    pushFollow(FOLLOW_expression_in_expression603);
                    expression();

                    state._fsp--;

                    match(input,42,FOLLOW_42_in_expression605); 

                    }
                    break;
                case 3 :
                    // SimpleAS3.g:81:3: '{' expression '}'
                    {
                    match(input,15,FOLLOW_15_in_expression609); 
                    pushFollow(FOLLOW_expression_in_expression611);
                    expression();

                    state._fsp--;

                    match(input,16,FOLLOW_16_in_expression613); 

                    }
                    break;
                case 4 :
                    // SimpleAS3.g:82:3: expr_var ( ( '+' | '-' | '*' | '/' | '%' | '=' | '<<' | '>>' | ',' ) expr_var )*
                    {
                    pushFollow(FOLLOW_expr_var_in_expression617);
                    expr_var();

                    state._fsp--;

                    // SimpleAS3.g:82:12: ( ( '+' | '-' | '*' | '/' | '%' | '=' | '<<' | '>>' | ',' ) expr_var )*
                    loop42:
                    do {
                        int alt42=2;
                        int LA42_0 = input.LA(1);

                        if ( (LA42_0==28) ) {
                            int LA42_2 = input.LA(2);

                            if ( (LA42_2==ID) ) {
                                int LA42_4 = input.LA(3);

                                if ( (LA42_4==16||LA42_4==19||LA42_4==21||(LA42_4>=28 && LA42_4<=32)||(LA42_4>=34 && LA42_4<=35)||LA42_4==38||LA42_4==40||(LA42_4>=42 && LA42_4<=49)) ) {
                                    alt42=1;
                                }


                            }
                            else if ( ((LA42_2>=INT_LIT && LA42_2<=NULL_LIT)||LA42_2==50) ) {
                                alt42=1;
                            }


                        }
                        else if ( (LA42_0==40||(LA42_0>=43 && LA42_0<=49)) ) {
                            alt42=1;
                        }


                        switch (alt42) {
                    	case 1 :
                    	    // SimpleAS3.g:82:13: ( '+' | '-' | '*' | '/' | '%' | '=' | '<<' | '>>' | ',' ) expr_var
                    	    {
                    	    if ( input.LA(1)==28||input.LA(1)==40||(input.LA(1)>=43 && input.LA(1)<=49) ) {
                    	        input.consume();
                    	        state.errorRecovery=false;
                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        throw mse;
                    	    }

                    	    pushFollow(FOLLOW_expr_var_in_expression656);
                    	    expr_var();

                    	    state._fsp--;


                    	    }
                    	    break;

                    	default :
                    	    break loop42;
                        }
                    } while (true);


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "expression"


    // $ANTLR start "expr_var"
    // SimpleAS3.g:85:1: expr_var : varname ;
    public final void expr_var() throws RecognitionException {
        try {
            // SimpleAS3.g:86:1: ( varname )
            // SimpleAS3.g:86:3: varname
            {
            pushFollow(FOLLOW_varname_in_expr_var667);
            varname();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "expr_var"


    // $ANTLR start "varname"
    // SimpleAS3.g:89:1: varname : ( INT_LIT | DOUBLE_LIT | BOOLEAN_LIT | STR_LIT | NULL_LIT | ID | newobject ) ;
    public final void varname() throws RecognitionException {
        try {
            // SimpleAS3.g:90:1: ( ( INT_LIT | DOUBLE_LIT | BOOLEAN_LIT | STR_LIT | NULL_LIT | ID | newobject ) )
            // SimpleAS3.g:90:3: ( INT_LIT | DOUBLE_LIT | BOOLEAN_LIT | STR_LIT | NULL_LIT | ID | newobject )
            {
            // SimpleAS3.g:90:3: ( INT_LIT | DOUBLE_LIT | BOOLEAN_LIT | STR_LIT | NULL_LIT | ID | newobject )
            int alt44=7;
            switch ( input.LA(1) ) {
            case INT_LIT:
                {
                alt44=1;
                }
                break;
            case DOUBLE_LIT:
                {
                alt44=2;
                }
                break;
            case BOOLEAN_LIT:
                {
                alt44=3;
                }
                break;
            case STR_LIT:
                {
                alt44=4;
                }
                break;
            case NULL_LIT:
                {
                alt44=5;
                }
                break;
            case ID:
                {
                alt44=6;
                }
                break;
            case 50:
                {
                alt44=7;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 44, 0, input);

                throw nvae;
            }

            switch (alt44) {
                case 1 :
                    // SimpleAS3.g:90:4: INT_LIT
                    {
                    match(input,INT_LIT,FOLLOW_INT_LIT_in_varname677); 

                    }
                    break;
                case 2 :
                    // SimpleAS3.g:90:14: DOUBLE_LIT
                    {
                    match(input,DOUBLE_LIT,FOLLOW_DOUBLE_LIT_in_varname681); 

                    }
                    break;
                case 3 :
                    // SimpleAS3.g:90:27: BOOLEAN_LIT
                    {
                    match(input,BOOLEAN_LIT,FOLLOW_BOOLEAN_LIT_in_varname685); 

                    }
                    break;
                case 4 :
                    // SimpleAS3.g:90:41: STR_LIT
                    {
                    match(input,STR_LIT,FOLLOW_STR_LIT_in_varname689); 

                    }
                    break;
                case 5 :
                    // SimpleAS3.g:90:51: NULL_LIT
                    {
                    match(input,NULL_LIT,FOLLOW_NULL_LIT_in_varname693); 

                    }
                    break;
                case 6 :
                    // SimpleAS3.g:90:62: ID
                    {
                    match(input,ID,FOLLOW_ID_in_varname697); 

                    }
                    break;
                case 7 :
                    // SimpleAS3.g:90:67: newobject
                    {
                    pushFollow(FOLLOW_newobject_in_varname701);
                    newobject();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "varname"


    // $ANTLR start "newobject"
    // SimpleAS3.g:93:1: newobject : 'new' ID ( '(' ( . )* ')' )? ;
    public final void newobject() throws RecognitionException {
        try {
            // SimpleAS3.g:94:1: ( 'new' ID ( '(' ( . )* ')' )? )
            // SimpleAS3.g:94:3: 'new' ID ( '(' ( . )* ')' )?
            {
            match(input,50,FOLLOW_50_in_newobject712); 
            match(input,ID,FOLLOW_ID_in_newobject714); 
            // SimpleAS3.g:94:12: ( '(' ( . )* ')' )?
            int alt46=2;
            int LA46_0 = input.LA(1);

            if ( (LA46_0==37) ) {
                alt46=1;
            }
            switch (alt46) {
                case 1 :
                    // SimpleAS3.g:94:13: '(' ( . )* ')'
                    {
                    match(input,37,FOLLOW_37_in_newobject717); 
                    // SimpleAS3.g:94:17: ( . )*
                    loop45:
                    do {
                        int alt45=2;
                        int LA45_0 = input.LA(1);

                        if ( (LA45_0==38) ) {
                            alt45=2;
                        }
                        else if ( ((LA45_0>=SL_COMMENT && LA45_0<=37)||(LA45_0>=39 && LA45_0<=50)) ) {
                            alt45=1;
                        }


                        switch (alt45) {
                    	case 1 :
                    	    // SimpleAS3.g:94:17: .
                    	    {
                    	    matchAny(input); 

                    	    }
                    	    break;

                    	default :
                    	    break loop45;
                        }
                    } while (true);

                    match(input,38,FOLLOW_38_in_newobject722); 

                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "newobject"

    // Delegated rules


    protected DFA41 dfa41 = new DFA41(this);
    static final String DFA41_eotS =
        "\17\uffff";
    static final String DFA41_eofS =
        "\17\uffff";
    static final String DFA41_minS =
        "\1\25\1\36\1\37\1\uffff\1\36\1\6\1\uffff\1\6\1\37\6\uffff";
    static final String DFA41_maxS =
        "\3\43\1\uffff\1\43\1\47\1\uffff\1\47\1\43\6\uffff";
    static final String DFA41_acceptS =
        "\3\uffff\1\1\2\uffff\1\7\2\uffff\1\2\1\3\1\5\1\4\1\6\1\10";
    static final String DFA41_specialS =
        "\17\uffff}>";
    static final String[] DFA41_transitionS = {
            "\1\1\7\uffff\1\1\1\2\2\3\1\uffff\1\4\1\5",
            "\1\2\2\3\2\uffff\1\5",
            "\2\3\2\uffff\1\6",
            "",
            "\1\10\2\11\2\uffff\1\7",
            "\1\6\35\uffff\1\12\2\uffff\1\13",
            "",
            "\1\16\35\uffff\1\14\2\uffff\1\15",
            "\2\11\2\uffff\1\16",
            "",
            "",
            "",
            "",
            "",
            ""
    };

    static final short[] DFA41_eot = DFA.unpackEncodedString(DFA41_eotS);
    static final short[] DFA41_eof = DFA.unpackEncodedString(DFA41_eofS);
    static final char[] DFA41_min = DFA.unpackEncodedStringToUnsignedChars(DFA41_minS);
    static final char[] DFA41_max = DFA.unpackEncodedStringToUnsignedChars(DFA41_maxS);
    static final short[] DFA41_accept = DFA.unpackEncodedString(DFA41_acceptS);
    static final short[] DFA41_special = DFA.unpackEncodedString(DFA41_specialS);
    static final short[][] DFA41_transition;

    static {
        int numStates = DFA41_transitionS.length;
        DFA41_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA41_transition[i] = DFA.unpackEncodedString(DFA41_transitionS[i]);
        }
    }

    class DFA41 extends DFA {

        public DFA41(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 41;
            this.eot = DFA41_eot;
            this.eof = DFA41_eof;
            this.min = DFA41_min;
            this.max = DFA41_max;
            this.accept = DFA41_accept;
            this.special = DFA41_special;
            this.transition = DFA41_transition;
        }
        public String getDescription() {
            return "54:1: declaration : ( ( 'public' | 'protected' )? ( 'static' )? ( 'var' | 'const' ) ID ':' vartype= ID ( assignment )? ( ';' )? | 'private' ( 'static' )? ( 'var' | 'const' ) ID ':' ID ( assignment )? ( ';' )? | ( 'public' | 'protected' )? 'function' 'get' ID '(' ')' ':' gettype= ID ( ';' )? | 'private' 'function' 'get' ID '(' ')' ':' ID ( ';' )? | ( 'public' | 'protected' )? 'function' 'set' ID '(' ID ':' settype= ID ')' ( ':' ID )? ( ';' )? | 'private' 'function' 'set' ID '(' ID ':' ID ')' ( ':' ID )? ( ';' )? | ( 'public' | 'protected' )? ( 'static' )? 'function' fname= ID '(' ( ID ':' argtype1= ID ( assignment )? ( ',' ID ':' argtype2= ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )? | 'private' ( 'static' )? 'function' ID '(' ( ID ':' ID ( assignment )? ( ',' ID ':' ID ( assignment )? )* )? ')' ( ':' ID )? ( ';' )? );";
        }
    }
 

    public static final BitSet FOLLOW_set_in_program22 = new BitSet(new long[]{0x0000000000004030L});
    public static final BitSet FOLLOW_14_in_program31 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_packagename_in_program33 = new BitSet(new long[]{0x0000000000008000L});
    public static final BitSet FOLLOW_15_in_program35 = new BitSet(new long[]{0x0000000000E40000L});
    public static final BitSet FOLLOW_packagebody_in_program37 = new BitSet(new long[]{0x0000000000010000L});
    public static final BitSet FOLLOW_16_in_program39 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ID_in_packagename49 = new BitSet(new long[]{0x0000000000020002L});
    public static final BitSet FOLLOW_17_in_packagename52 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_packagename54 = new BitSet(new long[]{0x0000000000020002L});
    public static final BitSet FOLLOW_importstatement_in_packagebody66 = new BitSet(new long[]{0x0000000000E40000L});
    public static final BitSet FOLLOW_classblock_in_packagebody70 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_18_in_importstatement79 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_importpackagename_in_importstatement81 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_importstatement84 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ID_in_importpackagename95 = new BitSet(new long[]{0x0000000000120002L});
    public static final BitSet FOLLOW_17_in_importpackagename98 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_importpackagename100 = new BitSet(new long[]{0x0000000000120002L});
    public static final BitSet FOLLOW_20_in_importpackagename105 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ID_in_classname116 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_classaccessattr0 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_classaccessattr_in_classblock142 = new BitSet(new long[]{0x0000000003000000L});
    public static final BitSet FOLLOW_set_in_classblock144 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_classname_in_classblock150 = new BitSet(new long[]{0x000000000C008000L});
    public static final BitSet FOLLOW_classextends_in_classblock156 = new BitSet(new long[]{0x000000000C008000L});
    public static final BitSet FOLLOW_15_in_classblock160 = new BitSet(new long[]{0x0000000DE0210000L});
    public static final BitSet FOLLOW_declaration_in_classblock163 = new BitSet(new long[]{0x0000000DE0210000L});
    public static final BitSet FOLLOW_16_in_classblock167 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_26_in_classextends176 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_classextends180 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_27_in_classextends186 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_classextends190 = new BitSet(new long[]{0x0000000010000002L});
    public static final BitSet FOLLOW_28_in_classextends195 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_classextends199 = new BitSet(new long[]{0x0000000010000002L});
    public static final BitSet FOLLOW_set_in_declaration213 = new BitSet(new long[]{0x00000001C0000000L});
    public static final BitSet FOLLOW_30_in_declaration221 = new BitSet(new long[]{0x0000000180000000L});
    public static final BitSet FOLLOW_set_in_declaration225 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration233 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration238 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration242 = new BitSet(new long[]{0x0000010000080002L});
    public static final BitSet FOLLOW_assignment_in_declaration249 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration254 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_34_in_declaration260 = new BitSet(new long[]{0x00000001C0000000L});
    public static final BitSet FOLLOW_30_in_declaration263 = new BitSet(new long[]{0x0000000180000000L});
    public static final BitSet FOLLOW_set_in_declaration267 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration275 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration277 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration279 = new BitSet(new long[]{0x0000010000080002L});
    public static final BitSet FOLLOW_assignment_in_declaration282 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration287 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_declaration293 = new BitSet(new long[]{0x0000000800000000L});
    public static final BitSet FOLLOW_35_in_declaration300 = new BitSet(new long[]{0x0000001000000000L});
    public static final BitSet FOLLOW_36_in_declaration302 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration304 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_declaration309 = new BitSet(new long[]{0x0000004000000000L});
    public static final BitSet FOLLOW_38_in_declaration311 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration313 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration317 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration324 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_34_in_declaration330 = new BitSet(new long[]{0x0000000800000000L});
    public static final BitSet FOLLOW_35_in_declaration332 = new BitSet(new long[]{0x0000001000000000L});
    public static final BitSet FOLLOW_36_in_declaration334 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration336 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_declaration338 = new BitSet(new long[]{0x0000004000000000L});
    public static final BitSet FOLLOW_38_in_declaration340 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration342 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration344 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration347 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_declaration353 = new BitSet(new long[]{0x0000000800000000L});
    public static final BitSet FOLLOW_35_in_declaration360 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_39_in_declaration362 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration364 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_declaration369 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration371 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration375 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration379 = new BitSet(new long[]{0x0000004000000000L});
    public static final BitSet FOLLOW_38_in_declaration385 = new BitSet(new long[]{0x0000000200080002L});
    public static final BitSet FOLLOW_33_in_declaration388 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration390 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration395 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_34_in_declaration401 = new BitSet(new long[]{0x0000000800000000L});
    public static final BitSet FOLLOW_35_in_declaration403 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_39_in_declaration405 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration407 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_declaration409 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration411 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration413 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration415 = new BitSet(new long[]{0x0000004000000000L});
    public static final BitSet FOLLOW_38_in_declaration417 = new BitSet(new long[]{0x0000000200080002L});
    public static final BitSet FOLLOW_33_in_declaration420 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration422 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration427 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_declaration433 = new BitSet(new long[]{0x0000000840000000L});
    public static final BitSet FOLLOW_30_in_declaration441 = new BitSet(new long[]{0x0000000800000000L});
    public static final BitSet FOLLOW_35_in_declaration445 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration449 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_declaration455 = new BitSet(new long[]{0x0000004000000040L});
    public static final BitSet FOLLOW_ID_in_declaration458 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration460 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration464 = new BitSet(new long[]{0x0000014010000000L});
    public static final BitSet FOLLOW_assignment_in_declaration469 = new BitSet(new long[]{0x0000004010000000L});
    public static final BitSet FOLLOW_28_in_declaration477 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration479 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration481 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration485 = new BitSet(new long[]{0x0000014010000000L});
    public static final BitSet FOLLOW_assignment_in_declaration490 = new BitSet(new long[]{0x0000004010000000L});
    public static final BitSet FOLLOW_38_in_declaration500 = new BitSet(new long[]{0x0000000200080002L});
    public static final BitSet FOLLOW_33_in_declaration503 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration505 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration510 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_34_in_declaration516 = new BitSet(new long[]{0x0000000840000000L});
    public static final BitSet FOLLOW_30_in_declaration519 = new BitSet(new long[]{0x0000000800000000L});
    public static final BitSet FOLLOW_35_in_declaration523 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration525 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_declaration527 = new BitSet(new long[]{0x0000004000000040L});
    public static final BitSet FOLLOW_ID_in_declaration530 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration532 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration534 = new BitSet(new long[]{0x0000014010000000L});
    public static final BitSet FOLLOW_assignment_in_declaration537 = new BitSet(new long[]{0x0000004010000000L});
    public static final BitSet FOLLOW_28_in_declaration542 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration544 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_33_in_declaration546 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration548 = new BitSet(new long[]{0x0000014010000000L});
    public static final BitSet FOLLOW_assignment_in_declaration551 = new BitSet(new long[]{0x0000004010000000L});
    public static final BitSet FOLLOW_38_in_declaration561 = new BitSet(new long[]{0x0000000200080002L});
    public static final BitSet FOLLOW_33_in_declaration564 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_declaration566 = new BitSet(new long[]{0x0000000000080002L});
    public static final BitSet FOLLOW_19_in_declaration571 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_40_in_assignment582 = new BitSet(new long[]{0x0004022000008FC0L});
    public static final BitSet FOLLOW_expression_in_assignment584 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_37_in_expression593 = new BitSet(new long[]{0x0004022000008FC0L});
    public static final BitSet FOLLOW_expression_in_expression595 = new BitSet(new long[]{0x0000004000000000L});
    public static final BitSet FOLLOW_38_in_expression597 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_41_in_expression601 = new BitSet(new long[]{0x0004022000008FC0L});
    public static final BitSet FOLLOW_expression_in_expression603 = new BitSet(new long[]{0x0000040000000000L});
    public static final BitSet FOLLOW_42_in_expression605 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_expression609 = new BitSet(new long[]{0x0004022000008FC0L});
    public static final BitSet FOLLOW_expression_in_expression611 = new BitSet(new long[]{0x0000000000010000L});
    public static final BitSet FOLLOW_16_in_expression613 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_expr_var_in_expression617 = new BitSet(new long[]{0x0003F90010000002L});
    public static final BitSet FOLLOW_set_in_expression620 = new BitSet(new long[]{0x0004022000008FC0L});
    public static final BitSet FOLLOW_expr_var_in_expression656 = new BitSet(new long[]{0x0003F90010000002L});
    public static final BitSet FOLLOW_varname_in_expr_var667 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_INT_LIT_in_varname677 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_DOUBLE_LIT_in_varname681 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_BOOLEAN_LIT_in_varname685 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_STR_LIT_in_varname689 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_NULL_LIT_in_varname693 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ID_in_varname697 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_newobject_in_varname701 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_50_in_newobject712 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ID_in_newobject714 = new BitSet(new long[]{0x0000002000000002L});
    public static final BitSet FOLLOW_37_in_newobject717 = new BitSet(new long[]{0x0007FFFFFFFFFFF0L});
    public static final BitSet FOLLOW_38_in_newobject722 = new BitSet(new long[]{0x0000000000000002L});

}