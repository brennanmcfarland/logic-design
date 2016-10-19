setactivelib -post-synthesis
adel -all
edfcomp "$dsn/src/post-synthesis/biquad_post_synth.edf"
simulinkgenmod -f -o "$wsp/Simulink/biquad_post_synth.m" biquad_post_synth
