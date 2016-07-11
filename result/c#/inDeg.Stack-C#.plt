#
# Stack-C# In Degree. G(179447, 502798). 12402 (0.0691) nodes with in-deg > avg deg (5.6), 6528 (0.0364) with >2*avg.deg (Sat May 21 19:59:55 2016)
#

set title "Stack-C# In Degree. G(179447, 502798). 12402 (0.0691) nodes with in-deg > avg deg (5.6), 6528 (0.0364) with >2*avg.deg"
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
set output 'inDeg.Stack-C#.png'
plot 	"inDeg.Stack-C#.tab" using 1:2 title "" with linespoints pt 6
