grep -Po "[\x{0370}-\x{03FF}\x{2C80}-\x{2CFF}\x{0305}\x{035E}\x{0323}\x{0307}\x{0301}\x{0300}\x{0302}\x{0311}\x{0361}\x{0308}\x{0304}\x{0305}\x{FE24}\x{FE26}\x{FE25}]+" copcorp.txt > copcorp2.txt \
&& \
uniq copcorp2.txt > copcorp3.txt \
&& \
sort -S 75% copcorp3.txt > copcorp4.txt \
&& \
uniq -c copcorp4.txt > copcorp5.txt \
&& \
cat copcorp5.txt | sort -nr | tail -n +2 | awk '{print " word="$2",f="$1}' > copcorp6.txt
