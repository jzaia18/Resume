doc: resume.tex
	xelatex -shell-escape -output-driver="xdvipdfmx -z 0" resume.tex

display: doc
	evince resume.pdf

clean:
	rm *.log *.aux
