EMOV(PID2.Control_ON, DINT_TO_REAL(Akt_Poziom), PID2.PV);

PIDR2(PIDR_s:= PID2); //wlasny blok funkcyjny opisany w FB/FUN
// regulator operuje na zmiennych typu FLOAT - nie jest potrzebna konwersja typu zmiennych

EMOV(PID2.Control_ON, PID2.MV, PWM_m2);

EMOV(PID3.Control_ON,  DINT_TO_REAL(Akt_Pion), PID3.PV);

PIDR3(PIDR_s:= PID3); //wlasny blok funkcyjny opisany w FB/FUN
// regulator operuje na zmiennych typu FLOAT - nie jest potrzebna konwersja typu zmiennych

EMOV(PID3.Control_ON, PID3.MV, PWM_m1);