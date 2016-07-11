#
# Stack-java Out Degree. G(237860, 510258). 22930 (0.0964) nodes with out-deg > avg deg (4.3), 9250 (0.0389) with >2*avg.deg (Wed Jun 22 13:49:29 2016)
#

set title "Stack-java Out Degree. G(237860, 510258). 22930 (0.0964) nodes with out-deg > avg deg (4.3), 9250 (0.0389) with >2*avg.deg"
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
set output 'outDeg.Stack-java.png'
plot 	"outDeg.Stack-java.tab" using 1:2 title "" with linespoints pt 6
