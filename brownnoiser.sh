#!/bin/bash
amixer sset 'PCM' 100% > /dev/null

#progress=--show-progress
progress=--no-show-progress
len="01:00"		#Pre-generate 1min of audio
repeats=99999999	#Loop that for 190 years...
wave=0.0333333		#Tremmolo - vary the vlume at this frequency in hz
volvar=20		#Vary the volume by this much
reverb=19		#Add some fancy reverb
treble=-5		#Limit some of the harsher frequencies
bass=-11		#Adjust this as needed. My speakers can't handle low frequencies well and the rumble is not relaxing either
vol=11dB		#Set the output volume. If I go over 11dB it starts clipping occasionally. I can't hear it but play reports it
noise=brown		#The type of noise to synthesize. check man play for all options
fadein=10

play $progress -c 2 --null synth $len ${noise}noise tremolo $wave $volvar reverb $reverb treble $treble bass $bass vol $vol repeat  $repeats fade q $fadein

