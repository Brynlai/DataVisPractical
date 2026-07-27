*Chapter 5*;
*PUT apply to char and num, ouput char*;
*INPUT appy to char, output char or numeric*;

*Question 1*;
DATA table1;
  length 
    Name $9
    Score1 3
    Score2 3
    Score3 4
    ;
  input Name Score1 Score2 Score3;
  datalines;
  Sam 77 68 66
  Deepanshu 50 . 89.4
  .
  Shane 55 78 89
  Roger 50 97 86
  .
  Priya 88 68 93
  ;
run;

proc print data=table1; run;

DATA table1Cleaned;
	set table1;
  	if MISSING(Name) or MISSING(Score1) or MISSING(Score2) or MISSING(Score3) then DELETE;
run;

proc print data=table1Cleaned; run;

DATA table2;
  length 
  team $1
  pos $1
  rebounds 3
  assists 3
  ;
  input team pos rebounds assists;
  if MISSING(team) or MISSING(pos) or MISSING(rebounds) or MISSING(assists) then DELETE;
  datalines;
  A G 10 8
  B F 4 .
  . F 7 10
  D C . 14
  E F . 10
  ;
 run;
 
proc print data=table2; run;
  
data joined1;
	set table1Cleaned table2;
run;

proc print data = joined1;

*Question 2*;
DATA originalTable;
  length 
    NAME $12
    CLASS $5
    MARK 3
    GENDER $6;
  input NAME $ CLASS $ MARK GENDER $;
  datalines;
  John	Deo Four 75 female
  Max	Ruin Three 85 male
  Arnold Three 55 male
  Krish	Star Four 60 female
  My	John	Rob Five 78 male
  ;
run;
proc print data=originalTable; run;

DATA readNameAndMarksOnly;
	set originalTable;
	*keep or drop*;
	KEEP NAME MARK;
run;

proc print data=readNameAndMarksOnly; run;


*Question 3*;
data changeFormats;
	length Category $15 Amount 7.2;
	INPUT Category Amount;
	/* 	
	Option 1:
	format Amount DOLLAR7.2; 
	*/

	datalines;
	Food 12.00
	Food 15.00
	Transportation 12.00
	Utilities 100.00
	Food 10.00
	Clothes 55.00
	Electronics 188.00
	;
	*Option 2*;
	Amount = put(Amount, dollar7.2);

run;

proc print data=changeFormats; run;

*Quesiton 4*;
data question4;
	length name $8 results 3 Grade $4;
	input name results Grade;
	if results < 50 then Grade = 'fail';
	if results >= 50 then Grade = 'pass';
	datalines;
	Coroyln 80
	Patricia 67
	Matilda 43
	Benita 46
	Dominica 86
	Shella 94
	Andy 52
	Consuela 53
	Roxane 50
	Keri 43
	;
run;
proc print data=question4;
	
	
	
