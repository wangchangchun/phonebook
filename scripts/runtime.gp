reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:0.150]'output.txt' using 2:xtic(1) with histogram title 'original', \
'' using ($0-0.06):($2+0.001):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'optimized'  , \
<<<<<<< HEAD
'' using ($0+0.3):($3+0.0015):3 with labels title ' ',\
# '' using 4:xtic(1) with histogram title 'hash'  , \
# '' using ($0+0.6):($4+0.002):4 with labels title ' '
=======
'' using ($0+0.3):($3+0.0015):3 with labels title ' '
>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed
