#!/bin/bash
#`gnuplot`

#gnuplot -e "plot "wine_class1.txt" using 2:3, "wine_class2.txt" using 2:3, "wine_class3.txt" using 2:3;"

col1=2    # colume1
col2=5   # colume2
gnuplot -persist <<-EOFMarker
	set title "Wine" font ",14" textcolor rgbcolor "royalblue"
	plot "wine_class1.txt" using $col1:$col2, "wine_class2.txt" using $col1:$col2, "wine_class3.txt" using $col1:$col2
	set terminal png
	set output "graph\_$col1\_$col2.png"
	replot
	set terminal x11
	set output
EOFMarker
# rest of script, after gnuplot exits
