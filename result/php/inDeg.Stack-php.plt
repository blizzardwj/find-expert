#
# Stack-php In Degree. G(213709, 458006). 15291 (0.0716) nodes with in-deg > avg deg (4.3), 8270 (0.0387) with >2*avg.deg (Sat May 21 20:06:54 2016)
#

set title "Stack-php In Degree. G(213709, 458006). 15291 (0.0716) nodes with in-deg > avg deg (4.3), 8270 (0.0387) with >2*avg.deg"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "In-degree"
set ylabel "Count"
set tics scale 2
set terminal png size 1000,800
set output 'inDeg.Stack-php.png'
plot 	"inDeg.Stack-php.tab" using 1:2 title "" with linespoints pt 6
