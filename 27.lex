%%
[A-Z]+[\t\n ] { printf("%s is a capital word\n",yytext); }
.  ;
%%

int main( ) 
{
	printf("Enter String :\n");
	yylex();
}
int yywrap( )
{
	return 1;
}

Output:

G:\lex>flex capital.l

G:\lex>gcc lex.yy.c

G:\lex>a.exe
Enter String :
CAPITAL of INDIA is DELHI
CAPITAL  is a capital word
INDIA  is a capital word
DELHI
 is a capital word

G:\lex>
