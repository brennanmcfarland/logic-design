configuration functional_cfg of test_bench is
  for testbench_arch
  	for UUT: top use 
  		entity WORK.top (STRUCTURE);
  	end for;
  	for STIM: STIMULATORS use
  		entity WORK.stimulators (STIMULATORS_ARCH);
  	end for;
  	for WRITE: WRITE_TO_FILE use
  		entity write_to_file (WRITE_TO_FILE_ARCH)
  		generic map (File_Name => "functional.txt");
  	end for;
  end for;
end functional_cfg;


