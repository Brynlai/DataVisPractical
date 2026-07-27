*Chapter 4*;
data dataset1;
	input Name $13.;
	Datalines;
	Mathew	Bell
	Alok	Jain
	Karen	Tuttle
	Sarah	Boysen
	Issac	Newton
	Niels	Bohr
	Gemma	Wilson
	;
run;

proc print data=dataset1;
	title 'dataset1';
run; 


data dataset2;
	length
		service $21.
		title $13.
		;
	input 
	service
	title 
	;
	Datalines;
	Wiper	Blades Maintenance
	Air		Filter Maintenance
	Fuel	Filter Maintenance
	Cooling	Blades Maintenance
	Brake	Blades Maintenance
	Fuel	Blades Maintenance
	Trans	Fluid	Exchange Maintenance
	Tire	Rotation Tire	Services
	Flat	Repair Tire	Services
	Wheel	Balance Tire	Services
	Wheel	Alignment Tire	Services
	;
run;

proc print data=dataset2;
	title 'dataset2';
run;

data combined;
	set dataset1 dataset2;
run;

proc print data=combined;
	title 'combined';
run;


data datasetabc;
	input A1 A2 A3 A4;
	datalines;
	21 4 52 11
	96 25 42 6
	;
run;

data statsabc;
	set datasetabc;
	A_SUM = (A1 + A2 + A3 + A4);
	A_MEAN = (A1 + A2 + A3 + A4)/4;
	A_MIN = min(A1,A2,A3,A4);
	length a2IsMin $5.;
	if A2 = A_MIN then
		a2IsMin = 'true';
	else
		a2IsMin = 'false';
run;

proc print data=statsabc;
run;
	
	
data loop;
	count = 5;
	do while(count<=100);
		output;
		count = count + 5;
	end;
run;

proc print data=loop;
 	title 'loop 5 to 100';
run;


data array;
	array x(5) a1-a5;
	input a1-a5;
	datalines;
	1 2 3 4 5
	6 7 8 9 10
	11 22 33 44 55
	;
	
run;
proc print data=array;run;
