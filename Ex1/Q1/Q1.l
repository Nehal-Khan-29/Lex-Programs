%{
int word = 0, digit = 0, space = 0;
%}

%%
[ \t\n]+      { space++; }
[0-9]+        { digit++; }
[a-zA-Z]+     { word++; }
.             ; // Ignore other characters
%%

int main() {
    yylex();
    printf("Words: %d\nDigits: %d\nSpaces: %d\n", word, digit, space);
    return 0;
}
