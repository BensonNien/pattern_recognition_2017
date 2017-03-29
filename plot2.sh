#!/bin/bash

for col1 in {2..14..1}
do
	for col2 in {13..14..1}
	do
		#col1=2    # colume1
		#col2=5   # colume2
		gnuplot -persist <<-EOFMarker
			set title "Wine" font ",14" textcolor rgbcolor "royalblue"
			plot "wine_class1.txt" using $col1:$col2, "wine_class2.txt" using $col1:$col2, "wine_class3.txt" using $col1:$col2
			set terminal png
			set output "./outputdata/graph\_$col1\_$col2.png"
			replot
			set terminal x11
			set output
		EOFMarker
		# rest of script, after gnuplot exits
	done
done


