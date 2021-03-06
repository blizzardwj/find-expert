#
# Stack-java In Degree. G(237860, 510258). 14975 (0.0630) nodes with in-deg > avg deg (4.3), 8428 (0.0354) with >2*avg.deg (Sat May 21 20:19:49 2016)
#

set title "Stack-java In Degree. G(237860, 510258). 14975 (0.0630) nodes with in-deg > avg deg (4.3), 8428 (0.0354) with >2*avg.deg"
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
set output 'inDeg.Stack-java.png'
plot 	"inDeg.Stack-java.tab" using 1:2 title "" with linespoints pt 6
