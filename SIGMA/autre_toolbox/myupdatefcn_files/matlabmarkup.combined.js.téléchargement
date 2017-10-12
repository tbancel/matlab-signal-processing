/**
 * matlabmarkup.js
 * @version 2.0.0
 */
// $ANTLR 3.3 Nov 30, 2010 12:46:29 /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g 2013-10-02 14:40:46

var BlockLexer = function(input, state) {
// alternate constructor @todo
// public BlockLexer(CharStream input)
// public BlockLexer(CharStream input, RecognizerSharedState state) {
    if (!state) {
        state = new org.antlr.runtime.RecognizerSharedState();
    }

    (function(){
    }).call(this);

    this.dfa19 = new BlockLexer.DFA19(this);
    BlockLexer.superclass.constructor.call(this, input, state);


};

org.antlr.lang.augmentObject(BlockLexer, {
    EOF: -1,
    PARAGRAPH: 4,
    PLAINTEXT: 5,
    BOLDTEXT: 6,
    ITALICTEXT: 7,
    MONOTEXT: 8,
    TEXTNODE: 9,
    SIMPLELINK: 10,
    NAMEDLINK: 11,
    NESTED_ITALIC: 12,
    NESTED_BOLD: 13,
    NESTED_MONO: 14,
    CLOSE_LINK_MARKUP: 15,
    BOLD_MARKUP: 16,
    ITAL_MARKUP: 17,
    MONO_MARKUP: 18,
    WHITESPACE: 19,
    WS: 20,
    LINK_MARKUP: 21,
    CLOSE_MONO_MARKUP: 22,
    CLOSE_ITALIC_MARKUP: 23,
    CLOSE_BOLD_MARKUP: 24,
    NESTED_LINK_MARKUP: 25,
    CR: 26,
    LF: 27,
    NEW_LINE: 28,
    NUMBER_CHAR: 29,
    ALPHABET: 30,
    DIGIT: 31,
    TRADE_MARK: 32,
    INSIGNIFICANT_CHAR: 33
});

(function(){
var HIDDEN = org.antlr.runtime.Token.HIDDEN_CHANNEL,
    EOF = org.antlr.runtime.Token.EOF;
org.antlr.lang.extend(BlockLexer, org.antlr.runtime.Lexer, {
    EOF : -1,
    PARAGRAPH : 4,
    PLAINTEXT : 5,
    BOLDTEXT : 6,
    ITALICTEXT : 7,
    MONOTEXT : 8,
    TEXTNODE : 9,
    SIMPLELINK : 10,
    NAMEDLINK : 11,
    NESTED_ITALIC : 12,
    NESTED_BOLD : 13,
    NESTED_MONO : 14,
    CLOSE_LINK_MARKUP : 15,
    BOLD_MARKUP : 16,
    ITAL_MARKUP : 17,
    MONO_MARKUP : 18,
    WHITESPACE : 19,
    WS : 20,
    LINK_MARKUP : 21,
    CLOSE_MONO_MARKUP : 22,
    CLOSE_ITALIC_MARKUP : 23,
    CLOSE_BOLD_MARKUP : 24,
    NESTED_LINK_MARKUP : 25,
    CR : 26,
    LF : 27,
    NEW_LINE : 28,
    NUMBER_CHAR : 29,
    ALPHABET : 30,
    DIGIT : 31,
    TRADE_MARK : 32,
    INSIGNIFICANT_CHAR : 33,
    getGrammarFileName: function() { return "/local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g"; }
});
org.antlr.lang.augmentObject(BlockLexer.prototype, {
    // $ANTLR start WS
    mWS: function()  {
        try {
            var _type = this.WS;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:405:4: ( ' ' )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:406:3: ' '
            this.match(' '); if (this.state.failed) return ;



            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "WS",

    // $ANTLR start NEW_LINE
    mNEW_LINE: function()  {
        try {
            var _type = this.NEW_LINE;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:410:2: ( ( CR )? LF | CR )
            var alt2=2;
            var LA2_0 = this.input.LA(1);

            if ( (LA2_0=='\r') ) {
                var LA2_1 = this.input.LA(2);

                if ( (LA2_1=='\n') ) {
                    alt2=1;
                }
                else {
                    alt2=2;}
            }
            else if ( (LA2_0=='\n') ) {
                alt2=1;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 2, 0, this.input);

                throw nvae;
            }
            switch (alt2) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:410:4: ( CR )? LF
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:410:4: ( CR )?
                    var alt1=2;
                    var LA1_0 = this.input.LA(1);

                    if ( (LA1_0=='\r') ) {
                        alt1=1;
                    }
                    switch (alt1) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:410:5: CR
                            this.mCR(); if (this.state.failed) return ;


                            break;

                    }

                    this.mLF(); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:410:15: CR
                    this.mCR(); if (this.state.failed) return ;


                    break;

            }
            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "NEW_LINE",

    // $ANTLR start LF
    mLF: function()  {
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:414:2: ( '\\n' )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:414:4: '\\n'
            this.match('\n'); if (this.state.failed) return ;



        }
        finally {
        }
    },
    // $ANTLR end "LF",

    // $ANTLR start CR
    mCR: function()  {
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:418:2: ( '\\r' )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:418:4: '\\r'
            this.match('\r'); if (this.state.failed) return ;



        }
        finally {
        }
    },
    // $ANTLR end "CR",

    // $ANTLR start CLOSE_MONO_MARKUP
    mCLOSE_MONO_MARKUP: function()  {
        try {
            var _type = this.CLOSE_MONO_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:424:2: ( '|' ( ( NUMBER_CHAR )=> | ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=> | ( '|' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:424:4: '|' ( ( NUMBER_CHAR )=> | ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=> | ( '|' )=> | )
            this.match('|'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:425:2: ( ( NUMBER_CHAR )=> | ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=> | ( '|' )=> | )
            var alt3=4;
            var LA3_0 = this.input.LA(1);

            if ( (this.synpred1_Block()) ) {
                alt3=1;
            }
            else if ( (this.synpred2_Block()) ) {
                alt3=2;
            }
            else if ( (this.synpred3_Block()) ) {
                alt3=3;
            }
            else if ( (true) ) {
                alt3=4;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 3, 0, this.input);

                throw nvae;
            }
            switch (alt3) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:425:3: ( NUMBER_CHAR )=>
                    if ( this.state.backtracking===0 ) {
                      _type =this.NESTED_MONO;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:427:2: ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=>

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:429:2: ( '|' )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:431:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "CLOSE_MONO_MARKUP",

    // $ANTLR start CLOSE_ITALIC_MARKUP
    mCLOSE_ITALIC_MARKUP: function()  {
        try {
            var _type = this.CLOSE_ITALIC_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:435:2: ( '_' ( ( NUMBER_CHAR )=> | ( CLOSE_MONO_MARKUP | CLOSE_BOLD_MARKUP | NESTED_LINK_MARKUP )=> | ( '_' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:435:4: '_' ( ( NUMBER_CHAR )=> | ( CLOSE_MONO_MARKUP | CLOSE_BOLD_MARKUP | NESTED_LINK_MARKUP )=> | ( '_' )=> | )
            this.match('_'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:436:2: ( ( NUMBER_CHAR )=> | ( CLOSE_MONO_MARKUP | CLOSE_BOLD_MARKUP | NESTED_LINK_MARKUP )=> | ( '_' )=> | )
            var alt4=4;
            var LA4_0 = this.input.LA(1);

            if ( (this.synpred4_Block()) ) {
                alt4=1;
            }
            else if ( (this.synpred5_Block()) ) {
                alt4=2;
            }
            else if ( (this.synpred6_Block()) ) {
                alt4=3;
            }
            else if ( (true) ) {
                alt4=4;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 4, 0, this.input);

                throw nvae;
            }
            switch (alt4) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:436:3: ( NUMBER_CHAR )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.NESTED_ITALIC;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:438:2: ( CLOSE_MONO_MARKUP | CLOSE_BOLD_MARKUP | NESTED_LINK_MARKUP )=>

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:440:2: ( '_' )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:442:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "CLOSE_ITALIC_MARKUP",

    // $ANTLR start CLOSE_BOLD_MARKUP
    mCLOSE_BOLD_MARKUP: function()  {
        try {
            var _type = this.CLOSE_BOLD_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:446:2: ( '*' ( ( NUMBER_CHAR )=> | ( CLOSE_MONO_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=> | ( '*' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:446:3: '*' ( ( NUMBER_CHAR )=> | ( CLOSE_MONO_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=> | ( '*' )=> | )
            this.match('*'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:447:2: ( ( NUMBER_CHAR )=> | ( CLOSE_MONO_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=> | ( '*' )=> | )
            var alt5=4;
            var LA5_0 = this.input.LA(1);

            if ( (this.synpred7_Block()) ) {
                alt5=1;
            }
            else if ( (this.synpred8_Block()) ) {
                alt5=2;
            }
            else if ( (this.synpred9_Block()) ) {
                alt5=3;
            }
            else if ( (true) ) {
                alt5=4;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 5, 0, this.input);

                throw nvae;
            }
            switch (alt5) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:447:3: ( NUMBER_CHAR )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.NESTED_BOLD;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:449:2: ( CLOSE_MONO_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )=>

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:451:2: ( '*' )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:453:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "CLOSE_BOLD_MARKUP",

    // $ANTLR start ITAL_MARKUP
    mITAL_MARKUP: function()  {
        try {
            var _type = this.ITAL_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:458:2: ( ( WS | NEW_LINE ) '_' ( ( WS )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:458:3: ( WS | NEW_LINE ) '_' ( ( WS )=> | )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:458:3: ( WS | NEW_LINE )
            var alt6=2;
            var LA6_0 = this.input.LA(1);

            if ( (LA6_0==' ') ) {
                alt6=1;
            }
            else if ( (LA6_0=='\n'||LA6_0=='\r') ) {
                alt6=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 6, 0, this.input);

                throw nvae;
            }
            switch (alt6) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:458:4: WS
                    this.mWS(); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:458:7: NEW_LINE
                    this.mNEW_LINE(); if (this.state.failed) return ;


                    break;

            }

            this.match('_'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:459:2: ( ( WS )=> | )
            var alt7=2;
            var LA7_0 = this.input.LA(1);

            if ( (this.synpred10_Block()) ) {
                alt7=1;
            }
            else if ( (true) ) {
                alt7=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 7, 0, this.input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:459:3: ( WS )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.WHITESPACE;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:461:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "ITAL_MARKUP",

    // $ANTLR start BOLD_MARKUP
    mBOLD_MARKUP: function()  {
        try {
            var _type = this.BOLD_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:466:2: ( ( WS | NEW_LINE ) '*' ( ( ' ' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:466:3: ( WS | NEW_LINE ) '*' ( ( ' ' )=> | )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:466:3: ( WS | NEW_LINE )
            var alt8=2;
            var LA8_0 = this.input.LA(1);

            if ( (LA8_0==' ') ) {
                alt8=1;
            }
            else if ( (LA8_0=='\n'||LA8_0=='\r') ) {
                alt8=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 8, 0, this.input);

                throw nvae;
            }
            switch (alt8) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:466:4: WS
                    this.mWS(); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:466:7: NEW_LINE
                    this.mNEW_LINE(); if (this.state.failed) return ;


                    break;

            }

            this.match('*'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:467:2: ( ( ' ' )=> | )
            var alt9=2;
            var LA9_0 = this.input.LA(1);

            if ( (this.synpred11_Block()) ) {
                alt9=1;
            }
            else if ( (true) ) {
                alt9=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 9, 0, this.input);

                throw nvae;
            }
            switch (alt9) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:467:3: ( ' ' )=>
                    if ( this.state.backtracking===0 ) {
                      _type =this.WHITESPACE;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:469:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "BOLD_MARKUP",

    // $ANTLR start MONO_MARKUP
    mMONO_MARKUP: function()  {
        try {
            var _type = this.MONO_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:474:2: ( ( WS | NEW_LINE ) '|' ( ( WS )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:474:3: ( WS | NEW_LINE ) '|' ( ( WS )=> | )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:474:3: ( WS | NEW_LINE )
            var alt10=2;
            var LA10_0 = this.input.LA(1);

            if ( (LA10_0==' ') ) {
                alt10=1;
            }
            else if ( (LA10_0=='\n'||LA10_0=='\r') ) {
                alt10=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 10, 0, this.input);

                throw nvae;
            }
            switch (alt10) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:474:4: WS
                    this.mWS(); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:474:7: NEW_LINE
                    this.mNEW_LINE(); if (this.state.failed) return ;


                    break;

            }

            this.match('|'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:475:2: ( ( WS )=> | )
            var alt11=2;
            var LA11_0 = this.input.LA(1);

            if ( (this.synpred12_Block()) ) {
                alt11=1;
            }
            else if ( (true) ) {
                alt11=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 11, 0, this.input);

                throw nvae;
            }
            switch (alt11) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:475:3: ( WS )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.WHITESPACE;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:477:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "MONO_MARKUP",

    // $ANTLR start LINK_MARKUP
    mLINK_MARKUP: function()  {
        try {
            var _type = this.LINK_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:482:2: ( ( WS | NEW_LINE ) '<' ( ( WS )=> | ( '>' )=> | ( ( . )* ~ WS '>' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:482:3: ( WS | NEW_LINE ) '<' ( ( WS )=> | ( '>' )=> | ( ( . )* ~ WS '>' )=> | )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:482:3: ( WS | NEW_LINE )
            var alt12=2;
            var LA12_0 = this.input.LA(1);

            if ( (LA12_0==' ') ) {
                alt12=1;
            }
            else if ( (LA12_0=='\n'||LA12_0=='\r') ) {
                alt12=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 12, 0, this.input);

                throw nvae;
            }
            switch (alt12) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:482:4: WS
                    this.mWS(); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:482:7: NEW_LINE
                    this.mNEW_LINE(); if (this.state.failed) return ;


                    break;

            }

            this.match('<'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:483:2: ( ( WS )=> | ( '>' )=> | ( ( . )* ~ WS '>' )=> | )
            var alt13=4;
            var LA13_0 = this.input.LA(1);

            if ( (this.synpred13_Block()) ) {
                alt13=1;
            }
            else if ( (this.synpred14_Block()) ) {
                alt13=2;
            }
            else if ( (this.synpred15_Block()) ) {
                alt13=3;
            }
            else if ( (true) ) {
                alt13=4;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 13, 0, this.input);

                throw nvae;
            }
            switch (alt13) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:484:2: ( WS )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:486:2: ( '>' )=>

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:489:2: ( ( . )* ~ WS '>' )=>

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:491:2:
                    if ( this.state.backtracking===0 ) {
                      _type = this.WHITESPACE;;
                    }


                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "LINK_MARKUP",

    // $ANTLR start NESTED_LINK_MARKUP
    mNESTED_LINK_MARKUP: function()  {
        try {
            var _type = this.NESTED_LINK_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:497:2: ( '<' ( ( WS )=> | ( '>' )=> | ( ( . )* ~ WS '>' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:497:4: '<' ( ( WS )=> | ( '>' )=> | ( ( . )* ~ WS '>' )=> | )
            this.match('<'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:498:2: ( ( WS )=> | ( '>' )=> | ( ( . )* ~ WS '>' )=> | )
            var alt14=4;
            var LA14_0 = this.input.LA(1);

            if ( (this.synpred16_Block()) ) {
                alt14=1;
            }
            else if ( (this.synpred17_Block()) ) {
                alt14=2;
            }
            else if ( (this.synpred18_Block()) ) {
                alt14=3;
            }
            else if ( (true) ) {
                alt14=4;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 14, 0, this.input);

                throw nvae;
            }
            switch (alt14) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:499:2: ( WS )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:501:2: ( '>' )=>

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:503:2: ( ( . )* ~ WS '>' )=>

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:505:2:
                    if ( this.state.backtracking===0 ) {
                      _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "NESTED_LINK_MARKUP",

    // $ANTLR start WHITESPACE
    mWHITESPACE: function()  {
        try {
            var _type = this.WHITESPACE;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:512:2: ( ( WS | NEW_LINE ) ( ( '>' )=> '>' | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:512:3: ( WS | NEW_LINE ) ( ( '>' )=> '>' | )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:512:3: ( WS | NEW_LINE )
            var alt15=2;
            var LA15_0 = this.input.LA(1);

            if ( (LA15_0==' ') ) {
                alt15=1;
            }
            else if ( (LA15_0=='\n'||LA15_0=='\r') ) {
                alt15=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 15, 0, this.input);

                throw nvae;
            }
            switch (alt15) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:512:4: WS
                    this.mWS(); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:512:7: NEW_LINE
                    this.mNEW_LINE(); if (this.state.failed) return ;


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:513:2: ( ( '>' )=> '>' | )
            var alt16=2;
            var LA16_0 = this.input.LA(1);

            if ( (LA16_0=='>') && (this.synpred19_Block())) {
                alt16=1;
            }
            else {
                alt16=2;}
            switch (alt16) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:513:3: ( '>' )=> '>'
                    this.match('>'); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:515:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "WHITESPACE",

    // $ANTLR start CLOSE_LINK_MARKUP
    mCLOSE_LINK_MARKUP: function()  {
        try {
            var _type = this.CLOSE_LINK_MARKUP;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:521:2: ( '>' ( ( NUMBER_CHAR )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:521:3: '>' ( ( NUMBER_CHAR )=> | )
            this.match('>'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:522:2: ( ( NUMBER_CHAR )=> | )
            var alt17=2;
            var LA17_0 = this.input.LA(1);

            if ( (this.synpred20_Block()) ) {
                alt17=1;
            }
            else if ( (true) ) {
                alt17=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 17, 0, this.input);

                throw nvae;
            }
            switch (alt17) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:522:3: ( NUMBER_CHAR )=>
                    if ( this.state.backtracking===0 ) {
                       _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:524:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "CLOSE_LINK_MARKUP",

    // $ANTLR start ALPHABET
    mALPHABET: function()  {
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:528:2: ( 'a' .. 'z' | 'A' .. 'Z' )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:
            if ( (this.input.LA(1)>='A' && this.input.LA(1)<='Z')||(this.input.LA(1)>='a' && this.input.LA(1)<='z') ) {
                this.input.consume();
            this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                this.recover(mse);
                throw mse;}




        }
        finally {
        }
    },
    // $ANTLR end "ALPHABET",

    // $ANTLR start DIGIT
    mDIGIT: function()  {
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:532:2: ( '0' .. '9' )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:532:3: '0' .. '9'
            this.matchRange('0','9'); if (this.state.failed) return ;



        }
        finally {
        }
    },
    // $ANTLR end "DIGIT",

    // $ANTLR start NUMBER_CHAR
    mNUMBER_CHAR: function()  {
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:537:2: ( ALPHABET | DIGIT )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:
            if ( (this.input.LA(1)>='0' && this.input.LA(1)<='9')||(this.input.LA(1)>='A' && this.input.LA(1)<='Z')||(this.input.LA(1)>='a' && this.input.LA(1)<='z') ) {
                this.input.consume();
            this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                this.recover(mse);
                throw mse;}




        }
        finally {
        }
    },
    // $ANTLR end "NUMBER_CHAR",

    // $ANTLR start TRADE_MARK
    mTRADE_MARK: function()  {
        try {
            var _type = this.TRADE_MARK;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            var NUMBER_CHAR1=null;

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:542:2: ( NUMBER_CHAR ( '(' ( ( 'TM)' )=> 'TM)' | ( 'R)' )=> 'R)' | ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:542:3: NUMBER_CHAR ( '(' ( ( 'TM)' )=> 'TM)' | ( 'R)' )=> 'R)' | ) )
            var NUMBER_CHAR1Start627 = this.getCharIndex();
            this.mNUMBER_CHAR(); if (this.state.failed) return ;
            NUMBER_CHAR1 = new org.antlr.runtime.CommonToken(this.input, org.antlr.runtime.Token.INVALID_TOKEN_TYPE, org.antlr.runtime.Token.DEFAULT_CHANNEL, NUMBER_CHAR1Start627, this.getCharIndex()-1);
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:543:2: ( '(' ( ( 'TM)' )=> 'TM)' | ( 'R)' )=> 'R)' | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:543:3: '(' ( ( 'TM)' )=> 'TM)' | ( 'R)' )=> 'R)' | )
            this.match('('); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:543:6: ( ( 'TM)' )=> 'TM)' | ( 'R)' )=> 'R)' | )
            var alt18=3;
            var LA18_0 = this.input.LA(1);

            if ( (LA18_0=='T') && (this.synpred21_Block())) {
                alt18=1;
            }
            else if ( (LA18_0=='R') && (this.synpred22_Block())) {
                alt18=2;
            }
            else {
                alt18=3;}
            switch (alt18) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:543:7: ( 'TM)' )=> 'TM)'
                    this.match("TM)"); if (this.state.failed) return ;

                    if ( this.state.backtracking===0 ) {
                      this.setText(NUMBER_CHAR1.getText() + "\u2122");
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:545:2: ( 'R)' )=> 'R)'
                    this.match("R)"); if (this.state.failed) return ;

                    if ( this.state.backtracking===0 ) {
                      this.setText(NUMBER_CHAR1.getText() + "\u00AE");
                    }


                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:547:2:
                    if ( this.state.backtracking===0 ) {
                      _type = this.INSIGNIFICANT_CHAR;
                    }


                    break;

            }







            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "TRADE_MARK",

    // $ANTLR start INSIGNIFICANT_CHAR
    mINSIGNIFICANT_CHAR: function()  {
        try {
            var _type = this.INSIGNIFICANT_CHAR;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:553:2: ( . )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:553:3: .
            this.matchAny(); if (this.state.failed) return ;



            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "INSIGNIFICANT_CHAR",

    mTokens: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:8: ( WS | NEW_LINE | CLOSE_MONO_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_BOLD_MARKUP | ITAL_MARKUP | BOLD_MARKUP | MONO_MARKUP | LINK_MARKUP | NESTED_LINK_MARKUP | WHITESPACE | CLOSE_LINK_MARKUP | TRADE_MARK | INSIGNIFICANT_CHAR )
        var alt19=14;
        alt19 = this.dfa19.predict(this.input);
        switch (alt19) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:10: WS
                this.mWS(); if (this.state.failed) return ;


                break;
            case 2 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:13: NEW_LINE
                this.mNEW_LINE(); if (this.state.failed) return ;


                break;
            case 3 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:22: CLOSE_MONO_MARKUP
                this.mCLOSE_MONO_MARKUP(); if (this.state.failed) return ;


                break;
            case 4 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:40: CLOSE_ITALIC_MARKUP
                this.mCLOSE_ITALIC_MARKUP(); if (this.state.failed) return ;


                break;
            case 5 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:60: CLOSE_BOLD_MARKUP
                this.mCLOSE_BOLD_MARKUP(); if (this.state.failed) return ;


                break;
            case 6 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:78: ITAL_MARKUP
                this.mITAL_MARKUP(); if (this.state.failed) return ;


                break;
            case 7 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:90: BOLD_MARKUP
                this.mBOLD_MARKUP(); if (this.state.failed) return ;


                break;
            case 8 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:102: MONO_MARKUP
                this.mMONO_MARKUP(); if (this.state.failed) return ;


                break;
            case 9 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:114: LINK_MARKUP
                this.mLINK_MARKUP(); if (this.state.failed) return ;


                break;
            case 10 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:126: NESTED_LINK_MARKUP
                this.mNESTED_LINK_MARKUP(); if (this.state.failed) return ;


                break;
            case 11 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:145: WHITESPACE
                this.mWHITESPACE(); if (this.state.failed) return ;


                break;
            case 12 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:156: CLOSE_LINK_MARKUP
                this.mCLOSE_LINK_MARKUP(); if (this.state.failed) return ;


                break;
            case 13 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:174: TRADE_MARK
                this.mTRADE_MARK(); if (this.state.failed) return ;


                break;
            case 14 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:1:185: INSIGNIFICANT_CHAR
                this.mINSIGNIFICANT_CHAR(); if (this.state.failed) return ;


                break;

        }

    },

    // $ANTLR start "synpred1_Block"
    synpred1_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:425:3: ( NUMBER_CHAR )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:425:4: NUMBER_CHAR
        this.mNUMBER_CHAR(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred1_Block",

    // $ANTLR start "synpred2_Block"
    synpred2_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:427:2: ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )
        var alt20=3;
        switch ( this.input.LA(1) ) {
        case '*':
            alt20=1;
            break;
        case '_':
            alt20=2;
            break;
        case '<':
            alt20=3;
            break;
        default:
            if (this.state.backtracking>0) {this.state.failed=true; return ;}
            var nvae =
                new org.antlr.runtime.NoViableAltException("", 20, 0, this.input);

            throw nvae;
        }

        switch (alt20) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:427:3: CLOSE_BOLD_MARKUP
                this.mCLOSE_BOLD_MARKUP(); if (this.state.failed) return ;


                break;
            case 2 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:427:21: CLOSE_ITALIC_MARKUP
                this.mCLOSE_ITALIC_MARKUP(); if (this.state.failed) return ;


                break;
            case 3 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:427:41: NESTED_LINK_MARKUP
                this.mNESTED_LINK_MARKUP(); if (this.state.failed) return ;


                break;

        }},
    // $ANTLR end "synpred2_Block",

    // $ANTLR start "synpred3_Block"
    synpred3_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:429:2: ( '|' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:429:3: '|'
        this.match('|'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred3_Block",

    // $ANTLR start "synpred4_Block"
    synpred4_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:436:3: ( NUMBER_CHAR )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:436:4: NUMBER_CHAR
        this.mNUMBER_CHAR(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred4_Block",

    // $ANTLR start "synpred5_Block"
    synpred5_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:438:2: ( CLOSE_MONO_MARKUP | CLOSE_BOLD_MARKUP | NESTED_LINK_MARKUP )
        var alt21=3;
        switch ( this.input.LA(1) ) {
        case '|':
            alt21=1;
            break;
        case '*':
            alt21=2;
            break;
        case '<':
            alt21=3;
            break;
        default:
            if (this.state.backtracking>0) {this.state.failed=true; return ;}
            var nvae =
                new org.antlr.runtime.NoViableAltException("", 21, 0, this.input);

            throw nvae;
        }

        switch (alt21) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:438:3: CLOSE_MONO_MARKUP
                this.mCLOSE_MONO_MARKUP(); if (this.state.failed) return ;


                break;
            case 2 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:438:21: CLOSE_BOLD_MARKUP
                this.mCLOSE_BOLD_MARKUP(); if (this.state.failed) return ;


                break;
            case 3 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:438:39: NESTED_LINK_MARKUP
                this.mNESTED_LINK_MARKUP(); if (this.state.failed) return ;


                break;

        }},
    // $ANTLR end "synpred5_Block",

    // $ANTLR start "synpred6_Block"
    synpred6_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:440:2: ( '_' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:440:3: '_'
        this.match('_'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred6_Block",

    // $ANTLR start "synpred7_Block"
    synpred7_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:447:3: ( NUMBER_CHAR )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:447:4: NUMBER_CHAR
        this.mNUMBER_CHAR(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred7_Block",

    // $ANTLR start "synpred8_Block"
    synpred8_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:449:2: ( CLOSE_MONO_MARKUP | CLOSE_ITALIC_MARKUP | NESTED_LINK_MARKUP )
        var alt22=3;
        switch ( this.input.LA(1) ) {
        case '|':
            alt22=1;
            break;
        case '_':
            alt22=2;
            break;
        case '<':
            alt22=3;
            break;
        default:
            if (this.state.backtracking>0) {this.state.failed=true; return ;}
            var nvae =
                new org.antlr.runtime.NoViableAltException("", 22, 0, this.input);

            throw nvae;
        }

        switch (alt22) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:449:3: CLOSE_MONO_MARKUP
                this.mCLOSE_MONO_MARKUP(); if (this.state.failed) return ;


                break;
            case 2 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:449:21: CLOSE_ITALIC_MARKUP
                this.mCLOSE_ITALIC_MARKUP(); if (this.state.failed) return ;


                break;
            case 3 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:449:41: NESTED_LINK_MARKUP
                this.mNESTED_LINK_MARKUP(); if (this.state.failed) return ;


                break;

        }},
    // $ANTLR end "synpred8_Block",

    // $ANTLR start "synpred9_Block"
    synpred9_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:451:2: ( '*' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:451:3: '*'
        this.match('*'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred9_Block",

    // $ANTLR start "synpred10_Block"
    synpred10_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:459:3: ( WS )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:459:4: WS
        this.mWS(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred10_Block",

    // $ANTLR start "synpred11_Block"
    synpred11_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:467:3: ( ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:467:4: ' '
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred11_Block",

    // $ANTLR start "synpred12_Block"
    synpred12_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:475:3: ( WS )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:475:4: WS
        this.mWS(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred12_Block",

    // $ANTLR start "synpred13_Block"
    synpred13_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:484:2: ( WS )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:484:3: WS
        this.mWS(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred13_Block",

    // $ANTLR start "synpred14_Block"
    synpred14_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:486:2: ( '>' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:486:3: '>'
        this.match('>'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred14_Block",

    // $ANTLR start "synpred15_Block"
    synpred15_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:489:2: ( ( . )* ~ WS '>' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:489:3: ( . )* ~ WS '>'
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:489:3: ( . )*
        loop23:
        do {
            var alt23=2;
            var LA23_0 = this.input.LA(1);

            if ( ((LA23_0>='\u0000' && LA23_0<='\u001F')||(LA23_0>='!' && LA23_0<='\uFFFF')) ) {
                var LA23_1 = this.input.LA(2);

                if ( (LA23_1=='>') ) {
                    alt23=2;
                }
                else if ( ((LA23_1>='\u0000' && LA23_1<='=')||(LA23_1>='?' && LA23_1<='\uFFFF')) ) {
                    alt23=1;
                }


            }
            else if ( (LA23_0==' ') ) {
                alt23=1;
            }


            switch (alt23) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:489:4: .
                this.matchAny(); if (this.state.failed) return ;


                break;

            default :
                break loop23;
            }
        } while (true);

        if ( (this.input.LA(1)>='\u0000' && this.input.LA(1)<='\u0013')||(this.input.LA(1)>='\u0015' && this.input.LA(1)<='\uFFFF') ) {
            this.input.consume();
        this.state.failed=false;
        }
        else {
            if (this.state.backtracking>0) {this.state.failed=true; return ;}
            var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
            this.recover(mse);
            throw mse;}

        this.match('>'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred15_Block",

    // $ANTLR start "synpred16_Block"
    synpred16_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:499:2: ( WS )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:499:3: WS
        this.mWS(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred16_Block",

    // $ANTLR start "synpred17_Block"
    synpred17_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:501:2: ( '>' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:501:3: '>'
        this.match('>'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred17_Block",

    // $ANTLR start "synpred18_Block"
    synpred18_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:503:2: ( ( . )* ~ WS '>' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:503:3: ( . )* ~ WS '>'
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:503:3: ( . )*
        loop24:
        do {
            var alt24=2;
            var LA24_0 = this.input.LA(1);

            if ( ((LA24_0>='\u0000' && LA24_0<='\u001F')||(LA24_0>='!' && LA24_0<='\uFFFF')) ) {
                var LA24_1 = this.input.LA(2);

                if ( (LA24_1=='>') ) {
                    alt24=2;
                }
                else if ( ((LA24_1>='\u0000' && LA24_1<='=')||(LA24_1>='?' && LA24_1<='\uFFFF')) ) {
                    alt24=1;
                }


            }
            else if ( (LA24_0==' ') ) {
                alt24=1;
            }


            switch (alt24) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:503:4: .
                this.matchAny(); if (this.state.failed) return ;


                break;

            default :
                break loop24;
            }
        } while (true);

        if ( (this.input.LA(1)>='\u0000' && this.input.LA(1)<='\u0013')||(this.input.LA(1)>='\u0015' && this.input.LA(1)<='\uFFFF') ) {
            this.input.consume();
        this.state.failed=false;
        }
        else {
            if (this.state.backtracking>0) {this.state.failed=true; return ;}
            var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
            this.recover(mse);
            throw mse;}

        this.match('>'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred18_Block",

    // $ANTLR start "synpred19_Block"
    synpred19_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:513:3: ( '>' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:513:4: '>'
        this.match('>'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred19_Block",

    // $ANTLR start "synpred20_Block"
    synpred20_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:522:3: ( NUMBER_CHAR )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:522:4: NUMBER_CHAR
        this.mNUMBER_CHAR(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred20_Block",

    // $ANTLR start "synpred21_Block"
    synpred21_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:543:7: ( 'TM)' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:543:8: 'TM)'
        this.match("TM)"); if (this.state.failed) return ;



    },
    // $ANTLR end "synpred21_Block",

    // $ANTLR start "synpred22_Block"
    synpred22_Block_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:545:2: ( 'R)' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:545:3: 'R)'
        this.match("R)"); if (this.state.failed) return ;



    },
    // $ANTLR end "synpred22_Block"

    synpred20_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred20_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred11_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred11_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred1_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred1_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred3_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred3_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred2_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred2_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred14_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred14_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred17_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred17_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred7_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred7_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred21_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred21_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred10_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred10_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred6_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred6_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred9_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred9_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred12_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred12_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred19_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred19_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred13_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred13_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred15_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred15_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred16_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred16_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred22_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred22_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred4_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred4_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred18_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred18_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred5_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred5_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred8_Block: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred8_Block_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    }
}, true); // important to pass true to overwrite default implementations

org.antlr.lang.augmentObject(BlockLexer, {
    DFA19_eotS:
        "\u0001\uffff\u0001\u000b\u0002\u0011\u0005\uffff\u0001\u000a\u0008"+
    "\uffff\u0001\u0011\u0006\uffff",
    DFA19_eofS:
        "\u0019\uffff",
    DFA19_minS:
        "\u0001\u0000\u0001\u002a\u0001\u000a\u0001\u002a\u0005\uffff\u0001"+
    "\u0028\u0008\uffff\u0001\u002a\u0006\uffff",
    DFA19_maxS:
        "\u0001\uffff\u0003\u007c\u0005\uffff\u0001\u0028\u0008\uffff\u0001"+
    "\u007c\u0006\uffff",
    DFA19_acceptS:
        "\u0004\uffff\u0001\u0003\u0001\u0004\u0001\u0005\u0001\u000a\u0001"+
    "\u000c\u0001\uffff\u0001\u000e\u0001\u0001\u0001\u0006\u0001\u0007\u0001"+
    "\u0008\u0001\u0009\u0001\u000b\u0001\u0002\u0001\uffff\u0001\u0003\u0001"+
    "\u0004\u0001\u0005\u0001\u000a\u0001\u000c\u0001\u000d",
    DFA19_specialS:
        "\u0001\u0000\u0018\uffff}>",
    DFA19_transitionS: [
            "\u000a\u000a\u0001\u0003\u0002\u000a\u0001\u0002\u0012\u000a"+
            "\u0001\u0001\u0009\u000a\u0001\u0006\u0005\u000a\u000a\u0009"+
            "\u0002\u000a\u0001\u0007\u0001\u000a\u0001\u0008\u0002\u000a"+
            "\u001a\u0009\u0004\u000a\u0001\u0005\u0001\u000a\u001a\u0009"+
            "\u0001\u000a\u0001\u0004\uff83\u000a",
            "\u0001\u000d\u0011\uffff\u0001\u000f\u0001\uffff\u0001\u0010"+
            "\u0020\uffff\u0001\u000c\u001c\uffff\u0001\u000e",
            "\u0001\u0012\u001f\uffff\u0001\u000d\u0011\uffff\u0001\u000f"+
            "\u0001\uffff\u0001\u0010\u0020\uffff\u0001\u000c\u001c\uffff"+
            "\u0001\u000e",
            "\u0001\u000d\u0011\uffff\u0001\u000f\u0001\uffff\u0001\u0010"+
            "\u0020\uffff\u0001\u000c\u001c\uffff\u0001\u000e",
            "",
            "",
            "",
            "",
            "",
            "\u0001\u0018",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\u0001\u000d\u0011\uffff\u0001\u000f\u0001\uffff\u0001\u0010"+
            "\u0020\uffff\u0001\u000c\u001c\uffff\u0001\u000e",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockLexer, {
    DFA19_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockLexer.DFA19_eotS),
    DFA19_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockLexer.DFA19_eofS),
    DFA19_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockLexer.DFA19_minS),
    DFA19_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockLexer.DFA19_maxS),
    DFA19_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockLexer.DFA19_acceptS),
    DFA19_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockLexer.DFA19_specialS),
    DFA19_transition: (function() {
        var a = [],
            i,
            numStates = BlockLexer.DFA19_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockLexer.DFA19_transitionS[i]));
        }
        return a;
    })()
});

BlockLexer.DFA19 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 19;
    this.eot = BlockLexer.DFA19_eot;
    this.eof = BlockLexer.DFA19_eof;
    this.min = BlockLexer.DFA19_min;
    this.max = BlockLexer.DFA19_max;
    this.accept = BlockLexer.DFA19_accept;
    this.special = BlockLexer.DFA19_special;
    this.transition = BlockLexer.DFA19_transition;
};

org.antlr.lang.extend(BlockLexer.DFA19, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "1:1: Tokens : ( WS | NEW_LINE | CLOSE_MONO_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_BOLD_MARKUP | ITAL_MARKUP | BOLD_MARKUP | MONO_MARKUP | LINK_MARKUP | NESTED_LINK_MARKUP | WHITESPACE | CLOSE_LINK_MARKUP | TRADE_MARK | INSIGNIFICANT_CHAR );";
    },
    specialStateTransition: function(s, input) {
        var _s = s;
        /* bind to recognizer so semantic predicates can be evaluated */
        var retval = (function(s, input) {
            switch ( s ) {
                        case 0 :
                            var LA19_0 = input.LA(1);

                            s = -1;
                            if ( (LA19_0==' ') ) {s = 1;}

                            else if ( (LA19_0=='\r') ) {s = 2;}

                            else if ( (LA19_0=='\n') ) {s = 3;}

                            else if ( (LA19_0=='|') ) {s = 4;}

                            else if ( (LA19_0=='_') ) {s = 5;}

                            else if ( (LA19_0=='*') ) {s = 6;}

                            else if ( (LA19_0=='<') ) {s = 7;}

                            else if ( (LA19_0=='>') ) {s = 8;}

                            else if ( ((LA19_0>='0' && LA19_0<='9')||(LA19_0>='A' && LA19_0<='Z')||(LA19_0>='a' && LA19_0<='z')) ) {s = 9;}

                            else if ( ((LA19_0>='\u0000' && LA19_0<='\t')||(LA19_0>='\u000B' && LA19_0<='\f')||(LA19_0>='\u000E' && LA19_0<='\u001F')||(LA19_0>='!' && LA19_0<=')')||(LA19_0>='+' && LA19_0<='/')||(LA19_0>=':' && LA19_0<=';')||LA19_0=='='||(LA19_0>='?' && LA19_0<='@')||(LA19_0>='[' && LA19_0<='^')||LA19_0=='`'||LA19_0=='{'||(LA19_0>='}' && LA19_0<='\uFFFF')) ) {s = 10;}

                            if ( s>=0 ) return s;
                            break;
            }
        }).call(this.recognizer, s, input);
        if (!org.antlr.lang.isUndefined(retval)) {
            return retval;
        }
        if (this.recognizer.state.backtracking>0) {this.recognizer.state.failed=true; return -1;}
        var nvae =
            new org.antlr.runtime.NoViableAltException(this.getDescription(), 19, _s, input);
        this.error(nvae);
        throw nvae;
    },
    dummy: null
});

})();// $ANTLR 3.3 Nov 30, 2010 12:46:29 /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g 2013-10-02 14:40:45

var BlockParser = function(input, state) {
    if (!state) {
        state = new org.antlr.runtime.RecognizerSharedState();
    }

    (function(){
    }).call(this);

    BlockParser.superclass.constructor.call(this, input, state);

    this.dfa2 = new BlockParser.DFA2(this);
    this.dfa5 = new BlockParser.DFA5(this);
    this.dfa3 = new BlockParser.DFA3(this);
    this.dfa6 = new BlockParser.DFA6(this);
    this.dfa7 = new BlockParser.DFA7(this);
    this.dfa8 = new BlockParser.DFA8(this);
    this.dfa9 = new BlockParser.DFA9(this);
    this.dfa10 = new BlockParser.DFA10(this);
    this.dfa11 = new BlockParser.DFA11(this);
    this.dfa14 = new BlockParser.DFA14(this);
    this.dfa16 = new BlockParser.DFA16(this);
    this.dfa19 = new BlockParser.DFA19(this);
    this.dfa21 = new BlockParser.DFA21(this);
    this.dfa24 = new BlockParser.DFA24(this);
    this.dfa26 = new BlockParser.DFA26(this);
    this.dfa29 = new BlockParser.DFA29(this);
    this.dfa31 = new BlockParser.DFA31(this);
    this.dfa33 = new BlockParser.DFA33(this);
    this.dfa34 = new BlockParser.DFA34(this);
    this.dfa37 = new BlockParser.DFA37(this);
    this.dfa39 = new BlockParser.DFA39(this);
    this.dfa42 = new BlockParser.DFA42(this);
    this.dfa45 = new BlockParser.DFA45(this);
    this.dfa47 = new BlockParser.DFA47(this);
    this.dfa49 = new BlockParser.DFA49(this);
    this.dfa50 = new BlockParser.DFA50(this);
    this.dfa54 = new BlockParser.DFA54(this);
    this.dfa57 = new BlockParser.DFA57(this);



    /* @todo only create adaptor if output=AST */
    this.adaptor = new org.antlr.runtime.tree.CommonTreeAdaptor();

};

org.antlr.lang.augmentObject(BlockParser, {
    EOF: -1,
    PARAGRAPH: 4,
    PLAINTEXT: 5,
    BOLDTEXT: 6,
    ITALICTEXT: 7,
    MONOTEXT: 8,
    TEXTNODE: 9,
    SIMPLELINK: 10,
    NAMEDLINK: 11,
    NESTED_ITALIC: 12,
    NESTED_BOLD: 13,
    NESTED_MONO: 14,
    CLOSE_LINK_MARKUP: 15,
    BOLD_MARKUP: 16,
    ITAL_MARKUP: 17,
    MONO_MARKUP: 18,
    WHITESPACE: 19,
    WS: 20,
    LINK_MARKUP: 21,
    CLOSE_MONO_MARKUP: 22,
    CLOSE_ITALIC_MARKUP: 23,
    CLOSE_BOLD_MARKUP: 24,
    NESTED_LINK_MARKUP: 25,
    CR: 26,
    LF: 27,
    NEW_LINE: 28,
    NUMBER_CHAR: 29,
    ALPHABET: 30,
    DIGIT: 31,
    TRADE_MARK: 32,
    INSIGNIFICANT_CHAR: 33
});

(function(){
// public class variables
var EOF= -1,
    PARAGRAPH= 4,
    PLAINTEXT= 5,
    BOLDTEXT= 6,
    ITALICTEXT= 7,
    MONOTEXT= 8,
    TEXTNODE= 9,
    SIMPLELINK= 10,
    NAMEDLINK= 11,
    NESTED_ITALIC= 12,
    NESTED_BOLD= 13,
    NESTED_MONO= 14,
    CLOSE_LINK_MARKUP= 15,
    BOLD_MARKUP= 16,
    ITAL_MARKUP= 17,
    MONO_MARKUP= 18,
    WHITESPACE= 19,
    WS= 20,
    LINK_MARKUP= 21,
    CLOSE_MONO_MARKUP= 22,
    CLOSE_ITALIC_MARKUP= 23,
    CLOSE_BOLD_MARKUP= 24,
    NESTED_LINK_MARKUP= 25,
    CR= 26,
    LF= 27,
    NEW_LINE= 28,
    NUMBER_CHAR= 29,
    ALPHABET= 30,
    DIGIT= 31,
    TRADE_MARK= 32,
    INSIGNIFICANT_CHAR= 33;

// public instance methods/vars
org.antlr.lang.extend(BlockParser, org.antlr.runtime.Parser, {

    setTreeAdaptor: function(adaptor) {
        this.adaptor = adaptor;
    },
    getTreeAdaptor: function() {
        return this.adaptor;
    },

    getTokenNames: function() { return BlockParser.tokenNames; },
    getGrammarFileName: function() { return "/local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g"; }
});
org.antlr.lang.augmentObject(BlockParser.prototype, {

    // inline static return class
    paragraph_return: (function() {
        BlockParser.paragraph_return = function(){};
        org.antlr.lang.extend(BlockParser.paragraph_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:26:1: paragraph : paragraph_contents EOF -> paragraph_contents ;
    // $ANTLR start "paragraph"
    paragraph: function() {
        var retval = new BlockParser.paragraph_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var EOF2 = null;
         var paragraph_contents1 = null;

        var EOF2_tree=null;
        var stream_EOF=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token EOF");
        var stream_paragraph_contents=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule paragraph_contents");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:27:2: ( paragraph_contents EOF -> paragraph_contents )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:27:3: paragraph_contents EOF
            this.pushFollow(BlockParser.FOLLOW_paragraph_contents_in_paragraph104);
            paragraph_contents1=this.paragraph_contents();

            this.state._fsp--;

            stream_paragraph_contents.add(paragraph_contents1.getTree());
            EOF2=this.match(this.input,EOF,BlockParser.FOLLOW_EOF_in_paragraph106);
            stream_EOF.add(EOF2);



            // AST REWRITE
            // elements: paragraph_contents
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 27:26: -> paragraph_contents
            {
                this.adaptor.addChild(root_0, stream_paragraph_contents.nextTree());

            }

            retval.tree = root_0;


            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    paragraph_contents_return: (function() {
        BlockParser.paragraph_contents_return = function(){};
        org.antlr.lang.extend(BlockParser.paragraph_contents_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:30:1: paragraph_contents : ( paragraph_content )* -> ^( PARAGRAPH ( paragraph_content )* ) ;
    // $ANTLR start "paragraph_contents"
    paragraph_contents: function() {
        var retval = new BlockParser.paragraph_contents_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var paragraph_content3 = null;

        var stream_paragraph_content=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule paragraph_content");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:31:2: ( ( paragraph_content )* -> ^( PARAGRAPH ( paragraph_content )* ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:31:3: ( paragraph_content )*
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:31:3: ( paragraph_content )*
            loop1:
            do {
                var alt1=2;
                var LA1_0 = this.input.LA(1);

                if ( ((LA1_0>=PARAGRAPH && LA1_0<=INSIGNIFICANT_CHAR)) ) {
                    alt1=1;
                }


                switch (alt1) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:31:3: paragraph_content
                    this.pushFollow(BlockParser.FOLLOW_paragraph_content_in_paragraph_contents121);
                    paragraph_content3=this.paragraph_content();

                    this.state._fsp--;

                    stream_paragraph_content.add(paragraph_content3.getTree());


                    break;

                default :
                    break loop1;
                }
            } while (true);



            // AST REWRITE
            // elements: paragraph_content
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 31:23: -> ^( PARAGRAPH ( paragraph_content )* )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:31:26: ^( PARAGRAPH ( paragraph_content )* )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(PARAGRAPH, "PARAGRAPH"), root_1);

                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:31:38: ( paragraph_content )*
                while ( stream_paragraph_content.hasNext() ) {
                    this.adaptor.addChild(root_1, stream_paragraph_content.nextTree());

                }
                stream_paragraph_content.reset();

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;


            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    paragraph_content_return: (function() {
        BlockParser.paragraph_content_return = function(){};
        org.antlr.lang.extend(BlockParser.paragraph_content_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:34:1: paragraph_content : ( text_plaincontent -> text_plaincontent | text_monocontent -> text_monocontent | text_boldcontent -> text_boldcontent | text_italiccontent -> text_italiccontent | link -> link ) ;
    // $ANTLR start "paragraph_content"
    paragraph_content: function() {
        var retval = new BlockParser.paragraph_content_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var text_plaincontent4 = null;
         var text_monocontent5 = null;
         var text_boldcontent6 = null;
         var text_italiccontent7 = null;
         var link8 = null;

        var stream_text_boldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_boldcontent");
        var stream_text_italiccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italiccontent");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monocontent");
        var stream_text_plaincontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_plaincontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:35:2: ( ( text_plaincontent -> text_plaincontent | text_monocontent -> text_monocontent | text_boldcontent -> text_boldcontent | text_italiccontent -> text_italiccontent | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:36:2: ( text_plaincontent -> text_plaincontent | text_monocontent -> text_monocontent | text_boldcontent -> text_boldcontent | text_italiccontent -> text_italiccontent | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:36:2: ( text_plaincontent -> text_plaincontent | text_monocontent -> text_monocontent | text_boldcontent -> text_boldcontent | text_italiccontent -> text_italiccontent | link -> link )
            var alt2=5;
            alt2 = this.dfa2.predict(this.input);
            switch (alt2) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:37:2: text_plaincontent
                    this.pushFollow(BlockParser.FOLLOW_text_plaincontent_in_paragraph_content149);
                    text_plaincontent4=this.text_plaincontent();

                    this.state._fsp--;

                    stream_text_plaincontent.add(text_plaincontent4.getTree());


                    // AST REWRITE
                    // elements: text_plaincontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 37:20: -> text_plaincontent
                    {
                        this.adaptor.addChild(root_0, stream_text_plaincontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:39:2: text_monocontent
                    this.pushFollow(BlockParser.FOLLOW_text_monocontent_in_paragraph_content159);
                    text_monocontent5=this.text_monocontent();

                    this.state._fsp--;

                    stream_text_monocontent.add(text_monocontent5.getTree());


                    // AST REWRITE
                    // elements: text_monocontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 39:19: -> text_monocontent
                    {
                        this.adaptor.addChild(root_0, stream_text_monocontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:41:2: text_boldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_boldcontent_in_paragraph_content169);
                    text_boldcontent6=this.text_boldcontent();

                    this.state._fsp--;

                    stream_text_boldcontent.add(text_boldcontent6.getTree());


                    // AST REWRITE
                    // elements: text_boldcontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 41:19: -> text_boldcontent
                    {
                        this.adaptor.addChild(root_0, stream_text_boldcontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:43:2: text_italiccontent
                    this.pushFollow(BlockParser.FOLLOW_text_italiccontent_in_paragraph_content178);
                    text_italiccontent7=this.text_italiccontent();

                    this.state._fsp--;

                    stream_text_italiccontent.add(text_italiccontent7.getTree());


                    // AST REWRITE
                    // elements: text_italiccontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 43:21: -> text_italiccontent
                    {
                        this.adaptor.addChild(root_0, stream_text_italiccontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 5 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:45:2: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_paragraph_content188);
                    link8=this.link();

                    this.state._fsp--;

                    stream_link.add(link8.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 45:7: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    link_return: (function() {
        BlockParser.link_return = function(){};
        org.antlr.lang.extend(BlockParser.link_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:55:1: link : link_markup link_url ( (j+= link_text )+ ( CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) ) | -> ^( PLAINTEXT link_markup link_url ( $j)+ ) ) | CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( SIMPLELINK link_url ) ) | -> ^( PLAINTEXT link_markup ( link_url )? ) ) ;
    // $ANTLR start "link"
    link: function() {
        var retval = new BlockParser.link_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var CLOSE_LINK_MARKUP11 = null;
        var CLOSE_LINK_MARKUP12 = null;
        var list_j=null;
         var link_markup9 = null;
         var link_url10 = null;
        var j = null;
        var CLOSE_LINK_MARKUP11_tree=null;
        var CLOSE_LINK_MARKUP12_tree=null;
        var stream_CLOSE_LINK_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token CLOSE_LINK_MARKUP");
        var stream_link_text=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link_text");
        var stream_link_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link_markup");
        var stream_link_url=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link_url");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:56:2: ( link_markup link_url ( (j+= link_text )+ ( CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) ) | -> ^( PLAINTEXT link_markup link_url ( $j)+ ) ) | CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( SIMPLELINK link_url ) ) | -> ^( PLAINTEXT link_markup ( link_url )? ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:56:3: link_markup link_url ( (j+= link_text )+ ( CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) ) | -> ^( PLAINTEXT link_markup link_url ( $j)+ ) ) | CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( SIMPLELINK link_url ) ) | -> ^( PLAINTEXT link_markup ( link_url )? ) )
            this.pushFollow(BlockParser.FOLLOW_link_markup_in_link212);
            link_markup9=this.link_markup();

            this.state._fsp--;

            stream_link_markup.add(link_markup9.getTree());
            this.pushFollow(BlockParser.FOLLOW_link_url_in_link214);
            link_url10=this.link_url();

            this.state._fsp--;

            stream_link_url.add(link_url10.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:57:2: ( (j+= link_text )+ ( CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) ) | -> ^( PLAINTEXT link_markup link_url ( $j)+ ) ) | CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( SIMPLELINK link_url ) ) | -> ^( PLAINTEXT link_markup ( link_url )? ) )
            var alt5=3;
            alt5 = this.dfa5.predict(this.input);
            switch (alt5) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:58:2: (j+= link_text )+ ( CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) ) | -> ^( PLAINTEXT link_markup link_url ( $j)+ ) )
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:58:4: (j+= link_text )+
                    var cnt3=0;
                    loop3:
                    do {
                        var alt3=2;
                        alt3 = this.dfa3.predict(this.input);
                        switch (alt3) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:58:4: j+= link_text
                            this.pushFollow(BlockParser.FOLLOW_link_text_in_link224);
                            j=this.link_text();

                            this.state._fsp--;

                            stream_link_text.add(j.getTree());
                            if (org.antlr.lang.isNull(list_j)) list_j = [];
                            list_j.push(j.getTree());



                            break;

                        default :
                            if ( cnt3 >= 1 ) {
                                break loop3;
                            }
                                var eee = new org.antlr.runtime.EarlyExitException(3, this.input);
                                throw eee;
                        }
                        cnt3++;
                    } while (true);

                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:59:2: ( CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) ) | -> ^( PLAINTEXT link_markup link_url ( $j)+ ) )
                    var alt4=2;
                    var LA4_0 = this.input.LA(1);

                    if ( (LA4_0==CLOSE_LINK_MARKUP) ) {
                        alt4=1;
                    }
                    else if ( (LA4_0==EOF||(LA4_0>=PARAGRAPH && LA4_0<=NESTED_MONO)||(LA4_0>=BOLD_MARKUP && LA4_0<=INSIGNIFICANT_CHAR)) ) {
                        alt4=2;
                    }
                    else {
                        var nvae =
                            new org.antlr.runtime.NoViableAltException("", 4, 0, this.input);

                        throw nvae;
                    }
                    switch (alt4) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:59:3: CLOSE_LINK_MARKUP
                            CLOSE_LINK_MARKUP11=this.match(this.input,CLOSE_LINK_MARKUP,BlockParser.FOLLOW_CLOSE_LINK_MARKUP_in_link230);
                            stream_CLOSE_LINK_MARKUP.add(CLOSE_LINK_MARKUP11);



                            // AST REWRITE
                            // elements: j, link_url
                            // token labels:
                            // rule labels: retval
                            // token list labels:
                            // rule list labels: j
                            retval.tree = root_0;
                            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                            var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",list_j);
                            root_0 = this.adaptor.nil();
                            // 59:21: -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) )
                            {
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:59:23: ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) )
                                {
                                var root_1 = this.adaptor.nil();
                                root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (link_markup9?this.input.toString(link_markup9.start,link_markup9.stop):null)));
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:59:63: ^( NAMEDLINK link_url ( $j)+ )
                                {
                                var root_2 = this.adaptor.nil();
                                root_2 = this.adaptor.becomeRoot(this.adaptor.create(NAMEDLINK, "NAMEDLINK"), root_2);

                                this.adaptor.addChild(root_2, stream_link_url.nextTree());
                                if ( !(stream_j.hasNext()) ) {
                                    throw new org.antlr.runtime.tree.RewriteEarlyExitException();
                                }
                                while ( stream_j.hasNext() ) {
                                    this.adaptor.addChild(root_2, stream_j.nextTree());

                                }
                                stream_j.reset();

                                this.adaptor.addChild(root_1, root_2);
                                }

                                this.adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;

                            break;
                        case 2 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:61:2:

                            // AST REWRITE
                            // elements: link_url, link_markup, j
                            // token labels:
                            // rule labels: retval
                            // token list labels:
                            // rule list labels: j
                            retval.tree = root_0;
                            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                            var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",list_j);
                            root_0 = this.adaptor.nil();
                            // 61:2: -> ^( PLAINTEXT link_markup link_url ( $j)+ )
                            {
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:61:4: ^( PLAINTEXT link_markup link_url ( $j)+ )
                                {
                                var root_1 = this.adaptor.nil();
                                root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                                this.adaptor.addChild(root_1, stream_link_markup.nextTree());
                                this.adaptor.addChild(root_1, stream_link_url.nextTree());
                                if ( !(stream_j.hasNext()) ) {
                                    throw new org.antlr.runtime.tree.RewriteEarlyExitException();
                                }
                                while ( stream_j.hasNext() ) {
                                    this.adaptor.addChild(root_1, stream_j.nextTree());

                                }
                                stream_j.reset();

                                this.adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;

                            break;

                    }



                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:64:3: CLOSE_LINK_MARKUP
                    CLOSE_LINK_MARKUP12=this.match(this.input,CLOSE_LINK_MARKUP,BlockParser.FOLLOW_CLOSE_LINK_MARKUP_in_link276);
                    stream_CLOSE_LINK_MARKUP.add(CLOSE_LINK_MARKUP12);



                    // AST REWRITE
                    // elements: link_url
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 64:21: -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( SIMPLELINK link_url ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:64:23: ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( SIMPLELINK link_url ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (link_markup9?this.input.toString(link_markup9.start,link_markup9.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:64:63: ^( SIMPLELINK link_url )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(SIMPLELINK, "SIMPLELINK"), root_2);

                        this.adaptor.addChild(root_2, stream_link_url.nextTree());

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:66:2:

                    // AST REWRITE
                    // elements: link_url, link_markup
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 66:2: -> ^( PLAINTEXT link_markup ( link_url )? )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:66:4: ^( PLAINTEXT link_markup ( link_url )? )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_link_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:66:28: ( link_url )?
                        if ( stream_link_url.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_link_url.nextTree());

                        }
                        stream_link_url.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    link_url_return: (function() {
        BlockParser.link_url_return = function(){};
        org.antlr.lang.extend(BlockParser.link_url_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:70:1: link_url : (i= text_linkurl -> ^( TEXTNODE[$text_linkurl.text] ) ) ;
    // $ANTLR start "link_url"
    link_url: function() {
        var retval = new BlockParser.link_url_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;

        var stream_text_linkurl=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_linkurl");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:71:2: ( (i= text_linkurl -> ^( TEXTNODE[$text_linkurl.text] ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:72:2: (i= text_linkurl -> ^( TEXTNODE[$text_linkurl.text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:72:2: (i= text_linkurl -> ^( TEXTNODE[$text_linkurl.text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:73:2: i= text_linkurl
            this.pushFollow(BlockParser.FOLLOW_text_linkurl_in_link_url327);
            i=this.text_linkurl();

            this.state._fsp--;

            stream_text_linkurl.add(i.getTree());


            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 73:17: -> ^( TEXTNODE[$text_linkurl.text] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:73:19: ^( TEXTNODE[$text_linkurl.text] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;





            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_linkurl_return: (function() {
        BlockParser.text_linkurl_return = function(){};
        org.antlr.lang.extend(BlockParser.text_linkurl_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:77:1: text_linkurl : (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP | WHITESPACE | WS | LINK_MARKUP ) )* ;
    // $ANTLR start "text_linkurl"
    text_linkurl: function() {
        var retval = new BlockParser.text_linkurl_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:78:2: ( (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP | WHITESPACE | WS | LINK_MARKUP ) )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:78:3: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP | WHITESPACE | WS | LINK_MARKUP ) )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:78:3: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP | WHITESPACE | WS | LINK_MARKUP ) )*
            loop6:
            do {
                var alt6=2;
                alt6 = this.dfa6.predict(this.input);
                switch (alt6) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:78:4: i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP | WHITESPACE | WS | LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||(this.input.LA(1)>=CLOSE_MONO_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    break loop6;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    link_text_return: (function() {
        BlockParser.link_text_return = function(){};
        org.antlr.lang.extend(BlockParser.link_text_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:82:1: link_text : ( text_linkplaincontent -> ^( TEXTNODE[$text_linkplaincontent.text] ) | text_monocontent -> text_monocontent | text_italiccontent -> text_italiccontent | text_boldcontent -> text_boldcontent );
    // $ANTLR start "link_text"
    link_text: function() {
        var retval = new BlockParser.link_text_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var text_linkplaincontent13 = null;
         var text_monocontent14 = null;
         var text_italiccontent15 = null;
         var text_boldcontent16 = null;

        var stream_text_boldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_boldcontent");
        var stream_text_linkplaincontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_linkplaincontent");
        var stream_text_italiccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italiccontent");
        var stream_text_monocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monocontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:83:2: ( text_linkplaincontent -> ^( TEXTNODE[$text_linkplaincontent.text] ) | text_monocontent -> text_monocontent | text_italiccontent -> text_italiccontent | text_boldcontent -> text_boldcontent )
            var alt7=4;
            alt7 = this.dfa7.predict(this.input);
            switch (alt7) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:84:2: text_linkplaincontent
                    this.pushFollow(BlockParser.FOLLOW_text_linkplaincontent_in_link_text383);
                    text_linkplaincontent13=this.text_linkplaincontent();

                    this.state._fsp--;

                    stream_text_linkplaincontent.add(text_linkplaincontent13.getTree());


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 84:25: -> ^( TEXTNODE[$text_linkplaincontent.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:84:28: ^( TEXTNODE[$text_linkplaincontent.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (text_linkplaincontent13?this.input.toString(text_linkplaincontent13.start,text_linkplaincontent13.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:86:2: text_monocontent
                    this.pushFollow(BlockParser.FOLLOW_text_monocontent_in_link_text397);
                    text_monocontent14=this.text_monocontent();

                    this.state._fsp--;

                    stream_text_monocontent.add(text_monocontent14.getTree());


                    // AST REWRITE
                    // elements: text_monocontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 86:19: -> text_monocontent
                    {
                        this.adaptor.addChild(root_0, stream_text_monocontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:88:2: text_italiccontent
                    this.pushFollow(BlockParser.FOLLOW_text_italiccontent_in_link_text407);
                    text_italiccontent15=this.text_italiccontent();

                    this.state._fsp--;

                    stream_text_italiccontent.add(text_italiccontent15.getTree());


                    // AST REWRITE
                    // elements: text_italiccontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 88:21: -> text_italiccontent
                    {
                        this.adaptor.addChild(root_0, stream_text_italiccontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:90:2: text_boldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_boldcontent_in_link_text418);
                    text_boldcontent16=this.text_boldcontent();

                    this.state._fsp--;

                    stream_text_boldcontent.add(text_boldcontent16.getTree());


                    // AST REWRITE
                    // elements: text_boldcontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 90:19: -> text_boldcontent
                    {
                        this.adaptor.addChild(root_0, stream_text_boldcontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }
            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_linkplaincontent_return: (function() {
        BlockParser.text_linkplaincontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_linkplaincontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:93:1: text_linkplaincontent : (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ ;
    // $ANTLR start "text_linkplaincontent"
    text_linkplaincontent: function() {
        var retval = new BlockParser.text_linkplaincontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:94:2: ( (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:95:2: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:95:2: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            var cnt8=0;
            loop8:
            do {
                var alt8=2;
                alt8 = this.dfa8.predict(this.input);
                switch (alt8) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:95:3: i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||(this.input.LA(1)>=WHITESPACE && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt8 >= 1 ) {
                        break loop8;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(8, this.input);
                        throw eee;
                }
                cnt8++;
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_plaincontent_return: (function() {
        BlockParser.text_plaincontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_plaincontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:104:1: text_plaincontent : text -> ^( PLAINTEXT TEXTNODE[$text.text] ) ;
    // $ANTLR start "text_plaincontent"
    text_plaincontent: function() {
        var retval = new BlockParser.text_plaincontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var text17 = null;

        var stream_text=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:105:2: ( text -> ^( PLAINTEXT TEXTNODE[$text.text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:106:2: text
            this.pushFollow(BlockParser.FOLLOW_text_in_text_plaincontent474);
            text17=this.text();

            this.state._fsp--;

            stream_text.add(text17.getTree());


            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 106:7: -> ^( PLAINTEXT TEXTNODE[$text.text] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:106:10: ^( PLAINTEXT TEXTNODE[$text.text] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (text17?this.input.toString(text17.start,text17.stop):null)));

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;


            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_return: (function() {
        BlockParser.text_return = function(){};
        org.antlr.lang.extend(BlockParser.text_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:109:1: text : (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | LINK_MARKUP ) )+ ;
    // $ANTLR start "text"
    text: function() {
        var retval = new BlockParser.text_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:110:2: ( (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:111:2: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | LINK_MARKUP ) )+
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:111:2: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | LINK_MARKUP ) )+
            var cnt9=0;
            loop9:
            do {
                var alt9=2;
                alt9 = this.dfa9.predict(this.input);
                switch (alt9) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:111:3: i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=CLOSE_LINK_MARKUP)||(this.input.LA(1)>=WHITESPACE && this.input.LA(1)<=WS)||(this.input.LA(1)>=CLOSE_MONO_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt9 >= 1 ) {
                        break loop9;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(9, this.input);
                        throw eee;
                }
                cnt9++;
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monocontent_return: (function() {
        BlockParser.text_monocontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monocontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:119:1: text_monocontent : mono_markup (i= text_monoitaliccontent | j= text_monoboldcontent | k= link )? ( text_monocontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) ) ;
    // $ANTLR start "text_monocontent"
    text_monocontent: function() {
        var retval = new BlockParser.text_monocontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var k = null;
         var mono_markup18 = null;
         var text_monocontentpart19 = null;
         var close_mono_markup20 = null;

        var stream_close_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_mono_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monocontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monocontentpart");
        var stream_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule mono_markup");
        var stream_text_monoitaliccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitaliccontent");
        var stream_text_monoboldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoboldcontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:120:2: ( mono_markup (i= text_monoitaliccontent | j= text_monoboldcontent | k= link )? ( text_monocontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:120:3: mono_markup (i= text_monoitaliccontent | j= text_monoboldcontent | k= link )? ( text_monocontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_mono_markup_in_text_monocontent529);
            mono_markup18=this.mono_markup();

            this.state._fsp--;

            stream_mono_markup.add(mono_markup18.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:120:15: (i= text_monoitaliccontent | j= text_monoboldcontent | k= link )?
            var alt10=4;
            alt10 = this.dfa10.predict(this.input);
            switch (alt10) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:120:16: i= text_monoitaliccontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoitaliccontent_in_text_monocontent534);
                    i=this.text_monoitaliccontent();

                    this.state._fsp--;

                    stream_text_monoitaliccontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:120:41: j= text_monoboldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoboldcontent_in_text_monocontent538);
                    j=this.text_monoboldcontent();

                    this.state._fsp--;

                    stream_text_monoboldcontent.add(j.getTree());


                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:120:64: k= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monocontent542);
                    k=this.link();

                    this.state._fsp--;

                    stream_link.add(k.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:121:2: ( text_monocontentpart )*
            loop11:
            do {
                var alt11=2;
                alt11 = this.dfa11.predict(this.input);
                switch (alt11) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:121:2: text_monocontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monocontentpart_in_text_monocontent547);
                    text_monocontentpart19=this.text_monocontentpart();

                    this.state._fsp--;

                    stream_text_monocontentpart.add(text_monocontentpart19.getTree());


                    break;

                default :
                    break loop11;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:122:2: ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) )
            var alt12=2;
            var LA12_0 = this.input.LA(1);

            if ( (LA12_0==CLOSE_MONO_MARKUP) ) {
                alt12=1;
            }
            else if ( (LA12_0==EOF||(LA12_0>=PARAGRAPH && LA12_0<=LINK_MARKUP)||(LA12_0>=CLOSE_ITALIC_MARKUP && LA12_0<=INSIGNIFICANT_CHAR)) ) {
                alt12=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 12, 0, this.input);

                throw nvae;
            }
            switch (alt12) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:123:2: close_mono_markup
                    this.pushFollow(BlockParser.FOLLOW_close_mono_markup_in_text_monocontent554);
                    close_mono_markup20=this.close_mono_markup();

                    this.state._fsp--;

                    stream_close_mono_markup.add(close_mono_markup20.getTree());


                    // AST REWRITE
                    // elements: k, i, text_monocontentpart, j
                    // token labels:
                    // rule labels: retval, j, k, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_k=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token k",k!=null?k.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 123:21: -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:123:24: ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (mono_markup18?this.input.toString(mono_markup18.start,mono_markup18.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:123:64: ^( MONOTEXT ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(MONOTEXT, "MONOTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:123:76: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:123:80: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:123:84: ( $k)?
                        if ( stream_k.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_k.nextTree());

                        }
                        stream_k.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:123:88: ( text_monocontentpart )*
                        while ( stream_text_monocontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monocontentpart.nextTree());

                        }
                        stream_text_monocontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:125:2:

                    // AST REWRITE
                    // elements: k, mono_markup, text_monocontentpart, j, i
                    // token labels:
                    // rule labels: retval, j, k, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_k=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token k",k!=null?k.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 125:2: -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:125:5: ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( $k)? ( text_monocontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_mono_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:125:30: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:125:34: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:125:38: ( $k)?
                        if ( stream_k.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_k.nextTree());

                        }
                        stream_k.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:125:42: ( text_monocontentpart )*
                        while ( stream_text_monocontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monocontentpart.nextTree());

                        }
                        stream_text_monocontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monocontentpart_return: (function() {
        BlockParser.text_monocontentpart_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monocontentpart_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:129:1: text_monocontentpart : ( (i= text_monoplaincontent ) -> ^( TEXTNODE[$i.text] ) | text_monoboldcontent -> text_monoboldcontent | text_monoitaliccontent -> text_monoitaliccontent | link -> link ) ;
    // $ANTLR start "text_monocontentpart"
    text_monocontentpart: function() {
        var retval = new BlockParser.text_monocontentpart_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var text_monoboldcontent21 = null;
         var text_monoitaliccontent22 = null;
         var link23 = null;

        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monoitaliccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitaliccontent");
        var stream_text_monoboldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoboldcontent");
        var stream_text_monoplaincontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoplaincontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:130:2: ( ( (i= text_monoplaincontent ) -> ^( TEXTNODE[$i.text] ) | text_monoboldcontent -> text_monoboldcontent | text_monoitaliccontent -> text_monoitaliccontent | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:131:2: ( (i= text_monoplaincontent ) -> ^( TEXTNODE[$i.text] ) | text_monoboldcontent -> text_monoboldcontent | text_monoitaliccontent -> text_monoitaliccontent | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:131:2: ( (i= text_monoplaincontent ) -> ^( TEXTNODE[$i.text] ) | text_monoboldcontent -> text_monoboldcontent | text_monoitaliccontent -> text_monoitaliccontent | link -> link )
            var alt13=4;
            switch ( this.input.LA(1) ) {
            case NESTED_BOLD:
                alt13=1;
                break;
            case BOLD_MARKUP:
                alt13=2;
                break;
            case CLOSE_BOLD_MARKUP:
                alt13=1;
                break;
            case NESTED_ITALIC:
                alt13=1;
                break;
            case ITAL_MARKUP:
                alt13=3;
                break;
            case CLOSE_ITALIC_MARKUP:
                alt13=1;
                break;
            case PARAGRAPH:
            case PLAINTEXT:
            case BOLDTEXT:
            case ITALICTEXT:
            case MONOTEXT:
            case TEXTNODE:
            case SIMPLELINK:
            case NAMEDLINK:
            case NESTED_MONO:
            case MONO_MARKUP:
            case WHITESPACE:
            case WS:
            case NESTED_LINK_MARKUP:
            case CR:
            case LF:
            case NEW_LINE:
            case NUMBER_CHAR:
            case ALPHABET:
            case DIGIT:
            case TRADE_MARK:
            case INSIGNIFICANT_CHAR:
                alt13=1;
                break;
            case LINK_MARKUP:
                alt13=4;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 13, 0, this.input);

                throw nvae;
            }

            switch (alt13) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:132:2: (i= text_monoplaincontent )
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:132:2: (i= text_monoplaincontent )
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:132:3: i= text_monoplaincontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoplaincontent_in_text_monocontentpart635);
                    i=this.text_monoplaincontent();

                    this.state._fsp--;

                    stream_text_monoplaincontent.add(i.getTree());





                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 132:28: -> ^( TEXTNODE[$i.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:132:31: ^( TEXTNODE[$i.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:134:2: text_monoboldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoboldcontent_in_text_monocontentpart649);
                    text_monoboldcontent21=this.text_monoboldcontent();

                    this.state._fsp--;

                    stream_text_monoboldcontent.add(text_monoboldcontent21.getTree());


                    // AST REWRITE
                    // elements: text_monoboldcontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 134:23: -> text_monoboldcontent
                    {
                        this.adaptor.addChild(root_0, stream_text_monoboldcontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:136:2: text_monoitaliccontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoitaliccontent_in_text_monocontentpart659);
                    text_monoitaliccontent22=this.text_monoitaliccontent();

                    this.state._fsp--;

                    stream_text_monoitaliccontent.add(text_monoitaliccontent22.getTree());


                    // AST REWRITE
                    // elements: text_monoitaliccontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 136:26: -> text_monoitaliccontent
                    {
                        this.adaptor.addChild(root_0, stream_text_monoitaliccontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:138:2: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monocontentpart670);
                    link23=this.link();

                    this.state._fsp--;

                    stream_link.add(link23.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 138:7: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoplaincontent_return: (function() {
        BlockParser.text_monoplaincontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoplaincontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:142:1: text_monoplaincontent : ( (i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+ ) ;
    // $ANTLR start "text_monoplaincontent"
    text_monoplaincontent: function() {
        var retval = new BlockParser.text_monoplaincontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:143:2: ( ( (i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+ ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:145:3: ( (i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:145:3: ( (i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:145:4: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:145:4: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+
            var cnt14=0;
            loop14:
            do {
                var alt14=2;
                alt14 = this.dfa14.predict(this.input);
                switch (alt14) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:145:5: i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||(this.input.LA(1)>=MONO_MARKUP && this.input.LA(1)<=WS)||(this.input.LA(1)>=CLOSE_ITALIC_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt14 >= 1 ) {
                        break loop14;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(14, this.input);
                        throw eee;
                }
                cnt14++;
            } while (true);







            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoitaliccontent_return: (function() {
        BlockParser.text_monoitaliccontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoitaliccontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:149:1: text_monoitaliccontent : italic_markup (i= text_monoitalicboldcontent | j= link )? ( text_monoitaliccontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) ;
    // $ANTLR start "text_monoitaliccontent"
    text_monoitaliccontent: function() {
        var retval = new BlockParser.text_monoitaliccontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var italic_markup24 = null;
         var text_monoitaliccontentpart25 = null;
         var close_italic_markup26 = null;

        var stream_text_monoitalicboldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicboldcontent");
        var stream_text_monoitaliccontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitaliccontentpart");
        var stream_close_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_italic_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule italic_markup");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:150:2: ( italic_markup (i= text_monoitalicboldcontent | j= link )? ( text_monoitaliccontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:150:3: italic_markup (i= text_monoitalicboldcontent | j= link )? ( text_monoitaliccontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_italic_markup_in_text_monoitaliccontent726);
            italic_markup24=this.italic_markup();

            this.state._fsp--;

            stream_italic_markup.add(italic_markup24.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:150:18: (i= text_monoitalicboldcontent | j= link )?
            var alt15=3;
            switch ( this.input.LA(1) ) {
                case BOLD_MARKUP:
                    alt15=1;
                    break;
                case NESTED_BOLD:
                    alt15=1;
                    break;
                case CLOSE_BOLD_MARKUP:
                    alt15=1;
                    break;
                case LINK_MARKUP:
                    alt15=2;
                    break;
                case NESTED_LINK_MARKUP:
                    alt15=2;
                    break;
            }

            switch (alt15) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:150:19: i= text_monoitalicboldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicboldcontent_in_text_monoitaliccontent734);
                    i=this.text_monoitalicboldcontent();

                    this.state._fsp--;

                    stream_text_monoitalicboldcontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:150:50: j= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monoitaliccontent740);
                    j=this.link();

                    this.state._fsp--;

                    stream_link.add(j.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:151:2: ( text_monoitaliccontentpart )*
            loop16:
            do {
                var alt16=2;
                alt16 = this.dfa16.predict(this.input);
                switch (alt16) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:151:2: text_monoitaliccontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monoitaliccontentpart_in_text_monoitaliccontent745);
                    text_monoitaliccontentpart25=this.text_monoitaliccontentpart();

                    this.state._fsp--;

                    stream_text_monoitaliccontentpart.add(text_monoitaliccontentpart25.getTree());


                    break;

                default :
                    break loop16;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:152:2: ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
            var alt17=2;
            var LA17_0 = this.input.LA(1);

            if ( (LA17_0==CLOSE_ITALIC_MARKUP) ) {
                alt17=1;
            }
            else if ( (LA17_0==EOF||(LA17_0>=PARAGRAPH && LA17_0<=CLOSE_MONO_MARKUP)||(LA17_0>=CLOSE_BOLD_MARKUP && LA17_0<=INSIGNIFICANT_CHAR)) ) {
                alt17=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 17, 0, this.input);

                throw nvae;
            }
            switch (alt17) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:152:3: close_italic_markup
                    this.pushFollow(BlockParser.FOLLOW_close_italic_markup_in_text_monoitaliccontent750);
                    close_italic_markup26=this.close_italic_markup();

                    this.state._fsp--;

                    stream_close_italic_markup.add(close_italic_markup26.getTree());


                    // AST REWRITE
                    // elements: i, j, text_monoitaliccontentpart
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 152:23: -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:152:26: ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (italic_markup24?this.input.toString(italic_markup24.start,italic_markup24.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:152:68: ^( ITALICTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(ITALICTEXT, "ITALICTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:152:81: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:152:85: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:152:89: ( text_monoitaliccontentpart )*
                        while ( stream_text_monoitaliccontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monoitaliccontentpart.nextTree());

                        }
                        stream_text_monoitaliccontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:154:2:

                    // AST REWRITE
                    // elements: text_monoitaliccontentpart, italic_markup, j, i
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 154:2: -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:154:4: ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_italic_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:154:30: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:154:34: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:154:38: ( text_monoitaliccontentpart )*
                        while ( stream_text_monoitaliccontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monoitaliccontentpart.nextTree());

                        }
                        stream_text_monoitaliccontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoitaliccontentpart_return: (function() {
        BlockParser.text_monoitaliccontentpart_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoitaliccontentpart_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:158:1: text_monoitaliccontentpart : (i= text_monoitalicplaincontent -> ^( TEXTNODE[$i.text] ) | text_monoitalicboldcontent -> text_monoitalicboldcontent | link -> link ) ;
    // $ANTLR start "text_monoitaliccontentpart"
    text_monoitaliccontentpart: function() {
        var retval = new BlockParser.text_monoitaliccontentpart_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var text_monoitalicboldcontent27 = null;
         var link28 = null;

        var stream_text_monoitalicboldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicboldcontent");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monoitalicplaincontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicplaincontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:160:2: ( (i= text_monoitalicplaincontent -> ^( TEXTNODE[$i.text] ) | text_monoitalicboldcontent -> text_monoitalicboldcontent | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:160:3: (i= text_monoitalicplaincontent -> ^( TEXTNODE[$i.text] ) | text_monoitalicboldcontent -> text_monoitalicboldcontent | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:160:3: (i= text_monoitalicplaincontent -> ^( TEXTNODE[$i.text] ) | text_monoitalicboldcontent -> text_monoitalicboldcontent | link -> link )
            var alt18=3;
            switch ( this.input.LA(1) ) {
            case NESTED_BOLD:
                alt18=1;
                break;
            case BOLD_MARKUP:
                alt18=2;
                break;
            case CLOSE_BOLD_MARKUP:
                alt18=1;
                break;
            case PARAGRAPH:
            case PLAINTEXT:
            case BOLDTEXT:
            case ITALICTEXT:
            case MONOTEXT:
            case TEXTNODE:
            case SIMPLELINK:
            case NAMEDLINK:
            case NESTED_ITALIC:
            case NESTED_MONO:
            case ITAL_MARKUP:
            case MONO_MARKUP:
            case WHITESPACE:
            case WS:
            case NESTED_LINK_MARKUP:
            case CR:
            case LF:
            case NEW_LINE:
            case NUMBER_CHAR:
            case ALPHABET:
            case DIGIT:
            case TRADE_MARK:
            case INSIGNIFICANT_CHAR:
                alt18=1;
                break;
            case LINK_MARKUP:
                alt18=3;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 18, 0, this.input);

                throw nvae;
            }

            switch (alt18) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:160:4: i= text_monoitalicplaincontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicplaincontent_in_text_monoitaliccontentpart814);
                    i=this.text_monoitalicplaincontent();

                    this.state._fsp--;

                    stream_text_monoitalicplaincontent.add(i.getTree());


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 160:34: -> ^( TEXTNODE[$i.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:160:37: ^( TEXTNODE[$i.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:162:2: text_monoitalicboldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicboldcontent_in_text_monoitaliccontentpart827);
                    text_monoitalicboldcontent27=this.text_monoitalicboldcontent();

                    this.state._fsp--;

                    stream_text_monoitalicboldcontent.add(text_monoitalicboldcontent27.getTree());


                    // AST REWRITE
                    // elements: text_monoitalicboldcontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 162:29: -> text_monoitalicboldcontent
                    {
                        this.adaptor.addChild(root_0, stream_text_monoitalicboldcontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:164:2: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monoitaliccontentpart837);
                    link28=this.link();

                    this.state._fsp--;

                    stream_link.add(link28.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 164:7: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoitalicplaincontent_return: (function() {
        BlockParser.text_monoitalicplaincontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoitalicplaincontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:168:1: text_monoitalicplaincontent : (i=~ ( BOLD_MARKUP | CLOSE_ITALIC_MARKUP | LINK_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ ;
    // $ANTLR start "text_monoitalicplaincontent"
    text_monoitalicplaincontent: function() {
        var retval = new BlockParser.text_monoitalicplaincontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:169:2: ( (i=~ ( BOLD_MARKUP | CLOSE_ITALIC_MARKUP | LINK_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:169:3: (i=~ ( BOLD_MARKUP | CLOSE_ITALIC_MARKUP | LINK_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:169:3: (i=~ ( BOLD_MARKUP | CLOSE_ITALIC_MARKUP | LINK_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            var cnt19=0;
            loop19:
            do {
                var alt19=2;
                alt19 = this.dfa19.predict(this.input);
                switch (alt19) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:169:4: i=~ ( BOLD_MARKUP | CLOSE_ITALIC_MARKUP | LINK_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||(this.input.LA(1)>=ITAL_MARKUP && this.input.LA(1)<=WS)||(this.input.LA(1)>=CLOSE_BOLD_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt19 >= 1 ) {
                        break loop19;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(19, this.input);
                        throw eee;
                }
                cnt19++;
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoitalicboldcontent_return: (function() {
        BlockParser.text_monoitalicboldcontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoitalicboldcontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:172:1: text_monoitalicboldcontent : bold_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( text_monoitalicboldcontentpart )* ) ) ;
    // $ANTLR start "text_monoitalicboldcontent"
    text_monoitalicboldcontent: function() {
        var retval = new BlockParser.text_monoitalicboldcontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var bold_markup29 = null;
         var text_monoitalicboldcontentpart30 = null;
         var close_bold_markup31 = null;

        var stream_close_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_bold_markup");
        var stream_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule bold_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monoitalicboldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicboldcontentpart");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:173:3: ( bold_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( text_monoitalicboldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:173:4: bold_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( text_monoitalicboldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_bold_markup_in_text_monoitalicboldcontent886);
            bold_markup29=this.bold_markup();

            this.state._fsp--;

            stream_bold_markup.add(bold_markup29.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:173:19: (i= link )?
            var alt20=2;
            var LA20_0 = this.input.LA(1);

            if ( (LA20_0==LINK_MARKUP) ) {
                alt20=1;
            }
            else if ( (LA20_0==NESTED_LINK_MARKUP) ) {
                alt20=1;
            }
            switch (alt20) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:173:19: i= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monoitalicboldcontent893);
                    i=this.link();

                    this.state._fsp--;

                    stream_link.add(i.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:174:3: ( text_monoitalicboldcontentpart )*
            loop21:
            do {
                var alt21=2;
                alt21 = this.dfa21.predict(this.input);
                switch (alt21) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:174:3: text_monoitalicboldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicboldcontentpart_in_text_monoitalicboldcontent898);
                    text_monoitalicboldcontentpart30=this.text_monoitalicboldcontentpart();

                    this.state._fsp--;

                    stream_text_monoitalicboldcontentpart.add(text_monoitalicboldcontentpart30.getTree());


                    break;

                default :
                    break loop21;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:175:2: ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( text_monoitalicboldcontentpart )* ) )
            var alt22=2;
            var LA22_0 = this.input.LA(1);

            if ( (LA22_0==CLOSE_BOLD_MARKUP) ) {
                alt22=1;
            }
            else if ( (LA22_0==EOF||(LA22_0>=PARAGRAPH && LA22_0<=CLOSE_ITALIC_MARKUP)||(LA22_0>=NESTED_LINK_MARKUP && LA22_0<=INSIGNIFICANT_CHAR)) ) {
                alt22=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 22, 0, this.input);

                throw nvae;
            }
            switch (alt22) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:176:2: close_bold_markup
                    this.pushFollow(BlockParser.FOLLOW_close_bold_markup_in_text_monoitalicboldcontent906);
                    close_bold_markup31=this.close_bold_markup();

                    this.state._fsp--;

                    stream_close_bold_markup.add(close_bold_markup31.getTree());


                    // AST REWRITE
                    // elements: text_monoitalicboldcontentpart, i
                    // token labels:
                    // rule labels: retval, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 176:21: -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:176:23: ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (bold_markup29?this.input.toString(bold_markup29.start,bold_markup29.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:176:63: ^( BOLDTEXT ( $i)? ( text_monoitalicboldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(BOLDTEXT, "BOLDTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:176:75: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:176:79: ( text_monoitalicboldcontentpart )*
                        while ( stream_text_monoitalicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monoitalicboldcontentpart.nextTree());

                        }
                        stream_text_monoitalicboldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:178:2:

                    // AST REWRITE
                    // elements: i, bold_markup, text_monoitalicboldcontentpart
                    // token labels:
                    // rule labels: retval, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 178:2: -> ^( PLAINTEXT bold_markup ( $i)? ( text_monoitalicboldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:178:5: ^( PLAINTEXT bold_markup ( $i)? ( text_monoitalicboldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_bold_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:178:29: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:178:33: ( text_monoitalicboldcontentpart )*
                        while ( stream_text_monoitalicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monoitalicboldcontentpart.nextTree());

                        }
                        stream_text_monoitalicboldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoitalicboldcontentpart_return: (function() {
        BlockParser.text_monoitalicboldcontentpart_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoitalicboldcontentpart_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:182:1: text_monoitalicboldcontentpart : (i= text_monoitalicboldplaintext -> ^( TEXTNODE[$i.text] ) | link -> link ) ;
    // $ANTLR start "text_monoitalicboldcontentpart"
    text_monoitalicboldcontentpart: function() {
        var retval = new BlockParser.text_monoitalicboldcontentpart_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var link32 = null;

        var stream_text_monoitalicboldplaintext=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicboldplaintext");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:183:2: ( (i= text_monoitalicboldplaintext -> ^( TEXTNODE[$i.text] ) | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:183:3: (i= text_monoitalicboldplaintext -> ^( TEXTNODE[$i.text] ) | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:183:3: (i= text_monoitalicboldplaintext -> ^( TEXTNODE[$i.text] ) | link -> link )
            var alt23=2;
            var LA23_0 = this.input.LA(1);

            if ( ((LA23_0>=PARAGRAPH && LA23_0<=NESTED_MONO)||(LA23_0>=BOLD_MARKUP && LA23_0<=WS)||(LA23_0>=NESTED_LINK_MARKUP && LA23_0<=INSIGNIFICANT_CHAR)) ) {
                alt23=1;
            }
            else if ( (LA23_0==LINK_MARKUP) ) {
                alt23=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 23, 0, this.input);

                throw nvae;
            }
            switch (alt23) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:183:4: i= text_monoitalicboldplaintext
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicboldplaintext_in_text_monoitalicboldcontentpart965);
                    i=this.text_monoitalicboldplaintext();

                    this.state._fsp--;

                    stream_text_monoitalicboldplaintext.add(i.getTree());


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 183:36: -> ^( TEXTNODE[$i.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:183:39: ^( TEXTNODE[$i.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:185:2: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monoitalicboldcontentpart978);
                    link32=this.link();

                    this.state._fsp--;

                    stream_link.add(link32.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 185:7: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoitalicboldplaintext_return: (function() {
        BlockParser.text_monoitalicboldplaintext_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoitalicboldplaintext_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:188:1: text_monoitalicboldplaintext : (i=~ ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+ ;
    // $ANTLR start "text_monoitalicboldplaintext"
    text_monoitalicboldplaintext: function() {
        var retval = new BlockParser.text_monoitalicboldplaintext_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:189:2: ( (i=~ ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:189:3: (i=~ ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:189:3: (i=~ ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+
            var cnt24=0;
            loop24:
            do {
                var alt24=2;
                alt24 = this.dfa24.predict(this.input);
                switch (alt24) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:189:4: i=~ ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||(this.input.LA(1)>=BOLD_MARKUP && this.input.LA(1)<=WS)||(this.input.LA(1)>=NESTED_LINK_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt24 >= 1 ) {
                        break loop24;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(24, this.input);
                        throw eee;
                }
                cnt24++;
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoboldcontent_return: (function() {
        BlockParser.text_monoboldcontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoboldcontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:192:1: text_monoboldcontent : bold_markup (i= text_monobolditaliccontent | j= link )? ( text_monoboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) ;
    // $ANTLR start "text_monoboldcontent"
    text_monoboldcontent: function() {
        var retval = new BlockParser.text_monoboldcontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var bold_markup33 = null;
         var text_monoboldcontentpart34 = null;
         var close_bold_markup35 = null;

        var stream_text_monoboldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoboldcontentpart");
        var stream_close_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_bold_markup");
        var stream_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule bold_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monobolditaliccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monobolditaliccontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:193:2: ( bold_markup (i= text_monobolditaliccontent | j= link )? ( text_monoboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:193:3: bold_markup (i= text_monobolditaliccontent | j= link )? ( text_monoboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_bold_markup_in_text_monoboldcontent1022);
            bold_markup33=this.bold_markup();

            this.state._fsp--;

            stream_bold_markup.add(bold_markup33.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:193:15: (i= text_monobolditaliccontent | j= link )?
            var alt25=3;
            switch ( this.input.LA(1) ) {
                case ITAL_MARKUP:
                    alt25=1;
                    break;
                case NESTED_ITALIC:
                    alt25=1;
                    break;
                case CLOSE_ITALIC_MARKUP:
                    alt25=1;
                    break;
                case LINK_MARKUP:
                    alt25=2;
                    break;
                case NESTED_LINK_MARKUP:
                    alt25=2;
                    break;
            }

            switch (alt25) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:193:16: i= text_monobolditaliccontent
                    this.pushFollow(BlockParser.FOLLOW_text_monobolditaliccontent_in_text_monoboldcontent1029);
                    i=this.text_monobolditaliccontent();

                    this.state._fsp--;

                    stream_text_monobolditaliccontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:193:47: j= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monoboldcontent1035);
                    j=this.link();

                    this.state._fsp--;

                    stream_link.add(j.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:194:3: ( text_monoboldcontentpart )*
            loop26:
            do {
                var alt26=2;
                alt26 = this.dfa26.predict(this.input);
                switch (alt26) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:194:3: text_monoboldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monoboldcontentpart_in_text_monoboldcontent1041);
                    text_monoboldcontentpart34=this.text_monoboldcontentpart();

                    this.state._fsp--;

                    stream_text_monoboldcontentpart.add(text_monoboldcontentpart34.getTree());


                    break;

                default :
                    break loop26;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:195:2: ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
            var alt27=2;
            var LA27_0 = this.input.LA(1);

            if ( (LA27_0==CLOSE_BOLD_MARKUP) ) {
                alt27=1;
            }
            else if ( (LA27_0==EOF||(LA27_0>=PARAGRAPH && LA27_0<=CLOSE_ITALIC_MARKUP)||(LA27_0>=NESTED_LINK_MARKUP && LA27_0<=INSIGNIFICANT_CHAR)) ) {
                alt27=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 27, 0, this.input);

                throw nvae;
            }
            switch (alt27) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:195:3: close_bold_markup
                    this.pushFollow(BlockParser.FOLLOW_close_bold_markup_in_text_monoboldcontent1046);
                    close_bold_markup35=this.close_bold_markup();

                    this.state._fsp--;

                    stream_close_bold_markup.add(close_bold_markup35.getTree());


                    // AST REWRITE
                    // elements: i, text_monoboldcontentpart, j
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 195:21: -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:195:24: ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (bold_markup33?this.input.toString(bold_markup33.start,bold_markup33.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:195:64: ^( BOLDTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(BOLDTEXT, "BOLDTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:195:75: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:195:79: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:195:83: ( text_monoboldcontentpart )*
                        while ( stream_text_monoboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monoboldcontentpart.nextTree());

                        }
                        stream_text_monoboldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:197:2:

                    // AST REWRITE
                    // elements: i, bold_markup, text_monoboldcontentpart, j
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 197:2: -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:197:4: ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_bold_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:197:28: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:197:32: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:197:37: ( text_monoboldcontentpart )*
                        while ( stream_text_monoboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monoboldcontentpart.nextTree());

                        }
                        stream_text_monoboldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoboldcontentpart_return: (function() {
        BlockParser.text_monoboldcontentpart_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoboldcontentpart_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:201:1: text_monoboldcontentpart : (i= text_monoboldplaintcontent -> ^( TEXTNODE[$i.text] ) | text_monobolditaliccontent -> text_monobolditaliccontent | link -> link ) ;
    // $ANTLR start "text_monoboldcontentpart"
    text_monoboldcontentpart: function() {
        var retval = new BlockParser.text_monoboldcontentpart_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var text_monobolditaliccontent36 = null;
         var link37 = null;

        var stream_text_monoboldplaintcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoboldplaintcontent");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monobolditaliccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monobolditaliccontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:202:2: ( (i= text_monoboldplaintcontent -> ^( TEXTNODE[$i.text] ) | text_monobolditaliccontent -> text_monobolditaliccontent | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:203:2: (i= text_monoboldplaintcontent -> ^( TEXTNODE[$i.text] ) | text_monobolditaliccontent -> text_monobolditaliccontent | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:203:2: (i= text_monoboldplaintcontent -> ^( TEXTNODE[$i.text] ) | text_monobolditaliccontent -> text_monobolditaliccontent | link -> link )
            var alt28=3;
            switch ( this.input.LA(1) ) {
            case NESTED_ITALIC:
                alt28=1;
                break;
            case ITAL_MARKUP:
                alt28=2;
                break;
            case CLOSE_ITALIC_MARKUP:
                alt28=1;
                break;
            case PARAGRAPH:
            case PLAINTEXT:
            case BOLDTEXT:
            case ITALICTEXT:
            case MONOTEXT:
            case TEXTNODE:
            case SIMPLELINK:
            case NAMEDLINK:
            case NESTED_BOLD:
            case NESTED_MONO:
            case BOLD_MARKUP:
            case MONO_MARKUP:
            case WHITESPACE:
            case WS:
            case NESTED_LINK_MARKUP:
            case CR:
            case LF:
            case NEW_LINE:
            case NUMBER_CHAR:
            case ALPHABET:
            case DIGIT:
            case TRADE_MARK:
            case INSIGNIFICANT_CHAR:
                alt28=1;
                break;
            case LINK_MARKUP:
                alt28=3;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 28, 0, this.input);

                throw nvae;
            }

            switch (alt28) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:203:3: i= text_monoboldplaintcontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoboldplaintcontent_in_text_monoboldcontentpart1115);
                    i=this.text_monoboldplaintcontent();

                    this.state._fsp--;

                    stream_text_monoboldplaintcontent.add(i.getTree());


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 203:32: -> ^( TEXTNODE[$i.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:203:35: ^( TEXTNODE[$i.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:205:2: text_monobolditaliccontent
                    this.pushFollow(BlockParser.FOLLOW_text_monobolditaliccontent_in_text_monoboldcontentpart1128);
                    text_monobolditaliccontent36=this.text_monobolditaliccontent();

                    this.state._fsp--;

                    stream_text_monobolditaliccontent.add(text_monobolditaliccontent36.getTree());


                    // AST REWRITE
                    // elements: text_monobolditaliccontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 205:29: -> text_monobolditaliccontent
                    {
                        this.adaptor.addChild(root_0, stream_text_monobolditaliccontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:207:2: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monoboldcontentpart1138);
                    link37=this.link();

                    this.state._fsp--;

                    stream_link.add(link37.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 207:7: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monoboldplaintcontent_return: (function() {
        BlockParser.text_monoboldplaintcontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monoboldplaintcontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:211:1: text_monoboldplaintcontent : (i=~ ( CLOSE_BOLD_MARKUP | LINK_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ ;
    // $ANTLR start "text_monoboldplaintcontent"
    text_monoboldplaintcontent: function() {
        var retval = new BlockParser.text_monoboldplaintcontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:212:2: ( (i=~ ( CLOSE_BOLD_MARKUP | LINK_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:212:3: (i=~ ( CLOSE_BOLD_MARKUP | LINK_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:212:3: (i=~ ( CLOSE_BOLD_MARKUP | LINK_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            var cnt29=0;
            loop29:
            do {
                var alt29=2;
                alt29 = this.dfa29.predict(this.input);
                switch (alt29) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:212:4: i=~ ( CLOSE_BOLD_MARKUP | LINK_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||this.input.LA(1)==BOLD_MARKUP||(this.input.LA(1)>=MONO_MARKUP && this.input.LA(1)<=WS)||this.input.LA(1)==CLOSE_ITALIC_MARKUP||(this.input.LA(1)>=NESTED_LINK_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt29 >= 1 ) {
                        break loop29;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(29, this.input);
                        throw eee;
                }
                cnt29++;
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_monobolditaliccontent_return: (function() {
        BlockParser.text_monobolditaliccontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_monobolditaliccontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:215:1: text_monobolditaliccontent : italic_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( text_monoitalicboldcontentpart )* ) ) ;
    // $ANTLR start "text_monobolditaliccontent"
    text_monobolditaliccontent: function() {
        var retval = new BlockParser.text_monobolditaliccontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var italic_markup38 = null;
         var text_monoitalicboldcontentpart39 = null;
         var close_italic_markup40 = null;

        var stream_close_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_italic_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule italic_markup");
        var stream_text_monoitalicboldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicboldcontentpart");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:216:2: ( italic_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( text_monoitalicboldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:216:3: italic_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( text_monoitalicboldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_italic_markup_in_text_monobolditaliccontent1185);
            italic_markup38=this.italic_markup();

            this.state._fsp--;

            stream_italic_markup.add(italic_markup38.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:216:19: (i= link )?
            var alt30=2;
            var LA30_0 = this.input.LA(1);

            if ( (LA30_0==LINK_MARKUP) ) {
                alt30=1;
            }
            else if ( (LA30_0==NESTED_LINK_MARKUP) ) {
                alt30=1;
            }
            switch (alt30) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:216:19: i= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_monobolditaliccontent1191);
                    i=this.link();

                    this.state._fsp--;

                    stream_link.add(i.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:217:2: ( text_monoitalicboldcontentpart )*
            loop31:
            do {
                var alt31=2;
                alt31 = this.dfa31.predict(this.input);
                switch (alt31) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:217:2: text_monoitalicboldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicboldcontentpart_in_text_monobolditaliccontent1195);
                    text_monoitalicboldcontentpart39=this.text_monoitalicboldcontentpart();

                    this.state._fsp--;

                    stream_text_monoitalicboldcontentpart.add(text_monoitalicboldcontentpart39.getTree());


                    break;

                default :
                    break loop31;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:218:2: ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( text_monoitalicboldcontentpart )* ) )
            var alt32=2;
            var LA32_0 = this.input.LA(1);

            if ( (LA32_0==CLOSE_ITALIC_MARKUP) ) {
                alt32=1;
            }
            else if ( (LA32_0==EOF||(LA32_0>=PARAGRAPH && LA32_0<=CLOSE_MONO_MARKUP)||(LA32_0>=CLOSE_BOLD_MARKUP && LA32_0<=INSIGNIFICANT_CHAR)) ) {
                alt32=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 32, 0, this.input);

                throw nvae;
            }
            switch (alt32) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:219:2: close_italic_markup
                    this.pushFollow(BlockParser.FOLLOW_close_italic_markup_in_text_monobolditaliccontent1203);
                    close_italic_markup40=this.close_italic_markup();

                    this.state._fsp--;

                    stream_close_italic_markup.add(close_italic_markup40.getTree());


                    // AST REWRITE
                    // elements: i, text_monoitalicboldcontentpart
                    // token labels:
                    // rule labels: retval, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 219:22: -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:219:25: ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (italic_markup38?this.input.toString(italic_markup38.start,italic_markup38.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:219:67: ^( ITALICTEXT ( $i)? ( text_monoitalicboldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(ITALICTEXT, "ITALICTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:219:81: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:219:85: ( text_monoitalicboldcontentpart )*
                        while ( stream_text_monoitalicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monoitalicboldcontentpart.nextTree());

                        }
                        stream_text_monoitalicboldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:221:3:

                    // AST REWRITE
                    // elements: i, text_monoitalicboldcontentpart, italic_markup
                    // token labels:
                    // rule labels: retval, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 221:3: -> ^( PLAINTEXT italic_markup ( $i)? ( text_monoitalicboldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:221:6: ^( PLAINTEXT italic_markup ( $i)? ( text_monoitalicboldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_italic_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:221:32: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:221:36: ( text_monoitalicboldcontentpart )*
                        while ( stream_text_monoitalicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monoitalicboldcontentpart.nextTree());

                        }
                        stream_text_monoitalicboldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italiccontent_return: (function() {
        BlockParser.text_italiccontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italiccontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:229:1: text_italiccontent : italic_markup (i= text_italicmonocontent | j= text_italicboldcontent | k= link )? ( text_italiccontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) ) ;
    // $ANTLR start "text_italiccontent"
    text_italiccontent: function() {
        var retval = new BlockParser.text_italiccontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var k = null;
         var italic_markup41 = null;
         var text_italiccontentpart42 = null;
         var close_italic_markup43 = null;

        var stream_text_italiccontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italiccontentpart");
        var stream_close_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_italic_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule italic_markup");
        var stream_text_italicmonocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicmonocontent");
        var stream_text_italicboldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldcontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:230:2: ( italic_markup (i= text_italicmonocontent | j= text_italicboldcontent | k= link )? ( text_italiccontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:230:3: italic_markup (i= text_italicmonocontent | j= text_italicboldcontent | k= link )? ( text_italiccontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_italic_markup_in_text_italiccontent1264);
            italic_markup41=this.italic_markup();

            this.state._fsp--;

            stream_italic_markup.add(italic_markup41.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:230:17: (i= text_italicmonocontent | j= text_italicboldcontent | k= link )?
            var alt33=4;
            alt33 = this.dfa33.predict(this.input);
            switch (alt33) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:230:18: i= text_italicmonocontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicmonocontent_in_text_italiccontent1271);
                    i=this.text_italicmonocontent();

                    this.state._fsp--;

                    stream_text_italicmonocontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:230:45: j= text_italicboldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldcontent_in_text_italiccontent1277);
                    j=this.text_italicboldcontent();

                    this.state._fsp--;

                    stream_text_italicboldcontent.add(j.getTree());


                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:230:72: k= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_italiccontent1281);
                    k=this.link();

                    this.state._fsp--;

                    stream_link.add(k.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:231:2: ( text_italiccontentpart )*
            loop34:
            do {
                var alt34=2;
                alt34 = this.dfa34.predict(this.input);
                switch (alt34) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:231:2: text_italiccontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_italiccontentpart_in_text_italiccontent1286);
                    text_italiccontentpart42=this.text_italiccontentpart();

                    this.state._fsp--;

                    stream_text_italiccontentpart.add(text_italiccontentpart42.getTree());


                    break;

                default :
                    break loop34;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:2: ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) )
            var alt35=2;
            var LA35_0 = this.input.LA(1);

            if ( (LA35_0==CLOSE_ITALIC_MARKUP) ) {
                alt35=1;
            }
            else if ( (LA35_0==EOF||(LA35_0>=PARAGRAPH && LA35_0<=CLOSE_MONO_MARKUP)||(LA35_0>=CLOSE_BOLD_MARKUP && LA35_0<=INSIGNIFICANT_CHAR)) ) {
                alt35=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 35, 0, this.input);

                throw nvae;
            }
            switch (alt35) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:3: close_italic_markup
                    this.pushFollow(BlockParser.FOLLOW_close_italic_markup_in_text_italiccontent1291);
                    close_italic_markup43=this.close_italic_markup();

                    this.state._fsp--;

                    stream_close_italic_markup.add(close_italic_markup43.getTree());


                    // AST REWRITE
                    // elements: k, i, text_italiccontentpart, j
                    // token labels:
                    // rule labels: retval, j, k, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_k=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token k",k!=null?k.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 232:25: -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:28: ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (italic_markup41?this.input.toString(italic_markup41.start,italic_markup41.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:70: ^( ITALICTEXT ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(ITALICTEXT, "ITALICTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:84: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:88: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:92: ( $k)?
                        if ( stream_k.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_k.nextTree());

                        }
                        stream_k.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:232:96: ( text_italiccontentpart )*
                        while ( stream_text_italiccontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_italiccontentpart.nextTree());

                        }
                        stream_text_italiccontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:234:2:

                    // AST REWRITE
                    // elements: italic_markup, k, text_italiccontentpart, i, j
                    // token labels:
                    // rule labels: retval, j, k, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_k=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token k",k!=null?k.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 234:2: -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:234:4: ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( $k)? ( text_italiccontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_italic_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:234:30: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:234:34: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:234:38: ( $k)?
                        if ( stream_k.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_k.nextTree());

                        }
                        stream_k.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:234:42: ( text_italiccontentpart )*
                        while ( stream_text_italiccontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_italiccontentpart.nextTree());

                        }
                        stream_text_italiccontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italiccontentpart_return: (function() {
        BlockParser.text_italiccontentpart_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italiccontentpart_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:238:1: text_italiccontentpart : (i= text_italicplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicmonocontent -> text_italicmonocontent | text_italicboldcontent -> text_italicboldcontent | link -> link ) ;
    // $ANTLR start "text_italiccontentpart"
    text_italiccontentpart: function() {
        var retval = new BlockParser.text_italiccontentpart_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var text_italicmonocontent44 = null;
         var text_italicboldcontent45 = null;
         var link46 = null;

        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_italicplaincontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicplaincontent");
        var stream_text_italicmonocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicmonocontent");
        var stream_text_italicboldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldcontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:239:2: ( (i= text_italicplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicmonocontent -> text_italicmonocontent | text_italicboldcontent -> text_italicboldcontent | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:240:2: (i= text_italicplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicmonocontent -> text_italicmonocontent | text_italicboldcontent -> text_italicboldcontent | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:240:2: (i= text_italicplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicmonocontent -> text_italicmonocontent | text_italicboldcontent -> text_italicboldcontent | link -> link )
            var alt36=4;
            switch ( this.input.LA(1) ) {
            case NESTED_MONO:
                alt36=1;
                break;
            case MONO_MARKUP:
                alt36=2;
                break;
            case CLOSE_MONO_MARKUP:
                alt36=1;
                break;
            case NESTED_BOLD:
                alt36=1;
                break;
            case BOLD_MARKUP:
                alt36=3;
                break;
            case CLOSE_BOLD_MARKUP:
                alt36=1;
                break;
            case PARAGRAPH:
            case PLAINTEXT:
            case BOLDTEXT:
            case ITALICTEXT:
            case MONOTEXT:
            case TEXTNODE:
            case SIMPLELINK:
            case NAMEDLINK:
            case NESTED_ITALIC:
            case ITAL_MARKUP:
            case WHITESPACE:
            case WS:
            case NESTED_LINK_MARKUP:
            case CR:
            case LF:
            case NEW_LINE:
            case NUMBER_CHAR:
            case ALPHABET:
            case DIGIT:
            case TRADE_MARK:
            case INSIGNIFICANT_CHAR:
                alt36=1;
                break;
            case LINK_MARKUP:
                alt36=4;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 36, 0, this.input);

                throw nvae;
            }

            switch (alt36) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:241:2: i= text_italicplaincontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicplaincontent_in_text_italiccontentpart1371);
                    i=this.text_italicplaincontent();

                    this.state._fsp--;

                    stream_text_italicplaincontent.add(i.getTree());


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 241:28: -> ^( TEXTNODE[$i.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:241:31: ^( TEXTNODE[$i.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:243:2: text_italicmonocontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicmonocontent_in_text_italiccontentpart1384);
                    text_italicmonocontent44=this.text_italicmonocontent();

                    this.state._fsp--;

                    stream_text_italicmonocontent.add(text_italicmonocontent44.getTree());


                    // AST REWRITE
                    // elements: text_italicmonocontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 243:25: -> text_italicmonocontent
                    {
                        this.adaptor.addChild(root_0, stream_text_italicmonocontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:245:2: text_italicboldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldcontent_in_text_italiccontentpart1395);
                    text_italicboldcontent45=this.text_italicboldcontent();

                    this.state._fsp--;

                    stream_text_italicboldcontent.add(text_italicboldcontent45.getTree());


                    // AST REWRITE
                    // elements: text_italicboldcontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 245:25: -> text_italicboldcontent
                    {
                        this.adaptor.addChild(root_0, stream_text_italicboldcontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:247:2: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_italiccontentpart1405);
                    link46=this.link();

                    this.state._fsp--;

                    stream_link.add(link46.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 247:7: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italicplaincontent_return: (function() {
        BlockParser.text_italicplaincontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italicplaincontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:251:1: text_italicplaincontent : (i=~ ( BOLD_MARKUP | LINK_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ ;
    // $ANTLR start "text_italicplaincontent"
    text_italicplaincontent: function() {
        var retval = new BlockParser.text_italicplaincontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:252:2: ( (i=~ ( BOLD_MARKUP | LINK_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:252:3: (i=~ ( BOLD_MARKUP | LINK_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:252:3: (i=~ ( BOLD_MARKUP | LINK_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            var cnt37=0;
            loop37:
            do {
                var alt37=2;
                alt37 = this.dfa37.predict(this.input);
                switch (alt37) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:252:4: i=~ ( BOLD_MARKUP | LINK_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||this.input.LA(1)==ITAL_MARKUP||(this.input.LA(1)>=WHITESPACE && this.input.LA(1)<=WS)||this.input.LA(1)==CLOSE_MONO_MARKUP||(this.input.LA(1)>=CLOSE_BOLD_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt37 >= 1 ) {
                        break loop37;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(37, this.input);
                        throw eee;
                }
                cnt37++;
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italicmonocontent_return: (function() {
        BlockParser.text_italicmonocontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italicmonocontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:256:1: text_italicmonocontent : mono_markup (i= text_monoitalicboldcontent | j= link )? ( text_monoitaliccontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) ;
    // $ANTLR start "text_italicmonocontent"
    text_italicmonocontent: function() {
        var retval = new BlockParser.text_italicmonocontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var mono_markup47 = null;
         var text_monoitaliccontentpart48 = null;
         var close_mono_markup49 = null;

        var stream_close_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_mono_markup");
        var stream_text_monoitalicboldcontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicboldcontent");
        var stream_text_monoitaliccontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitaliccontentpart");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule mono_markup");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:257:2: ( mono_markup (i= text_monoitalicboldcontent | j= link )? ( text_monoitaliccontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:257:3: mono_markup (i= text_monoitalicboldcontent | j= link )? ( text_monoitaliccontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_mono_markup_in_text_italicmonocontent1454);
            mono_markup47=this.mono_markup();

            this.state._fsp--;

            stream_mono_markup.add(mono_markup47.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:257:16: (i= text_monoitalicboldcontent | j= link )?
            var alt38=3;
            switch ( this.input.LA(1) ) {
                case BOLD_MARKUP:
                    alt38=1;
                    break;
                case NESTED_BOLD:
                    alt38=1;
                    break;
                case CLOSE_BOLD_MARKUP:
                    alt38=1;
                    break;
                case LINK_MARKUP:
                    alt38=2;
                    break;
                case NESTED_LINK_MARKUP:
                    alt38=2;
                    break;
            }

            switch (alt38) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:257:17: i= text_monoitalicboldcontent
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicboldcontent_in_text_italicmonocontent1462);
                    i=this.text_monoitalicboldcontent();

                    this.state._fsp--;

                    stream_text_monoitalicboldcontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:257:48: j= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_italicmonocontent1466);
                    j=this.link();

                    this.state._fsp--;

                    stream_link.add(j.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:258:2: ( text_monoitaliccontentpart )*
            loop39:
            do {
                var alt39=2;
                alt39 = this.dfa39.predict(this.input);
                switch (alt39) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:258:2: text_monoitaliccontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monoitaliccontentpart_in_text_italicmonocontent1471);
                    text_monoitaliccontentpart48=this.text_monoitaliccontentpart();

                    this.state._fsp--;

                    stream_text_monoitaliccontentpart.add(text_monoitaliccontentpart48.getTree());


                    break;

                default :
                    break loop39;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:259:2: ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
            var alt40=2;
            var LA40_0 = this.input.LA(1);

            if ( (LA40_0==CLOSE_MONO_MARKUP) ) {
                alt40=1;
            }
            else if ( (LA40_0==EOF||(LA40_0>=PARAGRAPH && LA40_0<=LINK_MARKUP)||(LA40_0>=CLOSE_ITALIC_MARKUP && LA40_0<=INSIGNIFICANT_CHAR)) ) {
                alt40=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 40, 0, this.input);

                throw nvae;
            }
            switch (alt40) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:259:3: close_mono_markup
                    this.pushFollow(BlockParser.FOLLOW_close_mono_markup_in_text_italicmonocontent1476);
                    close_mono_markup49=this.close_mono_markup();

                    this.state._fsp--;

                    stream_close_mono_markup.add(close_mono_markup49.getTree());


                    // AST REWRITE
                    // elements: i, text_monoitaliccontentpart, j
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 259:22: -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:259:25: ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (mono_markup47?this.input.toString(mono_markup47.start,mono_markup47.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:259:65: ^( MONOTEXT ( $i)? ( $j)? ( text_monoitaliccontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(MONOTEXT, "MONOTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:259:77: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:259:81: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:259:85: ( text_monoitaliccontentpart )*
                        while ( stream_text_monoitaliccontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monoitaliccontentpart.nextTree());

                        }
                        stream_text_monoitaliccontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:261:2:

                    // AST REWRITE
                    // elements: i, text_monoitaliccontentpart, j, mono_markup
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 261:2: -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:261:4: ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoitaliccontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_mono_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:261:28: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:261:32: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:261:37: ( text_monoitaliccontentpart )*
                        while ( stream_text_monoitaliccontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monoitaliccontentpart.nextTree());

                        }
                        stream_text_monoitaliccontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italicboldcontent_return: (function() {
        BlockParser.text_italicboldcontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italicboldcontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:265:1: text_italicboldcontent : bold_markup (i= text_italicboldmonocontent | j= link )? ( text_italicboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) ;
    // $ANTLR start "text_italicboldcontent"
    text_italicboldcontent: function() {
        var retval = new BlockParser.text_italicboldcontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var bold_markup50 = null;
         var text_italicboldcontentpart51 = null;
         var close_bold_markup52 = null;

        var stream_close_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_bold_markup");
        var stream_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule bold_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_italicboldmonocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldmonocontent");
        var stream_text_italicboldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldcontentpart");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:266:3: ( bold_markup (i= text_italicboldmonocontent | j= link )? ( text_italicboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:266:4: bold_markup (i= text_italicboldmonocontent | j= link )? ( text_italicboldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_bold_markup_in_text_italicboldcontent1542);
            bold_markup50=this.bold_markup();

            this.state._fsp--;

            stream_bold_markup.add(bold_markup50.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:266:16: (i= text_italicboldmonocontent | j= link )?
            var alt41=3;
            switch ( this.input.LA(1) ) {
                case MONO_MARKUP:
                    alt41=1;
                    break;
                case NESTED_MONO:
                    alt41=1;
                    break;
                case CLOSE_MONO_MARKUP:
                    alt41=1;
                    break;
                case LINK_MARKUP:
                    alt41=2;
                    break;
                case NESTED_LINK_MARKUP:
                    alt41=2;
                    break;
            }

            switch (alt41) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:266:17: i= text_italicboldmonocontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldmonocontent_in_text_italicboldcontent1547);
                    i=this.text_italicboldmonocontent();

                    this.state._fsp--;

                    stream_text_italicboldmonocontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:266:46: j= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_italicboldcontent1551);
                    j=this.link();

                    this.state._fsp--;

                    stream_link.add(j.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:267:3: ( text_italicboldcontentpart )*
            loop42:
            do {
                var alt42=2;
                alt42 = this.dfa42.predict(this.input);
                switch (alt42) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:267:3: text_italicboldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldcontentpart_in_text_italicboldcontent1557);
                    text_italicboldcontentpart51=this.text_italicboldcontentpart();

                    this.state._fsp--;

                    stream_text_italicboldcontentpart.add(text_italicboldcontentpart51.getTree());


                    break;

                default :
                    break loop42;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:268:3: ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
            var alt43=2;
            var LA43_0 = this.input.LA(1);

            if ( (LA43_0==CLOSE_BOLD_MARKUP) ) {
                alt43=1;
            }
            else if ( (LA43_0==EOF||(LA43_0>=PARAGRAPH && LA43_0<=CLOSE_ITALIC_MARKUP)||(LA43_0>=NESTED_LINK_MARKUP && LA43_0<=INSIGNIFICANT_CHAR)) ) {
                alt43=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 43, 0, this.input);

                throw nvae;
            }
            switch (alt43) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:269:4: close_bold_markup
                    this.pushFollow(BlockParser.FOLLOW_close_bold_markup_in_text_italicboldcontent1568);
                    close_bold_markup52=this.close_bold_markup();

                    this.state._fsp--;

                    stream_close_bold_markup.add(close_bold_markup52.getTree());


                    // AST REWRITE
                    // elements: j, text_italicboldcontentpart, i
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 269:22: -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:269:25: ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (bold_markup50?this.input.toString(bold_markup50.start,bold_markup50.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:269:65: ^( BOLDTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(BOLDTEXT, "BOLDTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:269:77: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:269:81: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:269:85: ( text_italicboldcontentpart )*
                        while ( stream_text_italicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_italicboldcontentpart.nextTree());

                        }
                        stream_text_italicboldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:271:5:

                    // AST REWRITE
                    // elements: text_italicboldcontentpart, i, j, bold_markup
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 271:5: -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:271:8: ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_bold_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:271:32: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:271:36: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:271:40: ( text_italicboldcontentpart )*
                        while ( stream_text_italicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_italicboldcontentpart.nextTree());

                        }
                        stream_text_italicboldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italicboldcontentpart_return: (function() {
        BlockParser.text_italicboldcontentpart_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italicboldcontentpart_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:275:2: text_italicboldcontentpart : (i= text_italicboldplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicboldmonocontent -> text_italicboldmonocontent | link -> link ) ;
    // $ANTLR start "text_italicboldcontentpart"
    text_italicboldcontentpart: function() {
        var retval = new BlockParser.text_italicboldcontentpart_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var text_italicboldmonocontent53 = null;
         var link54 = null;

        var stream_text_italicboldplaincontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldplaincontent");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_italicboldmonocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldmonocontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:276:3: ( (i= text_italicboldplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicboldmonocontent -> text_italicboldmonocontent | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:277:3: (i= text_italicboldplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicboldmonocontent -> text_italicboldmonocontent | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:277:3: (i= text_italicboldplaincontent -> ^( TEXTNODE[$i.text] ) | text_italicboldmonocontent -> text_italicboldmonocontent | link -> link )
            var alt44=3;
            switch ( this.input.LA(1) ) {
            case NESTED_MONO:
                alt44=1;
                break;
            case MONO_MARKUP:
                alt44=2;
                break;
            case CLOSE_MONO_MARKUP:
                alt44=1;
                break;
            case PARAGRAPH:
            case PLAINTEXT:
            case BOLDTEXT:
            case ITALICTEXT:
            case MONOTEXT:
            case TEXTNODE:
            case SIMPLELINK:
            case NAMEDLINK:
            case NESTED_ITALIC:
            case NESTED_BOLD:
            case BOLD_MARKUP:
            case ITAL_MARKUP:
            case WHITESPACE:
            case WS:
            case NESTED_LINK_MARKUP:
            case CR:
            case LF:
            case NEW_LINE:
            case NUMBER_CHAR:
            case ALPHABET:
            case DIGIT:
            case TRADE_MARK:
            case INSIGNIFICANT_CHAR:
                alt44=1;
                break;
            case LINK_MARKUP:
                alt44=3;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 44, 0, this.input);

                throw nvae;
            }

            switch (alt44) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:278:3: i= text_italicboldplaincontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldplaincontent_in_text_italicboldcontentpart1654);
                    i=this.text_italicboldplaincontent();

                    this.state._fsp--;

                    stream_text_italicboldplaincontent.add(i.getTree());


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 278:34: -> ^( TEXTNODE[$i.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:278:37: ^( TEXTNODE[$i.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:280:3: text_italicboldmonocontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldmonocontent_in_text_italicboldcontentpart1670);
                    text_italicboldmonocontent53=this.text_italicboldmonocontent();

                    this.state._fsp--;

                    stream_text_italicboldmonocontent.add(text_italicboldmonocontent53.getTree());


                    // AST REWRITE
                    // elements: text_italicboldmonocontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 280:30: -> text_italicboldmonocontent
                    {
                        this.adaptor.addChild(root_0, stream_text_italicboldmonocontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:282:3: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_italicboldcontentpart1682);
                    link54=this.link();

                    this.state._fsp--;

                    stream_link.add(link54.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 282:8: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italicboldplaincontent_return: (function() {
        BlockParser.text_italicboldplaincontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italicboldplaincontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:287:2: text_italicboldplaincontent : (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ ;
    // $ANTLR start "text_italicboldplaincontent"
    text_italicboldplaincontent: function() {
        var retval = new BlockParser.text_italicboldplaincontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:288:3: ( (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+ )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:288:4: (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:288:4: (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+
            var cnt45=0;
            loop45:
            do {
                var alt45=2;
                alt45 = this.dfa45.predict(this.input);
                switch (alt45) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:288:5: i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP )
                    i=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||(this.input.LA(1)>=BOLD_MARKUP && this.input.LA(1)<=ITAL_MARKUP)||(this.input.LA(1)>=WHITESPACE && this.input.LA(1)<=WS)||this.input.LA(1)==CLOSE_MONO_MARKUP||(this.input.LA(1)>=NESTED_LINK_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                        this.input.consume();
                        this.adaptor.addChild(root_0, this.adaptor.create(i));
                        this.state.errorRecovery=false;
                    }
                    else {
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    if ( cnt45 >= 1 ) {
                        break loop45;
                    }
                        var eee = new org.antlr.runtime.EarlyExitException(45, this.input);
                        throw eee;
                }
                cnt45++;
            } while (true);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_italicboldmonocontent_return: (function() {
        BlockParser.text_italicboldmonocontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_italicboldmonocontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:291:2: text_italicboldmonocontent : mono_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( text_monoitalicboldcontentpart )* ) ) ;
    // $ANTLR start "text_italicboldmonocontent"
    text_italicboldmonocontent: function() {
        var retval = new BlockParser.text_italicboldmonocontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var mono_markup55 = null;
         var text_monoitalicboldcontentpart56 = null;
         var close_mono_markup57 = null;

        var stream_close_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_mono_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_monoitalicboldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoitalicboldcontentpart");
        var stream_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule mono_markup");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:292:3: ( mono_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( text_monoitalicboldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:292:4: mono_markup (i= link )? ( text_monoitalicboldcontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( text_monoitalicboldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_mono_markup_in_text_italicboldmonocontent1740);
            mono_markup55=this.mono_markup();

            this.state._fsp--;

            stream_mono_markup.add(mono_markup55.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:292:18: (i= link )?
            var alt46=2;
            var LA46_0 = this.input.LA(1);

            if ( (LA46_0==LINK_MARKUP) ) {
                alt46=1;
            }
            else if ( (LA46_0==NESTED_LINK_MARKUP) ) {
                alt46=1;
            }
            switch (alt46) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:292:18: i= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_italicboldmonocontent1745);
                    i=this.link();

                    this.state._fsp--;

                    stream_link.add(i.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:293:3: ( text_monoitalicboldcontentpart )*
            loop47:
            do {
                var alt47=2;
                alt47 = this.dfa47.predict(this.input);
                switch (alt47) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:293:3: text_monoitalicboldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monoitalicboldcontentpart_in_text_italicboldmonocontent1750);
                    text_monoitalicboldcontentpart56=this.text_monoitalicboldcontentpart();

                    this.state._fsp--;

                    stream_text_monoitalicboldcontentpart.add(text_monoitalicboldcontentpart56.getTree());


                    break;

                default :
                    break loop47;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:294:2: ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( text_monoitalicboldcontentpart )* ) )
            var alt48=2;
            var LA48_0 = this.input.LA(1);

            if ( (LA48_0==CLOSE_MONO_MARKUP) ) {
                alt48=1;
            }
            else if ( (LA48_0==EOF||(LA48_0>=PARAGRAPH && LA48_0<=LINK_MARKUP)||(LA48_0>=CLOSE_ITALIC_MARKUP && LA48_0<=INSIGNIFICANT_CHAR)) ) {
                alt48=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 48, 0, this.input);

                throw nvae;
            }
            switch (alt48) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:295:2: close_mono_markup
                    this.pushFollow(BlockParser.FOLLOW_close_mono_markup_in_text_italicboldmonocontent1757);
                    close_mono_markup57=this.close_mono_markup();

                    this.state._fsp--;

                    stream_close_mono_markup.add(close_mono_markup57.getTree());


                    // AST REWRITE
                    // elements: text_monoitalicboldcontentpart, i
                    // token labels:
                    // rule labels: retval, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 295:20: -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:295:22: ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( text_monoitalicboldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (mono_markup55?this.input.toString(mono_markup55.start,mono_markup55.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:295:62: ^( MONOTEXT ( $i)? ( text_monoitalicboldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(MONOTEXT, "MONOTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:295:74: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:295:78: ( text_monoitalicboldcontentpart )*
                        while ( stream_text_monoitalicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monoitalicboldcontentpart.nextTree());

                        }
                        stream_text_monoitalicboldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:297:2:

                    // AST REWRITE
                    // elements: i, text_monoitalicboldcontentpart, mono_markup
                    // token labels:
                    // rule labels: retval, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 297:2: -> ^( PLAINTEXT mono_markup ( $i)? ( text_monoitalicboldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:297:5: ^( PLAINTEXT mono_markup ( $i)? ( text_monoitalicboldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_mono_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:297:29: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:297:33: ( text_monoitalicboldcontentpart )*
                        while ( stream_text_monoitalicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monoitalicboldcontentpart.nextTree());

                        }
                        stream_text_monoitalicboldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_boldcontent_return: (function() {
        BlockParser.text_boldcontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_boldcontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:307:1: text_boldcontent : bold_markup (i= text_bolditaliccontent | j= text_boldmonocontent | k= link )? ( text_boldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) ) ;
    // $ANTLR start "text_boldcontent"
    text_boldcontent: function() {
        var retval = new BlockParser.text_boldcontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var k = null;
         var bold_markup58 = null;
         var text_boldcontentpart59 = null;
         var close_bold_markup60 = null;

        var stream_text_bolditaliccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_bolditaliccontent");
        var stream_text_boldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_boldcontentpart");
        var stream_close_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_bold_markup");
        var stream_text_boldmonocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_boldmonocontent");
        var stream_bold_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule bold_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:308:2: ( bold_markup (i= text_bolditaliccontent | j= text_boldmonocontent | k= link )? ( text_boldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:308:3: bold_markup (i= text_bolditaliccontent | j= text_boldmonocontent | k= link )? ( text_boldcontentpart )* ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_bold_markup_in_text_boldcontent1821);
            bold_markup58=this.bold_markup();

            this.state._fsp--;

            stream_bold_markup.add(bold_markup58.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:308:15: (i= text_bolditaliccontent | j= text_boldmonocontent | k= link )?
            var alt49=4;
            alt49 = this.dfa49.predict(this.input);
            switch (alt49) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:308:16: i= text_bolditaliccontent
                    this.pushFollow(BlockParser.FOLLOW_text_bolditaliccontent_in_text_boldcontent1828);
                    i=this.text_bolditaliccontent();

                    this.state._fsp--;

                    stream_text_bolditaliccontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:308:43: j= text_boldmonocontent
                    this.pushFollow(BlockParser.FOLLOW_text_boldmonocontent_in_text_boldcontent1832);
                    j=this.text_boldmonocontent();

                    this.state._fsp--;

                    stream_text_boldmonocontent.add(j.getTree());


                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:308:66: k= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_boldcontent1836);
                    k=this.link();

                    this.state._fsp--;

                    stream_link.add(k.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:309:2: ( text_boldcontentpart )*
            loop50:
            do {
                var alt50=2;
                alt50 = this.dfa50.predict(this.input);
                switch (alt50) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:309:2: text_boldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_boldcontentpart_in_text_boldcontent1841);
                    text_boldcontentpart59=this.text_boldcontentpart();

                    this.state._fsp--;

                    stream_text_boldcontentpart.add(text_boldcontentpart59.getTree());


                    break;

                default :
                    break loop50;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:310:2: ( close_bold_markup -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) ) | -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) )
            var alt51=2;
            var LA51_0 = this.input.LA(1);

            if ( (LA51_0==CLOSE_BOLD_MARKUP) ) {
                alt51=1;
            }
            else if ( (LA51_0==EOF||(LA51_0>=PARAGRAPH && LA51_0<=CLOSE_ITALIC_MARKUP)||(LA51_0>=NESTED_LINK_MARKUP && LA51_0<=INSIGNIFICANT_CHAR)) ) {
                alt51=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 51, 0, this.input);

                throw nvae;
            }
            switch (alt51) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:311:2: close_bold_markup
                    this.pushFollow(BlockParser.FOLLOW_close_bold_markup_in_text_boldcontent1849);
                    close_bold_markup60=this.close_bold_markup();

                    this.state._fsp--;

                    stream_close_bold_markup.add(close_bold_markup60.getTree());


                    // AST REWRITE
                    // elements: k, text_boldcontentpart, j, i
                    // token labels:
                    // rule labels: retval, j, k, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_k=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token k",k!=null?k.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 311:21: -> ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:311:24: ^( PLAINTEXT TEXTNODE[$bold_markup.text] ^( BOLDTEXT ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (bold_markup58?this.input.toString(bold_markup58.start,bold_markup58.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:311:64: ^( BOLDTEXT ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(BOLDTEXT, "BOLDTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:311:78: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:311:82: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:311:86: ( $k)?
                        if ( stream_k.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_k.nextTree());

                        }
                        stream_k.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:311:90: ( text_boldcontentpart )*
                        while ( stream_text_boldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_boldcontentpart.nextTree());

                        }
                        stream_text_boldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:313:2:

                    // AST REWRITE
                    // elements: i, text_boldcontentpart, j, bold_markup, k
                    // token labels:
                    // rule labels: retval, j, k, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_k=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token k",k!=null?k.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 313:2: -> ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:313:4: ^( PLAINTEXT bold_markup ( $i)? ( $j)? ( $k)? ( text_boldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_bold_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:313:30: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:313:34: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:313:38: ( $k)?
                        if ( stream_k.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_k.nextTree());

                        }
                        stream_k.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:313:43: ( text_boldcontentpart )*
                        while ( stream_text_boldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_boldcontentpart.nextTree());

                        }
                        stream_text_boldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_boldcontentpart_return: (function() {
        BlockParser.text_boldcontentpart_return = function(){};
        org.antlr.lang.extend(BlockParser.text_boldcontentpart_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:317:1: text_boldcontentpart : (i= text_boldplaincontent -> ^( TEXTNODE[$i.text] ) | text_bolditaliccontent -> text_bolditaliccontent | text_boldmonocontent -> text_boldmonocontent | link -> link ) ;
    // $ANTLR start "text_boldcontentpart"
    text_boldcontentpart: function() {
        var retval = new BlockParser.text_boldcontentpart_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var text_bolditaliccontent61 = null;
         var text_boldmonocontent62 = null;
         var link63 = null;

        var stream_text_bolditaliccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_bolditaliccontent");
        var stream_text_boldmonocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_boldmonocontent");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_boldplaincontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_boldplaincontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:318:2: ( (i= text_boldplaincontent -> ^( TEXTNODE[$i.text] ) | text_bolditaliccontent -> text_bolditaliccontent | text_boldmonocontent -> text_boldmonocontent | link -> link ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:319:2: (i= text_boldplaincontent -> ^( TEXTNODE[$i.text] ) | text_bolditaliccontent -> text_bolditaliccontent | text_boldmonocontent -> text_boldmonocontent | link -> link )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:319:2: (i= text_boldplaincontent -> ^( TEXTNODE[$i.text] ) | text_bolditaliccontent -> text_bolditaliccontent | text_boldmonocontent -> text_boldmonocontent | link -> link )
            var alt52=4;
            switch ( this.input.LA(1) ) {
            case NESTED_ITALIC:
                alt52=1;
                break;
            case ITAL_MARKUP:
                alt52=2;
                break;
            case CLOSE_ITALIC_MARKUP:
                alt52=1;
                break;
            case NESTED_MONO:
                alt52=1;
                break;
            case MONO_MARKUP:
                alt52=3;
                break;
            case CLOSE_MONO_MARKUP:
                alt52=1;
                break;
            case PARAGRAPH:
            case PLAINTEXT:
            case BOLDTEXT:
            case ITALICTEXT:
            case MONOTEXT:
            case TEXTNODE:
            case SIMPLELINK:
            case NAMEDLINK:
            case NESTED_BOLD:
            case BOLD_MARKUP:
            case WHITESPACE:
            case WS:
            case NESTED_LINK_MARKUP:
            case CR:
            case LF:
            case NEW_LINE:
            case NUMBER_CHAR:
            case ALPHABET:
            case DIGIT:
            case TRADE_MARK:
            case INSIGNIFICANT_CHAR:
                alt52=1;
                break;
            case LINK_MARKUP:
                alt52=4;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 52, 0, this.input);

                throw nvae;
            }

            switch (alt52) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:320:2: i= text_boldplaincontent
                    this.pushFollow(BlockParser.FOLLOW_text_boldplaincontent_in_text_boldcontentpart1935);
                    i=this.text_boldplaincontent();

                    this.state._fsp--;

                    stream_text_boldplaincontent.add(i.getTree());


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 320:28: -> ^( TEXTNODE[$i.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:320:31: ^( TEXTNODE[$i.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (i?this.input.toString(i.start,i.stop):null)), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:322:2: text_bolditaliccontent
                    this.pushFollow(BlockParser.FOLLOW_text_bolditaliccontent_in_text_boldcontentpart1948);
                    text_bolditaliccontent61=this.text_bolditaliccontent();

                    this.state._fsp--;

                    stream_text_bolditaliccontent.add(text_bolditaliccontent61.getTree());


                    // AST REWRITE
                    // elements: text_bolditaliccontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 322:25: -> text_bolditaliccontent
                    {
                        this.adaptor.addChild(root_0, stream_text_bolditaliccontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:324:2: text_boldmonocontent
                    this.pushFollow(BlockParser.FOLLOW_text_boldmonocontent_in_text_boldcontentpart1958);
                    text_boldmonocontent62=this.text_boldmonocontent();

                    this.state._fsp--;

                    stream_text_boldmonocontent.add(text_boldmonocontent62.getTree());


                    // AST REWRITE
                    // elements: text_boldmonocontent
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 324:23: -> text_boldmonocontent
                    {
                        this.adaptor.addChild(root_0, stream_text_boldmonocontent.nextTree());

                    }

                    retval.tree = root_0;

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:326:2: link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_boldcontentpart1967);
                    link63=this.link();

                    this.state._fsp--;

                    stream_link.add(link63.getTree());


                    // AST REWRITE
                    // elements: link
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 326:7: -> link
                    {
                        this.adaptor.addChild(root_0, stream_link.nextTree());

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_boldplaincontent_return: (function() {
        BlockParser.text_boldplaincontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_boldplaincontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:330:1: text_boldplaincontent : (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) ) ;
    // $ANTLR start "text_boldplaincontent"
    text_boldplaincontent: function() {
        var retval = new BlockParser.text_boldplaincontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var i = null;

        var i_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:331:2: ( (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:331:3: (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:331:3: (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:331:4: i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP )
            i=this.input.LT(1);
            if ( (this.input.LA(1)>=PARAGRAPH && this.input.LA(1)<=NESTED_MONO)||this.input.LA(1)==BOLD_MARKUP||(this.input.LA(1)>=WHITESPACE && this.input.LA(1)<=WS)||(this.input.LA(1)>=CLOSE_MONO_MARKUP && this.input.LA(1)<=CLOSE_ITALIC_MARKUP)||(this.input.LA(1)>=NESTED_LINK_MARKUP && this.input.LA(1)<=INSIGNIFICANT_CHAR) ) {
                this.input.consume();
                this.adaptor.addChild(root_0, this.adaptor.create(i));
                this.state.errorRecovery=false;
            }
            else {
                var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                throw mse;
            }







            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_bolditaliccontent_return: (function() {
        BlockParser.text_bolditaliccontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_bolditaliccontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:335:1: text_bolditaliccontent : italic_markup (i= text_italicboldmonocontent | j= link )? ( text_italicboldcontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) ;
    // $ANTLR start "text_bolditaliccontent"
    text_bolditaliccontent: function() {
        var retval = new BlockParser.text_bolditaliccontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var italic_markup64 = null;
         var text_italicboldcontentpart65 = null;
         var close_italic_markup66 = null;

        var stream_close_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_italic_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_text_italicboldmonocontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldmonocontent");
        var stream_italic_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule italic_markup");
        var stream_text_italicboldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_italicboldcontentpart");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:336:2: ( italic_markup (i= text_italicboldmonocontent | j= link )? ( text_italicboldcontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:336:4: italic_markup (i= text_italicboldmonocontent | j= link )? ( text_italicboldcontentpart )* ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_italic_markup_in_text_bolditaliccontent2015);
            italic_markup64=this.italic_markup();

            this.state._fsp--;

            stream_italic_markup.add(italic_markup64.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:336:18: (i= text_italicboldmonocontent | j= link )?
            var alt53=3;
            switch ( this.input.LA(1) ) {
                case MONO_MARKUP:
                    alt53=1;
                    break;
                case NESTED_MONO:
                    alt53=1;
                    break;
                case CLOSE_MONO_MARKUP:
                    alt53=1;
                    break;
                case LINK_MARKUP:
                    alt53=2;
                    break;
                case NESTED_LINK_MARKUP:
                    alt53=2;
                    break;
            }

            switch (alt53) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:336:19: i= text_italicboldmonocontent
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldmonocontent_in_text_bolditaliccontent2020);
                    i=this.text_italicboldmonocontent();

                    this.state._fsp--;

                    stream_text_italicboldmonocontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:336:48: j= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_bolditaliccontent2024);
                    j=this.link();

                    this.state._fsp--;

                    stream_link.add(j.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:337:2: ( text_italicboldcontentpart )*
            loop54:
            do {
                var alt54=2;
                alt54 = this.dfa54.predict(this.input);
                switch (alt54) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:337:2: text_italicboldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_italicboldcontentpart_in_text_bolditaliccontent2029);
                    text_italicboldcontentpart65=this.text_italicboldcontentpart();

                    this.state._fsp--;

                    stream_text_italicboldcontentpart.add(text_italicboldcontentpart65.getTree());


                    break;

                default :
                    break loop54;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:338:2: ( close_italic_markup -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) ) | -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
            var alt55=2;
            var LA55_0 = this.input.LA(1);

            if ( (LA55_0==CLOSE_ITALIC_MARKUP) ) {
                alt55=1;
            }
            else if ( (LA55_0==EOF||(LA55_0>=PARAGRAPH && LA55_0<=CLOSE_MONO_MARKUP)||(LA55_0>=CLOSE_BOLD_MARKUP && LA55_0<=INSIGNIFICANT_CHAR)) ) {
                alt55=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 55, 0, this.input);

                throw nvae;
            }
            switch (alt55) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:339:2: close_italic_markup
                    this.pushFollow(BlockParser.FOLLOW_close_italic_markup_in_text_bolditaliccontent2037);
                    close_italic_markup66=this.close_italic_markup();

                    this.state._fsp--;

                    stream_close_italic_markup.add(close_italic_markup66.getTree());


                    // AST REWRITE
                    // elements: i, j, text_italicboldcontentpart
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 339:22: -> ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:339:25: ^( PLAINTEXT TEXTNODE[$italic_markup.text] ^( ITALICTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (italic_markup64?this.input.toString(italic_markup64.start,italic_markup64.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:339:67: ^( ITALICTEXT ( $i)? ( $j)? ( text_italicboldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(ITALICTEXT, "ITALICTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:339:81: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:339:85: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:339:89: ( text_italicboldcontentpart )*
                        while ( stream_text_italicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_italicboldcontentpart.nextTree());

                        }
                        stream_text_italicboldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:341:2:

                    // AST REWRITE
                    // elements: j, text_italicboldcontentpart, italic_markup, i
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 341:2: -> ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:341:4: ^( PLAINTEXT italic_markup ( $i)? ( $j)? ( text_italicboldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_italic_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:341:30: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:341:34: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:341:38: ( text_italicboldcontentpart )*
                        while ( stream_text_italicboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_italicboldcontentpart.nextTree());

                        }
                        stream_text_italicboldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_boldmonocontent_return: (function() {
        BlockParser.text_boldmonocontent_return = function(){};
        org.antlr.lang.extend(BlockParser.text_boldmonocontent_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:345:2: text_boldmonocontent : mono_markup (i= text_monobolditaliccontent | j= link )? ( text_monoboldcontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) ;
    // $ANTLR start "text_boldmonocontent"
    text_boldmonocontent: function() {
        var retval = new BlockParser.text_boldmonocontent_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;
         var mono_markup67 = null;
         var text_monoboldcontentpart68 = null;
         var close_mono_markup69 = null;

        var stream_text_monoboldcontentpart=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monoboldcontentpart");
        var stream_close_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule close_mono_markup");
        var stream_link=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule link");
        var stream_mono_markup=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule mono_markup");
        var stream_text_monobolditaliccontent=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_monobolditaliccontent");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:346:3: ( mono_markup (i= text_monobolditaliccontent | j= link )? ( text_monoboldcontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:346:4: mono_markup (i= text_monobolditaliccontent | j= link )? ( text_monoboldcontentpart )* ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
            this.pushFollow(BlockParser.FOLLOW_mono_markup_in_text_boldmonocontent2100);
            mono_markup67=this.mono_markup();

            this.state._fsp--;

            stream_mono_markup.add(mono_markup67.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:346:16: (i= text_monobolditaliccontent | j= link )?
            var alt56=3;
            switch ( this.input.LA(1) ) {
                case ITAL_MARKUP:
                    alt56=1;
                    break;
                case NESTED_ITALIC:
                    alt56=1;
                    break;
                case CLOSE_ITALIC_MARKUP:
                    alt56=1;
                    break;
                case LINK_MARKUP:
                    alt56=2;
                    break;
                case NESTED_LINK_MARKUP:
                    alt56=2;
                    break;
            }

            switch (alt56) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:346:17: i= text_monobolditaliccontent
                    this.pushFollow(BlockParser.FOLLOW_text_monobolditaliccontent_in_text_boldmonocontent2105);
                    i=this.text_monobolditaliccontent();

                    this.state._fsp--;

                    stream_text_monobolditaliccontent.add(i.getTree());


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:346:46: j= link
                    this.pushFollow(BlockParser.FOLLOW_link_in_text_boldmonocontent2109);
                    j=this.link();

                    this.state._fsp--;

                    stream_link.add(j.getTree());


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:347:3: ( text_monoboldcontentpart )*
            loop57:
            do {
                var alt57=2;
                alt57 = this.dfa57.predict(this.input);
                switch (alt57) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:347:3: text_monoboldcontentpart
                    this.pushFollow(BlockParser.FOLLOW_text_monoboldcontentpart_in_text_boldmonocontent2115);
                    text_monoboldcontentpart68=this.text_monoboldcontentpart();

                    this.state._fsp--;

                    stream_text_monoboldcontentpart.add(text_monoboldcontentpart68.getTree());


                    break;

                default :
                    break loop57;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:348:3: ( close_mono_markup -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) ) | -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
            var alt58=2;
            var LA58_0 = this.input.LA(1);

            if ( (LA58_0==CLOSE_MONO_MARKUP) ) {
                alt58=1;
            }
            else if ( (LA58_0==EOF||(LA58_0>=PARAGRAPH && LA58_0<=LINK_MARKUP)||(LA58_0>=CLOSE_ITALIC_MARKUP && LA58_0<=INSIGNIFICANT_CHAR)) ) {
                alt58=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 58, 0, this.input);

                throw nvae;
            }
            switch (alt58) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:349:3: close_mono_markup
                    this.pushFollow(BlockParser.FOLLOW_close_mono_markup_in_text_boldmonocontent2124);
                    close_mono_markup69=this.close_mono_markup();

                    this.state._fsp--;

                    stream_close_mono_markup.add(close_mono_markup69.getTree());


                    // AST REWRITE
                    // elements: j, text_monoboldcontentpart, i
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 349:21: -> ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:349:24: ^( PLAINTEXT TEXTNODE[$mono_markup.text] ^( MONOTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* ) )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (mono_markup67?this.input.toString(mono_markup67.start,mono_markup67.stop):null)));
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:349:64: ^( MONOTEXT ( $i)? ( $j)? ( text_monoboldcontentpart )* )
                        {
                        var root_2 = this.adaptor.nil();
                        root_2 = this.adaptor.becomeRoot(this.adaptor.create(MONOTEXT, "MONOTEXT"), root_2);

                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:349:76: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:349:80: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:349:84: ( text_monoboldcontentpart )*
                        while ( stream_text_monoboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_2, stream_text_monoboldcontentpart.nextTree());

                        }
                        stream_text_monoboldcontentpart.reset();

                        this.adaptor.addChild(root_1, root_2);
                        }

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:351:3:

                    // AST REWRITE
                    // elements: j, mono_markup, text_monoboldcontentpart, i
                    // token labels:
                    // rule labels: retval, j, i
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);
                    var stream_j=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token j",j!=null?j.tree:null);
                    var stream_i=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token i",i!=null?i.tree:null);

                    root_0 = this.adaptor.nil();
                    // 351:3: -> ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:351:6: ^( PLAINTEXT mono_markup ( $i)? ( $j)? ( text_monoboldcontentpart )* )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(PLAINTEXT, "PLAINTEXT"), root_1);

                        this.adaptor.addChild(root_1, stream_mono_markup.nextTree());
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:351:30: ( $i)?
                        if ( stream_i.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_i.nextTree());

                        }
                        stream_i.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:351:34: ( $j)?
                        if ( stream_j.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_j.nextTree());

                        }
                        stream_j.reset();
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:351:39: ( text_monoboldcontentpart )*
                        while ( stream_text_monoboldcontentpart.hasNext() ) {
                            this.adaptor.addChild(root_1, stream_text_monoboldcontentpart.nextTree());

                        }
                        stream_text_monoboldcontentpart.reset();

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    bold_markup_return: (function() {
        BlockParser.bold_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.bold_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:359:1: bold_markup : ( BOLD_MARKUP -> ^( TEXTNODE[\" *\"] ) | NESTED_BOLD -> ^( TEXTNODE[\"*\"] ) | CLOSE_BOLD_MARKUP -> ^( TEXTNODE[\"*\"] ) ) ;
    // $ANTLR start "bold_markup"
    bold_markup: function() {
        var retval = new BlockParser.bold_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var BOLD_MARKUP70 = null;
        var NESTED_BOLD71 = null;
        var CLOSE_BOLD_MARKUP72 = null;

        var BOLD_MARKUP70_tree=null;
        var NESTED_BOLD71_tree=null;
        var CLOSE_BOLD_MARKUP72_tree=null;
        var stream_NESTED_BOLD=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token NESTED_BOLD");
        var stream_CLOSE_BOLD_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token CLOSE_BOLD_MARKUP");
        var stream_BOLD_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token BOLD_MARKUP");

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:360:2: ( ( BOLD_MARKUP -> ^( TEXTNODE[\" *\"] ) | NESTED_BOLD -> ^( TEXTNODE[\"*\"] ) | CLOSE_BOLD_MARKUP -> ^( TEXTNODE[\"*\"] ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:360:4: ( BOLD_MARKUP -> ^( TEXTNODE[\" *\"] ) | NESTED_BOLD -> ^( TEXTNODE[\"*\"] ) | CLOSE_BOLD_MARKUP -> ^( TEXTNODE[\"*\"] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:360:4: ( BOLD_MARKUP -> ^( TEXTNODE[\" *\"] ) | NESTED_BOLD -> ^( TEXTNODE[\"*\"] ) | CLOSE_BOLD_MARKUP -> ^( TEXTNODE[\"*\"] ) )
            var alt59=3;
            switch ( this.input.LA(1) ) {
            case BOLD_MARKUP:
                alt59=1;
                break;
            case NESTED_BOLD:
                alt59=2;
                break;
            case CLOSE_BOLD_MARKUP:
                alt59=3;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 59, 0, this.input);

                throw nvae;
            }

            switch (alt59) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:360:5: BOLD_MARKUP
                    BOLD_MARKUP70=this.match(this.input,BOLD_MARKUP,BlockParser.FOLLOW_BOLD_MARKUP_in_bold_markup2196);
                    stream_BOLD_MARKUP.add(BOLD_MARKUP70);

                    BOLD_MARKUP70.setText(" ");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 360:45: -> ^( TEXTNODE[\" *\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:360:48: ^( TEXTNODE[\" *\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, " *"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:361:4: NESTED_BOLD
                    NESTED_BOLD71=this.match(this.input,NESTED_BOLD,BlockParser.FOLLOW_NESTED_BOLD_in_bold_markup2209);
                    stream_NESTED_BOLD.add(NESTED_BOLD71);

                    NESTED_BOLD71.setText("");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 361:43: -> ^( TEXTNODE[\"*\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:361:46: ^( TEXTNODE[\"*\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, "*"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:362:4: CLOSE_BOLD_MARKUP
                    CLOSE_BOLD_MARKUP72=this.match(this.input,CLOSE_BOLD_MARKUP,BlockParser.FOLLOW_CLOSE_BOLD_MARKUP_in_bold_markup2222);
                    stream_CLOSE_BOLD_MARKUP.add(CLOSE_BOLD_MARKUP72);

                    CLOSE_BOLD_MARKUP72.setText("")


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 362:54: -> ^( TEXTNODE[\"*\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:362:57: ^( TEXTNODE[\"*\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, "*"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    italic_markup_return: (function() {
        BlockParser.italic_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.italic_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:366:1: italic_markup : ( ITAL_MARKUP -> ^( TEXTNODE[\" _\"] ) | NESTED_ITALIC -> ^( TEXTNODE[\"_\"] ) | CLOSE_ITALIC_MARKUP -> ^( TEXTNODE[\"_\"] ) ) ;
    // $ANTLR start "italic_markup"
    italic_markup: function() {
        var retval = new BlockParser.italic_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var ITAL_MARKUP73 = null;
        var NESTED_ITALIC74 = null;
        var CLOSE_ITALIC_MARKUP75 = null;

        var ITAL_MARKUP73_tree=null;
        var NESTED_ITALIC74_tree=null;
        var CLOSE_ITALIC_MARKUP75_tree=null;
        var stream_ITAL_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token ITAL_MARKUP");
        var stream_CLOSE_ITALIC_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token CLOSE_ITALIC_MARKUP");
        var stream_NESTED_ITALIC=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token NESTED_ITALIC");

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:367:2: ( ( ITAL_MARKUP -> ^( TEXTNODE[\" _\"] ) | NESTED_ITALIC -> ^( TEXTNODE[\"_\"] ) | CLOSE_ITALIC_MARKUP -> ^( TEXTNODE[\"_\"] ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:367:4: ( ITAL_MARKUP -> ^( TEXTNODE[\" _\"] ) | NESTED_ITALIC -> ^( TEXTNODE[\"_\"] ) | CLOSE_ITALIC_MARKUP -> ^( TEXTNODE[\"_\"] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:367:4: ( ITAL_MARKUP -> ^( TEXTNODE[\" _\"] ) | NESTED_ITALIC -> ^( TEXTNODE[\"_\"] ) | CLOSE_ITALIC_MARKUP -> ^( TEXTNODE[\"_\"] ) )
            var alt60=3;
            switch ( this.input.LA(1) ) {
            case ITAL_MARKUP:
                alt60=1;
                break;
            case NESTED_ITALIC:
                alt60=2;
                break;
            case CLOSE_ITALIC_MARKUP:
                alt60=3;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 60, 0, this.input);

                throw nvae;
            }

            switch (alt60) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:367:5: ITAL_MARKUP
                    ITAL_MARKUP73=this.match(this.input,ITAL_MARKUP,BlockParser.FOLLOW_ITAL_MARKUP_in_italic_markup2248);
                    stream_ITAL_MARKUP.add(ITAL_MARKUP73);

                    ITAL_MARKUP73.setText(" ");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 367:46: -> ^( TEXTNODE[\" _\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:367:49: ^( TEXTNODE[\" _\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, " _"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:368:3: NESTED_ITALIC
                    NESTED_ITALIC74=this.match(this.input,NESTED_ITALIC,BlockParser.FOLLOW_NESTED_ITALIC_in_italic_markup2261);
                    stream_NESTED_ITALIC.add(NESTED_ITALIC74);

                    NESTED_ITALIC74.setText("");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 368:47: -> ^( TEXTNODE[\"_\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:368:50: ^( TEXTNODE[\"_\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, "_"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:369:3: CLOSE_ITALIC_MARKUP
                    CLOSE_ITALIC_MARKUP75=this.match(this.input,CLOSE_ITALIC_MARKUP,BlockParser.FOLLOW_CLOSE_ITALIC_MARKUP_in_italic_markup2274);
                    stream_CLOSE_ITALIC_MARKUP.add(CLOSE_ITALIC_MARKUP75);

                    CLOSE_ITALIC_MARKUP75.setText("");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 369:59: -> ^( TEXTNODE[\"_\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:369:62: ^( TEXTNODE[\"_\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, "_"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    mono_markup_return: (function() {
        BlockParser.mono_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.mono_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:373:1: mono_markup : ( MONO_MARKUP -> ^( TEXTNODE[\" |\"] ) | NESTED_MONO -> ^( TEXTNODE[\"|\"] ) | CLOSE_MONO_MARKUP -> ^( TEXTNODE[\"|\"] ) ) ;
    // $ANTLR start "mono_markup"
    mono_markup: function() {
        var retval = new BlockParser.mono_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var MONO_MARKUP76 = null;
        var NESTED_MONO77 = null;
        var CLOSE_MONO_MARKUP78 = null;

        var MONO_MARKUP76_tree=null;
        var NESTED_MONO77_tree=null;
        var CLOSE_MONO_MARKUP78_tree=null;
        var stream_CLOSE_MONO_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token CLOSE_MONO_MARKUP");
        var stream_NESTED_MONO=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token NESTED_MONO");
        var stream_MONO_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token MONO_MARKUP");

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:374:2: ( ( MONO_MARKUP -> ^( TEXTNODE[\" |\"] ) | NESTED_MONO -> ^( TEXTNODE[\"|\"] ) | CLOSE_MONO_MARKUP -> ^( TEXTNODE[\"|\"] ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:374:3: ( MONO_MARKUP -> ^( TEXTNODE[\" |\"] ) | NESTED_MONO -> ^( TEXTNODE[\"|\"] ) | CLOSE_MONO_MARKUP -> ^( TEXTNODE[\"|\"] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:374:3: ( MONO_MARKUP -> ^( TEXTNODE[\" |\"] ) | NESTED_MONO -> ^( TEXTNODE[\"|\"] ) | CLOSE_MONO_MARKUP -> ^( TEXTNODE[\"|\"] ) )
            var alt61=3;
            switch ( this.input.LA(1) ) {
            case MONO_MARKUP:
                alt61=1;
                break;
            case NESTED_MONO:
                alt61=2;
                break;
            case CLOSE_MONO_MARKUP:
                alt61=3;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 61, 0, this.input);

                throw nvae;
            }

            switch (alt61) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:374:4: MONO_MARKUP
                    MONO_MARKUP76=this.match(this.input,MONO_MARKUP,BlockParser.FOLLOW_MONO_MARKUP_in_mono_markup2299);
                    stream_MONO_MARKUP.add(MONO_MARKUP76);

                    MONO_MARKUP76.setText(" ");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 374:44: -> ^( TEXTNODE[\" |\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:374:47: ^( TEXTNODE[\" |\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, " |"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:375:3: NESTED_MONO
                    NESTED_MONO77=this.match(this.input,NESTED_MONO,BlockParser.FOLLOW_NESTED_MONO_in_mono_markup2311);
                    stream_NESTED_MONO.add(NESTED_MONO77);

                    NESTED_MONO77.setText("");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 375:43: -> ^( TEXTNODE[\"|\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:375:46: ^( TEXTNODE[\"|\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, "|"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:376:3: CLOSE_MONO_MARKUP
                    CLOSE_MONO_MARKUP78=this.match(this.input,CLOSE_MONO_MARKUP,BlockParser.FOLLOW_CLOSE_MONO_MARKUP_in_mono_markup2324);
                    stream_CLOSE_MONO_MARKUP.add(CLOSE_MONO_MARKUP78);

                    CLOSE_MONO_MARKUP78.setText("");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 376:54: -> ^( TEXTNODE[\"|\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:376:57: ^( TEXTNODE[\"|\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, "|"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    link_markup_return: (function() {
        BlockParser.link_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.link_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:380:1: link_markup : ( LINK_MARKUP -> ^( TEXTNODE[\" <\"] ) | NESTED_LINK_MARKUP -> ^( TEXTNODE[\"<\"] ) ) ;
    // $ANTLR start "link_markup"
    link_markup: function() {
        var retval = new BlockParser.link_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var LINK_MARKUP79 = null;
        var NESTED_LINK_MARKUP80 = null;

        var LINK_MARKUP79_tree=null;
        var NESTED_LINK_MARKUP80_tree=null;
        var stream_LINK_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token LINK_MARKUP");
        var stream_NESTED_LINK_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token NESTED_LINK_MARKUP");

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:381:2: ( ( LINK_MARKUP -> ^( TEXTNODE[\" <\"] ) | NESTED_LINK_MARKUP -> ^( TEXTNODE[\"<\"] ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:381:3: ( LINK_MARKUP -> ^( TEXTNODE[\" <\"] ) | NESTED_LINK_MARKUP -> ^( TEXTNODE[\"<\"] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:381:3: ( LINK_MARKUP -> ^( TEXTNODE[\" <\"] ) | NESTED_LINK_MARKUP -> ^( TEXTNODE[\"<\"] ) )
            var alt62=2;
            var LA62_0 = this.input.LA(1);

            if ( (LA62_0==LINK_MARKUP) ) {
                alt62=1;
            }
            else if ( (LA62_0==NESTED_LINK_MARKUP) ) {
                alt62=2;
            }
            else {
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 62, 0, this.input);

                throw nvae;
            }
            switch (alt62) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:381:4: LINK_MARKUP
                    LINK_MARKUP79=this.match(this.input,LINK_MARKUP,BlockParser.FOLLOW_LINK_MARKUP_in_link_markup2349);
                    stream_LINK_MARKUP.add(LINK_MARKUP79);

                    LINK_MARKUP79.setText(" ");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 381:44: -> ^( TEXTNODE[\" <\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:381:47: ^( TEXTNODE[\" <\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, " <"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:382:3: NESTED_LINK_MARKUP
                    NESTED_LINK_MARKUP80=this.match(this.input,NESTED_LINK_MARKUP,BlockParser.FOLLOW_NESTED_LINK_MARKUP_in_link_markup2361);
                    stream_NESTED_LINK_MARKUP.add(NESTED_LINK_MARKUP80);

                    NESTED_LINK_MARKUP80.setText("");


                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 382:56: -> ^( TEXTNODE[\"<\"] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:382:59: ^( TEXTNODE[\"<\"] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, "<"), root_1);

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;

                    break;

            }




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    closelink_markup_return: (function() {
        BlockParser.closelink_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.closelink_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:386:1: closelink_markup : CLOSE_LINK_MARKUP -> ^( TEXTNODE[$CLOSE_LINK_MARKUP.text] ) ;
    // $ANTLR start "closelink_markup"
    closelink_markup: function() {
        var retval = new BlockParser.closelink_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var CLOSE_LINK_MARKUP81 = null;

        var CLOSE_LINK_MARKUP81_tree=null;
        var stream_CLOSE_LINK_MARKUP=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token CLOSE_LINK_MARKUP");

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:387:2: ( CLOSE_LINK_MARKUP -> ^( TEXTNODE[$CLOSE_LINK_MARKUP.text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:387:3: CLOSE_LINK_MARKUP
            CLOSE_LINK_MARKUP81=this.match(this.input,CLOSE_LINK_MARKUP,BlockParser.FOLLOW_CLOSE_LINK_MARKUP_in_closelink_markup2385);
            stream_CLOSE_LINK_MARKUP.add(CLOSE_LINK_MARKUP81);



            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 387:21: -> ^( TEXTNODE[$CLOSE_LINK_MARKUP.text] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:387:24: ^( TEXTNODE[$CLOSE_LINK_MARKUP.text] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(TEXTNODE, (CLOSE_LINK_MARKUP81?CLOSE_LINK_MARKUP81.getText():null)), root_1);

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;


            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    close_italic_markup_return: (function() {
        BlockParser.close_italic_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.close_italic_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:391:1: close_italic_markup : CLOSE_ITALIC_MARKUP ;
    // $ANTLR start "close_italic_markup"
    close_italic_markup: function() {
        var retval = new BlockParser.close_italic_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var CLOSE_ITALIC_MARKUP82 = null;

        var CLOSE_ITALIC_MARKUP82_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:392:2: ( CLOSE_ITALIC_MARKUP )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:392:3: CLOSE_ITALIC_MARKUP
            root_0 = this.adaptor.nil();

            CLOSE_ITALIC_MARKUP82=this.match(this.input,CLOSE_ITALIC_MARKUP,BlockParser.FOLLOW_CLOSE_ITALIC_MARKUP_in_close_italic_markup2403);
            CLOSE_ITALIC_MARKUP82_tree = this.adaptor.create(CLOSE_ITALIC_MARKUP82);
            this.adaptor.addChild(root_0, CLOSE_ITALIC_MARKUP82_tree);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    close_mono_markup_return: (function() {
        BlockParser.close_mono_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.close_mono_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:395:1: close_mono_markup : CLOSE_MONO_MARKUP ;
    // $ANTLR start "close_mono_markup"
    close_mono_markup: function() {
        var retval = new BlockParser.close_mono_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var CLOSE_MONO_MARKUP83 = null;

        var CLOSE_MONO_MARKUP83_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:396:2: ( CLOSE_MONO_MARKUP )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:396:3: CLOSE_MONO_MARKUP
            root_0 = this.adaptor.nil();

            CLOSE_MONO_MARKUP83=this.match(this.input,CLOSE_MONO_MARKUP,BlockParser.FOLLOW_CLOSE_MONO_MARKUP_in_close_mono_markup2415);
            CLOSE_MONO_MARKUP83_tree = this.adaptor.create(CLOSE_MONO_MARKUP83);
            this.adaptor.addChild(root_0, CLOSE_MONO_MARKUP83_tree);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    close_bold_markup_return: (function() {
        BlockParser.close_bold_markup_return = function(){};
        org.antlr.lang.extend(BlockParser.close_bold_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:398:1: close_bold_markup : CLOSE_BOLD_MARKUP ;
    // $ANTLR start "close_bold_markup"
    close_bold_markup: function() {
        var retval = new BlockParser.close_bold_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var CLOSE_BOLD_MARKUP84 = null;

        var CLOSE_BOLD_MARKUP84_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:399:2: ( CLOSE_BOLD_MARKUP )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Block.g:399:3: CLOSE_BOLD_MARKUP
            root_0 = this.adaptor.nil();

            CLOSE_BOLD_MARKUP84=this.match(this.input,CLOSE_BOLD_MARKUP,BlockParser.FOLLOW_CLOSE_BOLD_MARKUP_in_close_bold_markup2424);
            CLOSE_BOLD_MARKUP84_tree = this.adaptor.create(CLOSE_BOLD_MARKUP84);
            this.adaptor.addChild(root_0, CLOSE_BOLD_MARKUP84_tree);




            retval.stop = this.input.LT(-1);

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    }

    // Delegated rules




}, true); // important to pass true to overwrite default implementations

org.antlr.lang.augmentObject(BlockParser, {
    DFA2_eotS:
        "\u000c\uffff",
    DFA2_eofS:
        "\u000c\uffff",
    DFA2_minS:
        "\u0001\u0004\u000b\uffff",
    DFA2_maxS:
        "\u0001\u0021\u000b\uffff",
    DFA2_acceptS:
        "\u0001\uffff\u0001\u0001\u0001\u0002\u0002\u0001\u0001\u0003\u0002"+
    "\u0001\u0001\u0004\u0002\u0001\u0001\u0005",
    DFA2_specialS:
        "\u000c\uffff}>",
    DFA2_transitionS: [
            "\u0008\u000a\u0001\u0007\u0001\u0004\u0001\u0001\u0001\u000a"+
            "\u0001\u0005\u0001\u0008\u0001\u0002\u0002\u000a\u0001\u000b"+
            "\u0001\u0003\u0001\u0009\u0001\u0006\u0009\u000a",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA2_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA2_eotS),
    DFA2_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA2_eofS),
    DFA2_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA2_minS),
    DFA2_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA2_maxS),
    DFA2_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA2_acceptS),
    DFA2_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA2_specialS),
    DFA2_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA2_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA2_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA2 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 2;
    this.eot = BlockParser.DFA2_eot;
    this.eof = BlockParser.DFA2_eof;
    this.min = BlockParser.DFA2_min;
    this.max = BlockParser.DFA2_max;
    this.accept = BlockParser.DFA2_accept;
    this.special = BlockParser.DFA2_special;
    this.transition = BlockParser.DFA2_transition;
};

org.antlr.lang.extend(BlockParser.DFA2, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "36:2: ( text_plaincontent -> text_plaincontent | text_monocontent -> text_monocontent | text_boldcontent -> text_boldcontent | text_italiccontent -> text_italiccontent | link -> link )";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA5_eotS:
        "\u000f\uffff",
    DFA5_eofS:
        "\u0001\u000c\u000e\uffff",
    DFA5_minS:
        "\u0001\u0004\u000e\uffff",
    DFA5_maxS:
        "\u0001\u0021\u000e\uffff",
    DFA5_acceptS:
        "\u0001\uffff\u000a\u0001\u0001\u0002\u0001\u0003\u0002\u0001",
    DFA5_specialS:
        "\u000f\uffff}>",
    DFA5_transitionS: [
            "\u0008\u000e\u0001\u0004\u0001\u0007\u0001\u0001\u0001\u000b"+
            "\u0001\u0008\u0001\u0005\u0001\u0002\u0002\u000e\u0001\u000d"+
            "\u0001\u0003\u0001\u0006\u0001\u0009\u0001\u000a\u0008\u000e",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA5_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA5_eotS),
    DFA5_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA5_eofS),
    DFA5_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA5_minS),
    DFA5_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA5_maxS),
    DFA5_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA5_acceptS),
    DFA5_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA5_specialS),
    DFA5_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA5_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA5_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA5 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 5;
    this.eot = BlockParser.DFA5_eot;
    this.eof = BlockParser.DFA5_eof;
    this.min = BlockParser.DFA5_min;
    this.max = BlockParser.DFA5_max;
    this.accept = BlockParser.DFA5_accept;
    this.special = BlockParser.DFA5_special;
    this.transition = BlockParser.DFA5_transition;
};

org.antlr.lang.extend(BlockParser.DFA5, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "57:2: ( (j+= link_text )+ ( CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( NAMEDLINK link_url ( $j)+ ) ) | -> ^( PLAINTEXT link_markup link_url ( $j)+ ) ) | CLOSE_LINK_MARKUP -> ^( PLAINTEXT TEXTNODE[$link_markup.text] ^( SIMPLELINK link_url ) ) | -> ^( PLAINTEXT link_markup ( link_url )? ) )";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA3_eotS:
        "\u000e\uffff",
    DFA3_eofS:
        "\u0001\u0001\u000d\uffff",
    DFA3_minS:
        "\u0001\u0004\u000d\uffff",
    DFA3_maxS:
        "\u0001\u0021\u000d\uffff",
    DFA3_acceptS:
        "\u0001\uffff\u0001\u0002\u000c\u0001",
    DFA3_specialS:
        "\u000e\uffff}>",
    DFA3_transitionS: [
            "\u0008\u000d\u0001\u0008\u0001\u0005\u0001\u0002\u0001\u0001"+
            "\u0001\u0006\u0001\u0009\u0001\u0003\u0002\u000d\u0001\u000c"+
            "\u0001\u0004\u0001\u000a\u0001\u0007\u0001\u000b\u0008\u000d",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA3_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA3_eotS),
    DFA3_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA3_eofS),
    DFA3_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA3_minS),
    DFA3_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA3_maxS),
    DFA3_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA3_acceptS),
    DFA3_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA3_specialS),
    DFA3_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA3_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA3_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA3 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 3;
    this.eot = BlockParser.DFA3_eot;
    this.eof = BlockParser.DFA3_eof;
    this.min = BlockParser.DFA3_min;
    this.max = BlockParser.DFA3_max;
    this.accept = BlockParser.DFA3_accept;
    this.special = BlockParser.DFA3_special;
    this.transition = BlockParser.DFA3_transition;
};

org.antlr.lang.extend(BlockParser.DFA3, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 58:4: (j+= link_text )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA6_eotS:
        "\u000a\uffff",
    DFA6_eofS:
        "\u0001\u0002\u0009\uffff",
    DFA6_minS:
        "\u0001\u0004\u0009\uffff",
    DFA6_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA6_acceptS:
        "\u0001\uffff\u0001\u0001\u0001\u0002\u0007\u0001",
    DFA6_specialS:
        "\u000a\uffff}>",
    DFA6_transitionS: [
            "\u0008\u0009\u0001\u0004\u0001\u0006\u0001\u0001\u0007\u0002"+
            "\u0001\u0003\u0001\u0005\u0001\u0007\u0001\u0008\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA6_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA6_eotS),
    DFA6_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA6_eofS),
    DFA6_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA6_minS),
    DFA6_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA6_maxS),
    DFA6_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA6_acceptS),
    DFA6_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA6_specialS),
    DFA6_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA6_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA6_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA6 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 6;
    this.eot = BlockParser.DFA6_eot;
    this.eof = BlockParser.DFA6_eof;
    this.min = BlockParser.DFA6_min;
    this.max = BlockParser.DFA6_max;
    this.accept = BlockParser.DFA6_accept;
    this.special = BlockParser.DFA6_special;
    this.transition = BlockParser.DFA6_transition;
};

org.antlr.lang.extend(BlockParser.DFA6, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 78:3: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP | WHITESPACE | WS | LINK_MARKUP ) )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA7_eotS:
        "\u000a\uffff",
    DFA7_eofS:
        "\u000a\uffff",
    DFA7_minS:
        "\u0001\u0004\u0009\uffff",
    DFA7_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA7_acceptS:
        "\u0001\uffff\u0001\u0001\u0001\u0002\u0002\u0001\u0001\u0003\u0002"+
    "\u0001\u0001\u0004\u0001\u0001",
    DFA7_specialS:
        "\u000a\uffff}>",
    DFA7_transitionS: [
            "\u0008\u0009\u0001\u0004\u0001\u0007\u0001\u0001\u0001\uffff"+
            "\u0001\u0008\u0001\u0005\u0001\u0002\u0003\u0009\u0001\u0003"+
            "\u0001\u0006\u000a\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA7_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA7_eotS),
    DFA7_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA7_eofS),
    DFA7_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA7_minS),
    DFA7_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA7_maxS),
    DFA7_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA7_acceptS),
    DFA7_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA7_specialS),
    DFA7_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA7_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA7_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA7 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 7;
    this.eot = BlockParser.DFA7_eot;
    this.eof = BlockParser.DFA7_eof;
    this.min = BlockParser.DFA7_min;
    this.max = BlockParser.DFA7_max;
    this.accept = BlockParser.DFA7_accept;
    this.special = BlockParser.DFA7_special;
    this.transition = BlockParser.DFA7_transition;
};

org.antlr.lang.extend(BlockParser.DFA7, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "82:1: link_text : ( text_linkplaincontent -> ^( TEXTNODE[$text_linkplaincontent.text] ) | text_monocontent -> text_monocontent | text_italiccontent -> text_italiccontent | text_boldcontent -> text_boldcontent );";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA8_eotS:
        "\u000b\uffff",
    DFA8_eofS:
        "\u0001\u0001\u000a\uffff",
    DFA8_minS:
        "\u0001\u0004\u000a\uffff",
    DFA8_maxS:
        "\u0001\u0021\u000a\uffff",
    DFA8_acceptS:
        "\u0001\uffff\u0001\u0002\u0009\u0001",
    DFA8_specialS:
        "\u000b\uffff}>",
    DFA8_transitionS: [
            "\u0008\u000a\u0001\u0006\u0001\u0004\u0001\u0002\u0004\u0001"+
            "\u0002\u000a\u0001\u0009\u0001\u0003\u0001\u0007\u0001\u0005"+
            "\u0001\u0008\u0008\u000a",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA8_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA8_eotS),
    DFA8_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA8_eofS),
    DFA8_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA8_minS),
    DFA8_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA8_maxS),
    DFA8_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA8_acceptS),
    DFA8_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA8_specialS),
    DFA8_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA8_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA8_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA8 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 8;
    this.eot = BlockParser.DFA8_eot;
    this.eof = BlockParser.DFA8_eof;
    this.min = BlockParser.DFA8_min;
    this.max = BlockParser.DFA8_max;
    this.accept = BlockParser.DFA8_accept;
    this.special = BlockParser.DFA8_special;
    this.transition = BlockParser.DFA8_transition;
};

org.antlr.lang.extend(BlockParser.DFA8, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 95:2: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA9_eotS:
        "\u000a\uffff",
    DFA9_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA9_minS:
        "\u0001\u0004\u0009\uffff",
    DFA9_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA9_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA9_specialS:
        "\u000a\uffff}>",
    DFA9_transitionS: [
            "\u0008\u0009\u0001\u0006\u0001\u0004\u0001\u0002\u0001\u0009"+
            "\u0003\u0001\u0002\u0009\u0001\u0001\u0001\u0003\u0001\u0007"+
            "\u0001\u0005\u0001\u0008\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA9_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA9_eotS),
    DFA9_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA9_eofS),
    DFA9_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA9_minS),
    DFA9_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA9_maxS),
    DFA9_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA9_acceptS),
    DFA9_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA9_specialS),
    DFA9_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA9_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA9_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA9 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 9;
    this.eot = BlockParser.DFA9_eot;
    this.eof = BlockParser.DFA9_eof;
    this.min = BlockParser.DFA9_min;
    this.max = BlockParser.DFA9_max;
    this.accept = BlockParser.DFA9_accept;
    this.special = BlockParser.DFA9_special;
    this.transition = BlockParser.DFA9_transition;
};

org.antlr.lang.extend(BlockParser.DFA9, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 111:2: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | MONO_MARKUP | LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA10_eotS:
        "\u000a\uffff",
    DFA10_eofS:
        "\u0001\u0009\u0009\uffff",
    DFA10_minS:
        "\u0001\u0004\u0009\uffff",
    DFA10_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA10_acceptS:
        "\u0001\uffff\u0003\u0001\u0003\u0002\u0002\u0003\u0001\u0004",
    DFA10_specialS:
        "\u000a\uffff}>",
    DFA10_transitionS: [
            "\u0008\u0009\u0001\u0002\u0001\u0005\u0002\u0009\u0001\u0004"+
            "\u0001\u0001\u0003\u0009\u0001\u0007\u0001\u0009\u0001\u0003"+
            "\u0001\u0006\u0001\u0008\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA10_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA10_eotS),
    DFA10_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA10_eofS),
    DFA10_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA10_minS),
    DFA10_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA10_maxS),
    DFA10_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA10_acceptS),
    DFA10_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA10_specialS),
    DFA10_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA10_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA10_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA10 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 10;
    this.eot = BlockParser.DFA10_eot;
    this.eof = BlockParser.DFA10_eof;
    this.min = BlockParser.DFA10_min;
    this.max = BlockParser.DFA10_max;
    this.accept = BlockParser.DFA10_accept;
    this.special = BlockParser.DFA10_special;
    this.transition = BlockParser.DFA10_transition;
};

org.antlr.lang.extend(BlockParser.DFA10, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "120:15: (i= text_monoitaliccontent | j= text_monoboldcontent | k= link )?";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA11_eotS:
        "\u000d\uffff",
    DFA11_eofS:
        "\u0001\u0001\u000c\uffff",
    DFA11_minS:
        "\u0001\u0004\u000c\uffff",
    DFA11_maxS:
        "\u0001\u0021\u000c\uffff",
    DFA11_acceptS:
        "\u0001\uffff\u0001\u0002\u000b\u0001",
    DFA11_specialS:
        "\u000d\uffff}>",
    DFA11_transitionS: [
            "\u0008\u000c\u0001\u0007\u0001\u0004\u0001\u0002\u0001\u0001"+
            "\u0001\u0005\u0001\u0008\u0001\u0003\u0002\u000c\u0001\u000b"+
            "\u0001\u0001\u0001\u0009\u0001\u0006\u0001\u000a\u0008\u000c",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA11_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA11_eotS),
    DFA11_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA11_eofS),
    DFA11_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA11_minS),
    DFA11_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA11_maxS),
    DFA11_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA11_acceptS),
    DFA11_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA11_specialS),
    DFA11_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA11_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA11_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA11 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 11;
    this.eot = BlockParser.DFA11_eot;
    this.eof = BlockParser.DFA11_eof;
    this.min = BlockParser.DFA11_min;
    this.max = BlockParser.DFA11_max;
    this.accept = BlockParser.DFA11_accept;
    this.special = BlockParser.DFA11_special;
    this.transition = BlockParser.DFA11_transition;
};

org.antlr.lang.extend(BlockParser.DFA11, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 121:2: ( text_monocontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA14_eotS:
        "\u000a\uffff",
    DFA14_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA14_minS:
        "\u0001\u0004\u0009\uffff",
    DFA14_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA14_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA14_specialS:
        "\u000a\uffff}>",
    DFA14_transitionS: [
            "\u0008\u0009\u0001\u0006\u0001\u0004\u0001\u0002\u0003\u0001"+
            "\u0001\u0003\u0002\u0009\u0002\u0001\u0001\u0007\u0001\u0005"+
            "\u0001\u0008\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA14_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA14_eotS),
    DFA14_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA14_eofS),
    DFA14_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA14_minS),
    DFA14_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA14_maxS),
    DFA14_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA14_acceptS),
    DFA14_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA14_specialS),
    DFA14_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA14_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA14_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA14 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 14;
    this.eot = BlockParser.DFA14_eot;
    this.eof = BlockParser.DFA14_eof;
    this.min = BlockParser.DFA14_min;
    this.max = BlockParser.DFA14_max;
    this.accept = BlockParser.DFA14_accept;
    this.special = BlockParser.DFA14_special;
    this.transition = BlockParser.DFA14_transition;
};

org.antlr.lang.extend(BlockParser.DFA14, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 145:4: (i=~ ( BOLD_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA16_eotS:
        "\u000c\uffff",
    DFA16_eofS:
        "\u0001\u0001\u000b\uffff",
    DFA16_minS:
        "\u0001\u0004\u000b\uffff",
    DFA16_maxS:
        "\u0001\u0021\u000b\uffff",
    DFA16_acceptS:
        "\u0001\uffff\u0001\u0002\u000a\u0001",
    DFA16_specialS:
        "\u000c\uffff}>",
    DFA16_transitionS: [
            "\u0008\u000b\u0001\u0005\u0001\u0002\u0001\u0009\u0001\u0001"+
            "\u0001\u0003\u0001\u0006\u0001\u000a\u0002\u000b\u0001\u0008"+
            "\u0002\u0001\u0001\u0004\u0001\u0007\u0008\u000b",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA16_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA16_eotS),
    DFA16_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA16_eofS),
    DFA16_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA16_minS),
    DFA16_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA16_maxS),
    DFA16_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA16_acceptS),
    DFA16_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA16_specialS),
    DFA16_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA16_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA16_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA16 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 16;
    this.eot = BlockParser.DFA16_eot;
    this.eof = BlockParser.DFA16_eof;
    this.min = BlockParser.DFA16_min;
    this.max = BlockParser.DFA16_max;
    this.accept = BlockParser.DFA16_accept;
    this.special = BlockParser.DFA16_special;
    this.transition = BlockParser.DFA16_transition;
};

org.antlr.lang.extend(BlockParser.DFA16, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 151:2: ( text_monoitaliccontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA19_eotS:
        "\u000a\uffff",
    DFA19_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA19_minS:
        "\u0001\u0004\u0009\uffff",
    DFA19_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA19_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA19_specialS:
        "\u000a\uffff}>",
    DFA19_transitionS: [
            "\u0008\u0009\u0001\u0004\u0001\u0002\u0001\u0007\u0002\u0001"+
            "\u0001\u0005\u0001\u0008\u0002\u0009\u0003\u0001\u0001\u0003"+
            "\u0001\u0006\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA19_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA19_eotS),
    DFA19_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA19_eofS),
    DFA19_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA19_minS),
    DFA19_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA19_maxS),
    DFA19_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA19_acceptS),
    DFA19_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA19_specialS),
    DFA19_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA19_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA19_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA19 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 19;
    this.eot = BlockParser.DFA19_eot;
    this.eof = BlockParser.DFA19_eof;
    this.min = BlockParser.DFA19_min;
    this.max = BlockParser.DFA19_max;
    this.accept = BlockParser.DFA19_accept;
    this.special = BlockParser.DFA19_special;
    this.transition = BlockParser.DFA19_transition;
};

org.antlr.lang.extend(BlockParser.DFA19, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 169:3: (i=~ ( BOLD_MARKUP | CLOSE_ITALIC_MARKUP | LINK_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA21_eotS:
        "\u000b\uffff",
    DFA21_eofS:
        "\u0001\u0001\u000a\uffff",
    DFA21_minS:
        "\u0001\u0004\u000a\uffff",
    DFA21_maxS:
        "\u0001\u0021\u000a\uffff",
    DFA21_acceptS:
        "\u0001\uffff\u0001\u0002\u0009\u0001",
    DFA21_specialS:
        "\u000b\uffff}>",
    DFA21_transitionS: [
            "\u0008\u000a\u0001\u0006\u0001\u0002\u0001\u0008\u0001\u0001"+
            "\u0001\u0003\u0001\u0007\u0001\u0009\u0002\u000a\u0001\u0005"+
            "\u0003\u0001\u0001\u0004\u0008\u000a",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA21_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA21_eotS),
    DFA21_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA21_eofS),
    DFA21_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA21_minS),
    DFA21_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA21_maxS),
    DFA21_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA21_acceptS),
    DFA21_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA21_specialS),
    DFA21_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA21_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA21_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA21 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 21;
    this.eot = BlockParser.DFA21_eot;
    this.eof = BlockParser.DFA21_eof;
    this.min = BlockParser.DFA21_min;
    this.max = BlockParser.DFA21_max;
    this.accept = BlockParser.DFA21_accept;
    this.special = BlockParser.DFA21_special;
    this.transition = BlockParser.DFA21_transition;
};

org.antlr.lang.extend(BlockParser.DFA21, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 174:3: ( text_monoitalicboldcontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA24_eotS:
        "\u000a\uffff",
    DFA24_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA24_minS:
        "\u0001\u0004\u0009\uffff",
    DFA24_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA24_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA24_specialS:
        "\u000a\uffff}>",
    DFA24_transitionS: [
            "\u0008\u0009\u0001\u0005\u0001\u0002\u0001\u0007\u0001\u0001"+
            "\u0001\u0003\u0001\u0006\u0001\u0008\u0002\u0009\u0004\u0001"+
            "\u0001\u0004\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA24_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA24_eotS),
    DFA24_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA24_eofS),
    DFA24_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA24_minS),
    DFA24_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA24_maxS),
    DFA24_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA24_acceptS),
    DFA24_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA24_specialS),
    DFA24_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA24_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA24_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA24 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 24;
    this.eot = BlockParser.DFA24_eot;
    this.eof = BlockParser.DFA24_eof;
    this.min = BlockParser.DFA24_min;
    this.max = BlockParser.DFA24_max;
    this.accept = BlockParser.DFA24_accept;
    this.special = BlockParser.DFA24_special;
    this.transition = BlockParser.DFA24_transition;
};

org.antlr.lang.extend(BlockParser.DFA24, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 189:3: (i=~ ( CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | CLOSE_MONO_MARKUP | LINK_MARKUP | CLOSE_LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA26_eotS:
        "\u000c\uffff",
    DFA26_eofS:
        "\u0001\u0001\u000b\uffff",
    DFA26_minS:
        "\u0001\u0004\u000b\uffff",
    DFA26_maxS:
        "\u0001\u0021\u000b\uffff",
    DFA26_acceptS:
        "\u0001\uffff\u0001\u0002\u000a\u0001",
    DFA26_specialS:
        "\u000c\uffff}>",
    DFA26_transitionS: [
            "\u0008\u000b\u0001\u0004\u0001\u0002\u0001\u0009\u0001\u0001"+
            "\u0001\u0003\u0001\u0005\u0001\u000a\u0002\u000b\u0001\u0008"+
            "\u0001\u0001\u0001\u0006\u0001\u0001\u0001\u0007\u0008\u000b",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA26_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA26_eotS),
    DFA26_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA26_eofS),
    DFA26_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA26_minS),
    DFA26_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA26_maxS),
    DFA26_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA26_acceptS),
    DFA26_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA26_specialS),
    DFA26_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA26_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA26_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA26 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 26;
    this.eot = BlockParser.DFA26_eot;
    this.eof = BlockParser.DFA26_eof;
    this.min = BlockParser.DFA26_min;
    this.max = BlockParser.DFA26_max;
    this.accept = BlockParser.DFA26_accept;
    this.special = BlockParser.DFA26_special;
    this.transition = BlockParser.DFA26_transition;
};

org.antlr.lang.extend(BlockParser.DFA26, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 194:3: ( text_monoboldcontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA29_eotS:
        "\u000a\uffff",
    DFA29_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA29_minS:
        "\u0001\u0004\u0009\uffff",
    DFA29_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA29_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA29_specialS:
        "\u000a\uffff}>",
    DFA29_transitionS: [
            "\u0008\u0009\u0001\u0004\u0001\u0002\u0001\u0007\u0001\u0001"+
            "\u0001\u0003\u0001\u0001\u0001\u0008\u0002\u0009\u0002\u0001"+
            "\u0001\u0005\u0001\u0001\u0001\u0006\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA29_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA29_eotS),
    DFA29_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA29_eofS),
    DFA29_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA29_minS),
    DFA29_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA29_maxS),
    DFA29_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA29_acceptS),
    DFA29_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA29_specialS),
    DFA29_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA29_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA29_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA29 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 29;
    this.eot = BlockParser.DFA29_eot;
    this.eof = BlockParser.DFA29_eof;
    this.min = BlockParser.DFA29_min;
    this.max = BlockParser.DFA29_max;
    this.accept = BlockParser.DFA29_accept;
    this.special = BlockParser.DFA29_special;
    this.transition = BlockParser.DFA29_transition;
};

org.antlr.lang.extend(BlockParser.DFA29, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 212:3: (i=~ ( CLOSE_BOLD_MARKUP | LINK_MARKUP | ITAL_MARKUP | CLOSE_MONO_MARKUP | CLOSE_LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA31_eotS:
        "\u000b\uffff",
    DFA31_eofS:
        "\u0001\u0001\u000a\uffff",
    DFA31_minS:
        "\u0001\u0004\u000a\uffff",
    DFA31_maxS:
        "\u0001\u0021\u000a\uffff",
    DFA31_acceptS:
        "\u0001\uffff\u0001\u0002\u0009\u0001",
    DFA31_specialS:
        "\u000b\uffff}>",
    DFA31_transitionS: [
            "\u0008\u000a\u0001\u0002\u0001\u0006\u0001\u0008\u0001\u0001"+
            "\u0001\u0007\u0001\u0003\u0001\u0009\u0002\u000a\u0001\u0005"+
            "\u0003\u0001\u0001\u0004\u0008\u000a",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA31_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA31_eotS),
    DFA31_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA31_eofS),
    DFA31_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA31_minS),
    DFA31_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA31_maxS),
    DFA31_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA31_acceptS),
    DFA31_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA31_specialS),
    DFA31_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA31_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA31_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA31 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 31;
    this.eot = BlockParser.DFA31_eot;
    this.eof = BlockParser.DFA31_eof;
    this.min = BlockParser.DFA31_min;
    this.max = BlockParser.DFA31_max;
    this.accept = BlockParser.DFA31_accept;
    this.special = BlockParser.DFA31_special;
    this.transition = BlockParser.DFA31_transition;
};

org.antlr.lang.extend(BlockParser.DFA31, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 217:2: ( text_monoitalicboldcontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA33_eotS:
        "\u000a\uffff",
    DFA33_eofS:
        "\u0001\u0009\u0009\uffff",
    DFA33_minS:
        "\u0001\u0004\u0009\uffff",
    DFA33_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA33_acceptS:
        "\u0001\uffff\u0003\u0001\u0003\u0002\u0002\u0003\u0001\u0004",
    DFA33_specialS:
        "\u000a\uffff}>",
    DFA33_transitionS: [
            "\u0009\u0009\u0001\u0005\u0001\u0002\u0001\u0009\u0001\u0004"+
            "\u0001\u0009\u0001\u0001\u0002\u0009\u0001\u0007\u0001\u0003"+
            "\u0001\u0009\u0001\u0006\u0001\u0008\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA33_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA33_eotS),
    DFA33_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA33_eofS),
    DFA33_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA33_minS),
    DFA33_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA33_maxS),
    DFA33_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA33_acceptS),
    DFA33_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA33_specialS),
    DFA33_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA33_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA33_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA33 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 33;
    this.eot = BlockParser.DFA33_eot;
    this.eof = BlockParser.DFA33_eof;
    this.min = BlockParser.DFA33_min;
    this.max = BlockParser.DFA33_max;
    this.accept = BlockParser.DFA33_accept;
    this.special = BlockParser.DFA33_special;
    this.transition = BlockParser.DFA33_transition;
};

org.antlr.lang.extend(BlockParser.DFA33, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "230:17: (i= text_italicmonocontent | j= text_italicboldcontent | k= link )?";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA34_eotS:
        "\u000d\uffff",
    DFA34_eofS:
        "\u0001\u0001\u000c\uffff",
    DFA34_minS:
        "\u0001\u0004\u000c\uffff",
    DFA34_maxS:
        "\u0001\u0021\u000c\uffff",
    DFA34_acceptS:
        "\u0001\uffff\u0001\u0002\u000b\u0001",
    DFA34_specialS:
        "\u000d\uffff}>",
    DFA34_transitionS: [
            "\u0008\u000c\u0001\u0008\u0001\u0005\u0001\u0002\u0001\u0001"+
            "\u0001\u0006\u0001\u0009\u0001\u0003\u0002\u000c\u0001\u000b"+
            "\u0001\u0004\u0001\u0001\u0001\u0007\u0001\u000a\u0008\u000c",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA34_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA34_eotS),
    DFA34_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA34_eofS),
    DFA34_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA34_minS),
    DFA34_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA34_maxS),
    DFA34_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA34_acceptS),
    DFA34_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA34_specialS),
    DFA34_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA34_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA34_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA34 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 34;
    this.eot = BlockParser.DFA34_eot;
    this.eof = BlockParser.DFA34_eof;
    this.min = BlockParser.DFA34_min;
    this.max = BlockParser.DFA34_max;
    this.accept = BlockParser.DFA34_accept;
    this.special = BlockParser.DFA34_special;
    this.transition = BlockParser.DFA34_transition;
};

org.antlr.lang.extend(BlockParser.DFA34, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 231:2: ( text_italiccontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA37_eotS:
        "\u000a\uffff",
    DFA37_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA37_minS:
        "\u0001\u0004\u0009\uffff",
    DFA37_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA37_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA37_specialS:
        "\u000a\uffff}>",
    DFA37_transitionS: [
            "\u0008\u0009\u0001\u0006\u0001\u0004\u0001\u0002\u0002\u0001"+
            "\u0001\u0007\u0001\u0001\u0002\u0009\u0001\u0001\u0001\u0003"+
            "\u0001\u0001\u0001\u0005\u0001\u0008\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA37_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA37_eotS),
    DFA37_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA37_eofS),
    DFA37_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA37_minS),
    DFA37_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA37_maxS),
    DFA37_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA37_acceptS),
    DFA37_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA37_specialS),
    DFA37_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA37_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA37_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA37 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 37;
    this.eot = BlockParser.DFA37_eot;
    this.eof = BlockParser.DFA37_eof;
    this.min = BlockParser.DFA37_min;
    this.max = BlockParser.DFA37_max;
    this.accept = BlockParser.DFA37_accept;
    this.special = BlockParser.DFA37_special;
    this.transition = BlockParser.DFA37_transition;
};

org.antlr.lang.extend(BlockParser.DFA37, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 252:3: (i=~ ( BOLD_MARKUP | LINK_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA39_eotS:
        "\u000c\uffff",
    DFA39_eofS:
        "\u0001\u0001\u000b\uffff",
    DFA39_minS:
        "\u0001\u0004\u000b\uffff",
    DFA39_maxS:
        "\u0001\u0021\u000b\uffff",
    DFA39_acceptS:
        "\u0001\uffff\u0001\u0002\u000a\u0001",
    DFA39_specialS:
        "\u000c\uffff}>",
    DFA39_transitionS: [
            "\u0008\u000b\u0001\u0009\u0001\u0004\u0001\u0002\u0001\u0001"+
            "\u0001\u0005\u0001\u000a\u0001\u0003\u0002\u000b\u0001\u0008"+
            "\u0002\u0001\u0001\u0006\u0001\u0007\u0008\u000b",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA39_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA39_eotS),
    DFA39_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA39_eofS),
    DFA39_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA39_minS),
    DFA39_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA39_maxS),
    DFA39_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA39_acceptS),
    DFA39_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA39_specialS),
    DFA39_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA39_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA39_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA39 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 39;
    this.eot = BlockParser.DFA39_eot;
    this.eof = BlockParser.DFA39_eof;
    this.min = BlockParser.DFA39_min;
    this.max = BlockParser.DFA39_max;
    this.accept = BlockParser.DFA39_accept;
    this.special = BlockParser.DFA39_special;
    this.transition = BlockParser.DFA39_transition;
};

org.antlr.lang.extend(BlockParser.DFA39, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 258:2: ( text_monoitaliccontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA42_eotS:
        "\u000c\uffff",
    DFA42_eofS:
        "\u0001\u0001\u000b\uffff",
    DFA42_minS:
        "\u0001\u0004\u000b\uffff",
    DFA42_maxS:
        "\u0001\u0021\u000b\uffff",
    DFA42_acceptS:
        "\u0001\uffff\u0001\u0002\u000a\u0001",
    DFA42_specialS:
        "\u000c\uffff}>",
    DFA42_transitionS: [
            "\u0008\u000b\u0001\u0009\u0001\u0005\u0001\u0002\u0001\u0001"+
            "\u0001\u0006\u0001\u000a\u0001\u0003\u0002\u000b\u0001\u0008"+
            "\u0001\u0004\u0002\u0001\u0001\u0007\u0008\u000b",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA42_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA42_eotS),
    DFA42_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA42_eofS),
    DFA42_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA42_minS),
    DFA42_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA42_maxS),
    DFA42_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA42_acceptS),
    DFA42_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA42_specialS),
    DFA42_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA42_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA42_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA42 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 42;
    this.eot = BlockParser.DFA42_eot;
    this.eof = BlockParser.DFA42_eof;
    this.min = BlockParser.DFA42_min;
    this.max = BlockParser.DFA42_max;
    this.accept = BlockParser.DFA42_accept;
    this.special = BlockParser.DFA42_special;
    this.transition = BlockParser.DFA42_transition;
};

org.antlr.lang.extend(BlockParser.DFA42, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 267:3: ( text_italicboldcontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA45_eotS:
        "\u000a\uffff",
    DFA45_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA45_minS:
        "\u0001\u0004\u0009\uffff",
    DFA45_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA45_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA45_specialS:
        "\u000a\uffff}>",
    DFA45_transitionS: [
            "\u0008\u0009\u0001\u0007\u0001\u0004\u0001\u0002\u0001\u0001"+
            "\u0001\u0005\u0001\u0008\u0001\u0001\u0002\u0009\u0001\u0001"+
            "\u0001\u0003\u0002\u0001\u0001\u0006\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA45_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA45_eotS),
    DFA45_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA45_eofS),
    DFA45_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA45_minS),
    DFA45_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA45_maxS),
    DFA45_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA45_acceptS),
    DFA45_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA45_specialS),
    DFA45_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA45_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA45_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA45 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 45;
    this.eot = BlockParser.DFA45_eot;
    this.eof = BlockParser.DFA45_eof;
    this.min = BlockParser.DFA45_min;
    this.max = BlockParser.DFA45_max;
    this.accept = BlockParser.DFA45_accept;
    this.special = BlockParser.DFA45_special;
    this.transition = BlockParser.DFA45_transition;
};

org.antlr.lang.extend(BlockParser.DFA45, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()+ loopback of 288:4: (i=~ ( LINK_MARKUP | CLOSE_BOLD_MARKUP | CLOSE_ITALIC_MARKUP | MONO_MARKUP | CLOSE_LINK_MARKUP ) )+";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA47_eotS:
        "\u000b\uffff",
    DFA47_eofS:
        "\u0001\u0001\u000a\uffff",
    DFA47_minS:
        "\u0001\u0004\u000a\uffff",
    DFA47_maxS:
        "\u0001\u0021\u000a\uffff",
    DFA47_acceptS:
        "\u0001\uffff\u0001\u0002\u0009\u0001",
    DFA47_specialS:
        "\u000b\uffff}>",
    DFA47_transitionS: [
            "\u0008\u000a\u0001\u0008\u0001\u0006\u0001\u0002\u0001\u0001"+
            "\u0001\u0007\u0001\u0009\u0001\u0003\u0002\u000a\u0001\u0005"+
            "\u0003\u0001\u0001\u0004\u0008\u000a",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA47_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA47_eotS),
    DFA47_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA47_eofS),
    DFA47_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA47_minS),
    DFA47_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA47_maxS),
    DFA47_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA47_acceptS),
    DFA47_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA47_specialS),
    DFA47_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA47_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA47_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA47 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 47;
    this.eot = BlockParser.DFA47_eot;
    this.eof = BlockParser.DFA47_eof;
    this.min = BlockParser.DFA47_min;
    this.max = BlockParser.DFA47_max;
    this.accept = BlockParser.DFA47_accept;
    this.special = BlockParser.DFA47_special;
    this.transition = BlockParser.DFA47_transition;
};

org.antlr.lang.extend(BlockParser.DFA47, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 293:3: ( text_monoitalicboldcontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA49_eotS:
        "\u000a\uffff",
    DFA49_eofS:
        "\u0001\u0009\u0009\uffff",
    DFA49_minS:
        "\u0001\u0004\u0009\uffff",
    DFA49_maxS:
        "\u0001\u0021\u0009\uffff",
    DFA49_acceptS:
        "\u0001\uffff\u0003\u0001\u0003\u0002\u0002\u0003\u0001\u0004",
    DFA49_specialS:
        "\u000a\uffff}>",
    DFA49_transitionS: [
            "\u0008\u0009\u0001\u0002\u0001\u0009\u0001\u0005\u0002\u0009"+
            "\u0001\u0001\u0001\u0004\u0002\u0009\u0001\u0007\u0001\u0006"+
            "\u0001\u0003\u0001\u0009\u0001\u0008\u0008\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA49_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA49_eotS),
    DFA49_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA49_eofS),
    DFA49_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA49_minS),
    DFA49_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA49_maxS),
    DFA49_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA49_acceptS),
    DFA49_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA49_specialS),
    DFA49_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA49_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA49_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA49 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 49;
    this.eot = BlockParser.DFA49_eot;
    this.eof = BlockParser.DFA49_eof;
    this.min = BlockParser.DFA49_min;
    this.max = BlockParser.DFA49_max;
    this.accept = BlockParser.DFA49_accept;
    this.special = BlockParser.DFA49_special;
    this.transition = BlockParser.DFA49_transition;
};

org.antlr.lang.extend(BlockParser.DFA49, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "308:15: (i= text_bolditaliccontent | j= text_boldmonocontent | k= link )?";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA50_eotS:
        "\u000d\uffff",
    DFA50_eofS:
        "\u0001\u0001\u000c\uffff",
    DFA50_minS:
        "\u0001\u0004\u000c\uffff",
    DFA50_maxS:
        "\u0001\u0021\u000c\uffff",
    DFA50_acceptS:
        "\u0001\uffff\u0001\u0002\u000b\u0001",
    DFA50_specialS:
        "\u000d\uffff}>",
    DFA50_transitionS: [
            "\u0008\u000c\u0001\u0007\u0001\u0005\u0001\u0002\u0001\u0001"+
            "\u0001\u0006\u0001\u0008\u0001\u0003\u0002\u000c\u0001\u000b"+
            "\u0001\u0004\u0001\u0009\u0001\u0001\u0001\u000a\u0008\u000c",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA50_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA50_eotS),
    DFA50_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA50_eofS),
    DFA50_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA50_minS),
    DFA50_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA50_maxS),
    DFA50_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA50_acceptS),
    DFA50_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA50_specialS),
    DFA50_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA50_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA50_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA50 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 50;
    this.eot = BlockParser.DFA50_eot;
    this.eof = BlockParser.DFA50_eof;
    this.min = BlockParser.DFA50_min;
    this.max = BlockParser.DFA50_max;
    this.accept = BlockParser.DFA50_accept;
    this.special = BlockParser.DFA50_special;
    this.transition = BlockParser.DFA50_transition;
};

org.antlr.lang.extend(BlockParser.DFA50, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 309:2: ( text_boldcontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA54_eotS:
        "\u000c\uffff",
    DFA54_eofS:
        "\u0001\u0001\u000b\uffff",
    DFA54_minS:
        "\u0001\u0004\u000b\uffff",
    DFA54_maxS:
        "\u0001\u0021\u000b\uffff",
    DFA54_acceptS:
        "\u0001\uffff\u0001\u0002\u000a\u0001",
    DFA54_specialS:
        "\u000c\uffff}>",
    DFA54_transitionS: [
            "\u0008\u000b\u0001\u0002\u0001\u0009\u0001\u0004\u0001\u0001"+
            "\u0001\u000a\u0001\u0003\u0001\u0005\u0002\u000b\u0001\u0008"+
            "\u0001\u0006\u0002\u0001\u0001\u0007\u0008\u000b",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA54_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA54_eotS),
    DFA54_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA54_eofS),
    DFA54_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA54_minS),
    DFA54_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA54_maxS),
    DFA54_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA54_acceptS),
    DFA54_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA54_specialS),
    DFA54_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA54_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA54_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA54 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 54;
    this.eot = BlockParser.DFA54_eot;
    this.eof = BlockParser.DFA54_eof;
    this.min = BlockParser.DFA54_min;
    this.max = BlockParser.DFA54_max;
    this.accept = BlockParser.DFA54_accept;
    this.special = BlockParser.DFA54_special;
    this.transition = BlockParser.DFA54_transition;
};

org.antlr.lang.extend(BlockParser.DFA54, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 337:2: ( text_italicboldcontentpart )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(BlockParser, {
    DFA57_eotS:
        "\u000c\uffff",
    DFA57_eofS:
        "\u0001\u0001\u000b\uffff",
    DFA57_minS:
        "\u0001\u0004\u000b\uffff",
    DFA57_maxS:
        "\u0001\u0021\u000b\uffff",
    DFA57_acceptS:
        "\u0001\uffff\u0001\u0002\u000a\u0001",
    DFA57_specialS:
        "\u000c\uffff}>",
    DFA57_transitionS: [
            "\u0008\u000b\u0001\u0002\u0001\u0009\u0001\u0005\u0001\u0001"+
            "\u0001\u000a\u0001\u0003\u0001\u0006\u0002\u000b\u0001\u0008"+
            "\u0001\u0001\u0001\u0004\u0001\u0001\u0001\u0007\u0008\u000b",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(BlockParser, {
    DFA57_eot:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA57_eotS),
    DFA57_eof:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA57_eofS),
    DFA57_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA57_minS),
    DFA57_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(BlockParser.DFA57_maxS),
    DFA57_accept:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA57_acceptS),
    DFA57_special:
        org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA57_specialS),
    DFA57_transition: (function() {
        var a = [],
            i,
            numStates = BlockParser.DFA57_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(BlockParser.DFA57_transitionS[i]));
        }
        return a;
    })()
});

BlockParser.DFA57 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 57;
    this.eot = BlockParser.DFA57_eot;
    this.eof = BlockParser.DFA57_eof;
    this.min = BlockParser.DFA57_min;
    this.max = BlockParser.DFA57_max;
    this.accept = BlockParser.DFA57_accept;
    this.special = BlockParser.DFA57_special;
    this.transition = BlockParser.DFA57_transition;
};

org.antlr.lang.extend(BlockParser.DFA57, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 347:3: ( text_monoboldcontentpart )*";
    },
    dummy: null
});


// public class variables
org.antlr.lang.augmentObject(BlockParser, {
    tokenNames: ["<invalid>", "<EOR>", "<DOWN>", "<UP>", "PARAGRAPH", "PLAINTEXT", "BOLDTEXT", "ITALICTEXT", "MONOTEXT", "TEXTNODE", "SIMPLELINK", "NAMEDLINK", "NESTED_ITALIC", "NESTED_BOLD", "NESTED_MONO", "CLOSE_LINK_MARKUP", "BOLD_MARKUP", "ITAL_MARKUP", "MONO_MARKUP", "WHITESPACE", "WS", "LINK_MARKUP", "CLOSE_MONO_MARKUP", "CLOSE_ITALIC_MARKUP", "CLOSE_BOLD_MARKUP", "NESTED_LINK_MARKUP", "CR", "LF", "NEW_LINE", "NUMBER_CHAR", "ALPHABET", "DIGIT", "TRADE_MARK", "INSIGNIFICANT_CHAR"],
    FOLLOW_paragraph_contents_in_paragraph104: new org.antlr.runtime.BitSet([0x00000000, 0x00000000]),
    FOLLOW_EOF_in_paragraph106: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_paragraph_content_in_paragraph_contents121: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_plaincontent_in_paragraph_content149: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monocontent_in_paragraph_content159: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_boldcontent_in_paragraph_content169: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_italiccontent_in_paragraph_content178: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_paragraph_content188: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_markup_in_link212: new org.antlr.runtime.BitSet([0xFFC07FF0, 0x00000003]),
    FOLLOW_link_url_in_link214: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_text_in_link224: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_CLOSE_LINK_MARKUP_in_link230: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_LINK_MARKUP_in_link276: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_linkurl_in_link_url327: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_linkurl351: new org.antlr.runtime.BitSet([0xFFC07FF2, 0x00000003]),
    FOLLOW_text_linkplaincontent_in_link_text383: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monocontent_in_link_text397: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_italiccontent_in_link_text407: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_boldcontent_in_link_text418: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_linkplaincontent441: new org.antlr.runtime.BitSet([0xFFF87FF2, 0x00000003]),
    FOLLOW_text_in_text_plaincontent474: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text500: new org.antlr.runtime.BitSet([0xFFD8FFF2, 0x00000003]),
    FOLLOW_mono_markup_in_text_monocontent529: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_monoitaliccontent_in_text_monocontent534: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoboldcontent_in_text_monocontent538: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_monocontent542: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monocontentpart_in_text_monocontent547: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_mono_markup_in_text_monocontent554: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monoplaincontent_in_text_monocontentpart635: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monoboldcontent_in_text_monocontentpart649: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monoitaliccontent_in_text_monocontentpart659: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_text_monocontentpart670: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_monoplaincontent697: new org.antlr.runtime.BitSet([0xFF9C7FF2, 0x00000003]),
    FOLLOW_italic_markup_in_text_monoitaliccontent726: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_monoitalicboldcontent_in_text_monoitaliccontent734: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_monoitaliccontent740: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoitaliccontentpart_in_text_monoitaliccontent745: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_italic_markup_in_text_monoitaliccontent750: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monoitalicplaincontent_in_text_monoitaliccontentpart814: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monoitalicboldcontent_in_text_monoitaliccontentpart827: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_text_monoitaliccontentpart837: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_monoitalicplaincontent859: new org.antlr.runtime.BitSet([0xFF1E7FF2, 0x00000003]),
    FOLLOW_bold_markup_in_text_monoitalicboldcontent886: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_link_in_text_monoitalicboldcontent893: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoitalicboldcontentpart_in_text_monoitalicboldcontent898: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_bold_markup_in_text_monoitalicboldcontent906: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monoitalicboldplaintext_in_text_monoitalicboldcontentpart965: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_text_monoitalicboldcontentpart978: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_monoitalicboldplaintext997: new org.antlr.runtime.BitSet([0xFE1F7FF2, 0x00000003]),
    FOLLOW_bold_markup_in_text_monoboldcontent1022: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_monobolditaliccontent_in_text_monoboldcontent1029: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_monoboldcontent1035: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoboldcontentpart_in_text_monoboldcontent1041: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_bold_markup_in_text_monoboldcontent1046: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monoboldplaintcontent_in_text_monoboldcontentpart1115: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_monobolditaliccontent_in_text_monoboldcontentpart1128: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_text_monoboldcontentpart1138: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_monoboldplaintcontent1159: new org.antlr.runtime.BitSet([0xFE9D7FF2, 0x00000003]),
    FOLLOW_italic_markup_in_text_monobolditaliccontent1185: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_link_in_text_monobolditaliccontent1191: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoitalicboldcontentpart_in_text_monobolditaliccontent1195: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_italic_markup_in_text_monobolditaliccontent1203: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_italic_markup_in_text_italiccontent1264: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_italicmonocontent_in_text_italiccontent1271: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_italicboldcontent_in_text_italiccontent1277: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_italiccontent1281: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_italiccontentpart_in_text_italiccontent1286: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_italic_markup_in_text_italiccontent1291: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_italicplaincontent_in_text_italiccontentpart1371: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_italicmonocontent_in_text_italiccontentpart1384: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_italicboldcontent_in_text_italiccontentpart1395: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_text_italiccontentpart1405: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_italicplaincontent1427: new org.antlr.runtime.BitSet([0xFF5A7FF2, 0x00000003]),
    FOLLOW_mono_markup_in_text_italicmonocontent1454: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_monoitalicboldcontent_in_text_italicmonocontent1462: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_italicmonocontent1466: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoitaliccontentpart_in_text_italicmonocontent1471: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_mono_markup_in_text_italicmonocontent1476: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_bold_markup_in_text_italicboldcontent1542: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_italicboldmonocontent_in_text_italicboldcontent1547: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_italicboldcontent1551: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_italicboldcontentpart_in_text_italicboldcontent1557: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_bold_markup_in_text_italicboldcontent1568: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_italicboldplaincontent_in_text_italicboldcontentpart1654: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_italicboldmonocontent_in_text_italicboldcontentpart1670: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_text_italicboldcontentpart1682: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_italicboldplaincontent1712: new org.antlr.runtime.BitSet([0xFE5B7FF2, 0x00000003]),
    FOLLOW_mono_markup_in_text_italicboldmonocontent1740: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_link_in_text_italicboldmonocontent1745: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoitalicboldcontentpart_in_text_italicboldmonocontent1750: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_mono_markup_in_text_italicboldmonocontent1757: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_bold_markup_in_text_boldcontent1821: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_bolditaliccontent_in_text_boldcontent1828: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_boldmonocontent_in_text_boldcontent1832: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_boldcontent1836: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_boldcontentpart_in_text_boldcontent1841: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_bold_markup_in_text_boldcontent1849: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_boldplaincontent_in_text_boldcontentpart1935: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_bolditaliccontent_in_text_boldcontentpart1948: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_text_boldmonocontent_in_text_boldcontentpart1958: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_link_in_text_boldcontentpart1967: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_text_boldplaincontent1988: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_italic_markup_in_text_bolditaliccontent2015: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_italicboldmonocontent_in_text_bolditaliccontent2020: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_bolditaliccontent2024: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_italicboldcontentpart_in_text_bolditaliccontent2029: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_italic_markup_in_text_bolditaliccontent2037: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_mono_markup_in_text_boldmonocontent2100: new org.antlr.runtime.BitSet([0xFFFFFFF0, 0x00000003]),
    FOLLOW_text_monobolditaliccontent_in_text_boldmonocontent2105: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_link_in_text_boldmonocontent2109: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_text_monoboldcontentpart_in_text_boldmonocontent2115: new org.antlr.runtime.BitSet([0xFFFFFFF2, 0x00000003]),
    FOLLOW_close_mono_markup_in_text_boldmonocontent2124: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_BOLD_MARKUP_in_bold_markup2196: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_NESTED_BOLD_in_bold_markup2209: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_BOLD_MARKUP_in_bold_markup2222: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_ITAL_MARKUP_in_italic_markup2248: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_NESTED_ITALIC_in_italic_markup2261: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_ITALIC_MARKUP_in_italic_markup2274: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_MONO_MARKUP_in_mono_markup2299: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_NESTED_MONO_in_mono_markup2311: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_MONO_MARKUP_in_mono_markup2324: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_LINK_MARKUP_in_link_markup2349: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_NESTED_LINK_MARKUP_in_link_markup2361: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_LINK_MARKUP_in_closelink_markup2385: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_ITALIC_MARKUP_in_close_italic_markup2403: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_MONO_MARKUP_in_close_mono_markup2415: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CLOSE_BOLD_MARKUP_in_close_bold_markup2424: new org.antlr.runtime.BitSet([0x00000002, 0x00000000])
});

})();// $ANTLR 3.3 Nov 30, 2010 12:46:29 /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g 2013-10-02 14:40:49

var BlockWalker = function(input, state) {
    if (!state) {
        state = new org.antlr.runtime.RecognizerSharedState();
    }

    (function(){

        this.trim = function(s){
            return s.replace(/^\s+|\s+$/g,"");
        }


    }).call(this);

    BlockWalker.superclass.constructor.call(this, input, state);




    /* @todo only create adaptor if output=AST */
    this.adaptor = new org.antlr.runtime.tree.CommonTreeAdaptor();

};

org.antlr.lang.augmentObject(BlockWalker, {
    EOF: -1,
    PARAGRAPH: 4,
    PLAINTEXT: 5,
    BOLDTEXT: 6,
    ITALICTEXT: 7,
    MONOTEXT: 8,
    TEXTNODE: 9,
    SIMPLELINK: 10,
    NAMEDLINK: 11,
    NESTED_ITALIC: 12,
    NESTED_BOLD: 13,
    NESTED_MONO: 14,
    CLOSE_LINK_MARKUP: 15,
    BOLD_MARKUP: 16,
    ITAL_MARKUP: 17,
    MONO_MARKUP: 18,
    WHITESPACE: 19,
    WS: 20,
    LINK_MARKUP: 21,
    CLOSE_MONO_MARKUP: 22,
    CLOSE_ITALIC_MARKUP: 23,
    CLOSE_BOLD_MARKUP: 24,
    NESTED_LINK_MARKUP: 25,
    CR: 26,
    LF: 27,
    NEW_LINE: 28,
    NUMBER_CHAR: 29,
    ALPHABET: 30,
    DIGIT: 31,
    TRADE_MARK: 32,
    INSIGNIFICANT_CHAR: 33
});

(function(){
// public class variables
var EOF= -1,
    PARAGRAPH= 4,
    PLAINTEXT= 5,
    BOLDTEXT= 6,
    ITALICTEXT= 7,
    MONOTEXT= 8,
    TEXTNODE= 9,
    SIMPLELINK= 10,
    NAMEDLINK= 11,
    NESTED_ITALIC= 12,
    NESTED_BOLD= 13,
    NESTED_MONO= 14,
    CLOSE_LINK_MARKUP= 15,
    BOLD_MARKUP= 16,
    ITAL_MARKUP= 17,
    MONO_MARKUP= 18,
    WHITESPACE= 19,
    WS= 20,
    LINK_MARKUP= 21,
    CLOSE_MONO_MARKUP= 22,
    CLOSE_ITALIC_MARKUP= 23,
    CLOSE_BOLD_MARKUP= 24,
    NESTED_LINK_MARKUP= 25,
    CR= 26,
    LF= 27,
    NEW_LINE= 28,
    NUMBER_CHAR= 29,
    ALPHABET= 30,
    DIGIT= 31,
    TRADE_MARK= 32,
    INSIGNIFICANT_CHAR= 33;
var UP = org.antlr.runtime.Token.UP,
    DOWN = org.antlr.runtime.Token.DOWN;

// public instance methods/vars
org.antlr.lang.extend(BlockWalker, org.antlr.runtime.tree.TreeParser, {


    getTokenNames: function() { return BlockWalker.tokenNames; },
    getGrammarFileName: function() { return "/local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g"; }
});
org.antlr.lang.augmentObject(BlockWalker.prototype, {


    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:17:1: start returns [var result = ''] : statement EOF ;
    // $ANTLR start "start"
    start: function() {
        var result =  '';

         var statement1 = null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:18:2: ( statement EOF )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:18:3: statement EOF
            this.pushFollow(BlockWalker.FOLLOW_statement_in_start60);
            statement1=this.statement();

            this.state._fsp--;

            this.match(this.input,EOF,BlockWalker.FOLLOW_EOF_in_start62);
            result = this.trim(statement1);



        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return result;
    },


    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:22:1: statement returns [var result=''] : ( ^( PARAGRAPH (i= statement )* ) | ^( PLAINTEXT (i= statement )* ) | ^( BOLDTEXT (i= statement )* ) | ^( ITALICTEXT (i= statement )* ) | ^( MONOTEXT (i= statement )* ) | ^( SIMPLELINK (i= statement )* ) | ^( NAMEDLINK address= statement (name= statement )* ) | TEXTNODE );
    // $ANTLR start "statement"
    statement: function() {
        var result = '';

        var TEXTNODE2 = null;
         var i = null;
         var address = null;
         var name = null;


        var temp = '';

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:28:2: ( ^( PARAGRAPH (i= statement )* ) | ^( PLAINTEXT (i= statement )* ) | ^( BOLDTEXT (i= statement )* ) | ^( ITALICTEXT (i= statement )* ) | ^( MONOTEXT (i= statement )* ) | ^( SIMPLELINK (i= statement )* ) | ^( NAMEDLINK address= statement (name= statement )* ) | TEXTNODE )
            var alt8=8;
            switch ( this.input.LA(1) ) {
            case PARAGRAPH:
                alt8=1;
                break;
            case PLAINTEXT:
                alt8=2;
                break;
            case BOLDTEXT:
                alt8=3;
                break;
            case ITALICTEXT:
                alt8=4;
                break;
            case MONOTEXT:
                alt8=5;
                break;
            case SIMPLELINK:
                alt8=6;
                break;
            case NAMEDLINK:
                alt8=7;
                break;
            case TEXTNODE:
                alt8=8;
                break;
            default:
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 8, 0, this.input);

                throw nvae;
            }

            switch (alt8) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:29:2: ^( PARAGRAPH (i= statement )* )
                    this.match(this.input,PARAGRAPH,BlockWalker.FOLLOW_PARAGRAPH_in_statement90);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:29:14: (i= statement )*
                        loop1:
                        do {
                            var alt1=2;
                            var LA1_0 = this.input.LA(1);

                            if ( ((LA1_0>=PARAGRAPH && LA1_0<=NAMEDLINK)) ) {
                                alt1=1;
                            }


                            switch (alt1) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:29:15: i= statement
                                this.pushFollow(BlockWalker.FOLLOW_statement_in_statement95);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=i;


                                break;

                            default :
                                break loop1;
                            }
                        } while (true);

                        result = this.trim(temp);

                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:33:2: ^( PLAINTEXT (i= statement )* )
                    this.match(this.input,PLAINTEXT,BlockWalker.FOLLOW_PLAINTEXT_in_statement111);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:33:14: (i= statement )*
                        loop2:
                        do {
                            var alt2=2;
                            var LA2_0 = this.input.LA(1);

                            if ( ((LA2_0>=PARAGRAPH && LA2_0<=NAMEDLINK)) ) {
                                alt2=1;
                            }


                            switch (alt2) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:33:15: i= statement
                                this.pushFollow(BlockWalker.FOLLOW_statement_in_statement116);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=(i);


                                break;

                            default :
                                break loop2;
                            }
                        } while (true);

                        result = temp;

                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }


                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:37:2: ^( BOLDTEXT (i= statement )* )
                    this.match(this.input,BOLDTEXT,BlockWalker.FOLLOW_BOLDTEXT_in_statement132);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:37:14: (i= statement )*
                        loop3:
                        do {
                            var alt3=2;
                            var LA3_0 = this.input.LA(1);

                            if ( ((LA3_0>=PARAGRAPH && LA3_0<=NAMEDLINK)) ) {
                                alt3=1;
                            }


                            switch (alt3) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:37:15: i= statement
                                this.pushFollow(BlockWalker.FOLLOW_statement_in_statement138);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=(i);


                                break;

                            default :
                                break loop3;
                            }
                        } while (true);


                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }

                        result = "<b>"+this.trim(temp)+"</b>";



                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:42:2: ^( ITALICTEXT (i= statement )* )
                    this.match(this.input,ITALICTEXT,BlockWalker.FOLLOW_ITALICTEXT_in_statement152);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:42:16: (i= statement )*
                        loop4:
                        do {
                            var alt4=2;
                            var LA4_0 = this.input.LA(1);

                            if ( ((LA4_0>=PARAGRAPH && LA4_0<=NAMEDLINK)) ) {
                                alt4=1;
                            }


                            switch (alt4) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:42:17: i= statement
                                this.pushFollow(BlockWalker.FOLLOW_statement_in_statement158);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=(i);


                                break;

                            default :
                                break loop4;
                            }
                        } while (true);


                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }
                    result = "<i>"+this.trim(temp)+"</i>";


                    break;
                case 5 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:45:2: ^( MONOTEXT (i= statement )* )
                    this.match(this.input,MONOTEXT,BlockWalker.FOLLOW_MONOTEXT_in_statement174);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:45:14: (i= statement )*
                        loop5:
                        do {
                            var alt5=2;
                            var LA5_0 = this.input.LA(1);

                            if ( ((LA5_0>=PARAGRAPH && LA5_0<=NAMEDLINK)) ) {
                                alt5=1;
                            }


                            switch (alt5) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:45:15: i= statement
                                this.pushFollow(BlockWalker.FOLLOW_statement_in_statement180);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=(i);


                                break;

                            default :
                                break loop5;
                            }
                        } while (true);


                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }
                    result = "<tt>"+this.trim(temp)+"</tt>";


                    break;
                case 6 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:48:2: ^( SIMPLELINK (i= statement )* )
                    this.match(this.input,SIMPLELINK,BlockWalker.FOLLOW_SIMPLELINK_in_statement194);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:48:16: (i= statement )*
                        loop6:
                        do {
                            var alt6=2;
                            var LA6_0 = this.input.LA(1);

                            if ( ((LA6_0>=PARAGRAPH && LA6_0<=NAMEDLINK)) ) {
                                alt6=1;
                            }


                            switch (alt6) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:48:17: i= statement
                                this.pushFollow(BlockWalker.FOLLOW_statement_in_statement200);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=i;


                                break;

                            default :
                                break loop6;
                            }
                        } while (true);


                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }
                    result = "<a href = \""+temp+"\">"+temp+"</a>";


                    break;
                case 7 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:51:2: ^( NAMEDLINK address= statement (name= statement )* )
                    this.match(this.input,NAMEDLINK,BlockWalker.FOLLOW_NAMEDLINK_in_statement214);

                    this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                    this.pushFollow(BlockWalker.FOLLOW_statement_in_statement222);
                    address=this.statement();

                    this.state._fsp--;

                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:51:36: (name= statement )*
                    loop7:
                    do {
                        var alt7=2;
                        var LA7_0 = this.input.LA(1);

                        if ( ((LA7_0>=PARAGRAPH && LA7_0<=NAMEDLINK)) ) {
                            alt7=1;
                        }


                        switch (alt7) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:51:37: name= statement
                            this.pushFollow(BlockWalker.FOLLOW_statement_in_statement229);
                            name=this.statement();

                            this.state._fsp--;

                            temp+=name;


                            break;

                        default :
                            break loop7;
                        }
                    } while (true);


                    this.match(this.input, org.antlr.runtime.Token.UP, null);
                    result = "<a href = \""+address+"\">"+this.trim(temp)+"</a>";


                    break;
                case 8 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/BlockWalker.g:53:2: TEXTNODE
                    TEXTNODE2=this.match(this.input,TEXTNODE,BlockWalker.FOLLOW_TEXTNODE_in_statement242);
                    result =(TEXTNODE2?TEXTNODE2.getText():null)!=undefined?(TEXTNODE2?TEXTNODE2.getText():null):"";result = result.replace(/</g, "&lt;").replace(/>/g,"&gt;");


                    break;

            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return result;
    }

    // Delegated rules




}, true); // important to pass true to overwrite default implementations



// public class variables
org.antlr.lang.augmentObject(BlockWalker, {
    tokenNames: ["<invalid>", "<EOR>", "<DOWN>", "<UP>", "PARAGRAPH", "PLAINTEXT", "BOLDTEXT", "ITALICTEXT", "MONOTEXT", "TEXTNODE", "SIMPLELINK", "NAMEDLINK", "NESTED_ITALIC", "NESTED_BOLD", "NESTED_MONO", "CLOSE_LINK_MARKUP", "BOLD_MARKUP", "ITAL_MARKUP", "MONO_MARKUP", "WHITESPACE", "WS", "LINK_MARKUP", "CLOSE_MONO_MARKUP", "CLOSE_ITALIC_MARKUP", "CLOSE_BOLD_MARKUP", "NESTED_LINK_MARKUP", "CR", "LF", "NEW_LINE", "NUMBER_CHAR", "ALPHABET", "DIGIT", "TRADE_MARK", "INSIGNIFICANT_CHAR"],
    FOLLOW_statement_in_start60: new org.antlr.runtime.BitSet([0x00000000, 0x00000000]),
    FOLLOW_EOF_in_start62: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_PARAGRAPH_in_statement90: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement95: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_PLAINTEXT_in_statement111: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement116: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_BOLDTEXT_in_statement132: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement138: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_ITALICTEXT_in_statement152: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement158: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_MONOTEXT_in_statement174: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement180: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_SIMPLELINK_in_statement194: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement200: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_NAMEDLINK_in_statement214: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement222: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_statement_in_statement229: new org.antlr.runtime.BitSet([0x00000FF8, 0x00000000]),
    FOLLOW_TEXTNODE_in_statement242: new org.antlr.runtime.BitSet([0x00000002, 0x00000000])
});

})();// $ANTLR 3.3 Nov 30, 2010 12:46:29 /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g 2013-10-02 14:40:53

var ParagraphLexer = function(input, state) {
// alternate constructor @todo
// public ParagraphLexer(CharStream input)
// public ParagraphLexer(CharStream input, RecognizerSharedState state) {
    if (!state) {
        state = new org.antlr.runtime.RecognizerSharedState();
    }

    (function(){
    }).call(this);

    this.dfa14 = new ParagraphLexer.DFA14(this);
    ParagraphLexer.superclass.constructor.call(this, input, state);


};

org.antlr.lang.augmentObject(ParagraphLexer, {
    EOF: -1,
    PARAGRAPHS: 4,
    PARAGRAPH: 5,
    FORMATTED_PARAGRAPH: 6,
    NON_FORMATTED_PARAGRAPH: 7,
    TEXTNODE: 8,
    BULLETED_LIST: 9,
    NUMBERED_LIST: 10,
    LIST_ITEM: 11,
    WHITE_SPACE: 12,
    IMAGE_START: 13,
    IMAGE_BLOCK: 14,
    CODE_BLOCK: 15,
    CODE_START: 16,
    PARAGRAPH_SEPARATOR: 17,
    LIST_ORD_SECOND: 18,
    LEADING_WHITE_SPACES: 19,
    NEW_LINE: 20,
    FORMATTED_PARAGRAPH_START: 21,
    LIST_ORD_START: 22,
    LIST_UNORD_START: 23,
    IMAGE_END: 24,
    LIST_UNORD_SECOND: 25,
    CR: 26,
    LF: 27,
    ANYTHING: 28
});

(function(){
var HIDDEN = org.antlr.runtime.Token.HIDDEN_CHANNEL,
    EOF = org.antlr.runtime.Token.EOF;
org.antlr.lang.extend(ParagraphLexer, org.antlr.runtime.Lexer, {
    EOF : -1,
    PARAGRAPHS : 4,
    PARAGRAPH : 5,
    FORMATTED_PARAGRAPH : 6,
    NON_FORMATTED_PARAGRAPH : 7,
    TEXTNODE : 8,
    BULLETED_LIST : 9,
    NUMBERED_LIST : 10,
    LIST_ITEM : 11,
    WHITE_SPACE : 12,
    IMAGE_START : 13,
    IMAGE_BLOCK : 14,
    CODE_BLOCK : 15,
    CODE_START : 16,
    PARAGRAPH_SEPARATOR : 17,
    LIST_ORD_SECOND : 18,
    LEADING_WHITE_SPACES : 19,
    NEW_LINE : 20,
    FORMATTED_PARAGRAPH_START : 21,
    LIST_ORD_START : 22,
    LIST_UNORD_START : 23,
    IMAGE_END : 24,
    LIST_UNORD_SECOND : 25,
    CR : 26,
    LF : 27,
    ANYTHING : 28,
    getGrammarFileName: function() { return "/local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g"; }
});
org.antlr.lang.augmentObject(ParagraphLexer.prototype, {
    // $ANTLR start NEW_LINE
    mNEW_LINE: function()  {
        try {
            var _type = this.NEW_LINE;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:221:2: ( ( ( CR )? LF | CR ) ( ( EOF )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:221:3: ( ( CR )? LF | CR ) ( ( EOF )=> | )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:221:3: ( ( CR )? LF | CR )
            var alt2=2;
            var LA2_0 = this.input.LA(1);

            if ( (LA2_0=='\r') ) {
                var LA2_1 = this.input.LA(2);

                if ( (LA2_1=='\n') ) {
                    alt2=1;
                }
                else {
                    alt2=2;}
            }
            else if ( (LA2_0=='\n') ) {
                alt2=1;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 2, 0, this.input);

                throw nvae;
            }
            switch (alt2) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:221:5: ( CR )? LF
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:221:5: ( CR )?
                    var alt1=2;
                    var LA1_0 = this.input.LA(1);

                    if ( (LA1_0=='\r') ) {
                        alt1=1;
                    }
                    switch (alt1) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:221:6: CR
                            this.mCR(); if (this.state.failed) return ;


                            break;

                    }

                    this.mLF(); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:221:16: CR
                    this.mCR(); if (this.state.failed) return ;


                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:222:2: ( ( EOF )=> | )
            var alt3=2;
            var LA3_0 = this.input.LA(1);

            if ( (this.synpred1_Paragraph()) ) {
                alt3=1;
            }
            else if ( (true) ) {
                alt3=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 3, 0, this.input);

                throw nvae;
            }
            switch (alt3) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:222:3: ( EOF )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.PARAGRAPH_SEPARATOR;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:222:47:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "NEW_LINE",

    // $ANTLR start LF
    mLF: function()  {
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:227:2: ( '\\n' )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:227:4: '\\n'
            this.match('\n'); if (this.state.failed) return ;



        }
        finally {
        }
    },
    // $ANTLR end "LF",

    // $ANTLR start CR
    mCR: function()  {
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:231:2: ( '\\r' )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:231:4: '\\r'
            this.match('\r'); if (this.state.failed) return ;



        }
        finally {
        }
    },
    // $ANTLR end "CR",

    // $ANTLR start LIST_UNORD_SECOND
    mLIST_UNORD_SECOND: function()  {
        try {
            var _type = this.LIST_UNORD_SECOND;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:236:2: ( NEW_LINE ( ( '*' ' ' )=> '*' | ( '#' ' ' )=> '#' | ( EOF )=> | ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE ( ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE )* | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:236:3: NEW_LINE ( ( '*' ' ' )=> '*' | ( '#' ' ' )=> '#' | ( EOF )=> | ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE ( ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE )* | )
            this.mNEW_LINE(); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:237:2: ( ( '*' ' ' )=> '*' | ( '#' ' ' )=> '#' | ( EOF )=> | ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE ( ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE )* | )
            var alt7=5;
            var LA7_0 = this.input.LA(1);

            if ( (LA7_0=='*') && (this.synpred2_Paragraph())) {
                alt7=1;
            }
            else if ( (LA7_0=='#') && (this.synpred3_Paragraph())) {
                alt7=2;
            }
            else if ( (LA7_0==' ') && (this.synpred5_Paragraph())) {
                alt7=4;
            }
            else if ( (LA7_0=='\r') && (this.synpred5_Paragraph())) {
                alt7=4;
            }
            else if ( (LA7_0=='\n') && (this.synpred5_Paragraph())) {
                alt7=4;
            }
            else if ( (this.synpred4_Paragraph()) ) {
                alt7=3;
            }
            else if ( (true) ) {
                alt7=5;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 7, 0, this.input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:237:3: ( '*' ' ' )=> '*'
                    this.match('*'); if (this.state.failed) return ;
                    if ( this.state.backtracking===0 ) {
                      _type = this.LIST_UNORD_SECOND;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:239:2: ( '#' ' ' )=> '#'
                    this.match('#'); if (this.state.failed) return ;
                    if ( this.state.backtracking===0 ) {
                      _type = this.LIST_ORD_SECOND;
                    }


                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:241:2: ( EOF )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.PARAGRAPH_SEPARATOR;
                    }


                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:2: ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE ( ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE )*
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:20: ( ' ' )*
                    loop4:
                    do {
                        var alt4=2;
                        var LA4_0 = this.input.LA(1);

                        if ( (LA4_0==' ') ) {
                            alt4=1;
                        }


                        switch (alt4) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:20: ' '
                            this.match(' '); if (this.state.failed) return ;


                            break;

                        default :
                            break loop4;
                        }
                    } while (true);

                    this.mNEW_LINE(); if (this.state.failed) return ;
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:35: ( ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE )*
                    loop6:
                    do {
                        var alt6=2;
                        var LA6_0 = this.input.LA(1);

                        if ( (LA6_0==' ') && (this.synpred6_Paragraph())) {
                            alt6=1;
                        }
                        else if ( (LA6_0=='\r') && (this.synpred6_Paragraph())) {
                            alt6=1;
                        }
                        else if ( (LA6_0=='\n') && (this.synpred6_Paragraph())) {
                            alt6=1;
                        }


                        switch (alt6) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:36: ( ( ' ' )* NEW_LINE )=> ( ' ' )* NEW_LINE
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:55: ( ' ' )*
                            loop5:
                            do {
                                var alt5=2;
                                var LA5_0 = this.input.LA(1);

                                if ( (LA5_0==' ') ) {
                                    alt5=1;
                                }


                                switch (alt5) {
                                case 1 :
                                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:55: ' '
                                    this.match(' '); if (this.state.failed) return ;


                                    break;

                                default :
                                    break loop5;
                                }
                            } while (true);

                            this.mNEW_LINE(); if (this.state.failed) return ;


                            break;

                        default :
                            break loop6;
                        }
                    } while (true);

                    if ( this.state.backtracking===0 ) {
                      _type = this.PARAGRAPH_SEPARATOR;
                    }


                    break;
                case 5 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:245:2:
                    if ( this.state.backtracking===0 ) {
                      _type = this.NEW_LINE;
                    }


                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "LIST_UNORD_SECOND",

    // $ANTLR start LIST_ORD_START
    mLIST_ORD_START: function()  {
        try {
            var _type = this.LIST_ORD_START;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:251:2: ( '#' ( ( ' ' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:251:3: '#' ( ( ' ' )=> | )
            this.match('#'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:252:2: ( ( ' ' )=> | )
            var alt8=2;
            var LA8_0 = this.input.LA(1);

            if ( (this.synpred7_Paragraph()) ) {
                alt8=1;
            }
            else if ( (true) ) {
                alt8=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 8, 0, this.input);

                throw nvae;
            }
            switch (alt8) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:252:3: ( ' ' )=>

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:254:2:
                    if ( this.state.backtracking===0 ) {
                      _type = this.ANYTHING;
                    }


                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "LIST_ORD_START",

    // $ANTLR start LIST_UNORD_START
    mLIST_UNORD_START: function()  {
        try {
            var _type = this.LIST_UNORD_START;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:259:2: ( '*' ( ( ' ' )=> | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:259:3: '*' ( ( ' ' )=> | )
            this.match('*'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:260:2: ( ( ' ' )=> | )
            var alt9=2;
            var LA9_0 = this.input.LA(1);

            if ( (this.synpred8_Paragraph()) ) {
                alt9=1;
            }
            else if ( (true) ) {
                alt9=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 9, 0, this.input);

                throw nvae;
            }
            switch (alt9) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:260:3: ( ' ' )=>

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:262:2:
                    if ( this.state.backtracking===0 ) {
                      _type = this.ANYTHING;
                    }


                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "LIST_UNORD_START",

    // $ANTLR start IMAGE_START
    mIMAGE_START: function()  {
        try {
            var _type = this.IMAGE_START;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:267:2: ( '<' ( ( '<' )=> '<' | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:267:3: '<' ( ( '<' )=> '<' | )
            this.match('<'); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:268:2: ( ( '<' )=> '<' | )
            var alt10=2;
            var LA10_0 = this.input.LA(1);

            if ( (LA10_0=='<') && (this.synpred9_Paragraph())) {
                alt10=1;
            }
            else {
                alt10=2;}
            switch (alt10) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:268:3: ( '<' )=> '<'
                    this.match('<'); if (this.state.failed) return ;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:270:2:
                    if ( this.state.backtracking===0 ) {
                      _type = this.ANYTHING;
                    }


                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "IMAGE_START",

    // $ANTLR start IMAGE_END
    mIMAGE_END: function()  {
        try {
            var _type = this.IMAGE_END;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:275:2: ( '>>' ( ( ' ' )=> ' ' )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:275:3: '>>' ( ( ' ' )=> ' ' )*
            this.match(">>"); if (this.state.failed) return ;

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:276:2: ( ( ' ' )=> ' ' )*
            loop11:
            do {
                var alt11=2;
                var LA11_0 = this.input.LA(1);

                if ( (LA11_0==' ') && (this.synpred10_Paragraph())) {
                    alt11=1;
                }


                switch (alt11) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:276:3: ( ' ' )=> ' '
                    this.match(' '); if (this.state.failed) return ;


                    break;

                default :
                    break loop11;
                }
            } while (true);




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "IMAGE_END",

    // $ANTLR start FORMATTED_PARAGRAPH_START
    mFORMATTED_PARAGRAPH_START: function()  {
        try {
            var _type = this.FORMATTED_PARAGRAPH_START;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:280:2: ( ' ' ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> ' ' ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> | ) | ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:280:3: ' ' ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> ' ' ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> | ) | )
            this.match(' '); if (this.state.failed) return ;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:281:2: ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> ' ' ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> | ) | )
            var alt13=3;
            var LA13_0 = this.input.LA(1);

            if ( (LA13_0==' ') && (this.synpred12_Paragraph())) {
                alt13=2;
            }
            else if ( (this.synpred11_Paragraph()) ) {
                alt13=1;
            }
            else if ( (true) ) {
                alt13=3;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 13, 0, this.input);

                throw nvae;
            }
            switch (alt13) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:281:3: ( ( ' ' )* NEW_LINE )=>
                    if ( this.state.backtracking===0 ) {
                      _type = this.LEADING_WHITE_SPACES;
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:2: ( ' ' )=> ' ' ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> | )
                    this.match(' '); if (this.state.failed) return ;
                    if ( this.state.backtracking===0 ) {
                      _type = this.CODE_START;
                    }
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:42: ( ( ( ' ' )* NEW_LINE )=> | ( ' ' )=> | )
                    var alt12=3;
                    var LA12_0 = this.input.LA(1);

                    if ( (this.synpred13_Paragraph()) ) {
                        alt12=1;
                    }
                    else if ( (this.synpred14_Paragraph()) ) {
                        alt12=2;
                    }
                    else if ( (true) ) {
                        alt12=3;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return ;}
                        var nvae =
                            new org.antlr.runtime.NoViableAltException("", 12, 0, this.input);

                        throw nvae;
                    }
                    switch (alt12) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:43: ( ( ' ' )* NEW_LINE )=>
                            if ( this.state.backtracking===0 ) {
                              _type = this.LEADING_WHITE_SPACES;
                            }


                            break;
                        case 2 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:101: ( ' ' )=>
                            if ( this.state.backtracking===0 ) {
                              _type = this.FORMATTED_PARAGRAPH_START;
                            }


                            break;
                        case 3 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:153:

                            break;

                    }



                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:285:2:

                    break;

            }




            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "FORMATTED_PARAGRAPH_START",

    // $ANTLR start ANYTHING
    mANYTHING: function()  {
        try {
            var _type = this.ANYTHING;
            var _channel = org.antlr.runtime.BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:289:2: ( . )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:289:3: .
            this.matchAny(); if (this.state.failed) return ;



            this.state.type = _type;
            this.state.channel = _channel;
        }
        finally {
        }
    },
    // $ANTLR end "ANYTHING",

    mTokens: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:8: ( NEW_LINE | LIST_UNORD_SECOND | LIST_ORD_START | LIST_UNORD_START | IMAGE_START | IMAGE_END | FORMATTED_PARAGRAPH_START | ANYTHING )
        var alt14=8;
        alt14 = this.dfa14.predict(this.input);
        switch (alt14) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:10: NEW_LINE
                this.mNEW_LINE(); if (this.state.failed) return ;


                break;
            case 2 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:19: LIST_UNORD_SECOND
                this.mLIST_UNORD_SECOND(); if (this.state.failed) return ;


                break;
            case 3 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:37: LIST_ORD_START
                this.mLIST_ORD_START(); if (this.state.failed) return ;


                break;
            case 4 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:52: LIST_UNORD_START
                this.mLIST_UNORD_START(); if (this.state.failed) return ;


                break;
            case 5 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:69: IMAGE_START
                this.mIMAGE_START(); if (this.state.failed) return ;


                break;
            case 6 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:81: IMAGE_END
                this.mIMAGE_END(); if (this.state.failed) return ;


                break;
            case 7 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:91: FORMATTED_PARAGRAPH_START
                this.mFORMATTED_PARAGRAPH_START(); if (this.state.failed) return ;


                break;
            case 8 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:1:117: ANYTHING
                this.mANYTHING(); if (this.state.failed) return ;


                break;

        }

    },

    // $ANTLR start "synpred1_Paragraph"
    synpred1_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:222:3: ( EOF )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:222:4: EOF
        this.match(this.EOF); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred1_Paragraph",

    // $ANTLR start "synpred2_Paragraph"
    synpred2_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:237:3: ( '*' ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:237:4: '*' ' '
        this.match('*'); if (this.state.failed) return ;
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred2_Paragraph",

    // $ANTLR start "synpred3_Paragraph"
    synpred3_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:239:2: ( '#' ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:239:3: '#' ' '
        this.match('#'); if (this.state.failed) return ;
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred3_Paragraph",

    // $ANTLR start "synpred4_Paragraph"
    synpred4_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:241:2: ( EOF )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:241:3: EOF
        this.match(this.EOF); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred4_Paragraph",

    // $ANTLR start "synpred5_Paragraph"
    synpred5_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:2: ( ( ' ' )* NEW_LINE )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:3: ( ' ' )* NEW_LINE
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:3: ( ' ' )*
        loop15:
        do {
            var alt15=2;
            var LA15_0 = this.input.LA(1);

            if ( (LA15_0==' ') ) {
                alt15=1;
            }


            switch (alt15) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:3: ' '
                this.match(' '); if (this.state.failed) return ;


                break;

            default :
                break loop15;
            }
        } while (true);

        this.mNEW_LINE(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred5_Paragraph",

    // $ANTLR start "synpred6_Paragraph"
    synpred6_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:36: ( ( ' ' )* NEW_LINE )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:37: ( ' ' )* NEW_LINE
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:37: ( ' ' )*
        loop16:
        do {
            var alt16=2;
            var LA16_0 = this.input.LA(1);

            if ( (LA16_0==' ') ) {
                alt16=1;
            }


            switch (alt16) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:243:37: ' '
                this.match(' '); if (this.state.failed) return ;


                break;

            default :
                break loop16;
            }
        } while (true);

        this.mNEW_LINE(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred6_Paragraph",

    // $ANTLR start "synpred7_Paragraph"
    synpred7_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:252:3: ( ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:252:4: ' '
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred7_Paragraph",

    // $ANTLR start "synpred8_Paragraph"
    synpred8_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:260:3: ( ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:260:4: ' '
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred8_Paragraph",

    // $ANTLR start "synpred9_Paragraph"
    synpred9_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:268:3: ( '<' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:268:4: '<'
        this.match('<'); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred9_Paragraph",

    // $ANTLR start "synpred10_Paragraph"
    synpred10_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:276:3: ( ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:276:4: ' '
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred10_Paragraph",

    // $ANTLR start "synpred11_Paragraph"
    synpred11_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:281:3: ( ( ' ' )* NEW_LINE )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:281:4: ( ' ' )* NEW_LINE
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:281:4: ( ' ' )*
        loop17:
        do {
            var alt17=2;
            var LA17_0 = this.input.LA(1);

            if ( (LA17_0==' ') ) {
                alt17=1;
            }


            switch (alt17) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:281:4: ' '
                this.match(' '); if (this.state.failed) return ;


                break;

            default :
                break loop17;
            }
        } while (true);

        this.mNEW_LINE(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred11_Paragraph",

    // $ANTLR start "synpred12_Paragraph"
    synpred12_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:2: ( ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:3: ' '
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred12_Paragraph",

    // $ANTLR start "synpred13_Paragraph"
    synpred13_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:43: ( ( ' ' )* NEW_LINE )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:44: ( ' ' )* NEW_LINE
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:44: ( ' ' )*
        loop18:
        do {
            var alt18=2;
            var LA18_0 = this.input.LA(1);

            if ( (LA18_0==' ') ) {
                alt18=1;
            }


            switch (alt18) {
            case 1 :
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:44: ' '
                this.match(' '); if (this.state.failed) return ;


                break;

            default :
                break loop18;
            }
        } while (true);

        this.mNEW_LINE(); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred13_Paragraph",

    // $ANTLR start "synpred14_Paragraph"
    synpred14_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:101: ( ' ' )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:283:102: ' '
        this.match(' '); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred14_Paragraph"

    synpred13_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred13_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred5_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred5_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred8_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred8_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred12_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred12_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred14_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred14_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred6_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred6_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred7_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred7_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred4_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred4_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred9_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred9_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred1_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred1_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred2_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred2_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred3_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred3_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred11_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred11_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    },
    synpred10_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred10_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    }
}, true); // important to pass true to overwrite default implementations

org.antlr.lang.augmentObject(ParagraphLexer, {
    DFA14_eotS:
        "\u0001\uffff\u0002\u0009\u0003\uffff\u0001\u0008\u0003\uffff\u0001"+
    "\u0009\u0006\uffff",
    DFA14_eofS:
        "\u0011\uffff",
    DFA14_minS:
        "\u0001\u0000\u0002\u000a\u0003\uffff\u0001\u003e\u0003\uffff\u0001"+
    "\u000a\u0006\uffff",
    DFA14_maxS:
        "\u0001\uffff\u0002\u002a\u0003\uffff\u0001\u003e\u0003\uffff\u0001"+
    "\u002a\u0006\uffff",
    DFA14_acceptS:
        "\u0003\uffff\u0001\u0003\u0001\u0004\u0001\u0005\u0001\uffff\u0001"+
    "\u0007\u0001\u0008\u0001\u0001\u0001\uffff\u0001\u0002\u0001\u0003\u0001"+
    "\u0004\u0001\u0005\u0001\u0006\u0001\u0007",
    DFA14_specialS:
        "\u0001\u0000\u0010\uffff}>",
    DFA14_transitionS: [
            "\u000a\u0008\u0001\u0002\u0002\u0008\u0001\u0001\u0012\u0008"+
            "\u0001\u0007\u0002\u0008\u0001\u0003\u0006\u0008\u0001\u0004"+
            "\u0011\u0008\u0001\u0005\u0001\u0008\u0001\u0006\uffc1\u0008",
            "\u0001\u000a\u0002\uffff\u0001\u000b\u0012\uffff\u0001\u000b"+
            "\u0002\uffff\u0001\u000b\u0006\uffff\u0001\u000b",
            "\u0001\u000b\u0002\uffff\u0001\u000b\u0012\uffff\u0001\u000b"+
            "\u0002\uffff\u0001\u000b\u0006\uffff\u0001\u000b",
            "",
            "",
            "",
            "\u0001\u000f",
            "",
            "",
            "",
            "\u0001\u000b\u0002\uffff\u0001\u000b\u0012\uffff\u0001\u000b"+
            "\u0002\uffff\u0001\u000b\u0006\uffff\u0001\u000b",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(ParagraphLexer, {
    DFA14_eot:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphLexer.DFA14_eotS),
    DFA14_eof:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphLexer.DFA14_eofS),
    DFA14_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphLexer.DFA14_minS),
    DFA14_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphLexer.DFA14_maxS),
    DFA14_accept:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphLexer.DFA14_acceptS),
    DFA14_special:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphLexer.DFA14_specialS),
    DFA14_transition: (function() {
        var a = [],
            i,
            numStates = ParagraphLexer.DFA14_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(ParagraphLexer.DFA14_transitionS[i]));
        }
        return a;
    })()
});

ParagraphLexer.DFA14 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 14;
    this.eot = ParagraphLexer.DFA14_eot;
    this.eof = ParagraphLexer.DFA14_eof;
    this.min = ParagraphLexer.DFA14_min;
    this.max = ParagraphLexer.DFA14_max;
    this.accept = ParagraphLexer.DFA14_accept;
    this.special = ParagraphLexer.DFA14_special;
    this.transition = ParagraphLexer.DFA14_transition;
};

org.antlr.lang.extend(ParagraphLexer.DFA14, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "1:1: Tokens : ( NEW_LINE | LIST_UNORD_SECOND | LIST_ORD_START | LIST_UNORD_START | IMAGE_START | IMAGE_END | FORMATTED_PARAGRAPH_START | ANYTHING );";
    },
    specialStateTransition: function(s, input) {
        var _s = s;
        /* bind to recognizer so semantic predicates can be evaluated */
        var retval = (function(s, input) {
            switch ( s ) {
                        case 0 :
                            var LA14_0 = input.LA(1);

                            s = -1;
                            if ( (LA14_0=='\r') ) {s = 1;}

                            else if ( (LA14_0=='\n') ) {s = 2;}

                            else if ( (LA14_0=='#') ) {s = 3;}

                            else if ( (LA14_0=='*') ) {s = 4;}

                            else if ( (LA14_0=='<') ) {s = 5;}

                            else if ( (LA14_0=='>') ) {s = 6;}

                            else if ( (LA14_0==' ') ) {s = 7;}

                            else if ( ((LA14_0>='\u0000' && LA14_0<='\t')||(LA14_0>='\u000B' && LA14_0<='\f')||(LA14_0>='\u000E' && LA14_0<='\u001F')||(LA14_0>='!' && LA14_0<='\"')||(LA14_0>='$' && LA14_0<=')')||(LA14_0>='+' && LA14_0<=';')||LA14_0=='='||(LA14_0>='?' && LA14_0<='\uFFFF')) ) {s = 8;}

                            if ( s>=0 ) return s;
                            break;
            }
        }).call(this.recognizer, s, input);
        if (!org.antlr.lang.isUndefined(retval)) {
            return retval;
        }
        if (this.recognizer.state.backtracking>0) {this.recognizer.state.failed=true; return -1;}
        var nvae =
            new org.antlr.runtime.NoViableAltException(this.getDescription(), 14, _s, input);
        this.error(nvae);
        throw nvae;
    },
    dummy: null
});

})();// $ANTLR 3.3 Nov 30, 2010 12:46:29 /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g 2013-10-02 14:40:52

var ParagraphParser = function(input, state) {
    if (!state) {
        state = new org.antlr.runtime.RecognizerSharedState();
    }

    (function(){
    }).call(this);

    ParagraphParser.superclass.constructor.call(this, input, state);

    this.dfa5 = new ParagraphParser.DFA5(this);
    this.dfa8 = new ParagraphParser.DFA8(this);
    this.dfa12 = new ParagraphParser.DFA12(this);
    this.dfa14 = new ParagraphParser.DFA14(this);
    this.dfa15 = new ParagraphParser.DFA15(this);



    /* @todo only create adaptor if output=AST */
    this.adaptor = new org.antlr.runtime.tree.CommonTreeAdaptor();

};

org.antlr.lang.augmentObject(ParagraphParser, {
    EOF: -1,
    PARAGRAPHS: 4,
    PARAGRAPH: 5,
    FORMATTED_PARAGRAPH: 6,
    NON_FORMATTED_PARAGRAPH: 7,
    TEXTNODE: 8,
    BULLETED_LIST: 9,
    NUMBERED_LIST: 10,
    LIST_ITEM: 11,
    WHITE_SPACE: 12,
    IMAGE_START: 13,
    IMAGE_BLOCK: 14,
    CODE_BLOCK: 15,
    CODE_START: 16,
    PARAGRAPH_SEPARATOR: 17,
    LIST_ORD_SECOND: 18,
    LEADING_WHITE_SPACES: 19,
    NEW_LINE: 20,
    FORMATTED_PARAGRAPH_START: 21,
    LIST_ORD_START: 22,
    LIST_UNORD_START: 23,
    IMAGE_END: 24,
    LIST_UNORD_SECOND: 25,
    CR: 26,
    LF: 27,
    ANYTHING: 28
});

(function(){
// public class variables
var EOF= -1,
    PARAGRAPHS= 4,
    PARAGRAPH= 5,
    FORMATTED_PARAGRAPH= 6,
    NON_FORMATTED_PARAGRAPH= 7,
    TEXTNODE= 8,
    BULLETED_LIST= 9,
    NUMBERED_LIST= 10,
    LIST_ITEM= 11,
    WHITE_SPACE= 12,
    IMAGE_START= 13,
    IMAGE_BLOCK= 14,
    CODE_BLOCK= 15,
    CODE_START= 16,
    PARAGRAPH_SEPARATOR= 17,
    LIST_ORD_SECOND= 18,
    LEADING_WHITE_SPACES= 19,
    NEW_LINE= 20,
    FORMATTED_PARAGRAPH_START= 21,
    LIST_ORD_START= 22,
    LIST_UNORD_START= 23,
    IMAGE_END= 24,
    LIST_UNORD_SECOND= 25,
    CR= 26,
    LF= 27,
    ANYTHING= 28;

// public instance methods/vars
org.antlr.lang.extend(ParagraphParser, org.antlr.runtime.Parser, {

    setTreeAdaptor: function(adaptor) {
        this.adaptor = adaptor;
    },
    getTreeAdaptor: function() {
        return this.adaptor;
    },

    getTokenNames: function() { return ParagraphParser.tokenNames; },
    getGrammarFileName: function() { return "/local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g"; }
});
org.antlr.lang.augmentObject(ParagraphParser.prototype, {

    // inline static return class
    start_return: (function() {
        ParagraphParser.start_return = function(){};
        org.antlr.lang.extend(ParagraphParser.start_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:30:1: start : blanks paragraphs -> ^( PARAGRAPHS ( paragraphs )? ) ;
    // $ANTLR start "start"
    start: function() {
        var retval = new ParagraphParser.start_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var blanks1 = null;
         var paragraphs2 = null;

        var stream_blanks=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule blanks");
        var stream_paragraphs=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule paragraphs");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:31:2: ( blanks paragraphs -> ^( PARAGRAPHS ( paragraphs )? ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:31:3: blanks paragraphs
            this.pushFollow(ParagraphParser.FOLLOW_blanks_in_start118);
            blanks1=this.blanks();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_blanks.add(blanks1.getTree());
            this.pushFollow(ParagraphParser.FOLLOW_paragraphs_in_start120);
            paragraphs2=this.paragraphs();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_paragraphs.add(paragraphs2.getTree());


            // AST REWRITE
            // elements: paragraphs
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 31:21: -> ^( PARAGRAPHS ( paragraphs )? )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:31:23: ^( PARAGRAPHS ( paragraphs )? )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(PARAGRAPHS, "PARAGRAPHS"), root_1);

                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:31:36: ( paragraphs )?
                if ( stream_paragraphs.hasNext() ) {
                    this.adaptor.addChild(root_1, stream_paragraphs.nextTree());

                }
                stream_paragraphs.reset();

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    blanks_return: (function() {
        ParagraphParser.blanks_return = function(){};
        org.antlr.lang.extend(ParagraphParser.blanks_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:34:1: blanks : ( LEADING_WHITE_SPACES )* ( NEW_LINE | PARAGRAPH_SEPARATOR )? ( PARAGRAPH_SEPARATOR )? ;
    // $ANTLR start "blanks"
    blanks: function() {
        var retval = new ParagraphParser.blanks_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var LEADING_WHITE_SPACES3 = null;
        var set4 = null;
        var PARAGRAPH_SEPARATOR5 = null;

        var LEADING_WHITE_SPACES3_tree=null;
        var set4_tree=null;
        var PARAGRAPH_SEPARATOR5_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:35:2: ( ( LEADING_WHITE_SPACES )* ( NEW_LINE | PARAGRAPH_SEPARATOR )? ( PARAGRAPH_SEPARATOR )? )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:35:4: ( LEADING_WHITE_SPACES )* ( NEW_LINE | PARAGRAPH_SEPARATOR )? ( PARAGRAPH_SEPARATOR )?
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:35:4: ( LEADING_WHITE_SPACES )*
            loop1:
            do {
                var alt1=2;
                var LA1_0 = this.input.LA(1);

                if ( (LA1_0==LEADING_WHITE_SPACES) ) {
                    alt1=1;
                }


                switch (alt1) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:35:4: LEADING_WHITE_SPACES
                    LEADING_WHITE_SPACES3=this.match(this.input,LEADING_WHITE_SPACES,ParagraphParser.FOLLOW_LEADING_WHITE_SPACES_in_blanks140); if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) {
                    LEADING_WHITE_SPACES3_tree = this.adaptor.create(LEADING_WHITE_SPACES3);
                    this.adaptor.addChild(root_0, LEADING_WHITE_SPACES3_tree);
                    }


                    break;

                default :
                    break loop1;
                }
            } while (true);

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:35:26: ( NEW_LINE | PARAGRAPH_SEPARATOR )?
            var alt2=2;
            var LA2_0 = this.input.LA(1);

            if ( (LA2_0==PARAGRAPH_SEPARATOR) ) {
                alt2=1;
            }
            else if ( (LA2_0==NEW_LINE) ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:
                    set4=this.input.LT(1);
                    if ( this.input.LA(1)==PARAGRAPH_SEPARATOR||this.input.LA(1)==NEW_LINE ) {
                        this.input.consume();
                        if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set4));
                        this.state.errorRecovery=false;this.state.failed=false;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:35:58: ( PARAGRAPH_SEPARATOR )?
            var alt3=2;
            var LA3_0 = this.input.LA(1);

            if ( (LA3_0==PARAGRAPH_SEPARATOR) ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:35:58: PARAGRAPH_SEPARATOR
                    PARAGRAPH_SEPARATOR5=this.match(this.input,PARAGRAPH_SEPARATOR,ParagraphParser.FOLLOW_PARAGRAPH_SEPARATOR_in_blanks150); if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) {
                    PARAGRAPH_SEPARATOR5_tree = this.adaptor.create(PARAGRAPH_SEPARATOR5);
                    this.adaptor.addChild(root_0, PARAGRAPH_SEPARATOR5_tree);
                    }


                    break;

            }




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    paragraphs_return: (function() {
        ParagraphParser.paragraphs_return = function(){};
        org.antlr.lang.extend(ParagraphParser.paragraphs_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:38:1: paragraphs : ( paragraph )* ;
    // $ANTLR start "paragraphs"
    paragraphs: function() {
        var retval = new ParagraphParser.paragraphs_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var paragraph6 = null;


        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:39:2: ( ( paragraph )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:39:4: ( paragraph )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:39:4: ( paragraph )*
            loop4:
            do {
                var alt4=2;
                var LA4_0 = this.input.LA(1);

                if ( ((LA4_0>=PARAGRAPHS && LA4_0<=ANYTHING)) ) {
                    alt4=1;
                }


                switch (alt4) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:39:4: paragraph
                    this.pushFollow(ParagraphParser.FOLLOW_paragraph_in_paragraphs162);
                    paragraph6=this.paragraph();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, paragraph6.getTree());


                    break;

                default :
                    break loop4;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    paragraph_return: (function() {
        ParagraphParser.paragraph_return = function(){};
        org.antlr.lang.extend(ParagraphParser.paragraph_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:42:1: paragraph : ( code_block -> code_block | formatted_paragraph -> formatted_paragraph | list_ord -> list_ord | list_unord -> list_unord | image_block ( ( PARAGRAPH_SEPARATOR )=> -> image_block | j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) ) | text_paragraph -> text_paragraph ) ( paragraph_separator )? ;
    // $ANTLR start "paragraph"
    paragraph: function() {
        var retval = new ParagraphParser.paragraph_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var j = null;
         var code_block7 = null;
         var formatted_paragraph8 = null;
         var list_ord9 = null;
         var list_unord10 = null;
         var image_block11 = null;
         var text_paragraph12 = null;
         var paragraph_separator13 = null;

        var stream_paragraph_separator=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule paragraph_separator");
        var stream_image_block=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule image_block");
        var stream_non_formatted_paragraph=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule non_formatted_paragraph");
        var stream_list_unord=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_unord");
        var stream_list_ord=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_ord");
        var stream_formatted_paragraph=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule formatted_paragraph");
        var stream_code_block=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule code_block");
        var stream_text_paragraph=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule text_paragraph");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:43:2: ( ( code_block -> code_block | formatted_paragraph -> formatted_paragraph | list_ord -> list_ord | list_unord -> list_unord | image_block ( ( PARAGRAPH_SEPARATOR )=> -> image_block | j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) ) | text_paragraph -> text_paragraph ) ( paragraph_separator )? )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:44:2: ( code_block -> code_block | formatted_paragraph -> formatted_paragraph | list_ord -> list_ord | list_unord -> list_unord | image_block ( ( PARAGRAPH_SEPARATOR )=> -> image_block | j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) ) | text_paragraph -> text_paragraph ) ( paragraph_separator )?
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:44:2: ( code_block -> code_block | formatted_paragraph -> formatted_paragraph | list_ord -> list_ord | list_unord -> list_unord | image_block ( ( PARAGRAPH_SEPARATOR )=> -> image_block | j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) ) | text_paragraph -> text_paragraph )
            var alt6=6;
            switch ( this.input.LA(1) ) {
            case CODE_START:
                alt6=1;
                break;
            case FORMATTED_PARAGRAPH_START:
                alt6=2;
                break;
            case LIST_ORD_SECOND:
            case LIST_ORD_START:
                alt6=3;
                break;
            case LIST_UNORD_START:
            case LIST_UNORD_SECOND:
                alt6=4;
                break;
            case IMAGE_START:
                alt6=5;
                break;
            case PARAGRAPHS:
            case PARAGRAPH:
            case FORMATTED_PARAGRAPH:
            case NON_FORMATTED_PARAGRAPH:
            case TEXTNODE:
            case BULLETED_LIST:
            case NUMBERED_LIST:
            case LIST_ITEM:
            case WHITE_SPACE:
            case IMAGE_BLOCK:
            case CODE_BLOCK:
            case PARAGRAPH_SEPARATOR:
            case LEADING_WHITE_SPACES:
            case NEW_LINE:
            case IMAGE_END:
            case CR:
            case LF:
            case ANYTHING:
                alt6=6;
                break;
            default:
                if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 6, 0, this.input);

                throw nvae;
            }

            switch (alt6) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:45:2: code_block
                    this.pushFollow(ParagraphParser.FOLLOW_code_block_in_paragraph180);
                    code_block7=this.code_block();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_code_block.add(code_block7.getTree());


                    // AST REWRITE
                    // elements: code_block
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    if ( this.state.backtracking===0 ) {
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 45:13: -> code_block
                    {
                        this.adaptor.addChild(root_0, stream_code_block.nextTree());

                    }

                    retval.tree = root_0;}

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:47:2: formatted_paragraph
                    this.pushFollow(ParagraphParser.FOLLOW_formatted_paragraph_in_paragraph190);
                    formatted_paragraph8=this.formatted_paragraph();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_formatted_paragraph.add(formatted_paragraph8.getTree());


                    // AST REWRITE
                    // elements: formatted_paragraph
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    if ( this.state.backtracking===0 ) {
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 47:22: -> formatted_paragraph
                    {
                        this.adaptor.addChild(root_0, stream_formatted_paragraph.nextTree());

                    }

                    retval.tree = root_0;}

                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:49:2: list_ord
                    this.pushFollow(ParagraphParser.FOLLOW_list_ord_in_paragraph200);
                    list_ord9=this.list_ord();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_list_ord.add(list_ord9.getTree());


                    // AST REWRITE
                    // elements: list_ord
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    if ( this.state.backtracking===0 ) {
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 49:11: -> list_ord
                    {
                        this.adaptor.addChild(root_0, stream_list_ord.nextTree());

                    }

                    retval.tree = root_0;}

                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:51:2: list_unord
                    this.pushFollow(ParagraphParser.FOLLOW_list_unord_in_paragraph210);
                    list_unord10=this.list_unord();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_list_unord.add(list_unord10.getTree());


                    // AST REWRITE
                    // elements: list_unord
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    if ( this.state.backtracking===0 ) {
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 51:13: -> list_unord
                    {
                        this.adaptor.addChild(root_0, stream_list_unord.nextTree());

                    }

                    retval.tree = root_0;}

                    break;
                case 5 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:53:2: image_block ( ( PARAGRAPH_SEPARATOR )=> -> image_block | j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) )
                    this.pushFollow(ParagraphParser.FOLLOW_image_block_in_paragraph220);
                    image_block11=this.image_block();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_image_block.add(image_block11.getTree());
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:54:2: ( ( PARAGRAPH_SEPARATOR )=> -> image_block | j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) )
                    var alt5=2;
                    alt5 = this.dfa5.predict(this.input);
                    switch (alt5) {
                        case 1 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:55:2: ( PARAGRAPH_SEPARATOR )=>

                            // AST REWRITE
                            // elements: image_block
                            // token labels:
                            // rule labels: retval
                            // token list labels:
                            // rule list labels:
                            if ( this.state.backtracking===0 ) {
                            retval.tree = root_0;
                            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                            root_0 = this.adaptor.nil();
                            // 55:27: -> image_block
                            {
                                this.adaptor.addChild(root_0, stream_image_block.nextTree());

                            }

                            retval.tree = root_0;}

                            break;
                        case 2 :
                            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:57:2: j= non_formatted_paragraph
                            this.pushFollow(ParagraphParser.FOLLOW_non_formatted_paragraph_in_paragraph242);
                            j=this.non_formatted_paragraph();

                            this.state._fsp--;
                            if (this.state.failed) return retval;
                            if ( this.state.backtracking===0 ) stream_non_formatted_paragraph.add(j.getTree());


                            // AST REWRITE
                            // elements:
                            // token labels:
                            // rule labels: retval
                            // token list labels:
                            // rule list labels:
                            if ( this.state.backtracking===0 ) {
                            retval.tree = root_0;
                            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                            root_0 = this.adaptor.nil();
                            // 57:28: -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] )
                            {
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:57:31: ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] )
                                {
                                var root_1 = this.adaptor.nil();
                                root_1 = this.adaptor.becomeRoot(this.adaptor.create(NON_FORMATTED_PARAGRAPH, "NON_FORMATTED_PARAGRAPH"), root_1);

                                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, this.input.toString(retval.start,this.input.LT(-1))));

                                this.adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}

                            break;

                    }



                    break;
                case 6 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:60:2: text_paragraph
                    this.pushFollow(ParagraphParser.FOLLOW_text_paragraph_in_paragraph260);
                    text_paragraph12=this.text_paragraph();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_text_paragraph.add(text_paragraph12.getTree());


                    // AST REWRITE
                    // elements: text_paragraph
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    if ( this.state.backtracking===0 ) {
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 60:17: -> text_paragraph
                    {
                        this.adaptor.addChild(root_0, stream_text_paragraph.nextTree());

                    }

                    retval.tree = root_0;}

                    break;

            }

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:62:2: ( paragraph_separator )?
            var alt7=2;
            var LA7_0 = this.input.LA(1);

            if ( (LA7_0==PARAGRAPH_SEPARATOR) ) {
                alt7=1;
            }
            else if ( (LA7_0==EOF) ) {
                var LA7_2 = this.input.LA(2);

                if ( (LA7_2==EOF||(LA7_2>=PARAGRAPHS && LA7_2<=ANYTHING)) ) {
                    alt7=1;
                }
            }
            switch (alt7) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:62:2: paragraph_separator
                    this.pushFollow(ParagraphParser.FOLLOW_paragraph_separator_in_paragraph270);
                    paragraph_separator13=this.paragraph_separator();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_paragraph_separator.add(paragraph_separator13.getTree());


                    break;

            }




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    text_paragraph_return: (function() {
        ParagraphParser.text_paragraph_return = function(){};
        org.antlr.lang.extend(ParagraphParser.text_paragraph_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:72:1: text_paragraph : i= non_formatted_paragraph_start j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) ;
    // $ANTLR start "text_paragraph"
    text_paragraph: function() {
        var retval = new ParagraphParser.text_paragraph_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var i = null;
         var j = null;

        var stream_non_formatted_paragraph_start=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule non_formatted_paragraph_start");
        var stream_non_formatted_paragraph=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule non_formatted_paragraph");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:73:2: (i= non_formatted_paragraph_start j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:73:3: i= non_formatted_paragraph_start j= non_formatted_paragraph
            this.pushFollow(ParagraphParser.FOLLOW_non_formatted_paragraph_start_in_text_paragraph292);
            i=this.non_formatted_paragraph_start();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_non_formatted_paragraph_start.add(i.getTree());
            this.pushFollow(ParagraphParser.FOLLOW_non_formatted_paragraph_in_text_paragraph296);
            j=this.non_formatted_paragraph();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_non_formatted_paragraph.add(j.getTree());


            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 73:61: -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:73:63: ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(NON_FORMATTED_PARAGRAPH, "NON_FORMATTED_PARAGRAPH"), root_1);

                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, this.input.toString(retval.start,this.input.LT(-1))));

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    non_formatted_paragraph_start_return: (function() {
        ParagraphParser.non_formatted_paragraph_start_return = function(){};
        org.antlr.lang.extend(ParagraphParser.non_formatted_paragraph_start_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:76:1: non_formatted_paragraph_start : ~ ( FORMATTED_PARAGRAPH_START | LIST_ORD_START | LIST_UNORD_START | IMAGE_START | CODE_START ) ;
    // $ANTLR start "non_formatted_paragraph_start"
    non_formatted_paragraph_start: function() {
        var retval = new ParagraphParser.non_formatted_paragraph_start_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set14 = null;

        var set14_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:77:2: (~ ( FORMATTED_PARAGRAPH_START | LIST_ORD_START | LIST_UNORD_START | IMAGE_START | CODE_START ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:77:3: ~ ( FORMATTED_PARAGRAPH_START | LIST_ORD_START | LIST_UNORD_START | IMAGE_START | CODE_START )
            root_0 = this.adaptor.nil();

            set14=this.input.LT(1);
            if ( (this.input.LA(1)>=PARAGRAPHS && this.input.LA(1)<=WHITE_SPACE)||(this.input.LA(1)>=IMAGE_BLOCK && this.input.LA(1)<=CODE_BLOCK)||(this.input.LA(1)>=PARAGRAPH_SEPARATOR && this.input.LA(1)<=NEW_LINE)||(this.input.LA(1)>=IMAGE_END && this.input.LA(1)<=ANYTHING) ) {
                this.input.consume();
                if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set14));
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                throw mse;
            }




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    non_formatted_paragraph_return: (function() {
        ParagraphParser.non_formatted_paragraph_return = function(){};
        org.antlr.lang.extend(ParagraphParser.non_formatted_paragraph_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:81:1: non_formatted_paragraph : (~ ( PARAGRAPH_SEPARATOR | EOF ) )* ;
    // $ANTLR start "non_formatted_paragraph"
    non_formatted_paragraph: function() {
        var retval = new ParagraphParser.non_formatted_paragraph_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set15 = null;

        var set15_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:82:2: ( (~ ( PARAGRAPH_SEPARATOR | EOF ) )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:82:3: (~ ( PARAGRAPH_SEPARATOR | EOF ) )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:82:3: (~ ( PARAGRAPH_SEPARATOR | EOF ) )*
            loop8:
            do {
                var alt8=2;
                alt8 = this.dfa8.predict(this.input);
                switch (alt8) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:82:4: ~ ( PARAGRAPH_SEPARATOR | EOF )
                    set15=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPHS && this.input.LA(1)<=CODE_START)||(this.input.LA(1)>=LIST_ORD_SECOND && this.input.LA(1)<=ANYTHING) ) {
                        this.input.consume();
                        if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set15));
                        this.state.errorRecovery=false;this.state.failed=false;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    break loop8;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    code_block_return: (function() {
        ParagraphParser.code_block_return = function(){};
        org.antlr.lang.extend(ParagraphParser.code_block_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:91:1: code_block : CODE_START code_content ( code_contents )* -> ^( CODE_BLOCK TEXTNODE[$text+\"\\r\\n\"] ) ;
    // $ANTLR start "code_block"
    code_block: function() {
        var retval = new ParagraphParser.code_block_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var CODE_START16 = null;
         var code_content17 = null;
         var code_contents18 = null;

        var CODE_START16_tree=null;
        var stream_CODE_START=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token CODE_START");
        var stream_code_contents=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule code_contents");
        var stream_code_content=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule code_content");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:92:2: ( CODE_START code_content ( code_contents )* -> ^( CODE_BLOCK TEXTNODE[$text+\"\\r\\n\"] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:92:5: CODE_START code_content ( code_contents )*
            CODE_START16=this.match(this.input,CODE_START,ParagraphParser.FOLLOW_CODE_START_in_code_block366); if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_CODE_START.add(CODE_START16);

            if ( this.state.backtracking===0 ) {
              CODE_START16.setText("");
            }
            this.pushFollow(ParagraphParser.FOLLOW_code_content_in_code_block369);
            code_content17=this.code_content();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_code_content.add(code_content17.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:92:55: ( code_contents )*
            loop9:
            do {
                var alt9=2;
                var LA9_0 = this.input.LA(1);

                if ( (LA9_0==NEW_LINE) ) {
                    alt9=1;
                }


                switch (alt9) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:92:55: code_contents
                    this.pushFollow(ParagraphParser.FOLLOW_code_contents_in_code_block371);
                    code_contents18=this.code_contents();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_code_contents.add(code_contents18.getTree());


                    break;

                default :
                    break loop9;
                }
            } while (true);



            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 92:70: -> ^( CODE_BLOCK TEXTNODE[$text+\"\\r\\n\"] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:92:73: ^( CODE_BLOCK TEXTNODE[$text+\"\\r\\n\"] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(CODE_BLOCK, "CODE_BLOCK"), root_1);

                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, this.input.toString(retval.start,this.input.LT(-1))+"\r\n"));

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    code_contents_return: (function() {
        ParagraphParser.code_contents_return = function(){};
        org.antlr.lang.extend(ParagraphParser.code_contents_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:95:1: code_contents : NEW_LINE ( code_contents_start )? code_content ;
    // $ANTLR start "code_contents"
    code_contents: function() {
        var retval = new ParagraphParser.code_contents_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var NEW_LINE19 = null;
         var code_contents_start20 = null;
         var code_content21 = null;

        var NEW_LINE19_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:96:2: ( NEW_LINE ( code_contents_start )? code_content )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:96:4: NEW_LINE ( code_contents_start )? code_content
            root_0 = this.adaptor.nil();

            NEW_LINE19=this.match(this.input,NEW_LINE,ParagraphParser.FOLLOW_NEW_LINE_in_code_contents394); if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) {
            NEW_LINE19_tree = this.adaptor.create(NEW_LINE19);
            this.adaptor.addChild(root_0, NEW_LINE19_tree);
            }
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:96:13: ( code_contents_start )?
            var alt10=2;
            var LA10_0 = this.input.LA(1);

            if ( (LA10_0==FORMATTED_PARAGRAPH_START) ) {
                alt10=1;
            }
            else if ( (LA10_0==CODE_START) ) {
                alt10=1;
            }
            switch (alt10) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:96:13: code_contents_start
                    this.pushFollow(ParagraphParser.FOLLOW_code_contents_start_in_code_contents396);
                    code_contents_start20=this.code_contents_start();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, code_contents_start20.getTree());


                    break;

            }

            this.pushFollow(ParagraphParser.FOLLOW_code_content_in_code_contents399);
            code_content21=this.code_content();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, code_content21.getTree());



            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    code_contents_start_return: (function() {
        ParagraphParser.code_contents_start_return = function(){};
        org.antlr.lang.extend(ParagraphParser.code_contents_start_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:99:1: code_contents_start : ( FORMATTED_PARAGRAPH_START | CODE_START ) ;
    // $ANTLR start "code_contents_start"
    code_contents_start: function() {
        var retval = new ParagraphParser.code_contents_start_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var FORMATTED_PARAGRAPH_START22 = null;
        var CODE_START23 = null;

        var FORMATTED_PARAGRAPH_START22_tree=null;
        var CODE_START23_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:100:2: ( ( FORMATTED_PARAGRAPH_START | CODE_START ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:100:3: ( FORMATTED_PARAGRAPH_START | CODE_START )
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:100:3: ( FORMATTED_PARAGRAPH_START | CODE_START )
            var alt11=2;
            var LA11_0 = this.input.LA(1);

            if ( (LA11_0==FORMATTED_PARAGRAPH_START) ) {
                alt11=1;
            }
            else if ( (LA11_0==CODE_START) ) {
                alt11=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 11, 0, this.input);

                throw nvae;
            }
            switch (alt11) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:100:4: FORMATTED_PARAGRAPH_START
                    FORMATTED_PARAGRAPH_START22=this.match(this.input,FORMATTED_PARAGRAPH_START,ParagraphParser.FOLLOW_FORMATTED_PARAGRAPH_START_in_code_contents_start411); if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) {
                    FORMATTED_PARAGRAPH_START22_tree = this.adaptor.create(FORMATTED_PARAGRAPH_START22);
                    this.adaptor.addChild(root_0, FORMATTED_PARAGRAPH_START22_tree);
                    }
                    if ( this.state.backtracking===0 ) {
                      FORMATTED_PARAGRAPH_START22.setText("");
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:100:71: CODE_START
                    CODE_START23=this.match(this.input,CODE_START,ParagraphParser.FOLLOW_CODE_START_in_code_contents_start414); if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) {
                    CODE_START23_tree = this.adaptor.create(CODE_START23);
                    this.adaptor.addChild(root_0, CODE_START23_tree);
                    }
                    if ( this.state.backtracking===0 ) {
                      CODE_START23.setText("");
                    }


                    break;

            }




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    code_content_return: (function() {
        ParagraphParser.code_content_return = function(){};
        org.antlr.lang.extend(ParagraphParser.code_content_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:103:1: code_content : (~ ( PARAGRAPH_SEPARATOR | NEW_LINE | EOF ) )* ;
    // $ANTLR start "code_content"
    code_content: function() {
        var retval = new ParagraphParser.code_content_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set24 = null;

        var set24_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:104:2: ( (~ ( PARAGRAPH_SEPARATOR | NEW_LINE | EOF ) )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:104:4: (~ ( PARAGRAPH_SEPARATOR | NEW_LINE | EOF ) )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:104:4: (~ ( PARAGRAPH_SEPARATOR | NEW_LINE | EOF ) )*
            loop12:
            do {
                var alt12=2;
                alt12 = this.dfa12.predict(this.input);
                switch (alt12) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:104:5: ~ ( PARAGRAPH_SEPARATOR | NEW_LINE | EOF )
                    set24=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPHS && this.input.LA(1)<=CODE_START)||(this.input.LA(1)>=LIST_ORD_SECOND && this.input.LA(1)<=LEADING_WHITE_SPACES)||(this.input.LA(1)>=FORMATTED_PARAGRAPH_START && this.input.LA(1)<=ANYTHING) ) {
                        this.input.consume();
                        if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set24));
                        this.state.errorRecovery=false;this.state.failed=false;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    break loop12;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    image_block_return: (function() {
        ParagraphParser.image_block_return = function(){};
        org.antlr.lang.extend(ParagraphParser.image_block_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:113:1: image_block : IMAGE_START image_content ( IMAGE_END -> ^( IMAGE_BLOCK TEXTNODE[$image_content.text] ) | -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) ) ;
    // $ANTLR start "image_block"
    image_block: function() {
        var retval = new ParagraphParser.image_block_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var IMAGE_START25 = null;
        var IMAGE_END27 = null;
         var image_content26 = null;

        var IMAGE_START25_tree=null;
        var IMAGE_END27_tree=null;
        var stream_IMAGE_START=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token IMAGE_START");
        var stream_IMAGE_END=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token IMAGE_END");
        var stream_image_content=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule image_content");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:114:2: ( IMAGE_START image_content ( IMAGE_END -> ^( IMAGE_BLOCK TEXTNODE[$image_content.text] ) | -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:114:3: IMAGE_START image_content ( IMAGE_END -> ^( IMAGE_BLOCK TEXTNODE[$image_content.text] ) | -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) )
            IMAGE_START25=this.match(this.input,IMAGE_START,ParagraphParser.FOLLOW_IMAGE_START_in_image_block455); if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_IMAGE_START.add(IMAGE_START25);

            this.pushFollow(ParagraphParser.FOLLOW_image_content_in_image_block457);
            image_content26=this.image_content();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_image_content.add(image_content26.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:115:2: ( IMAGE_END -> ^( IMAGE_BLOCK TEXTNODE[$image_content.text] ) | -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) )
            var alt13=2;
            var LA13_0 = this.input.LA(1);

            if ( (LA13_0==IMAGE_END) ) {
                alt13=1;
            }
            else if ( (LA13_0==EOF||(LA13_0>=PARAGRAPHS && LA13_0<=LIST_UNORD_START)||(LA13_0>=LIST_UNORD_SECOND && LA13_0<=ANYTHING)) ) {
                alt13=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 13, 0, this.input);

                throw nvae;
            }
            switch (alt13) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:116:2: IMAGE_END
                    IMAGE_END27=this.match(this.input,IMAGE_END,ParagraphParser.FOLLOW_IMAGE_END_in_image_block463); if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_IMAGE_END.add(IMAGE_END27);



                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    if ( this.state.backtracking===0 ) {
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 116:12: -> ^( IMAGE_BLOCK TEXTNODE[$image_content.text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:116:15: ^( IMAGE_BLOCK TEXTNODE[$image_content.text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(IMAGE_BLOCK, "IMAGE_BLOCK"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (image_content26?this.input.toString(image_content26.start,image_content26.stop):null)));

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}

                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:118:2:

                    // AST REWRITE
                    // elements:
                    // token labels:
                    // rule labels: retval
                    // token list labels:
                    // rule list labels:
                    if ( this.state.backtracking===0 ) {
                    retval.tree = root_0;
                    var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

                    root_0 = this.adaptor.nil();
                    // 118:2: -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] )
                    {
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:118:5: ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] )
                        {
                        var root_1 = this.adaptor.nil();
                        root_1 = this.adaptor.becomeRoot(this.adaptor.create(NON_FORMATTED_PARAGRAPH, "NON_FORMATTED_PARAGRAPH"), root_1);

                        this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, this.input.toString(retval.start,this.input.LT(-1))));

                        this.adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}

                    break;

            }




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    image_content_return: (function() {
        ParagraphParser.image_content_return = function(){};
        org.antlr.lang.extend(ParagraphParser.image_content_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:122:1: image_content : (~ ( IMAGE_END | PARAGRAPH_SEPARATOR | EOF ) )* ;
    // $ANTLR start "image_content"
    image_content: function() {
        var retval = new ParagraphParser.image_content_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set28 = null;

        var set28_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:123:2: ( (~ ( IMAGE_END | PARAGRAPH_SEPARATOR | EOF ) )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:123:3: (~ ( IMAGE_END | PARAGRAPH_SEPARATOR | EOF ) )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:123:3: (~ ( IMAGE_END | PARAGRAPH_SEPARATOR | EOF ) )*
            loop14:
            do {
                var alt14=2;
                alt14 = this.dfa14.predict(this.input);
                switch (alt14) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:123:3: ~ ( IMAGE_END | PARAGRAPH_SEPARATOR | EOF )
                    set28=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPHS && this.input.LA(1)<=CODE_START)||(this.input.LA(1)>=LIST_ORD_SECOND && this.input.LA(1)<=LIST_UNORD_START)||(this.input.LA(1)>=LIST_UNORD_SECOND && this.input.LA(1)<=ANYTHING) ) {
                        this.input.consume();
                        if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set28));
                        this.state.errorRecovery=false;this.state.failed=false;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    break loop14;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    formatted_paragraph_return: (function() {
        ParagraphParser.formatted_paragraph_return = function(){};
        org.antlr.lang.extend(ParagraphParser.formatted_paragraph_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:132:1: formatted_paragraph : formatted_paragraph_open formatted_paragraph_content -> ^( FORMATTED_PARAGRAPH TEXTNODE[$text] ) ;
    // $ANTLR start "formatted_paragraph"
    formatted_paragraph: function() {
        var retval = new ParagraphParser.formatted_paragraph_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var formatted_paragraph_open29 = null;
         var formatted_paragraph_content30 = null;

        var stream_formatted_paragraph_content=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule formatted_paragraph_content");
        var stream_formatted_paragraph_open=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule formatted_paragraph_open");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:133:2: ( formatted_paragraph_open formatted_paragraph_content -> ^( FORMATTED_PARAGRAPH TEXTNODE[$text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:133:3: formatted_paragraph_open formatted_paragraph_content
            this.pushFollow(ParagraphParser.FOLLOW_formatted_paragraph_open_in_formatted_paragraph524);
            formatted_paragraph_open29=this.formatted_paragraph_open();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_formatted_paragraph_open.add(formatted_paragraph_open29.getTree());
            this.pushFollow(ParagraphParser.FOLLOW_formatted_paragraph_content_in_formatted_paragraph526);
            formatted_paragraph_content30=this.formatted_paragraph_content();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_formatted_paragraph_content.add(formatted_paragraph_content30.getTree());


            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 133:56: -> ^( FORMATTED_PARAGRAPH TEXTNODE[$text] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:133:59: ^( FORMATTED_PARAGRAPH TEXTNODE[$text] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(FORMATTED_PARAGRAPH, "FORMATTED_PARAGRAPH"), root_1);

                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, this.input.toString(retval.start,this.input.LT(-1))));

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    formatted_paragraph_open_return: (function() {
        ParagraphParser.formatted_paragraph_open_return = function(){};
        org.antlr.lang.extend(ParagraphParser.formatted_paragraph_open_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:136:1: formatted_paragraph_open : formatted_paragraph_open_markup ;
    // $ANTLR start "formatted_paragraph_open"
    formatted_paragraph_open: function() {
        var retval = new ParagraphParser.formatted_paragraph_open_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var formatted_paragraph_open_markup31 = null;


        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:137:2: ( formatted_paragraph_open_markup )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:137:4: formatted_paragraph_open_markup
            root_0 = this.adaptor.nil();

            this.pushFollow(ParagraphParser.FOLLOW_formatted_paragraph_open_markup_in_formatted_paragraph_open547);
            formatted_paragraph_open_markup31=this.formatted_paragraph_open_markup();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, formatted_paragraph_open_markup31.getTree());



            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    formatted_paragraph_open_markup_return: (function() {
        ParagraphParser.formatted_paragraph_open_markup_return = function(){};
        org.antlr.lang.extend(ParagraphParser.formatted_paragraph_open_markup_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:140:1: formatted_paragraph_open_markup : FORMATTED_PARAGRAPH_START ;
    // $ANTLR start "formatted_paragraph_open_markup"
    formatted_paragraph_open_markup: function() {
        var retval = new ParagraphParser.formatted_paragraph_open_markup_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var FORMATTED_PARAGRAPH_START32 = null;

        var FORMATTED_PARAGRAPH_START32_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:141:2: ( FORMATTED_PARAGRAPH_START )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:141:4: FORMATTED_PARAGRAPH_START
            root_0 = this.adaptor.nil();

            FORMATTED_PARAGRAPH_START32=this.match(this.input,FORMATTED_PARAGRAPH_START,ParagraphParser.FOLLOW_FORMATTED_PARAGRAPH_START_in_formatted_paragraph_open_markup558); if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) {
            FORMATTED_PARAGRAPH_START32_tree = this.adaptor.create(FORMATTED_PARAGRAPH_START32);
            this.adaptor.addChild(root_0, FORMATTED_PARAGRAPH_START32_tree);
            }



            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    formatted_paragraph_content_return: (function() {
        ParagraphParser.formatted_paragraph_content_return = function(){};
        org.antlr.lang.extend(ParagraphParser.formatted_paragraph_content_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:144:1: formatted_paragraph_content : (~ ( PARAGRAPH_SEPARATOR | EOF ) )* ;
    // $ANTLR start "formatted_paragraph_content"
    formatted_paragraph_content: function() {
        var retval = new ParagraphParser.formatted_paragraph_content_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set33 = null;

        var set33_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:145:2: ( (~ ( PARAGRAPH_SEPARATOR | EOF ) )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:145:3: (~ ( PARAGRAPH_SEPARATOR | EOF ) )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:145:3: (~ ( PARAGRAPH_SEPARATOR | EOF ) )*
            loop15:
            do {
                var alt15=2;
                alt15 = this.dfa15.predict(this.input);
                switch (alt15) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:145:3: ~ ( PARAGRAPH_SEPARATOR | EOF )
                    set33=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPHS && this.input.LA(1)<=CODE_START)||(this.input.LA(1)>=LIST_ORD_SECOND && this.input.LA(1)<=ANYTHING) ) {
                        this.input.consume();
                        if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set33));
                        this.state.errorRecovery=false;this.state.failed=false;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    break loop15;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_ord_return: (function() {
        ParagraphParser.list_ord_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_ord_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:153:1: list_ord : list_ord_open content= list_ord_elem list_ord_elems -> ^( NUMBERED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_ord_elems )? ) ;
    // $ANTLR start "list_ord"
    list_ord: function() {
        var retval = new ParagraphParser.list_ord_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var content = null;
         var list_ord_open34 = null;
         var list_ord_elems35 = null;

        var stream_list_ord_elem=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_ord_elem");
        var stream_list_ord_elems=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_ord_elems");
        var stream_list_ord_open=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_ord_open");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:154:2: ( list_ord_open content= list_ord_elem list_ord_elems -> ^( NUMBERED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_ord_elems )? ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:154:3: list_ord_open content= list_ord_elem list_ord_elems
            this.pushFollow(ParagraphParser.FOLLOW_list_ord_open_in_list_ord590);
            list_ord_open34=this.list_ord_open();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_ord_open.add(list_ord_open34.getTree());
            this.pushFollow(ParagraphParser.FOLLOW_list_ord_elem_in_list_ord595);
            content=this.list_ord_elem();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_ord_elem.add(content.getTree());
            this.pushFollow(ParagraphParser.FOLLOW_list_ord_elems_in_list_ord597);
            list_ord_elems35=this.list_ord_elems();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_ord_elems.add(list_ord_elems35.getTree());


            // AST REWRITE
            // elements: list_ord_elems
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 154:56: -> ^( NUMBERED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_ord_elems )? )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:154:59: ^( NUMBERED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_ord_elems )? )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(NUMBERED_LIST, "NUMBERED_LIST"), root_1);

                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:154:75: ^( LIST_ITEM TEXTNODE[$content.text] )
                {
                var root_2 = this.adaptor.nil();
                root_2 = this.adaptor.becomeRoot(this.adaptor.create(LIST_ITEM, "LIST_ITEM"), root_2);

                this.adaptor.addChild(root_2, this.adaptor.create(TEXTNODE, (content?this.input.toString(content.start,content.stop):null)));

                this.adaptor.addChild(root_1, root_2);
                }
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:154:112: ( list_ord_elems )?
                if ( stream_list_ord_elems.hasNext() ) {
                    this.adaptor.addChild(root_1, stream_list_ord_elems.nextTree());

                }
                stream_list_ord_elems.reset();

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_ord_open_return: (function() {
        ParagraphParser.list_ord_open_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_ord_open_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:157:1: list_ord_open : list_ord_start ;
    // $ANTLR start "list_ord_open"
    list_ord_open: function() {
        var retval = new ParagraphParser.list_ord_open_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var list_ord_start36 = null;


        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:158:2: ( list_ord_start )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:158:3: list_ord_start
            root_0 = this.adaptor.nil();

            this.pushFollow(ParagraphParser.FOLLOW_list_ord_start_in_list_ord_open625);
            list_ord_start36=this.list_ord_start();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, list_ord_start36.getTree());



            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_ord_start_return: (function() {
        ParagraphParser.list_ord_start_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_ord_start_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:161:1: list_ord_start : ( LIST_ORD_START | LIST_ORD_SECOND );
    // $ANTLR start "list_ord_start"
    list_ord_start: function() {
        var retval = new ParagraphParser.list_ord_start_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set37 = null;

        var set37_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:162:2: ( LIST_ORD_START | LIST_ORD_SECOND )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:
            root_0 = this.adaptor.nil();

            set37=this.input.LT(1);
            if ( this.input.LA(1)==LIST_ORD_SECOND||this.input.LA(1)==LIST_ORD_START ) {
                this.input.consume();
                if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set37));
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                throw mse;
            }




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_ord_elem_return: (function() {
        ParagraphParser.list_ord_elem_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_ord_elem_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:165:1: list_ord_elem : (~ ( LIST_ORD_SECOND | PARAGRAPH_SEPARATOR ) )* ;
    // $ANTLR start "list_ord_elem"
    list_ord_elem: function() {
        var retval = new ParagraphParser.list_ord_elem_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set38 = null;

        var set38_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:166:2: ( (~ ( LIST_ORD_SECOND | PARAGRAPH_SEPARATOR ) )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:166:3: (~ ( LIST_ORD_SECOND | PARAGRAPH_SEPARATOR ) )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:166:3: (~ ( LIST_ORD_SECOND | PARAGRAPH_SEPARATOR ) )*
            loop16:
            do {
                var alt16=2;
                switch ( this.input.LA(1) ) {
                case CODE_START:
                    alt16=1;
                    break;
                case FORMATTED_PARAGRAPH_START:
                    alt16=1;
                    break;
                case LIST_ORD_START:
                    alt16=1;
                    break;
                case LIST_UNORD_SECOND:
                    alt16=1;
                    break;
                case IMAGE_START:
                    alt16=1;
                    break;
                case LIST_UNORD_START:
                    alt16=1;
                    break;
                case PARAGRAPHS:
                case PARAGRAPH:
                case FORMATTED_PARAGRAPH:
                case NON_FORMATTED_PARAGRAPH:
                case TEXTNODE:
                case BULLETED_LIST:
                case NUMBERED_LIST:
                case LIST_ITEM:
                case WHITE_SPACE:
                case IMAGE_BLOCK:
                case CODE_BLOCK:
                case LEADING_WHITE_SPACES:
                case NEW_LINE:
                case IMAGE_END:
                case CR:
                case LF:
                case ANYTHING:
                    alt16=1;
                    break;

                }

                switch (alt16) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:166:3: ~ ( LIST_ORD_SECOND | PARAGRAPH_SEPARATOR )
                    set38=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPHS && this.input.LA(1)<=CODE_START)||(this.input.LA(1)>=LEADING_WHITE_SPACES && this.input.LA(1)<=ANYTHING) ) {
                        this.input.consume();
                        if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set38));
                        this.state.errorRecovery=false;this.state.failed=false;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    break loop16;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_ord_elems_return: (function() {
        ParagraphParser.list_ord_elems_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_ord_elems_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:169:1: list_ord_elems : ( list_ord_element )* ;
    // $ANTLR start "list_ord_elems"
    list_ord_elems: function() {
        var retval = new ParagraphParser.list_ord_elems_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var list_ord_element39 = null;


        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:170:2: ( ( list_ord_element )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:170:3: ( list_ord_element )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:170:3: ( list_ord_element )*
            loop17:
            do {
                var alt17=2;
                var LA17_0 = this.input.LA(1);

                if ( (LA17_0==LIST_ORD_SECOND) ) {
                    alt17=1;
                }


                switch (alt17) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:170:3: list_ord_element
                    this.pushFollow(ParagraphParser.FOLLOW_list_ord_element_in_list_ord_elems668);
                    list_ord_element39=this.list_ord_element();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, list_ord_element39.getTree());


                    break;

                default :
                    break loop17;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_ord_element_return: (function() {
        ParagraphParser.list_ord_element_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_ord_element_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:173:1: list_ord_element : ( LIST_ORD_SECOND content= list_ord_elem ) -> ^( LIST_ITEM TEXTNODE[$content.text] ) ;
    // $ANTLR start "list_ord_element"
    list_ord_element: function() {
        var retval = new ParagraphParser.list_ord_element_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var LIST_ORD_SECOND40 = null;
         var content = null;

        var LIST_ORD_SECOND40_tree=null;
        var stream_LIST_ORD_SECOND=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token LIST_ORD_SECOND");
        var stream_list_ord_elem=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_ord_elem");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:174:2: ( ( LIST_ORD_SECOND content= list_ord_elem ) -> ^( LIST_ITEM TEXTNODE[$content.text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:174:3: ( LIST_ORD_SECOND content= list_ord_elem )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:174:3: ( LIST_ORD_SECOND content= list_ord_elem )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:174:4: LIST_ORD_SECOND content= list_ord_elem
            LIST_ORD_SECOND40=this.match(this.input,LIST_ORD_SECOND,ParagraphParser.FOLLOW_LIST_ORD_SECOND_in_list_ord_element682); if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_LIST_ORD_SECOND.add(LIST_ORD_SECOND40);

            this.pushFollow(ParagraphParser.FOLLOW_list_ord_elem_in_list_ord_element688);
            content=this.list_ord_elem();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_ord_elem.add(content.getTree());





            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 174:45: -> ^( LIST_ITEM TEXTNODE[$content.text] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:174:48: ^( LIST_ITEM TEXTNODE[$content.text] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(LIST_ITEM, "LIST_ITEM"), root_1);

                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (content?this.input.toString(content.start,content.stop):null)));

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_unord_return: (function() {
        ParagraphParser.list_unord_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_unord_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:181:1: list_unord : list_unord_open content= list_unord_elem list_unord_elems ( paragraph_separator )? -> ^( BULLETED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_unord_elems )? ) ;
    // $ANTLR start "list_unord"
    list_unord: function() {
        var retval = new ParagraphParser.list_unord_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var content = null;
         var list_unord_open41 = null;
         var list_unord_elems42 = null;
         var paragraph_separator43 = null;

        var stream_paragraph_separator=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule paragraph_separator");
        var stream_list_unord_elem=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_unord_elem");
        var stream_list_unord_elems=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_unord_elems");
        var stream_list_unord_open=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_unord_open");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:182:2: ( list_unord_open content= list_unord_elem list_unord_elems ( paragraph_separator )? -> ^( BULLETED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_unord_elems )? ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:182:3: list_unord_open content= list_unord_elem list_unord_elems ( paragraph_separator )?
            this.pushFollow(ParagraphParser.FOLLOW_list_unord_open_in_list_unord712);
            list_unord_open41=this.list_unord_open();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_unord_open.add(list_unord_open41.getTree());
            this.pushFollow(ParagraphParser.FOLLOW_list_unord_elem_in_list_unord718);
            content=this.list_unord_elem();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_unord_elem.add(content.getTree());
            this.pushFollow(ParagraphParser.FOLLOW_list_unord_elems_in_list_unord720);
            list_unord_elems42=this.list_unord_elems();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_unord_elems.add(list_unord_elems42.getTree());
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:182:62: ( paragraph_separator )?
            var alt18=2;
            var LA18_0 = this.input.LA(1);

            if ( (LA18_0==PARAGRAPH_SEPARATOR) ) {
                alt18=1;
            }
            else if ( (LA18_0==EOF) ) {
                alt18=1;
            }
            switch (alt18) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:182:62: paragraph_separator
                    this.pushFollow(ParagraphParser.FOLLOW_paragraph_separator_in_list_unord722);
                    paragraph_separator43=this.paragraph_separator();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) stream_paragraph_separator.add(paragraph_separator43.getTree());


                    break;

            }



            // AST REWRITE
            // elements: list_unord_elems
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 182:83: -> ^( BULLETED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_unord_elems )? )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:182:86: ^( BULLETED_LIST ^( LIST_ITEM TEXTNODE[$content.text] ) ( list_unord_elems )? )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(BULLETED_LIST, "BULLETED_LIST"), root_1);

                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:182:102: ^( LIST_ITEM TEXTNODE[$content.text] )
                {
                var root_2 = this.adaptor.nil();
                root_2 = this.adaptor.becomeRoot(this.adaptor.create(LIST_ITEM, "LIST_ITEM"), root_2);

                this.adaptor.addChild(root_2, this.adaptor.create(TEXTNODE, (content?this.input.toString(content.start,content.stop):null)));

                this.adaptor.addChild(root_1, root_2);
                }
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:182:139: ( list_unord_elems )?
                if ( stream_list_unord_elems.hasNext() ) {
                    this.adaptor.addChild(root_1, stream_list_unord_elems.nextTree());

                }
                stream_list_unord_elems.reset();

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_unord_elems_return: (function() {
        ParagraphParser.list_unord_elems_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_unord_elems_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:185:1: list_unord_elems : ( list_unord_element )* ;
    // $ANTLR start "list_unord_elems"
    list_unord_elems: function() {
        var retval = new ParagraphParser.list_unord_elems_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var list_unord_element44 = null;


        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:186:2: ( ( list_unord_element )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:186:3: ( list_unord_element )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:186:3: ( list_unord_element )*
            loop19:
            do {
                var alt19=2;
                var LA19_0 = this.input.LA(1);

                if ( (LA19_0==LIST_UNORD_SECOND) ) {
                    alt19=1;
                }


                switch (alt19) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:186:3: list_unord_element
                    this.pushFollow(ParagraphParser.FOLLOW_list_unord_element_in_list_unord_elems749);
                    list_unord_element44=this.list_unord_element();

                    this.state._fsp--;
                    if (this.state.failed) return retval;
                    if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, list_unord_element44.getTree());


                    break;

                default :
                    break loop19;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_unord_element_return: (function() {
        ParagraphParser.list_unord_element_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_unord_element_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:189:1: list_unord_element : ( LIST_UNORD_SECOND content= list_unord_elem ) -> ^( LIST_ITEM TEXTNODE[$content.text] ) ;
    // $ANTLR start "list_unord_element"
    list_unord_element: function() {
        var retval = new ParagraphParser.list_unord_element_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var LIST_UNORD_SECOND45 = null;
         var content = null;

        var LIST_UNORD_SECOND45_tree=null;
        var stream_LIST_UNORD_SECOND=new org.antlr.runtime.tree.RewriteRuleTokenStream(this.adaptor,"token LIST_UNORD_SECOND");
        var stream_list_unord_elem=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"rule list_unord_elem");
        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:190:2: ( ( LIST_UNORD_SECOND content= list_unord_elem ) -> ^( LIST_ITEM TEXTNODE[$content.text] ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:190:3: ( LIST_UNORD_SECOND content= list_unord_elem )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:190:3: ( LIST_UNORD_SECOND content= list_unord_elem )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:190:4: LIST_UNORD_SECOND content= list_unord_elem
            LIST_UNORD_SECOND45=this.match(this.input,LIST_UNORD_SECOND,ParagraphParser.FOLLOW_LIST_UNORD_SECOND_in_list_unord_element762); if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_LIST_UNORD_SECOND.add(LIST_UNORD_SECOND45);

            this.pushFollow(ParagraphParser.FOLLOW_list_unord_elem_in_list_unord_element768);
            content=this.list_unord_elem();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) stream_list_unord_elem.add(content.getTree());





            // AST REWRITE
            // elements:
            // token labels:
            // rule labels: retval
            // token list labels:
            // rule list labels:
            if ( this.state.backtracking===0 ) {
            retval.tree = root_0;
            var stream_retval=new org.antlr.runtime.tree.RewriteRuleSubtreeStream(this.adaptor,"token retval",retval!=null?retval.tree:null);

            root_0 = this.adaptor.nil();
            // 190:49: -> ^( LIST_ITEM TEXTNODE[$content.text] )
            {
                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:190:52: ^( LIST_ITEM TEXTNODE[$content.text] )
                {
                var root_1 = this.adaptor.nil();
                root_1 = this.adaptor.becomeRoot(this.adaptor.create(LIST_ITEM, "LIST_ITEM"), root_1);

                this.adaptor.addChild(root_1, this.adaptor.create(TEXTNODE, (content?this.input.toString(content.start,content.stop):null)));

                this.adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}


            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_unord_elem_return: (function() {
        ParagraphParser.list_unord_elem_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_unord_elem_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:193:1: list_unord_elem : (~ ( LIST_UNORD_SECOND | PARAGRAPH_SEPARATOR ) )* ;
    // $ANTLR start "list_unord_elem"
    list_unord_elem: function() {
        var retval = new ParagraphParser.list_unord_elem_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set46 = null;

        var set46_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:194:2: ( (~ ( LIST_UNORD_SECOND | PARAGRAPH_SEPARATOR ) )* )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:194:4: (~ ( LIST_UNORD_SECOND | PARAGRAPH_SEPARATOR ) )*
            root_0 = this.adaptor.nil();

            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:194:4: (~ ( LIST_UNORD_SECOND | PARAGRAPH_SEPARATOR ) )*
            loop20:
            do {
                var alt20=2;
                switch ( this.input.LA(1) ) {
                case CODE_START:
                    alt20=1;
                    break;
                case FORMATTED_PARAGRAPH_START:
                    alt20=1;
                    break;
                case LIST_ORD_SECOND:
                    alt20=1;
                    break;
                case LIST_UNORD_START:
                    alt20=1;
                    break;
                case IMAGE_START:
                    alt20=1;
                    break;
                case LIST_ORD_START:
                    alt20=1;
                    break;
                case PARAGRAPHS:
                case PARAGRAPH:
                case FORMATTED_PARAGRAPH:
                case NON_FORMATTED_PARAGRAPH:
                case TEXTNODE:
                case BULLETED_LIST:
                case NUMBERED_LIST:
                case LIST_ITEM:
                case WHITE_SPACE:
                case IMAGE_BLOCK:
                case CODE_BLOCK:
                case LEADING_WHITE_SPACES:
                case NEW_LINE:
                case IMAGE_END:
                case CR:
                case LF:
                case ANYTHING:
                    alt20=1;
                    break;

                }

                switch (alt20) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:194:4: ~ ( LIST_UNORD_SECOND | PARAGRAPH_SEPARATOR )
                    set46=this.input.LT(1);
                    if ( (this.input.LA(1)>=PARAGRAPHS && this.input.LA(1)<=CODE_START)||(this.input.LA(1)>=LIST_ORD_SECOND && this.input.LA(1)<=IMAGE_END)||(this.input.LA(1)>=CR && this.input.LA(1)<=ANYTHING) ) {
                        this.input.consume();
                        if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set46));
                        this.state.errorRecovery=false;this.state.failed=false;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                        throw mse;
                    }



                    break;

                default :
                    break loop20;
                }
            } while (true);




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_unord_open_return: (function() {
        ParagraphParser.list_unord_open_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_unord_open_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:197:1: list_unord_open : list_unord_start ;
    // $ANTLR start "list_unord_open"
    list_unord_open: function() {
        var retval = new ParagraphParser.list_unord_open_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

         var list_unord_start47 = null;


        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:198:2: ( list_unord_start )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:198:3: list_unord_start
            root_0 = this.adaptor.nil();

            this.pushFollow(ParagraphParser.FOLLOW_list_unord_start_in_list_unord_open806);
            list_unord_start47=this.list_unord_start();

            this.state._fsp--;
            if (this.state.failed) return retval;
            if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, list_unord_start47.getTree());



            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    list_unord_start_return: (function() {
        ParagraphParser.list_unord_start_return = function(){};
        org.antlr.lang.extend(ParagraphParser.list_unord_start_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:201:1: list_unord_start : ( LIST_UNORD_START | LIST_UNORD_SECOND );
    // $ANTLR start "list_unord_start"
    list_unord_start: function() {
        var retval = new ParagraphParser.list_unord_start_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var set48 = null;

        var set48_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:202:2: ( LIST_UNORD_START | LIST_UNORD_SECOND )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:
            root_0 = this.adaptor.nil();

            set48=this.input.LT(1);
            if ( this.input.LA(1)==LIST_UNORD_START||this.input.LA(1)==LIST_UNORD_SECOND ) {
                this.input.consume();
                if ( this.state.backtracking===0 ) this.adaptor.addChild(root_0, this.adaptor.create(set48));
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                var mse = new org.antlr.runtime.MismatchedSetException(null,this.input);
                throw mse;
            }




            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // inline static return class
    paragraph_separator_return: (function() {
        ParagraphParser.paragraph_separator_return = function(){};
        org.antlr.lang.extend(ParagraphParser.paragraph_separator_return,
                          org.antlr.runtime.ParserRuleReturnScope,
        {
            getTree: function() { return this.tree; }
        });
        return;
    })(),

    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:210:1: paragraph_separator : ( PARAGRAPH_SEPARATOR | EOF );
    // $ANTLR start "paragraph_separator"
    paragraph_separator: function() {
        var retval = new ParagraphParser.paragraph_separator_return();
        retval.start = this.input.LT(1);

        var root_0 = null;

        var PARAGRAPH_SEPARATOR49 = null;
        var EOF50 = null;

        var PARAGRAPH_SEPARATOR49_tree=null;
        var EOF50_tree=null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:211:2: ( PARAGRAPH_SEPARATOR | EOF )
            var alt21=2;
            var LA21_0 = this.input.LA(1);

            if ( (LA21_0==PARAGRAPH_SEPARATOR) ) {
                alt21=1;
            }
            else if ( (LA21_0==EOF) ) {
                alt21=2;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                var nvae =
                    new org.antlr.runtime.NoViableAltException("", 21, 0, this.input);

                throw nvae;
            }
            switch (alt21) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:211:4: PARAGRAPH_SEPARATOR
                    root_0 = this.adaptor.nil();

                    PARAGRAPH_SEPARATOR49=this.match(this.input,PARAGRAPH_SEPARATOR,ParagraphParser.FOLLOW_PARAGRAPH_SEPARATOR_in_paragraph_separator834); if (this.state.failed) return retval;


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:211:26: EOF
                    root_0 = this.adaptor.nil();

                    EOF50=this.match(this.input,EOF,ParagraphParser.FOLLOW_EOF_in_paragraph_separator838); if (this.state.failed) return retval;


                    break;

            }
            retval.stop = this.input.LT(-1);

            if ( this.state.backtracking===0 ) {

            retval.tree = this.adaptor.rulePostProcessing(root_0);
            this.adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
                retval.tree = this.adaptor.errorNode(this.input, retval.start, this.input.LT(-1), re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return retval;
    },

    // $ANTLR start "synpred1_Paragraph"
    synpred1_Paragraph_fragment: function() {
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:55:2: ( PARAGRAPH_SEPARATOR )
        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/Paragraph.g:55:3: PARAGRAPH_SEPARATOR
        this.match(this.input,PARAGRAPH_SEPARATOR,ParagraphParser.FOLLOW_PARAGRAPH_SEPARATOR_in_synpred1_Paragraph227); if (this.state.failed) return ;


    },
    // $ANTLR end "synpred1_Paragraph"

    // Delegated rules



    synpred1_Paragraph: function() {
        this.state.backtracking++;
        var start = this.input.mark();
        try {
            this.synpred1_Paragraph_fragment(); // can never throw exception
        } catch (re) {
            alert("impossible: "+re.toString());
        }
        var success = !this.state.failed;
        this.input.rewind(start);
        this.state.backtracking--;
        this.state.failed=false;
        return success;
    }

}, true); // important to pass true to overwrite default implementations

org.antlr.lang.augmentObject(ParagraphParser, {
    DFA5_eotS:
        "\u000d\uffff",
    DFA5_eofS:
        "\u0001\u0002\u000c\uffff",
    DFA5_minS:
        "\u0001\u0004\u000a\u0000\u0002\uffff",
    DFA5_maxS:
        "\u0001\u001c\u000a\u0000\u0002\uffff",
    DFA5_acceptS:
        "\u000b\uffff\u0001\u0001\u0001\u0002",
    DFA5_specialS:
        "\u0001\uffff\u0001\u0002\u0001\u0005\u0001\u0006\u0001\u0003\u0001"+
    "\u0000\u0001\u0009\u0001\u0008\u0001\u0004\u0001\u0007\u0001\u0001\u0002"+
    "\uffff}>",
    DFA5_transitionS: [
            "\u0009\u000a\u0001\u0007\u0002\u000a\u0001\u0003\u0001\u0001"+
            "\u0001\u0005\u0002\u000a\u0001\u0004\u0001\u0008\u0001\u0009"+
            "\u0001\u000a\u0001\u0006\u0003\u000a",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "\u0001\uffff",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(ParagraphParser, {
    DFA5_eot:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA5_eotS),
    DFA5_eof:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA5_eofS),
    DFA5_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA5_minS),
    DFA5_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA5_maxS),
    DFA5_accept:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA5_acceptS),
    DFA5_special:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA5_specialS),
    DFA5_transition: (function() {
        var a = [],
            i,
            numStates = ParagraphParser.DFA5_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA5_transitionS[i]));
        }
        return a;
    })()
});

ParagraphParser.DFA5 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 5;
    this.eot = ParagraphParser.DFA5_eot;
    this.eof = ParagraphParser.DFA5_eof;
    this.min = ParagraphParser.DFA5_min;
    this.max = ParagraphParser.DFA5_max;
    this.accept = ParagraphParser.DFA5_accept;
    this.special = ParagraphParser.DFA5_special;
    this.transition = ParagraphParser.DFA5_transition;
};

org.antlr.lang.extend(ParagraphParser.DFA5, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "54:2: ( ( PARAGRAPH_SEPARATOR )=> -> image_block | j= non_formatted_paragraph -> ^( NON_FORMATTED_PARAGRAPH TEXTNODE[$text] ) )";
    },
    specialStateTransition: function(s, input) {
        var _s = s;
        /* bind to recognizer so semantic predicates can be evaluated */
        var retval = (function(s, input) {
            switch ( s ) {
                        case 0 :
                            var LA5_5 = input.LA(1);


                            var index5_5 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_5);
                            if ( s>=0 ) return s;
                            break;
                        case 1 :
                            var LA5_10 = input.LA(1);


                            var index5_10 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_10);
                            if ( s>=0 ) return s;
                            break;
                        case 2 :
                            var LA5_1 = input.LA(1);


                            var index5_1 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_1);
                            if ( s>=0 ) return s;
                            break;
                        case 3 :
                            var LA5_4 = input.LA(1);


                            var index5_4 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_4);
                            if ( s>=0 ) return s;
                            break;
                        case 4 :
                            var LA5_8 = input.LA(1);


                            var index5_8 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_8);
                            if ( s>=0 ) return s;
                            break;
                        case 5 :
                            var LA5_2 = input.LA(1);


                            var index5_2 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_2);
                            if ( s>=0 ) return s;
                            break;
                        case 6 :
                            var LA5_3 = input.LA(1);


                            var index5_3 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_3);
                            if ( s>=0 ) return s;
                            break;
                        case 7 :
                            var LA5_9 = input.LA(1);


                            var index5_9 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_9);
                            if ( s>=0 ) return s;
                            break;
                        case 8 :
                            var LA5_7 = input.LA(1);


                            var index5_7 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_7);
                            if ( s>=0 ) return s;
                            break;
                        case 9 :
                            var LA5_6 = input.LA(1);


                            var index5_6 = input.index();
                            input.rewind();
                            s = -1;
                            if ( (this.synpred1_Paragraph()) ) {s = 11;}

                            else if ( (true) ) {s = 12;}


                            input.seek(index5_6);
                            if ( s>=0 ) return s;
                            break;
            }
        }).call(this.recognizer, s, input);
        if (!org.antlr.lang.isUndefined(retval)) {
            return retval;
        }
        if (this.recognizer.state.backtracking>0) {this.recognizer.state.failed=true; return -1;}
        var nvae =
            new org.antlr.runtime.NoViableAltException(this.getDescription(), 5, _s, input);
        this.error(nvae);
        throw nvae;
    },
    dummy: null
});
org.antlr.lang.augmentObject(ParagraphParser, {
    DFA8_eotS:
        "\u000a\uffff",
    DFA8_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA8_minS:
        "\u0001\u0004\u0009\uffff",
    DFA8_maxS:
        "\u0001\u001c\u0009\uffff",
    DFA8_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA8_specialS:
        "\u000a\uffff}>",
    DFA8_transitionS: [
            "\u0009\u0009\u0001\u0006\u0002\u0009\u0001\u0002\u0001\u0001"+
            "\u0001\u0004\u0002\u0009\u0001\u0003\u0001\u0007\u0001\u0008"+
            "\u0001\u0009\u0001\u0005\u0003\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(ParagraphParser, {
    DFA8_eot:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA8_eotS),
    DFA8_eof:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA8_eofS),
    DFA8_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA8_minS),
    DFA8_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA8_maxS),
    DFA8_accept:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA8_acceptS),
    DFA8_special:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA8_specialS),
    DFA8_transition: (function() {
        var a = [],
            i,
            numStates = ParagraphParser.DFA8_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA8_transitionS[i]));
        }
        return a;
    })()
});

ParagraphParser.DFA8 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 8;
    this.eot = ParagraphParser.DFA8_eot;
    this.eof = ParagraphParser.DFA8_eof;
    this.min = ParagraphParser.DFA8_min;
    this.max = ParagraphParser.DFA8_max;
    this.accept = ParagraphParser.DFA8_accept;
    this.special = ParagraphParser.DFA8_special;
    this.transition = ParagraphParser.DFA8_transition;
};

org.antlr.lang.extend(ParagraphParser.DFA8, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 82:3: (~ ( PARAGRAPH_SEPARATOR | EOF ) )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(ParagraphParser, {
    DFA12_eotS:
        "\u000a\uffff",
    DFA12_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA12_minS:
        "\u0001\u0004\u0009\uffff",
    DFA12_maxS:
        "\u0001\u001c\u0009\uffff",
    DFA12_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA12_specialS:
        "\u000a\uffff}>",
    DFA12_transitionS: [
            "\u0009\u0009\u0001\u0006\u0002\u0009\u0001\u0002\u0001\u0001"+
            "\u0001\u0004\u0001\u0009\u0001\u0001\u0001\u0003\u0001\u0007"+
            "\u0001\u0008\u0001\u0009\u0001\u0005\u0003\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(ParagraphParser, {
    DFA12_eot:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA12_eotS),
    DFA12_eof:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA12_eofS),
    DFA12_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA12_minS),
    DFA12_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA12_maxS),
    DFA12_accept:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA12_acceptS),
    DFA12_special:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA12_specialS),
    DFA12_transition: (function() {
        var a = [],
            i,
            numStates = ParagraphParser.DFA12_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA12_transitionS[i]));
        }
        return a;
    })()
});

ParagraphParser.DFA12 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 12;
    this.eot = ParagraphParser.DFA12_eot;
    this.eof = ParagraphParser.DFA12_eof;
    this.min = ParagraphParser.DFA12_min;
    this.max = ParagraphParser.DFA12_max;
    this.accept = ParagraphParser.DFA12_accept;
    this.special = ParagraphParser.DFA12_special;
    this.transition = ParagraphParser.DFA12_transition;
};

org.antlr.lang.extend(ParagraphParser.DFA12, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 104:4: (~ ( PARAGRAPH_SEPARATOR | NEW_LINE | EOF ) )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(ParagraphParser, {
    DFA14_eotS:
        "\u000a\uffff",
    DFA14_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA14_minS:
        "\u0001\u0004\u0009\uffff",
    DFA14_maxS:
        "\u0001\u001c\u0009\uffff",
    DFA14_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA14_specialS:
        "\u000a\uffff}>",
    DFA14_transitionS: [
            "\u0009\u0009\u0001\u0006\u0002\u0009\u0001\u0002\u0001\u0001"+
            "\u0001\u0004\u0002\u0009\u0001\u0003\u0001\u0007\u0001\u0008"+
            "\u0001\u0001\u0001\u0005\u0003\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(ParagraphParser, {
    DFA14_eot:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA14_eotS),
    DFA14_eof:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA14_eofS),
    DFA14_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA14_minS),
    DFA14_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA14_maxS),
    DFA14_accept:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA14_acceptS),
    DFA14_special:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA14_specialS),
    DFA14_transition: (function() {
        var a = [],
            i,
            numStates = ParagraphParser.DFA14_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA14_transitionS[i]));
        }
        return a;
    })()
});

ParagraphParser.DFA14 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 14;
    this.eot = ParagraphParser.DFA14_eot;
    this.eof = ParagraphParser.DFA14_eof;
    this.min = ParagraphParser.DFA14_min;
    this.max = ParagraphParser.DFA14_max;
    this.accept = ParagraphParser.DFA14_accept;
    this.special = ParagraphParser.DFA14_special;
    this.transition = ParagraphParser.DFA14_transition;
};

org.antlr.lang.extend(ParagraphParser.DFA14, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 123:3: (~ ( IMAGE_END | PARAGRAPH_SEPARATOR | EOF ) )*";
    },
    dummy: null
});
org.antlr.lang.augmentObject(ParagraphParser, {
    DFA15_eotS:
        "\u000a\uffff",
    DFA15_eofS:
        "\u0001\u0001\u0009\uffff",
    DFA15_minS:
        "\u0001\u0004\u0009\uffff",
    DFA15_maxS:
        "\u0001\u001c\u0009\uffff",
    DFA15_acceptS:
        "\u0001\uffff\u0001\u0002\u0008\u0001",
    DFA15_specialS:
        "\u000a\uffff}>",
    DFA15_transitionS: [
            "\u0009\u0009\u0001\u0006\u0002\u0009\u0001\u0002\u0001\u0001"+
            "\u0001\u0004\u0002\u0009\u0001\u0003\u0001\u0007\u0001\u0008"+
            "\u0001\u0009\u0001\u0005\u0003\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(ParagraphParser, {
    DFA15_eot:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA15_eotS),
    DFA15_eof:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA15_eofS),
    DFA15_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA15_minS),
    DFA15_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphParser.DFA15_maxS),
    DFA15_accept:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA15_acceptS),
    DFA15_special:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA15_specialS),
    DFA15_transition: (function() {
        var a = [],
            i,
            numStates = ParagraphParser.DFA15_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(ParagraphParser.DFA15_transitionS[i]));
        }
        return a;
    })()
});

ParagraphParser.DFA15 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 15;
    this.eot = ParagraphParser.DFA15_eot;
    this.eof = ParagraphParser.DFA15_eof;
    this.min = ParagraphParser.DFA15_min;
    this.max = ParagraphParser.DFA15_max;
    this.accept = ParagraphParser.DFA15_accept;
    this.special = ParagraphParser.DFA15_special;
    this.transition = ParagraphParser.DFA15_transition;
};

org.antlr.lang.extend(ParagraphParser.DFA15, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "()* loopback of 145:3: (~ ( PARAGRAPH_SEPARATOR | EOF ) )*";
    },
    dummy: null
});


// public class variables
org.antlr.lang.augmentObject(ParagraphParser, {
    tokenNames: ["<invalid>", "<EOR>", "<DOWN>", "<UP>", "PARAGRAPHS", "PARAGRAPH", "FORMATTED_PARAGRAPH", "NON_FORMATTED_PARAGRAPH", "TEXTNODE", "BULLETED_LIST", "NUMBERED_LIST", "LIST_ITEM", "WHITE_SPACE", "IMAGE_START", "IMAGE_BLOCK", "CODE_BLOCK", "CODE_START", "PARAGRAPH_SEPARATOR", "LIST_ORD_SECOND", "LEADING_WHITE_SPACES", "NEW_LINE", "FORMATTED_PARAGRAPH_START", "LIST_ORD_START", "LIST_UNORD_START", "IMAGE_END", "LIST_UNORD_SECOND", "CR", "LF", "ANYTHING"],
    FOLLOW_blanks_in_start118: new org.antlr.runtime.BitSet([0x1FFFFFF0, 0x00000000]),
    FOLLOW_paragraphs_in_start120: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_LEADING_WHITE_SPACES_in_blanks140: new org.antlr.runtime.BitSet([0x001A0002, 0x00000000]),
    FOLLOW_set_in_blanks143: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_PARAGRAPH_SEPARATOR_in_blanks150: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_paragraph_in_paragraphs162: new org.antlr.runtime.BitSet([0x1FFFFFF2, 0x00000000]),
    FOLLOW_code_block_in_paragraph180: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_formatted_paragraph_in_paragraph190: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_list_ord_in_paragraph200: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_list_unord_in_paragraph210: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_image_block_in_paragraph220: new org.antlr.runtime.BitSet([0x1FFFFFF2, 0x00000000]),
    FOLLOW_non_formatted_paragraph_in_paragraph242: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_text_paragraph_in_paragraph260: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_paragraph_separator_in_paragraph270: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_non_formatted_paragraph_start_in_text_paragraph292: new org.antlr.runtime.BitSet([0x1FFDFFF0, 0x00000000]),
    FOLLOW_non_formatted_paragraph_in_text_paragraph296: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_non_formatted_paragraph_start315: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_non_formatted_paragraph339: new org.antlr.runtime.BitSet([0x1FFDFFF2, 0x00000000]),
    FOLLOW_CODE_START_in_code_block366: new org.antlr.runtime.BitSet([0x1FFDFFF0, 0x00000000]),
    FOLLOW_code_content_in_code_block369: new org.antlr.runtime.BitSet([0x00100002, 0x00000000]),
    FOLLOW_code_contents_in_code_block371: new org.antlr.runtime.BitSet([0x00100002, 0x00000000]),
    FOLLOW_NEW_LINE_in_code_contents394: new org.antlr.runtime.BitSet([0x1FEDFFF0, 0x00000000]),
    FOLLOW_code_contents_start_in_code_contents396: new org.antlr.runtime.BitSet([0x1FEDFFF0, 0x00000000]),
    FOLLOW_code_content_in_code_contents399: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_FORMATTED_PARAGRAPH_START_in_code_contents_start411: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CODE_START_in_code_contents_start414: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_code_content429: new org.antlr.runtime.BitSet([0x1FEDFFF2, 0x00000000]),
    FOLLOW_IMAGE_START_in_image_block455: new org.antlr.runtime.BitSet([0x1FFDFFF0, 0x00000000]),
    FOLLOW_image_content_in_image_block457: new org.antlr.runtime.BitSet([0x01000002, 0x00000000]),
    FOLLOW_IMAGE_END_in_image_block463: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_image_content499: new org.antlr.runtime.BitSet([0x1EFDFFF2, 0x00000000]),
    FOLLOW_formatted_paragraph_open_in_formatted_paragraph524: new org.antlr.runtime.BitSet([0x1FFDFFF0, 0x00000000]),
    FOLLOW_formatted_paragraph_content_in_formatted_paragraph526: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_formatted_paragraph_open_markup_in_formatted_paragraph_open547: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_FORMATTED_PARAGRAPH_START_in_formatted_paragraph_open_markup558: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_formatted_paragraph_content569: new org.antlr.runtime.BitSet([0x1FFDFFF2, 0x00000000]),
    FOLLOW_list_ord_open_in_list_ord590: new org.antlr.runtime.BitSet([0x1FFDFFF0, 0x00000000]),
    FOLLOW_list_ord_elem_in_list_ord595: new org.antlr.runtime.BitSet([0x00040000, 0x00000000]),
    FOLLOW_list_ord_elems_in_list_ord597: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_list_ord_start_in_list_ord_open625: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_list_ord_start0: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_list_ord_elem650: new org.antlr.runtime.BitSet([0x1FF9FFF2, 0x00000000]),
    FOLLOW_list_ord_element_in_list_ord_elems668: new org.antlr.runtime.BitSet([0x00040002, 0x00000000]),
    FOLLOW_LIST_ORD_SECOND_in_list_ord_element682: new org.antlr.runtime.BitSet([0x1FF9FFF0, 0x00000000]),
    FOLLOW_list_ord_elem_in_list_ord_element688: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_list_unord_open_in_list_unord712: new org.antlr.runtime.BitSet([0x1FFFFFF0, 0x00000000]),
    FOLLOW_list_unord_elem_in_list_unord718: new org.antlr.runtime.BitSet([0x02020000, 0x00000000]),
    FOLLOW_list_unord_elems_in_list_unord720: new org.antlr.runtime.BitSet([0x00020002, 0x00000000]),
    FOLLOW_paragraph_separator_in_list_unord722: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_list_unord_element_in_list_unord_elems749: new org.antlr.runtime.BitSet([0x02000002, 0x00000000]),
    FOLLOW_LIST_UNORD_SECOND_in_list_unord_element762: new org.antlr.runtime.BitSet([0x1DFDFFF0, 0x00000000]),
    FOLLOW_list_unord_elem_in_list_unord_element768: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_list_unord_elem789: new org.antlr.runtime.BitSet([0x1DFDFFF2, 0x00000000]),
    FOLLOW_list_unord_start_in_list_unord_open806: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_set_in_list_unord_start0: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_PARAGRAPH_SEPARATOR_in_paragraph_separator834: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_EOF_in_paragraph_separator838: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_PARAGRAPH_SEPARATOR_in_synpred1_Paragraph227: new org.antlr.runtime.BitSet([0x00000002, 0x00000000])
});

})();// $ANTLR 3.3 Nov 30, 2010 12:46:29 /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g 2013-10-02 14:40:55

var ParagraphWalker = function(input, state) {
    if (!state) {
        state = new org.antlr.runtime.RecognizerSharedState();
    }

    (function(){

        this.applyBlockMarkup = function (block){
            try{
             var characterStream = new org.antlr.runtime.ANTLRStringStream(block);
             var lexer = new BlockLexer(characterStream);
             var tokenStream = new org.antlr.runtime.CommonTokenStream(lexer);
             var parser = new BlockParser(tokenStream);
             var absTree = parser.paragraph_contents();
             var nodesOfAbsTree = new org.antlr.runtime.tree.CommonTreeNodeStream(absTree.tree);
             var walker = new BlockWalker(nodesOfAbsTree);
                 var preview = '';
                 preview =  walker.start();
            } catch (er){
              preview = block;
            } finally {
            return preview;
            }
            }

    }).call(this);

    ParagraphWalker.superclass.constructor.call(this, input, state);

    this.dfa6 = new ParagraphWalker.DFA6(this);



    /* @todo only create adaptor if output=AST */
    this.adaptor = new org.antlr.runtime.tree.CommonTreeAdaptor();

};

org.antlr.lang.augmentObject(ParagraphWalker, {
    EOF: -1,
    PARAGRAPHS: 4,
    PARAGRAPH: 5,
    FORMATTED_PARAGRAPH: 6,
    NON_FORMATTED_PARAGRAPH: 7,
    TEXTNODE: 8,
    BULLETED_LIST: 9,
    NUMBERED_LIST: 10,
    LIST_ITEM: 11,
    WHITE_SPACE: 12,
    IMAGE_START: 13,
    IMAGE_BLOCK: 14,
    CODE_BLOCK: 15,
    CODE_START: 16,
    PARAGRAPH_SEPARATOR: 17,
    LIST_ORD_SECOND: 18,
    LEADING_WHITE_SPACES: 19,
    NEW_LINE: 20,
    FORMATTED_PARAGRAPH_START: 21,
    LIST_ORD_START: 22,
    LIST_UNORD_START: 23,
    IMAGE_END: 24,
    LIST_UNORD_SECOND: 25,
    CR: 26,
    LF: 27,
    ANYTHING: 28
});

(function(){
// public class variables
var EOF= -1,
    PARAGRAPHS= 4,
    PARAGRAPH= 5,
    FORMATTED_PARAGRAPH= 6,
    NON_FORMATTED_PARAGRAPH= 7,
    TEXTNODE= 8,
    BULLETED_LIST= 9,
    NUMBERED_LIST= 10,
    LIST_ITEM= 11,
    WHITE_SPACE= 12,
    IMAGE_START= 13,
    IMAGE_BLOCK= 14,
    CODE_BLOCK= 15,
    CODE_START= 16,
    PARAGRAPH_SEPARATOR= 17,
    LIST_ORD_SECOND= 18,
    LEADING_WHITE_SPACES= 19,
    NEW_LINE= 20,
    FORMATTED_PARAGRAPH_START= 21,
    LIST_ORD_START= 22,
    LIST_UNORD_START= 23,
    IMAGE_END= 24,
    LIST_UNORD_SECOND= 25,
    CR= 26,
    LF= 27,
    ANYTHING= 28;
var UP = org.antlr.runtime.Token.UP,
    DOWN = org.antlr.runtime.Token.DOWN;

// public instance methods/vars
org.antlr.lang.extend(ParagraphWalker, org.antlr.runtime.tree.TreeParser, {


    getTokenNames: function() { return ParagraphWalker.tokenNames; },
    getGrammarFileName: function() { return "/local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g"; }
});
org.antlr.lang.augmentObject(ParagraphWalker.prototype, {


    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:32:1: start returns [var result = ''] : ( statement EOF ) ;
    // $ANTLR start "start"
    start: function() {
        var result =  '';

         var statement1 = null;

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:33:2: ( ( statement EOF ) )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:33:3: ( statement EOF )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:33:3: ( statement EOF )
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:33:4: statement EOF
            this.pushFollow(ParagraphWalker.FOLLOW_statement_in_start65);
            statement1=this.statement();

            this.state._fsp--;

            this.match(this.input,EOF,ParagraphWalker.FOLLOW_EOF_in_start67);



            result = statement1;



        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return result;
    },


    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:36:1: statement returns [var result=''] : ( ^( PARAGRAPHS (i= statement )* ) | ^( NON_FORMATTED_PARAGRAPH (i= statement )* ) | ^( IMAGE_BLOCK j= statement ) | ^( FORMATTED_PARAGRAPH j= statement ) | ^( BULLETED_LIST (j= statement )* ) | ^( NUMBERED_LIST (j= statement )* ) | ^( LIST_ITEM ( (j= statement )* ) ) | TEXTNODE | ^( CODE_BLOCK j= statement ) );
    // $ANTLR start "statement"
    statement: function() {
        var result = '';

        var TEXTNODE2 = null;
         var i = null;
         var j = null;


        var temp = '';

        try {
            // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:42:2: ( ^( PARAGRAPHS (i= statement )* ) | ^( NON_FORMATTED_PARAGRAPH (i= statement )* ) | ^( IMAGE_BLOCK j= statement ) | ^( FORMATTED_PARAGRAPH j= statement ) | ^( BULLETED_LIST (j= statement )* ) | ^( NUMBERED_LIST (j= statement )* ) | ^( LIST_ITEM ( (j= statement )* ) ) | TEXTNODE | ^( CODE_BLOCK j= statement ) )
            var alt6=9;
            alt6 = this.dfa6.predict(this.input);
            switch (alt6) {
                case 1 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:42:3: ^( PARAGRAPHS (i= statement )* )
                    this.match(this.input,PARAGRAPHS,ParagraphWalker.FOLLOW_PARAGRAPHS_in_statement92);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:42:16: (i= statement )*
                        loop1:
                        do {
                            var alt1=2;
                            var LA1_0 = this.input.LA(1);

                            if ( (LA1_0==PARAGRAPHS||(LA1_0>=FORMATTED_PARAGRAPH && LA1_0<=LIST_ITEM)||(LA1_0>=IMAGE_BLOCK && LA1_0<=CODE_BLOCK)) ) {
                                alt1=1;
                            }


                            switch (alt1) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:42:17: i= statement
                                this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement97);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=i


                                break;

                            default :
                                break loop1;
                            }
                        } while (true);

                        result = temp;

                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }


                    break;
                case 2 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:46:2: ^( NON_FORMATTED_PARAGRAPH (i= statement )* )
                    this.match(this.input,NON_FORMATTED_PARAGRAPH,ParagraphWalker.FOLLOW_NON_FORMATTED_PARAGRAPH_in_statement113);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:46:28: (i= statement )*
                        loop2:
                        do {
                            var alt2=2;
                            var LA2_0 = this.input.LA(1);

                            if ( (LA2_0==PARAGRAPHS||(LA2_0>=FORMATTED_PARAGRAPH && LA2_0<=LIST_ITEM)||(LA2_0>=IMAGE_BLOCK && LA2_0<=CODE_BLOCK)) ) {
                                alt2=1;
                            }


                            switch (alt2) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:46:29: i= statement
                                this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement118);
                                i=this.statement();

                                this.state._fsp--;

                                temp+=i


                                break;

                            default :
                                break loop2;
                            }
                        } while (true);


                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }

                            var block_preview = this.applyBlockMarkup(' '+temp)
                            if(block_preview.length ==0)
                                result = '';
                            else
                                result = "<p>"+block_preview+"</p>";



                    break;
                case 3 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:54:2: ^( IMAGE_BLOCK j= statement )
                    this.match(this.input,IMAGE_BLOCK,ParagraphWalker.FOLLOW_IMAGE_BLOCK_in_statement131);

                    this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                    this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement135);
                    j=this.statement();

                    this.state._fsp--;


                    this.match(this.input, org.antlr.runtime.Token.UP, null);
                    result = "<img src = \""+j.replace(/\s/g,"&nbsp;").replace(/</g,"&lt;").replace(/>/g,"&gt;")+"\">";


                    break;
                case 4 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:56:2: ^( FORMATTED_PARAGRAPH j= statement )
                    this.match(this.input,FORMATTED_PARAGRAPH,ParagraphWalker.FOLLOW_FORMATTED_PARAGRAPH_in_statement144);

                    this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                    this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement150);
                    j=this.statement();

                    this.state._fsp--;


                    this.match(this.input, org.antlr.runtime.Token.UP, null);

                            if (j.indexOf(' ERROR:') === 0) {
                                result = "<pre class=\"error\">" + j.replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/^\sERROR:/, '') + "</pre>";
                            } else {
                                result = "<pre>" + j.replace(/</g,"&lt;").replace(/>/g,"&gt;") + "</pre>";
                            }



                    break;
                case 5 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:64:2: ^( BULLETED_LIST (j= statement )* )
                    this.match(this.input,BULLETED_LIST,ParagraphWalker.FOLLOW_BULLETED_LIST_in_statement159);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:64:18: (j= statement )*
                        loop3:
                        do {
                            var alt3=2;
                            var LA3_0 = this.input.LA(1);

                            if ( (LA3_0==PARAGRAPHS||(LA3_0>=FORMATTED_PARAGRAPH && LA3_0<=LIST_ITEM)||(LA3_0>=IMAGE_BLOCK && LA3_0<=CODE_BLOCK)) ) {
                                alt3=1;
                            }


                            switch (alt3) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:64:19: j= statement
                                this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement166);
                                j=this.statement();

                                this.state._fsp--;

                                temp+= j


                                break;

                            default :
                                break loop3;
                            }
                        } while (true);

                        result = "<ul>"+ temp + "</ul>";

                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }


                    break;
                case 6 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:66:2: ^( NUMBERED_LIST (j= statement )* )
                    this.match(this.input,NUMBERED_LIST,ParagraphWalker.FOLLOW_NUMBERED_LIST_in_statement178);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:66:18: (j= statement )*
                        loop4:
                        do {
                            var alt4=2;
                            var LA4_0 = this.input.LA(1);

                            if ( (LA4_0==PARAGRAPHS||(LA4_0>=FORMATTED_PARAGRAPH && LA4_0<=LIST_ITEM)||(LA4_0>=IMAGE_BLOCK && LA4_0<=CODE_BLOCK)) ) {
                                alt4=1;
                            }


                            switch (alt4) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:66:19: j= statement
                                this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement185);
                                j=this.statement();

                                this.state._fsp--;

                                temp+= j


                                break;

                            default :
                                break loop4;
                            }
                        } while (true);

                        result = "<ol>"+ temp + "</ol>";

                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }


                    break;
                case 7 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:68:2: ^( LIST_ITEM ( (j= statement )* ) )
                    this.match(this.input,LIST_ITEM,ParagraphWalker.FOLLOW_LIST_ITEM_in_statement197);

                    if ( this.input.LA(1)==org.antlr.runtime.Token.DOWN ) {
                        this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:68:14: ( (j= statement )* )
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:68:15: (j= statement )*
                        // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:68:15: (j= statement )*
                        loop5:
                        do {
                            var alt5=2;
                            var LA5_0 = this.input.LA(1);

                            if ( (LA5_0==PARAGRAPHS||(LA5_0>=FORMATTED_PARAGRAPH && LA5_0<=LIST_ITEM)||(LA5_0>=IMAGE_BLOCK && LA5_0<=CODE_BLOCK)) ) {
                                alt5=1;
                            }


                            switch (alt5) {
                            case 1 :
                                // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:68:16: j= statement
                                this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement205);
                                j=this.statement();

                                this.state._fsp--;

                                 if(j != undefined)temp+= j


                                break;

                            default :
                                break loop5;
                            }
                        } while (true);





                        this.match(this.input, org.antlr.runtime.Token.UP, null);
                    }
                    var block_preview = this.applyBlockMarkup(temp);
                        result = "<li>"+ block_preview.replace(/\s+$/,"") + "</li>";


                    break;
                case 8 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:72:2: TEXTNODE
                    TEXTNODE2=this.match(this.input,TEXTNODE,ParagraphWalker.FOLLOW_TEXTNODE_in_statement219);
                    result =(TEXTNODE2?TEXTNODE2.getText():null);


                    break;
                case 9 :
                    // /local/apps/anthill/builds/matlab-markup-service/main/grammar/JavaScript/ParagraphWalker.g:74:2: ^( CODE_BLOCK j= statement )
                    this.match(this.input,CODE_BLOCK,ParagraphWalker.FOLLOW_CODE_BLOCK_in_statement229);

                    this.match(this.input, org.antlr.runtime.Token.DOWN, null);
                    this.pushFollow(ParagraphWalker.FOLLOW_statement_in_statement235);
                    j=this.statement();

                    this.state._fsp--;

                    temp+=j.replace(/</g,"&lt;").replace(/>/g,"&gt;")

                    this.match(this.input, org.antlr.runtime.Token.UP, null);
                    result = "<pre class=\"language-matlab\">"+temp+"</pre>";


                    break;

            }
        }
        catch (re) {
            if (re instanceof org.antlr.runtime.RecognitionException) {
                this.reportError(re);
                this.recover(this.input,re);
            } else {
                throw re;
            }
        }
        finally {
        }
        return result;
    }

    // Delegated rules




}, true); // important to pass true to overwrite default implementations

org.antlr.lang.augmentObject(ParagraphWalker, {
    DFA6_eotS:
        "\u000a\uffff",
    DFA6_eofS:
        "\u000a\uffff",
    DFA6_minS:
        "\u0001\u0004\u0009\uffff",
    DFA6_maxS:
        "\u0001\u000f\u0009\uffff",
    DFA6_acceptS:
        "\u0001\uffff\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001"+
    "\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\u0009",
    DFA6_specialS:
        "\u000a\uffff}>",
    DFA6_transitionS: [
            "\u0001\u0001\u0001\uffff\u0001\u0004\u0001\u0002\u0001\u0008"+
            "\u0001\u0005\u0001\u0006\u0001\u0007\u0002\uffff\u0001\u0003"+
            "\u0001\u0009",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    ]
});

org.antlr.lang.augmentObject(ParagraphWalker, {
    DFA6_eot:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphWalker.DFA6_eotS),
    DFA6_eof:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphWalker.DFA6_eofS),
    DFA6_min:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphWalker.DFA6_minS),
    DFA6_max:
        org.antlr.runtime.DFA.unpackEncodedStringToUnsignedChars(ParagraphWalker.DFA6_maxS),
    DFA6_accept:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphWalker.DFA6_acceptS),
    DFA6_special:
        org.antlr.runtime.DFA.unpackEncodedString(ParagraphWalker.DFA6_specialS),
    DFA6_transition: (function() {
        var a = [],
            i,
            numStates = ParagraphWalker.DFA6_transitionS.length;
        for (i=0; i<numStates; i++) {
            a.push(org.antlr.runtime.DFA.unpackEncodedString(ParagraphWalker.DFA6_transitionS[i]));
        }
        return a;
    })()
});

ParagraphWalker.DFA6 = function(recognizer) {
    this.recognizer = recognizer;
    this.decisionNumber = 6;
    this.eot = ParagraphWalker.DFA6_eot;
    this.eof = ParagraphWalker.DFA6_eof;
    this.min = ParagraphWalker.DFA6_min;
    this.max = ParagraphWalker.DFA6_max;
    this.accept = ParagraphWalker.DFA6_accept;
    this.special = ParagraphWalker.DFA6_special;
    this.transition = ParagraphWalker.DFA6_transition;
};

org.antlr.lang.extend(ParagraphWalker.DFA6, org.antlr.runtime.DFA, {
    getDescription: function() {
        return "36:1: statement returns [var result=''] : ( ^( PARAGRAPHS (i= statement )* ) | ^( NON_FORMATTED_PARAGRAPH (i= statement )* ) | ^( IMAGE_BLOCK j= statement ) | ^( FORMATTED_PARAGRAPH j= statement ) | ^( BULLETED_LIST (j= statement )* ) | ^( NUMBERED_LIST (j= statement )* ) | ^( LIST_ITEM ( (j= statement )* ) ) | TEXTNODE | ^( CODE_BLOCK j= statement ) );";
    },
    dummy: null
});


// public class variables
org.antlr.lang.augmentObject(ParagraphWalker, {
    tokenNames: ["<invalid>", "<EOR>", "<DOWN>", "<UP>", "PARAGRAPHS", "PARAGRAPH", "FORMATTED_PARAGRAPH", "NON_FORMATTED_PARAGRAPH", "TEXTNODE", "BULLETED_LIST", "NUMBERED_LIST", "LIST_ITEM", "WHITE_SPACE", "IMAGE_START", "IMAGE_BLOCK", "CODE_BLOCK", "CODE_START", "PARAGRAPH_SEPARATOR", "LIST_ORD_SECOND", "LEADING_WHITE_SPACES", "NEW_LINE", "FORMATTED_PARAGRAPH_START", "LIST_ORD_START", "LIST_UNORD_START", "IMAGE_END", "LIST_UNORD_SECOND", "CR", "LF", "ANYTHING"],
    FOLLOW_statement_in_start65: new org.antlr.runtime.BitSet([0x00000000, 0x00000000]),
    FOLLOW_EOF_in_start67: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_PARAGRAPHS_in_statement92: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement97: new org.antlr.runtime.BitSet([0x0000CFD8, 0x00000000]),
    FOLLOW_NON_FORMATTED_PARAGRAPH_in_statement113: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement118: new org.antlr.runtime.BitSet([0x0000CFD8, 0x00000000]),
    FOLLOW_IMAGE_BLOCK_in_statement131: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement135: new org.antlr.runtime.BitSet([0x00000008, 0x00000000]),
    FOLLOW_FORMATTED_PARAGRAPH_in_statement144: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement150: new org.antlr.runtime.BitSet([0x00000008, 0x00000000]),
    FOLLOW_BULLETED_LIST_in_statement159: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement166: new org.antlr.runtime.BitSet([0x0000CFD8, 0x00000000]),
    FOLLOW_NUMBERED_LIST_in_statement178: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement185: new org.antlr.runtime.BitSet([0x0000CFD8, 0x00000000]),
    FOLLOW_LIST_ITEM_in_statement197: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement205: new org.antlr.runtime.BitSet([0x0000CFD8, 0x00000000]),
    FOLLOW_TEXTNODE_in_statement219: new org.antlr.runtime.BitSet([0x00000002, 0x00000000]),
    FOLLOW_CODE_BLOCK_in_statement229: new org.antlr.runtime.BitSet([0x00000004, 0x00000000]),
    FOLLOW_statement_in_statement235: new org.antlr.runtime.BitSet([0x00000008, 0x00000000])
});

})();var MatlabMarkup={};MatlabMarkup.Textarea=function(domElement,selectionClass){this._selectionClass=selectionClass||MatlabMarkup.Selection;this._element=domElement};MatlabMarkup.Textarea.prototype.value=function(){return this._element.val()};MatlabMarkup.Textarea.prototype.selection=function(){return new MatlabMarkup.Selection(this._element)};MatlabMarkup.Textarea.prototype.emptySelection=function(){return this.selection().empty()};MatlabMarkup.Textarea.prototype.selectedText=function(){return this.selection().text()};MatlabMarkup.Textarea.prototype.removeCurrentSelection=function(){this.insertMarkup("","","")};MatlabMarkup.Textarea.prototype.selectionAsHyperlinkMarkup=function(){var selection=this.selection(),text=selection.text(),urlPart,textPart;if(text===undefined||text===""){return{url:null,text:null,start:selection.start(),end:selection.end()}}if(text.substring(0,1)==="<"&&text.substring(text.length-1)===">"){var firstSpaceIndex=text.indexOf(" ");if(firstSpaceIndex===-1){urlPart=textPart=text.substring(1,text.length-1)}else{urlPart=text.substring(1,firstSpaceIndex);textPart=text.substring(firstSpaceIndex+1,text.length-1)}}else{if(/https?:\/\//.test(text)){var parts=text.split(" ");urlPart=parts.shift();textPart=parts.join(" ")}else{urlPart="";textPart=text}}return{url:urlPart,text:textPart,start:selection.start(),end:selection.end()}};MatlabMarkup.Textarea.prototype.attachFile=function(file){var form=this._element.closest("form");var fileIdInput=$("<input/>",{type:"hidden",name:"uploaded_files[]"}).val(file.id);var fileNameInput=$("<input/>",{type:"hidden",name:"uploaded_file_names[]"}).val(file.name);fileIdInput.attr("data-assoc-file-id",file.id);fileNameInput.attr("data-assoc-file-id",file.id);form.append(fileIdInput);form.append(fileNameInput);var wrapper=this._element.closest(".matlabmarkup-wrapper"),pendingUploads=wrapper.siblings(".pending-uploads").first();if(pendingUploads.size()===0){pendingUploads=$("<div></div>",{"class":"pending-uploads"});wrapper.after(pendingUploads);pendingUploadsUl=$("<ul></ul>",{"class":"list-unstyled list-inline"});pendingUploads.append(pendingUploadsUl);}else{pendingUploadsUl=pendingUploads.children().first();}var successBanner = "<div class='alert alert-success fade_out_of_view'><span class='alert_icon icon-alert-success'></span><h3>File attached successfully</h3></div>";var innerText="<span>"+file.name+"</span> "+"<button class='btn btn-link' type='button' data-file-id='"+file.id+"'>"+"<span class='icon-remove icon_16 add_font_color_emphasize'></span></button>";pendingUploadsLi=$("<li></li>");pendingUploadsLi.html(innerText);pendingUploadsUl.append(pendingUploadsLi);$('[data-file-id]').click(function(){var fileId=$(this).data("file-id");$('input[type="hidden"][data-assoc-file-id="'+fileId+'"]').remove();var pendingUploads=$(this).closest('.pending-uploads');if($(pendingUploads).find('li').length<=1){$(pendingUploads).remove();}else{$(this).parent().remove();}});pendingUploadsUl.parent().prepend(successBanner);setTimeout(function(){$('.matlabmarkup .pending-uploads .fade_out_of_view').remove()},5000);};MatlabMarkup.Textarea.prototype.insertHyperlink=function(url,text,selectionStart,selectionEnd){text=url===text||text===""?url:url+" "+text;this.insertMarkup("<",">",text,{selectionStart:selectionStart,selectionEnd:selectionEnd})};MatlabMarkup.Textarea.prototype.insertImage=function(url,selectionStart,selectionEnd){this.insertMarkup("<<",">>",url,{block:true,selectionStart:selectionStart,selectionEnd:selectionEnd})};MatlabMarkup.Textarea.prototype.insertMarkup=function(openingMarkup,closingMarkup,text,options){options=options||{};var value=this.value(),selection=this.selection(),selectionStart=options.selectionStart||selection.start(),selectionEnd=options.selectionEnd||selection.end(),selectedText=value.substring(selectionStart,selectionEnd),leading="",trailing="",leadingSpaces=selectedText.match(/^ +/)||"",trailingSpaces=selectedText.match(/ +$/)||"",beforeSelection=value.substring(selectionStart-1,selectionStart);secondBeforeSelection=value.substring(selectionStart-2,selectionStart-1);afterSelection=value.substring(selectionEnd,selectionEnd+1);secondAfterSelection=value.substring(selectionEnd+1,selectionEnd+2);if(options.block===true){if(beforeSelection===""){leading="";}else if(beforeSelection!=="\n"){leading="\n\n";}else{if(secondBeforeSelection!==""){leading+=secondBeforeSelection==="\n"?"":"\n";}}if(afterSelection!=="\n"){trailing="\n\n";}else{trailing+=secondAfterSelection==="\n"?"":"\n";}}else{if(leadingSpaces!==""){leading=beforeSelection===" "||beforeSelection==="\n"?"":leadingSpaces[0];text=text.replace(/^ +/,"")}else if(beforeSelection!==""&&beforeSelection!=="\n"&&beforeSelection!=="\r"){leading=beforeSelection===" "?"":" "}if(trailingSpaces!==""){trailing=(afterSelection===" "||afterSelection==="\n"?"":trailingSpaces[0])+trailing;text=text.replace(/ +$/,"")}else if(afterSelection!==""&&afterSelection!=="\n"&&afterSelection!=="\r"){trailing=(afterSelection===" "?"":" ")+trailing}}this._element.val(value.substring(0,selectionStart)+leading+openingMarkup+text+closingMarkup+trailing+value.substring(selectionEnd));this._element.trigger("focus");selection.set(selectionStart+leading.length+openingMarkup.length,selectionStart+leading.length+openingMarkup.length+text.length)};MatlabMarkup.Selection=function(element){this._element=element;this._domElement=element[0];this.getSelectionFromDomElement()};MatlabMarkup.Selection.prototype.start=function(){return this._start};MatlabMarkup.Selection.prototype.end=function(){return this._end};MatlabMarkup.Selection.prototype.before=function(){return this._element.val().substring(this._start-1,this._start)};MatlabMarkup.Selection.prototype.after=function(){return this._element.val().substring(this._end,this._end+1)};MatlabMarkup.Selection.prototype.empty=function(){return this._start===this._end};MatlabMarkup.Selection.prototype.text=function(){return this._text};MatlabMarkup.Selection.prototype.strip=function(){var matchData=this.text().match(/^( *)([^ ]+)( *)$/);if(matchData){return[matchData[1],matchData[2],matchData[3]]}else{return["",this.text(),""]}};if("getSelection"in window||"getSelection"in document){MatlabMarkup.Selection.prototype.getSelectionFromDomElement=function(){this._start=this._domElement.selectionStart;this._end=this._domElement.selectionEnd;this._text=this._element.val().substring(this._start,this._end)};MatlabMarkup.Selection.prototype.set=function(start,end){this._domElement.setSelectionRange(start,end)}}else{MatlabMarkup.Selection.prototype.getSelectionFromDomElement=function(){var value=this._element.val(),normalizedLength=value.replace(/\r\n/g,"\n").length,currentRange=document.selection.createRange(),duplicateRange,bookmarkRange,endRange;if(currentRange.parentElement()===this._domElement){duplicateRange=currentRange.duplicate();duplicateRange.collapse(false);duplicateRange.text=" ";currentRange.moveEnd("character",1);this._text=currentRange.text.replace(/ $/,"");document.execCommand("undo")}this._element.trigger("focus");currentRange=document.selection.createRange();bookmarkRange=this._domElement.createTextRange();bookmarkRange.moveToBookmark(currentRange.getBookmark());endRange=this._domElement.createTextRange();endRange.collapse(false);if(bookmarkRange.compareEndPoints("StartToEnd",endRange)>-1){this._start=this._end=normalizedLength}else{this._start=0-bookmarkRange.moveStart("character",0-normalizedLength);if(bookmarkRange.compareEndPoints("EndToEnd",endRange)>-1){this._end=normalizedLength}else{this._end=0-bookmarkRange.moveEnd("character",0-normalizedLength)}}};MatlabMarkup.Selection.prototype.set=function(start,end){var range=this._domElement.createTextRange();range.collapse(true);range.moveEnd("character",start+(end-start));range.moveStart("character",start);range.select();this._element.trigger("focus")}}MatlabMarkup.UploadResponse=function(responseData){this.responseJSON=this._normalizeResponse(responseData);this._errors=this.responseJSON.errors||[];this._files=this.responseJSON.files||[]};MatlabMarkup.UploadResponse.prototype.errors=function(){return this._errors};MatlabMarkup.UploadResponse.prototype.hasErrors=function(){return this.errors().length>0};MatlabMarkup.UploadResponse.prototype.eachFile=function(callback){for(var i=0;i<this._files.length;i++){callback(this._files[i])}};MatlabMarkup.UploadResponse.prototype._normalizeResponse=function(responseData){if(responseData.xhr){return JSON.parse(responseData.xhr().response)}else{return responseData.result}};MatlabMarkup.Dialog=function(){};MatlabMarkup.Dialog.counter=0;MatlabMarkup.Dialog.nextId=function(){return this.counter=this.counter+1};MatlabMarkup.Dialog.prototype.initialize=function(editor){this._id=MatlabMarkup.Dialog.nextId();this._editor=editor;this._element=$("<div></div>").addClass("matlabmarkup-dialog");this._listeners=[];this.hide()};MatlabMarkup.Dialog.prototype.addListener=function(listener){this._listeners.push(listener)};MatlabMarkup.Dialog.prototype.eachListener=function(callback){for(var i=0;i<this._listeners.length;i++){callback(this._listeners[i])}};MatlabMarkup.Dialog.prototype.insertAfter=function(target){this._element.insertAfter(target)};MatlabMarkup.Dialog.prototype.beforeOpen=function(){};MatlabMarkup.Dialog.prototype.toggle=function(){if(this._element.is(":hidden")){this.beforeOpen()}this._element.toggle()};MatlabMarkup.Dialog.prototype.hide=function(){this._element.hide()};MatlabMarkup.Dialog.prototype.removeCurrentSelection=function(){this._editor.removeCurrentSelection()};MatlabMarkup.Dialog.prototype.createButton=function(text,className,options){options=options||{};options.href="#"+className;return $("<a>",options).text(text).addClass("button "+className)};MatlabMarkup.FileDialog=function(editor,contributor,options){var dialog=this;this._contributor=contributor;this._options=options;this._uploadData=null;this.initialize(editor);this._cancelButton = this.createButton("Cancel", "cancel", {class: "file_dialog_cancel", tabindex: 302});this._cancelButton.on("click",function(event){event.preventDefault();dialog.clear();dialog.toggle()});this.createDialogTitle();this.createUploadControl();this._element.append($("<div></div>").addClass("buttons").append(this.guidelinesLink()).append(this._cancelButton))};for(var method in MatlabMarkup.Dialog.prototype){MatlabMarkup.FileDialog.prototype[method]=MatlabMarkup.Dialog.prototype[method]}MatlabMarkup.FileDialog.uploadButtonText="Choose file";MatlabMarkup.FileDialog.uploadControlLabel="Files must be 5 MB or smaller.";MatlabMarkup.FileDialog.acceptedFileExtensions=[".bmp",".csv",".fig",".gif",".jpg",".jpeg",".m",".mlx",".mat",".mdl",".pdf",".png",".txt",".xls",".zip"];MatlabMarkup.FileDialog.acceptedFileTypeRegExp=new RegExp("("+MatlabMarkup.FileDialog.acceptedFileExtensions.join("|").replace(/\./g,"\\.")+")$","i");MatlabMarkup.FileDialog.maximumFileSize=1024*1024*5;MatlabMarkup.FileDialog.prototype.clear=function(){this._uploadData=null;this._uploadButtonLabel.text(MatlabMarkup.FileDialog.uploadControlLabel);this.errorMessages().hide();};MatlabMarkup.FileDialog.prototype.setButtonStatus=function(){if(this.complete()){this._addButton.removeClass("disabled")}else{this._addButton.addClass("disabled")}};MatlabMarkup.FileDialog.prototype.guidelinesLink=function(){return $("<a></a>",{href:this._options.guidelinesPath,target:"_blank","class":"guidelines"}).text("Guidelines for Submitting Content")};MatlabMarkup.FileDialog.prototype.complete=function(){return this._uploadData};MatlabMarkup.FileDialog.prototype.submit=function(){if(this._uploadData){this._uploadData.submit()}};MatlabMarkup.FileDialog.prototype.createDialogTitle=function(){this._element.append($("<p></p>",{"class":"title"}).text("Attach a file:"))};MatlabMarkup.FileDialog.prototype.createUploadControl=function(){var wrapper=$("<div></div>",{"class":"upload-control-wrapper"});this._element.append(wrapper);this.createFileUploader(wrapper)};MatlabMarkup.FileDialog.prototype.createFileUploader=function(ui){var dialog=this,button=$("<span></span>",{"class":"upload-control-button add-file","tabindex": "301"}),buttonText=$("<span></span>").text(MatlabMarkup.FileDialog.uploadButtonText),input=$("<input/>",{type:"file"}),label=$("<span></span>",{"class":"upload-control-label"}).text(MatlabMarkup.FileDialog.uploadControlLabel);this._uploadButtonLabel=label;ui.append(button.append(buttonText,input),label);input.fileupload({dataType:"json",url:this._options.uploadPath,type:"POST",submit:function(event,data){var formData = {};var form=dialog._editor._element.closest("form");var csrfToken=form.find("input[name=authenticity_token]");if(csrfToken.length===1){formData.authenticity_token=csrfToken.val()}data.formData=formData},add:function(event,data){var file=data.files[0],validation=dialog.validateFile(file);dialog.errorMessages().hide();label.text(file.name);if(validation.success()){dialog._uploadData=data;if(dialog.complete()){dialog.submit();}}else{dialog.displayErrorMessages(validation.errors())}},always:function(event,data){var response=new MatlabMarkup.UploadResponse(data);if(response.hasErrors()){dialog.displayErrorMessages(response.errors())}else{response.eachFile(function(file){dialog.eachListener(function(listener){listener.fileUploadComplete(file)});dialog._editor.attachFile(file)});dialog.clear();dialog.toggle()}}})};MatlabMarkup.FileDialog.prototype.validateFile=function(fileData){var result={_errors:[],errors:function(){return this._errors},success:function(){return this._errors.length===0}};if(fileData.size>MatlabMarkup.FileDialog.maximumFileSize){result._errors.push("File size exceeds 5 MB. Try compressing the image file in an archive format like zip.")}if(MatlabMarkup.FileDialog.acceptedFileTypeRegExp.test(fileData.name)===false){result._errors.push("File format is unsupported. Use any of these formats: "+MatlabMarkup.FileDialog.acceptedFileExtensions.join(", "))}return result};MatlabMarkup.FileDialog.prototype.errorMessages=function(){var errors=this._element.find("div.errors").first();if(errors.size()===0){errors=$("<div></div>",{"class":"errors"});errors.append($("<p></p>",{"class":"title"}).text("Cannot attach this file because:"));errors.append($("<ul></ul>"));this._element.prepend(errors)}return errors};MatlabMarkup.FileDialog.prototype.displayErrorMessages=function(errors){var errorMessages=this.errorMessages(),errorList=errorMessages.find("ul").first();errorMessages.show();errorList.empty();for(var i=0;i<errors.length;i++){errorList.append($("<li></li>").text(errors[i]))}};MatlabMarkup.HyperlinkDialog=function(editor){var dialog=this;this.initialize(editor);this._currentSelectionStart=0;this._currentSelectionEnd=0;this.createDialogTitle();this._urlInput=this.createUrlInputFields();this._linkTextInput=this.createLinkTextInputFields();this._removeButton=this.createButton("Remove Link","remove-link",{tabindex:103});this._addButton=this.createButton("Add Link","add-link",{tabindex:102});this._cancelButton=this.createButton("Cancel","cancel",{tabindex:104});this._removeButton.addClass("disabled");if(!this.complete()){this._addButton.addClass("disabled")}this._addButton.on("click",function(event){event.preventDefault();if(dialog.complete()){dialog.submit()}});var keyUpCallback=function(event){dialog.setAddButtonStatus()};var pasteCallback=function(event){setTimeout(function(){dialog.setAddButtonStatus()},100)};this._urlInput.on("keyup",keyUpCallback);this._linkTextInput.on("keyup",keyUpCallback);this._urlInput.on("paste",pasteCallback);this._linkTextInput.on("paste",pasteCallback);this._cancelButton.on("click",function(event){event.preventDefault();dialog.clear();dialog.setAddButtonStatus();dialog.toggle()});this._removeButton.on("click",function(event){event.preventDefault();var selection=dialog._editor.selection(),selectionStart=selection.start(),selectionEnd=selection.end();if(selection.before()==="<"){selectionStart=selection.start()-1}if(selection.after()===">"){selectionEnd=selection.end()+1}selection.set(selectionStart,selectionEnd);dialog.removeCurrentSelection();dialog._removeButton.addClass("disabled");dialog.clear();dialog._currentSelectionStart=dialog._currentSelectionEnd=selectionStart});this._element.append($("<div></div>").addClass("buttons").append(this._cancelButton).append(this._addButton).append(this._removeButton))};for(var method in MatlabMarkup.Dialog.prototype){MatlabMarkup.HyperlinkDialog.prototype[method]=MatlabMarkup.Dialog.prototype[method]}MatlabMarkup.HyperlinkDialog.urlPlaceholder="http://www.mathworks.com";MatlabMarkup.HyperlinkDialog.linkTextPlaceholder="MathWorks";MatlabMarkup.HyperlinkDialog.prototype.beforeOpen=function(){var selection=this._editor.selectionAsHyperlinkMarkup();this._currentSelectionStart=selection.start;this._currentSelectionEnd=selection.end;if(selection.url!==null&&selection.text!==null){this._urlInput.val(selection.url);this._linkTextInput.val(selection.text)}if(selection.url!==null&&selection.url!==""){this._removeButton.removeClass("disabled")}this.setAddButtonStatus()};MatlabMarkup.HyperlinkDialog.prototype.createDialogTitle=function(){this._element.append($("<p></p>",{"class":"title"}).text("Insert a link:"))};MatlabMarkup.HyperlinkDialog.prototype.complete=function(){return this._urlInput.val()!==""};MatlabMarkup.HyperlinkDialog.prototype.clear=function(){this._currentSelectionStart=0;this._currentSelectionEnd=0;this._urlInput.val("");this._linkTextInput.val("")};MatlabMarkup.HyperlinkDialog.prototype.submit=function(){this._editor.insertHyperlink(this._encodedURL(),this._linkTextInput.val(),this._currentSelectionStart,this._currentSelectionEnd);this.clear();this.toggle()};MatlabMarkup.HyperlinkDialog.prototype._encodedURL=function(){return encodeURI(this._urlInput.val())};MatlabMarkup.HyperlinkDialog.prototype.setAddButtonStatus=function(){if(this.complete()){this._addButton.removeClass("disabled")}else{this._addButton.addClass("disabled")}};MatlabMarkup.HyperlinkDialog.prototype.createUrlInputFields=function(){var input=$("<input>",{type:"text",tabindex:100}).attr("placeholder",MatlabMarkup.HyperlinkDialog.urlPlaceholder);input.placeholder();this._element.append($("<div></div>").append("<label>URL</label>").append(input));return input};MatlabMarkup.HyperlinkDialog.prototype.createLinkTextInputFields=function(){var input=$("<input>",{type:"text",tabindex:101}).attr("placeholder",MatlabMarkup.HyperlinkDialog.linkTextPlaceholder);input.placeholder();this._element.append($("<div></div>").append("<label>Link title</label>").append(input));return input};MatlabMarkup.ImageDialog=function(editor,contributor,options){var dialog=this;this._contributor=contributor;this._options=options;this.initialize(editor);this._uploadData=null;this._currentSelectionStart=0;this._currentSelectionEnd=0;this._addButton=this.createButton("Insert Image","add-image",{tabindex:201});this._cancelButton=this.createButton("Cancel","cancel",{tabindex:202});this._cancelButton.on("click",function(event){event.preventDefault();dialog.clear();dialog.setButtonStatus();dialog.toggle()});this.createDialogTitle();this.createInputPanels();this.setButtonStatus();this._fromWebInput.on("keyup",function(){dialog.setButtonStatus()});this._fromWebInput.on("paste",function(){setTimeout(function(){dialog.setButtonStatus()},100)});this._addButton.on("click",function(event){event.preventDefault();if(dialog.complete()){dialog.submit()}});this._element.append($("<div></div>").addClass("buttons").append(this.guidelinesLink()).append(this._cancelButton).append(this._addButton))};for(var method in MatlabMarkup.Dialog.prototype){MatlabMarkup.ImageDialog.prototype[method]=MatlabMarkup.Dialog.prototype[method]}MatlabMarkup.ImageDialog.uploadButtonText="Choose file";MatlabMarkup.ImageDialog.uploadControlLabel="Files must be 5 MB or smaller.";MatlabMarkup.ImageDialog.urlPlaceholder="http://www.mathworks.com/matlabcentral/images/surf.gif";MatlabMarkup.ImageDialog.acceptedFileTypes=["image/bmp","image/gif","image/jpeg","image/png"];MatlabMarkup.ImageDialog.acceptedFileTypeRegExp=/\.(bmp|gif|jpe?g|png)$/i;MatlabMarkup.ImageDialog.maximumFileSize=1024*1024*5;MatlabMarkup.ImageDialog.prototype.beforeOpen=function(){var selection=this._editor.selection();this._currentSelectionStart=selection.start();this._currentSelectionEnd=selection.end()};MatlabMarkup.ImageDialog.prototype.complete=function(){return this._uploadData||this._fromWebInput.val()!==""};MatlabMarkup.ImageDialog.prototype.clear=function(){this._currentSelectionStart=0;this._currentSelectionEnd=0;this._uploadData=null;this._fromWebInput.val("");this._uploadButtonLabel.text(MatlabMarkup.ImageDialog.uploadControlLabel);this.setButtonStatus()};MatlabMarkup.ImageDialog.prototype.setButtonStatus=function(){if(this.complete()){this._addButton.removeClass("disabled")}else{this._addButton.addClass("disabled")}};MatlabMarkup.ImageDialog.prototype.submit=function(){if(this._uploadData){this._uploadData.submit()}else{this._editor.insertImage(this._fromWebInput.val(),this._currentSelectionStart,this._currentSelectionEnd);this.clear();this.toggle()}};MatlabMarkup.ImageDialog.prototype.createDialogTitle=function(){this._element.append($("<p></p>",{"class":"title"}).text("Insert an image:"))};MatlabMarkup.ImageDialog.prototype.createInputPanels=function(){var dialog=this,wrapper=$("<div></div>",{"class":"panel-control",id:"panel_control_"+MatlabMarkup.Dialog.nextId()});this._element.append(wrapper);this._fromComputerToggle=this.createPanelToggle(wrapper,"From my computer");this._fromWebToggle=this.createPanelToggle(wrapper,"From the Web");this._fromComputerPanel=this.createFromComputerPanel();this._fromWebPanel=this.createFromWebPanel();this._fromComputerToggle.on("click",function(event){dialog._fromWebPanel.hide();dialog._fromComputerPanel.show()});this._fromWebToggle.on("click",function(event){dialog._fromWebPanel.show();dialog._fromComputerPanel.hide()});this._fromComputerToggle.trigger("click");this._fromComputerToggle.attr("checked","checked")};MatlabMarkup.ImageDialog.prototype.guidelinesLink=function(){return $("<a></a>",{href:this._options.guidelinesPath,target:"_blank","class":"guidelines"}).text("Guidelines for Submitting Content")};MatlabMarkup.ImageDialog.prototype.createPanelToggle=function(parentElement,labelText){var input=$("<input/>",{type:"radio",name:parentElement.attr("id")+"_button"}),label=$("<label></label>").text(labelText);parentElement.append(input).append(label);return input};MatlabMarkup.ImageDialog.prototype.createFromComputerPanel=function(){var wrapper=$("<div></div>",{"class":"upload-control-wrapper"}),panel=$("<div></div>",{"class":"panel"});this._element.append(panel.append(wrapper));this.createFileUploader(wrapper);return panel};MatlabMarkup.ImageDialog.prototype.createFromWebPanel=function(){var input=$("<input/>",{type:"text",tabindex:200}).attr("placeholder",MatlabMarkup.ImageDialog.urlPlaceholder);label=$("<label>URL</label>"),panel=$("<div></div>",{"class":"panel"});this._fromWebInput=input;panel.append(label).append(input);this._element.append(panel);return panel};MatlabMarkup.ImageDialog.prototype.createFileUploader=function(ui){var dialog=this,button=$("<span></span>",{"class":"upload-control-button"}),buttonText=$("<span></span>").text(MatlabMarkup.ImageDialog.uploadButtonText),input=$("<input/>",{type:"file"}),label=$("<span></span>",{"class":"upload-control-label"}).text(MatlabMarkup.ImageDialog.uploadControlLabel);this._uploadButtonLabel=label;ui.append(button.append(buttonText,input),label);input.fileupload({dataType:"json",type:"POST",url:this._options.uploadPath,submit:function(event,data){var formData={},csrfToken=data.form.find("input[name=authenticity_token]");if(csrfToken.length===1){formData.authenticity_token=csrfToken.val()}data.formData=formData},add:function(event,data){var file=data.files[0],validation=dialog.validateFile(file);dialog.errorMessages().hide();label.text(file.name);if(validation.success()){dialog._uploadData=data;dialog.setButtonStatus()}else{dialog.displayErrorMessages(validation.errors())}},always:function(event,data){var response=new MatlabMarkup.UploadResponse(data);if(response.hasErrors()){dialog.displayErrorMessages(response.errors())}else{response.eachFile(function(file){dialog._editor.insertImage(file.url,dialog._currentSelectionStart,dialog._currentSelectionEnd)});dialog.clear();dialog.toggle()}}})};MatlabMarkup.ImageDialog.prototype.validateFile=function(fileData){var result={_errors:[],errors:function(){return this._errors},success:function(){return this._errors.length===0}};if(fileData.size>MatlabMarkup.ImageDialog.maximumFileSize){result._errors.push("File size exceeds 5 MB. Try compressing the image file in an archive format like zip.")}if(!this.validFileType(fileData)){result._errors.push("File format is unsupported. Use any of these formats: .gif, .jpg, .png, .bmp")}return result};MatlabMarkup.ImageDialog.prototype.validFileType=function(fileData){if(fileData.type){return $.inArray(fileData.type,MatlabMarkup.ImageDialog.acceptedFileTypes)!==-1}else{return MatlabMarkup.ImageDialog.acceptedFileTypeRegExp.test(fileData.name)}};MatlabMarkup.ImageDialog.prototype.errorMessages=function(){var errors=this._element.find("div.errors").first();if(errors.size()===0){errors=$("<div></div>",{"class":"errors"});errors.append($("<p></p>",{"class":"title"}).text("Cannot insert this image because:"));errors.append($("<ul></ul>"));this._element.prepend(errors)}return errors};MatlabMarkup.ImageDialog.prototype.displayErrorMessages=function(errors){var errorMessages=this.errorMessages(),errorList=errorMessages.find("ul").first();errorMessages.show();errorList.empty();for(var i=0;i<errors.length;i++){errorList.append($("<li></li>").text(errors[i]))}};(function($){$.matlabmarkup={version:"2.0.0",wrap:function(start,end,text,multiline){if(multiline){return $.map(text.split("\n"),function(line){return start+line+end}).join("\n")}else{return start+text+end}},markupWrapper:function(start,end,placeholder,multiline){placeholder=placeholder||"";multiline=multiline||false;if("getSelection"in window||"getSelection"in document){return function(){var textarea=$(this);var value=textarea.val();var selectionStart=this.selectionStart;var selectionEnd=this.selectionEnd;var inserted,selected;var leading="",trailing="",leadingSpaces,trailingSpaces,trailingNewlines;var leadingWhitespaceRegexp=/ |\r|\n/,trailingWhitespacePunctRegexp=/[`\-=~!@#$%^&*\(\)_+\[\]\\\{\}|;\':\",.\/<>?]| |\r|\n/,characterBeforeSelection,characterAfterSelection;var twoCharactersBeforeSelection;if(selectionStart===selectionEnd){selected=placeholder}else{selected=value.substring(selectionStart,selectionEnd)}trailingNewlines=selected.match(/\r?\n$/)||"";if(trailingNewlines!==""){trailing=trailingNewlines[0];selected=selected.replace(/\r?\n$/,"")}if(multiline===false){characterBeforeSelection=value.substring(selectionStart-1,selectionStart);characterAfterSelection=value.substring(selectionEnd,selectionEnd+1);leadingSpaces=selected.match(/^ +/)||"";trailingSpaces=selected.match(/ +$/)||"";if(leadingSpaces===""&&characterBeforeSelection!==""&&!leadingWhitespaceRegexp.test(characterBeforeSelection)){leading=" "+leading}if(trailingSpaces===""&&characterAfterSelection!==""&&!trailingWhitespacePunctRegexp.test(characterAfterSelection)){trailing=" "+trailing}if(leadingSpaces!==""){leading=leadingSpaces[0]+leading;selected=selected.replace(/^ +/,"")}if(trailingSpaces!==""){trailing=trailingSpaces[0]+trailing;selected=selected.replace(/ +$/,"")}}if(multiline===true){twoCharactersBeforeSelection=value.substring(selectionStart-2,selectionStart);if(twoCharactersBeforeSelection!==""&&twoCharactersBeforeSelection!=="\n\n"){leading+=/\n$/.test(twoCharactersBeforeSelection)?"\n":"\n\n"}}inserted=$.matlabmarkup.wrap(start,end,selected,multiline);textarea.val(value.substring(0,selectionStart)+leading+inserted+trailing+value.substring(selectionEnd));textarea.trigger("focus");if(multiline){this.setSelectionRange(selectionStart+leading.length,selectionStart+leading.length+inserted.length)}else{this.setSelectionRange(selectionStart+leading.length+start.length,selectionStart+leading.length-start.length+inserted.length)}}}else{var normalizedLength=function(string){return string.replace(/\r\n/g,"\n").length};return function(){var textarea=$(this);var value=textarea.val().replace(/\r/g,"");var normalized=normalizedLength(value);var emptySelection=false;var currentRange=document.selection.createRange();var bookmarkRange,duplicateRange,endRange,inserted,range,selected,selectionStart,selectionEnd;var leading="",trailing="",leadingSpaces,trailingSpaces,trailingNewlines;var leadingWhitespaceRegexp=/ |\r|\n/,trailingWhitespacePunctRegexp=/[`\-=~!@#$%^&*\(\)_+\[\]\\\{\}|;\':\",.\/<>?]| |\r|\n/,characterBeforeSelection,characterAfterSelection;if(currentRange.parentElement()===this){duplicateRange=currentRange.duplicate();duplicateRange.collapse(false);duplicateRange.text=" ";currentRange.moveEnd("character",1);selected=currentRange.text.replace(/ $/,"");document.execCommand("undo")}else{selected=placeholder;emptySelection=true}trailingNewlines=selected.match(/\r?\n$/)||"";if(trailingNewlines!==""){trailing=trailingNewlines[0];selected=selected.replace(/\r?\n$/,"")}if(multiline===false){leadingSpaces=selected.match(/^ +/)||"";if(leadingSpaces!==""){leading=leadingSpaces[0];selected=selected.replace(/^ +/,"")}trailingSpaces=selected.match(/ +$/)||"";if(trailingSpaces!==""){trailing=trailingSpaces[0]+trailing;selected=selected.replace(/ +$/,"")}}textarea.trigger("focus");currentRange=document.selection.createRange();bookmarkRange=this.createTextRange();bookmarkRange.moveToBookmark(currentRange.getBookmark());endRange=this.createTextRange();endRange.collapse(false);if(bookmarkRange.compareEndPoints("StartToEnd",endRange)>-1){selectionStart=selectionEnd=value.length}else{selectionStart=0-bookmarkRange.moveStart("character",0-normalized);if(bookmarkRange.compareEndPoints("EndToEnd",endRange)>-1){selectionEnd=normalized}else{selectionEnd=0-bookmarkRange.moveEnd("character",0-normalized)}}if(emptySelection===true&&multiline===false){selectionEnd+=placeholder.length}if(multiline===false){characterBeforeSelection=value.substring(selectionStart-1,selectionStart);characterAfterSelection=value.substring(selectionEnd,selectionEnd+1);if(leadingSpaces===""&&characterBeforeSelection!==""&&!leadingWhitespaceRegexp.test(characterBeforeSelection)){leading=" "+leading}if(trailingSpaces===""&&characterAfterSelection!==""&&!trailingWhitespacePunctRegexp.test(characterAfterSelection)){trailing=" "+trailing}}if(multiline===true){twoCharactersBeforeSelection=value.substring(selectionStart-2,selectionStart);if(twoCharactersBeforeSelection!==""&&twoCharactersBeforeSelection!=="\n\n"){leading+=/\n$/.test(twoCharactersBeforeSelection)?"\n":"\n\n"}}inserted=$.matlabmarkup.wrap(start,end,selected,multiline);textarea.val(value.substring(0,selectionStart)+leading+inserted+trailing+value.substring(selectionEnd));range=this.createTextRange();range.collapse(true);if(multiline||trailing!==""){range.moveEnd("character",selectionStart+normalizedLength(inserted)-end.length)}else{range.moveEnd("character",selectionEnd+start.length)}if(multiline){range.moveStart("character",selectionStart)}else{range.moveStart("character",selectionStart+start.length)}range.select();textarea.trigger("focus")}}},parser:{switchToRemote:2500,local:function(markup){var stream,lexer,tokens,parser,tree,nodes,walker,trimLeadingNewline=false,result="";try{if(markup.slice(-1)!="\n"){trimLeadingNewline=true;markup=markup+"\n"}stream=new org.antlr.runtime.ANTLRStringStream(markup);lexer=new ParagraphLexer(stream);tokens=new org.antlr.runtime.CommonTokenStream(lexer);parser=new ParagraphParser(tokens);tree=parser.start();nodes=new org.antlr.runtime.tree.CommonTreeNodeStream(tree.tree);walker=new ParagraphWalker(nodes);result=walker.start()}catch(parserError){if(trimLeadingNewline===true){result=markup.replace(/^\n/,"")}else{result=markup}}finally{return result}},remote:function(path,markup,callback){$.post(path,{text:markup},callback)}}};$.fn.matlabmarkup=function(options){$(this).each(function(){var textarea=$(this);var wrapper;var toolbar,buttons;var preview,preview_body,preview_divider,preview_listeners,preview_refresh,preview_toggle;var hyperlink;options=options||{};options.remote_path=options.remote_path||options.remotePath;options.help_path=options.help_path||options.helpPath;textarea.data("matlabmarkup",{});textarea.closest("form").addClass("matlabmarkup");preview=$('<div class="matlabmarkup-preview"/>');preview_body=$('<div class="matlabmarkup-preview-body" id="'+textarea.attr("id")+'_matlabmarkup_preview"/>');preview_divider=$('<div class="matlabmarkup-preview-divider"><span>Preview</span></div>');preview_refresh=$('<a class="matlabmarkup-preview-refresh hidden" href="#matlabmarkup-refresh">Refresh</a>');preview_toggle=$('<a class="matlabmarkup-preview-toggle" href="#matlabmarkup-toggle"/>');preview_refresh.on("click.matlabmarkup",function(click){click.preventDefault();if(!$(this).hasClass("hidden")){$.matlabmarkup.parser.remote(options.remote_path,textarea.val(),$.proxy(preview_body.html,preview_body))}});preview_toggle.on("click.matlabmarkup",function(click){click.preventDefault();textarea.trigger("matlabmarkup:toggle-preview")});textarea.on("matlabmarkup:toggle-preview",function(_,toggleBody){if(toggleBody!==false){preview_body.toggle("blind")}if(textarea.data("matlabmarkup").preview===true){textarea.trigger("matlabmarkup:disable-preview")}else{textarea.trigger("matlabmarkup:enable-preview")
}});preview_listeners="blur.matlabmarkup focus.matlabmarkup keyup.matlabmarkup change.matlabmarkup";textarea.on("matlabmarkup:enable-preview",function(){preview_toggle.removeClass("off");preview_toggle.text("Disable");textarea.data("matlabmarkup").preview=true;textarea.on(preview_listeners,function(){$(this).trigger("matlabmarkup:refresh")})});textarea.on("matlabmarkup:disable-preview",function(){preview_toggle.addClass("off");preview_toggle.text("Enable");textarea.data("matlabmarkup").preview=false;textarea.off(preview_listeners)});textarea.on("matlabmarkup:refresh",function(){var markup=$(this).val();if(markup.length<$.matlabmarkup.parser.switchToRemote){preview_refresh.addClass("hidden");preview_body.html($.matlabmarkup.parser.local(markup))}else{preview_refresh.removeClass("hidden")}});wrapper=$("<div></div>",{"class":"matlabmarkup-wrapper"});textarea.before(wrapper);wrapper.append(textarea);var editor=new MatlabMarkup.Textarea(textarea);var hyperlinkDialog=new MatlabMarkup.HyperlinkDialog(editor);var fileDialog=new MatlabMarkup.FileDialog(editor,options.contributor,{guidelinesPath:options.guidelinesPath,uploadPath:options.uploadPath});var imageDialog=new MatlabMarkup.ImageDialog(editor,options.contributor,{guidelinesPath:options.guidelinesPath,uploadPath:options.uploadPath});if(options.uploadListener){fileDialog.addListener(options.uploadListener);imageDialog.addListener(options.uploadListener)}var toggleFileDialog=function(event){hyperlinkDialog.hide();imageDialog.hide();fileDialog.toggle()};var toggleHyperlinkDialog=function(event){fileDialog.hide();imageDialog.hide();hyperlinkDialog.toggle()};var toggleImageDialog=function(event){fileDialog.hide();hyperlinkDialog.hide();imageDialog.toggle()};textarea.on("matlabmarkup:bold",$.matlabmarkup.markupWrapper("*","*","bold"));textarea.on("matlabmarkup:italic",$.matlabmarkup.markupWrapper("_","_","italic"));textarea.on("matlabmarkup:monospaced",$.matlabmarkup.markupWrapper("|","|","monospaced"));textarea.on("matlabmarkup:bulleted-list",$.matlabmarkup.markupWrapper("* ","","Item one\nItem two",true));textarea.on("matlabmarkup:numbered-list",$.matlabmarkup.markupWrapper("# ","","Item one\nItem two",true));textarea.on("matlabmarkup:code",$.matlabmarkup.markupWrapper("  ","","if true\n  % code\nend",true));textarea.on("matlabmarkup:hyperlink",toggleHyperlinkDialog);textarea.on("matlabmarkup:image",toggleImageDialog);textarea.on("matlabmarkup:attach-file",toggleFileDialog);textarea.on("matlabmarkup:help",function(){window.open(options.help_path)});buttons=["Bold","Italic","Monospaced","Bulleted list","Numbered list","Code","Hyperlink","Image","Attach file","Help"];toolbar=$('<div class="matlabmarkup-toolbar"/>');$.each(buttons,function(_,label){var name=label.toLowerCase().replace(" ","-");var button=$("<a><span>"+label+"</span></a>");button.addClass("matlabmarkup-"+name).attr("href","#"+name).attr("title",label);button.on("click.matlabmarkup",function(click){click.preventDefault();textarea.trigger("matlabmarkup:"+name)});toolbar.append(button)});preview_divider.append(preview_toggle).append(preview_refresh);preview.append(preview_divider).append(preview_body);wrapper.before(toolbar).after(preview);fileDialog.insertAfter(toolbar);hyperlinkDialog.insertAfter(toolbar);imageDialog.insertAfter(toolbar);textarea.resizable({handles:"se"});var resizableWrapper=textarea.parent();var offsetWidth=resizableWrapper.outerWidth(true)-resizableWrapper.width();var offsetHeight=resizableWrapper.outerHeight(true)-resizableWrapper.height();var targetWidth=wrapper.width()-offsetWidth;resizableWrapper.width(targetWidth);textarea.width(targetWidth);textarea.resizable("option","minHeight",offsetHeight);textarea.resizable("option","minWidth",targetWidth);textarea.resizable("option","maxWidth",targetWidth);if(options.preview!==false){textarea.trigger("matlabmarkup:refresh").trigger("matlabmarkup:enable-preview")}else{preview_body.hide();textarea.trigger("matlabmarkup:disable-preview")}})}})(jQuery);
