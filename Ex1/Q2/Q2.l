%%
if       { printf("Keyword: IF\n"); }
else     { printf("Keyword: ELSE\n"); }
while    { printf("Keyword: WHILE\n"); }
[a-zA-Z]+  { printf("Identifier: %s\n", yytext); }
[ \t\n]+   ; // Ignore whitespace
.          ; // Ignore other characters
%%

int main() {
    yylex();
    return 0;
}
