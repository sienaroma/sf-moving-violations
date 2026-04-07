options ls=78; 
title "Three-Way Tables";

data citations;
infile "/home/u63550686/full_citation_data.csv" firstobs=2 delimiter=',';
input Race $ Sex $ Citation_Issued $ Count;
run;

/*race as a control*/
proc freq data=citations order=data;
weight Count;
tables Race*Sex*Citation_Issued/ cmh chisq relrisk expected nocol norow;
run;

/*gender as a control*/
proc freq data=citations order=data;
weight Count;
tables Sex*Race*Citation_Issued/ cmh chisq relrisk expected nocol norow;
run;

/*cramer's v*/
proc freq data=citations;
weight Count;
tables Race*Sex*Citation_Issued/chisq measures;
run;
/*shows a weak association between gender and receiving a citation given race*/

proc freq data=citations;
 weight Count;
 tables Sex*Race*Citation_Issued/chisq measures;
 run;
/*shows a moderate association between race and receiving a citation given gender*/

