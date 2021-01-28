image: doc
	convert -density 200 -size 850x1100 resume.pdf resume.png

doc: resume.tex
	xelatex -shell-escape -output-driver="xdvipdfmx -z 0" resume.tex

display: image
	evince resume.pdf

clean:
	rm *.log *.aux
