set terminal postscript eps
set output "ps_stats.eps"
set xlabel "Date, in range Jan 2002 to Dec 2005" 
set ylabel "Number of downloads / MB per month"    
set xdata time  
set timefmt "%b %Y"
set key left   
plot "stats.txt" using 1:3 title "download count" with lines; replot "stats.txt" using 1:4 title "download size (MB)" with boxes