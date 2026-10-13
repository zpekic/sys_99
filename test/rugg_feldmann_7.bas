100 REM ----------- TMS 9995 Project BASIC Rev. 2.0 -------------
110 REM [Ported from Cortex BASIC (C)1982 by Stuart Conner]
120 REM ---------------------------------------------------------
130 REM See https://en.wikipedia.org/wiki/Rugg/Feldman_benchmarks
140 REM ---------------------------------------------------------
150 REM TMS9995 @12MHz: 17.231, 3953152 instructions, 0.229 MIPS
160 REM SYS_99  @12MHz: ??
170 REM ---------------------------------------------------------
299 F=3.0E6: BASE 7904: CRB(0)=1: CRB(1) = 1: MWD(65530)=-1

300 PRINT"S"
400 K=0
430 DIM M(5)
500 K=K+1
510 LET A=K/2*3+4-5
520 GOSUB 820
530 FOR L=1 TO 5
535 M(L)=A
540 NEXT L
600 IF K<1000 THEN GOTO 500
700 PRINT"E"

797 T=MWD(65530): IF T<0 THEN T=-T: GOTO 799 
798 T=65535-T 
799 PRINT "TICKS= ";T;" EXEC TIME (s)=", (4096*T)/F

800 END
820 RETURN

