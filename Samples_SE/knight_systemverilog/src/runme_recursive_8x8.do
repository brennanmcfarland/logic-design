alog -dbg $dsn/src/knight_recursive.sv

asim -GDIM=8 -advdataflow knight_rec	

mem -valueradix dec -cols 8 /knight_rec/Board1D

run -all
