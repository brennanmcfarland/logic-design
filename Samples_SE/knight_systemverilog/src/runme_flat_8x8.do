alog -dbg $dsn/src/knight_flat.sv

asim -GDIM=8 -advdataflow knight_flat	

mem -valueradix dec -cols 8 /knight_flat/Board1D

run -all

