#! /bin/bash
for f in *.md
do
	# $f es el nom del fitxer de cada iteracio
	# "${f%%.*}.html" treu l'extensió del fitxer i afegeix .html
	# --template per a utilitzar el template que triem
	pandoc $f -o "${f%%.*}.html" --template template.html
done
#recordar fer chmod a+x script.sh
