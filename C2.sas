/* Chapter 2 */;

DATA MobilePhones;*because first observ is HELLO, the size is short, so need length*;
	LENGTH 
	BRAND $8.
	MODEL $6.
	RAM $1.
	CHIPSET $10.
	PRICE $3.
	;
	INPUT BRAND MODEL RAM CHIPSET PRICE;
	DATALINES;
	SAMSUNG GALAXY 8 HELLO 213
	XIAOMI PRO 9 SNAPDRAGON 453
	XIAOMI REDMI 7 HELLO 541
	SAMSUNG GALAXY 8 SNAPDRAGON 790
	XIAOMI PRO 8 SNAPDRAGON 875
	SAMSUNG REDMI 8 HELLO 554
	;
	
DATA Total;
	SET MobilePhones;
	Total = RAM + PRICE;
RUN;

PROC PRINT DATA = MobilePhones;
	TITLE 'Mobile Phones List';

RUN;




data college_enrollment;
  input Student_ID $ Last_Name $ Initial $ Age Program $;
  datalines;
ST348-245 Walton L. 21 Drafting
ST348-246 Wilson R. 19 Science
ST348-247 Thompson G. 18 Business
ST348-248 James L. 23 Nursing
ST348-249 Peterson M. 37 Science
ST348-250 Graham J. 20 Arts
ST348-251 Smith F. 26 Business
ST348-252 Nash S. 22 Arts
ST348-253 Russell W. 20 Nursing
ST348-254 Robitaille L. 19 Drafting
;
run;

proc print data=college_enrollment;
  title 'College Enrollment 2014-2015';
run;



