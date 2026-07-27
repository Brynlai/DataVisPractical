*Chpater 3*;
data tasks1;
	text = 'I live in Malaysia. Malaysia is a beautiful country. There are
many places to visit in Malaysia. There are different cultures
of people living in Malaysia.';
	countwd = count(text,'Malaysia');
RUN;

proc print data=tasks1;
run;

data tasks2;
	text = 'I live in Malaysia. Malaysia is a beautiful country. There are
many places to visit in Malaysia. There are different cultures
of people living in Malaysia. Have a nice day.';
	find = FIND(text,'Have a nice day');
	index = INDEX(text,'Have a nice day');
RUN;

proc print data=tasks2;
run;

data tasks3;
	text = 'I’m a good human Being';
	countwd = COMPRESS(text);
RUN;

proc print data=tasks3;
run;

data tasks4;
	text = 'This is an Emotional story about MIEKO. Mieko is a talented
artist and CALLI-GRAPHER . Her hand is badly hurt during the
bombings of the war. The scared little GIRL is sent to live with
her grandparents in the countryside where it is safer.';
	wordToProp = 'MIEKO';
	textlower1 = TRANWRD(text, wordToProp, PROPCASE(LOWCASE(wordToProp)));
	textremGirlovedash = TRANWRD(textlower1, '-', '');
	wordToLowercase = 'GIRL';
	textGirl = TRANWRD(textremGirlovedash, wordToLowercase, LOWCASE(wordToLowercase));
RUN;

proc print data=tasks4;
run;

data tasks5;
	text = 'Good ' || 'Luck ' || 'In ' || 'Your Exam';
RUN;

proc print data=tasks5;
run;


/* Extract Substring */
/* SUBSTRN('stringval', start, end: optional); */
/*  */
/* Remove Spaces */
/* LEFT(string);  /* Remove leading spaces */
/* TRIMN(string); /* Remove trailing spaces */
/* STRIP(string); /* Remove both leading and trailing spaces */
/* COMPBL(string); /* Replace multiple blanks with one blank */
/* COMPRESS(string, 'characters'); /* Remove specified characters */
/*  */
/* Concatenate Strings */
/* CAT(col1, col2, col3);   /* Raw concatenation */
/* CATT(col1, col2, col3);  /* Remove trailing spaces */
/* CATS(col1, col2, col3);  /* Remove both leading and trailing spaces */
/* CATX(separator, col1, col2, col3); /* Concatenate with separator */
/*  */
/* Parse Words */
/* SCAN(string, n); /* Extract nth word */
/*  */
/* Search for Substring */
/* INDEX(string, substring); /* Case-sensitive search, returns first position */
/* FIND(string, substring); /* Case-insensitive search, returns first position */
/*  */
/* Case Conversion */
/* UPCASE(string); /* Convert to uppercase */
/* LOWCASE(string); /* Convert to lowercase */
/* PROPCASE(string); /* Capitalize first letter of each word */
/*  */
/* Verify Existence */
/* VERIFY(string, 'characters'); /* Check if string contains only specified characters */
/*  */
/* Replace Words */
/* TRANWRD(string, 'old', 'new'); /* Replace 'old' with 'new' */
/*  */
/* Length Functions */
/* LENGTH(string); /* Length of string, excluding trailing blanks */
/* LENGTHC(string); /* Length of string, including trailing blanks */
/*  */
/* Count Occurrences */
/* COUNT(string, 'word'); /* Case-sensitive count */
/* COUNTC(string, 'word'); /* Case-insensitive count */
