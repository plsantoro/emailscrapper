%{
#include <stdio.h>
%}

%%
[a-zA-Z]+@[a-zA-Z]+ {
	printf("%s\n", yytext);
}

[A-Za-z0-9]+[0-9a-zA-Z._-]*[0-9a-zA-Z]+@[0-9a-zA-Z]+[0-9a-zA-Z._-]*[0-9a-zA-Z]+ {
	printf("%s\n", yytext);
}
 
.  ;
\n ;

%%

int main() {
  yylex();
  return 0;
}
