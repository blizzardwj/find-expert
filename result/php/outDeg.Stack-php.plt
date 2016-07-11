#
# Stack-php Out Degree. G(213709, 458006). 20552 (0.0962) nodes with out-deg > avg deg (4.3), 8630 (0.0404) with >2*avg.deg (Sat May 21 20:06:57 2016)
#

set title "Stack-php Out Degree. G(213709, 458006). 20552 (0.0962) nodes with out-deg > avg deg (4.3), 8630 (0.0404) with >2*avg.deg"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Out-degree"
set ylabel "Count"
set tics scale 2
set terminal png size 1000,800
set output 'outDeg.Stack-php.png'
plot 	"outDeg.Stack-php.tab" using 1:2 title "" with linespoints pt 6
