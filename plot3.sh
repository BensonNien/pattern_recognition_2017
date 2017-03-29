#!/bin/bash
START1=2
END1=14
END2=14
for (( col1=$START1; col1<=$END1; col1++ ))
do
	for (( col2=($col1+1); col2<=END2; col2++ ))
	do
		gnuplot -persist <<-EOFMarker
			set title "Wine" font ",14" textcolor rgbcolor "royalblue"
			set terminal png
			set output "./outputdata/graph\_$col1\_$col2.png"
			p "wine_class1.txt" using $col1:$col2, "wine_class2.txt" using $col1:$col2, "wine_class3.txt" using $col1:$col2
		EOFMarker
		# rest of script, after gnuplot exits
	done
done

