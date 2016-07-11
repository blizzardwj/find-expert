#
# Stack-C# Out Degree. G(179447, 502798). 19033 (0.1061) nodes with out-deg > avg deg (5.6), 7496 (0.0418) with >2*avg.deg (Sat May 21 19:59:56 2016)
#

set title "Stack-C# Out Degree. G(179447, 502798). 19033 (0.1061) nodes with out-deg > avg deg (5.6), 7496 (0.0418) with >2*avg.deg"
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
set output 'outDeg.Stack-C#.png'
plot 	"outDeg.Stack-C#.tab" using 1:2 title "" with linespoints pt 6
