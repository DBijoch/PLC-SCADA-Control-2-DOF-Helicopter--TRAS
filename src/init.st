//Parametry regulatora z dyskretnego rownania roznicowego PID2
PID2.K_gain := 0.1;
PID2.TI := 30;
PID2.TD := 15;
PID2.Ep0 := 0.0;
PID2.Ep1 := 0.0;
PID2.Ep2 := 0.0;
PID2.Rp0 := 0.0;
PID2.Rp1 := 0.0;
PID2.Rp2 := 0.0;
PID2.sampling_time := 1.0;

//Parametry regulatora z dyskretnego rownania roznicowego PID2
PID3.K_gain := 0.1;
PID3.TI := 75;
PID3.TD := 10;
PID3.Ep0 := 0.0;
PID3.Ep1 := 0.0;
PID3.Ep2 := 0.0;
PID3.Rp0 := 0.0;
PID3.Rp1 := 0.0;
PID3.Rp2 := 0.0;
PID3.sampling_time := 1.0;

EI(TRUE); //aktywacja przerwan - wymagane dla FIXED SCAN
