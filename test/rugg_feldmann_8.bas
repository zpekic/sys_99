100 REM ----------- TMS 9995 Project BASIC Rev. 2.0 -------------
110 REM [Ported from Cortex BASIC (C)1982 by Stuart Conner]
120 REM ---------------------------------------------------------
130 REM See https://en.wikipedia.org/wiki/Rugg/Feldman_benchmarks
140 REM ---------------------------------------------------------
150 REM TMS9995 @12MHz: 6.531, 1458176 instructions, 0.223 MIPS
160 REM SYS_99  @12MHz: ??
170 REM ---------------------------------------------------------
299 F=3.0E6: BASE 7904: CRB(0)=1: CRB(1) = 1: MWD(65530)=-1

300 PRINT"S"
400 K=0
500 K=K+1
530 A=K^2
540 B=LOG(K)
550 C=SIN(K)
600 IF K<100 THEN GOTO 500
700 PRINT"E"

797 T=MWD(65530): IF T<0 THEN T=-T: GOTO 799 
798 T=65535-T 
799 PRINT "TICKS= ";T;" EXEC TIME (s)=", (4096*T)/F

800 END
