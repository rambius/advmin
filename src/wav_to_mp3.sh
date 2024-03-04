#!/bin/sh

cd ~/downloads
printf "Name\t\tWAV\tMP3\tRatio\n"
for len in `seq 3 3 15`; do
  name=sample-${len}s
  mp3_size=`stat -f "%z" mp3/${name}.mp3`
  wav_size=`stat -f "%z" wav/${name}.wav`
  ratio=`echo "${wav_size} / ${mp3_size}" | bc` 
  printf "%s\t%s\t%s\t%s:1\n" ${name} ${wav_size} ${mp3_size} $ratio 
done
