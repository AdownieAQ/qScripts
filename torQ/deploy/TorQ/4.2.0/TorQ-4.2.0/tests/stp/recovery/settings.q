// IPC connection parameters
.servers.CONNECTIONS:`rdb`segmentedtickerplant`tickerplant;
.servers.USERPASS:`admin:admin;

// Paths to process CSV and test STP log directory
processcsv:getenv[`KDBTESTS],"/stp/recovery/process.csv";
stptestlogs:getenv[`KDBTESTS],"/stp/recovery/testlog";
stporiglogs:getenv[`KDBTPLOG];
testlogdb:"testlog";

// Test updates
testtrade:((5#`GOOG),5?`4;10?100.0;10?100i;10#0b;10?.Q.A;10?.Q.A;10#`buy);
testquote:(10?`4;(5?50.0),50+5?50.0;10?100.0;10?100i;10?100i;10?.Q.A;10?.Q.A;10#`3);

// Function projections (using functions from helperfunctions.q)
startproc:startorstopproc["start";;processcsv];
stopproc:startorstopproc["stop";;processcsv];