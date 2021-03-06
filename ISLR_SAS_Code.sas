/******************************************************************************
 * Title: ISLR_SAS_Code
 * Abstract: SAS versions of programs developed for self-study and exercises
 * in the "Introduction to Statistical Learning" text.
 * 
 * Analyst: Michael S. Johnson (UCDA/PO, michael.s.johnson@kp.org, 510-593-8272)
 * Bitbucket URL:
 * Update Log: 
 * 
 *****************************************************************************/
libname ISLR base '/home/michaelstephenjo0/IntroStatLrng/Data';

*** Chapter 1;
** figure 1.1;
ods graphics / reset imagemap height=640px width=480px;
proc sgplot data=ISLR.Wage;
	/*--Fit plot settings--*/
	reg x=age y=wage / nomarkers name='Regression';
	pbspline x=age y=wage / nomarkers name='PBSpline';
	/*--Scatter plot settings--*/
	scatter x=age y=wage / transparency=.75 name='Scatter';
	/*--X Axis--*/
	xaxis grid;
	/*--Y Axis--*/
	yaxis grid;
run;
proc sgplot data=ISLR.Wage;
	/*--Fit plot settings--*/
	reg x=year y=wage / nomarkers name='Regression';
	/*--Scatter plot settings--*/
	scatter x=year y=wage / transparency=.75 name='Scatter';
	/*--X Axis--*/
	xaxis grid;
	/*--Y Axis--*/
	yaxis grid;
run;
proc sgplot data=ISLR.Wage;
	/*--Box Plot settings--*/
	vbox wage / category=education fillattrs=(color=CXcad5e5) name='Box';
	/*--Category Axis--*/
	xaxis fitpolicy=splitrotate;
	/*--Response Axis--*/
	yaxis grid;
run;
ods graphics / reset;
