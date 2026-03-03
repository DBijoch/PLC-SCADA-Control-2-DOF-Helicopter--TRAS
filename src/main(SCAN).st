Y16 := FX5CPU.stSM.b1sClock;
wyjscieY17 := NOT FX5CPU.stSM.b1sClock;

IF Center THEN
	M510 := TRUE;
	M511 := TRUE;
ELSE 
	M510 := FALSE;
	M511 := FALSE;
END_IF;


IF Auto_man THEN
	PID3.Control_ON := TRUE;
	Pid2.Control_On := TRUE;
	
	D500 := ABS(REAL_TO_INT(PWM_m1));
	PID3.SV := Kat_pion_zad*1024/90;
	PID2.SV := Kat_poz_zad*1024/90;
	IF PID3.MV < 0 THEN
		Y3 := TRUE;
		ELSE
		Y3 := FALSE;
	END_IF;

	D502 := ABS(REAL_TO_INT(PWM_m2));
	IF PID2.MV < 0 THEN
		Y5 := TRUE;
		ELSE
		Y5 := FALSE;
	END_IF;
ELSE
	PID3.Control_ON := FALSE;
	Pid2.Control_On := FALSE;
	D500 := PWM_pion;
	D502 := PWM_poz;
	
	
END_IF;

DHIOEN(TRUE, 0, 3, 0);

//SD4500 i SD4530 double word

DHCMOVP(M510, 0, 0, SD4500);
DHCMOVP(M511, 0, 0, SD4530);

IF D500 > 100 THEN
	D500 := 100;
END_IF;

IF D500 < 1 THEN
	M500 := FALSE;
	Y0 := TRUE;
	D500 := 0;
ELSE
	M500 := TRUE;
END_IF;

PWM(M500, D500, 100, Y0);


IF D502 > 100 THEN
	D502 := 100;
END_IF;

IF D502 < 1 THEN
	M502 := FALSE;
	Y1 := TRUE;
	D502 := 0;
	ELSE
	M502 := TRUE;
END_IF;

PWM(M502, D502, 100, Y1);

Kat_pion := Akt_Pion*90/1024;
Kat_poz := -Akt_Poziom*90/1024;



