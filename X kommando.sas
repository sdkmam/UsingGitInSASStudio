data a;
      X "copy c:\masoud\test.sas7bdat c:\masoud\test2.sas7bdat";
      testvar=1;
    run;
 --------
 Testet fra 94ana mod komamw7
 
 %let myserver=komamw7;
options remote=myserver.7551;
signon user="komamw7\sasdemo" password="Orion123";
rsubmit;
*proc setinit;
*run;

data a;
      X "copy c:\masoud\test.sas7bdat c:\masoud\test2.sas7bdat";
      testvar=1;
    run;
%put _all_;
endrsubmit;
signoff;
----------------------------

Nedenstående er stykke kode som jeg plejer at bruge for at se evt. errors.

Læg mærk til afsnittet med filename:


Filename cmds pipe "xcopy &fra &til /D /C /I /E /H /R /Y";

data _null_;
infile cmds;
input;
put _infile_;
run;

%mend;

------------------------------

Opretter en folder: kørtt på 172.28.152.88

data _null_;
           x "mkdir C:\Matin";
run;




