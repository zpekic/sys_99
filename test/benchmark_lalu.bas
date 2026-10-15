100 REM	-------------------------------------
101 REM	Simple benchmark - find primes < 1000
102 REM See http://www.mtmscientific.com/lalu.html
103 REM	-------------------------------------
105 REM TMS9995 @12MHz: 856s
106 REM SYS_99  @12MHz: ??
107 REM   -------------------------------------

129 S = 8190: F=3.0E6: BASE 7904: CRB(0)=1: CRB(1) = 1: MWD(65530)=-1
130 PRINT "Starting."
140 FOR N = 1 TO 1000
150 	GOSUB 300
240 NEXT N
250 PRINT "Finished."
260 T=MWD(65530): IF T<0 THEN T=-T: GOTO 799 
270 T=65535-T 
280 PRINT "TICKS= ";T;" EXEC TIME (s)=", (4096*T)/F
290 END

300 FOR K = 2 TO 500
310 	M=INT(N/K) : J=N-M*K
320 	IF K=N THEN GOTO 380
330 	IF M=0 THEN RETURN
340 	IF M=1 THEN GOTO 370
350 	IF J>0 THEN GOTO 370
360 	IF J=0 THEN RETURN
370 NEXT K
380 PRINT N, " ";
390 RETURN

