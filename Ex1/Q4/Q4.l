%%
[a-zA-Z_][a-zA-Z0-9_]*  { printf("Identifier: %s\n", yytext); }
[ \t\n]+                ;
.                       ; // Ignore other characters
%%

int main() {
    yylex();
    return 0;
}
