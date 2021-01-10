doc: resume.tex
	xelatex -shell-escape -output-driver="xdvipdfmx -z 0" resume.tex

image: doc
	convert -background white -alpha remove -density 600 resume.pdf resume.png

display: image
	evince resume.pdf

clean:
	rm *.log *.aux
