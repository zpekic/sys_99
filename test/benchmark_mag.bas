10 REM ----------- TMS 9995 Project BASIC Rev. 2.0 -------------
20 REM [Ported from Cortex BASIC (C)1982 by Stuart Conner]
30 REM ---------------------------------------------------------
40 REM https://archive.org/details/InterfaceAge198006/page/n131/mode/2up?q=benchmark
50 REM ---------------------------------------------------------
60 REM TMS9995 @12MHz: 690s
70 REM SYS_99  @12MHz: ??
80 REM ---------------------------------------------------------
99 F=3.0E6: BASE 7904: CRB(0)=1: CRB(1) = 1: MWD(65530)=-1

130 PRINT "Start"
140 FOR N = 1 TO 1000
150 	FOR K = 2 TO 500
160 		LET M = N/K
170		LET L = INT(M)
180		IF L=0 THEN GOTO 230
190 		IF L=1 THEN GOTO 220
200 		IF M>L THEN GOTO 220 
210 		IF M=L THEN GOTO 240
220 	NEXT K
230	PRINT N,
240 NEXT N
260 PRINT "End"

797 T=MWD(65530): IF T<0 THEN T=-T: GOTO 799 
798 T=65535-T 
799 PRINT "TICKS= ";T;" EXEC TIME (s)=", (4096*T)/F

800 END
