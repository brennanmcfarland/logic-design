ccomp  -sc -o $dsn/src/sender.dll $dsn/src/sender.cpp -dbg -D__int64="long long int"
addfile $dsn/src/sender.dll
addsc $dsn/src/sender.dll