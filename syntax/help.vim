" add three syntax classes: bold, emph (italic) and code -- similarly to html
"
" TODO: match luarefvim filename?
syn match helpIgnoreBold     "#[a-zA-Z0-9&()\`\'\"\-\+\*=\[\]\{\}\.,;: ]\+#" contains=helpMatchBold
syn match helpMatchBold      "[a-zA-Z0-9&()\`\'\"\-\+\*=\[\]\{\}\.,;: ]\+"   contained
syn match helpIgnoreEmph     "@[a-zA-Z0-9&()\`\'\"\-\+\*=\[\]\{\}\.,;: ]\+@" contains=helpMatchEmph
syn match helpMatchEmph      "[a-zA-Z0-9&()\`\'\"\-\+\*=\[\]\{\}\.,;: ]\+"   contained
" this match is the same as in CRefVim's help.vim (that is, uses $$):
" the idea is to keep some degree of portability.
" TODO: convert code blocks to standard < > notation
syn match helpIgnoreCode     "\$[a-zA-Z0-9@\\\*/\._=()\-+%<>&\^|!~\?:,\[\];{}#\`\'\" ]\+\$" contains=helpMatchCode
syn match helpMatchCode      "[a-zA-Z0-9@\\\*/\._=()\-+%<>&\^|!~\?:,\[\];{}#\`\'\" ]\+"   contained

