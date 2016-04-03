all: resume_mhminai.pdf

resume_mhminai.pdf : resume_mhminai.tex
	pdflatex resume_mhminai.tex
	pdflatex resume_mhminai.tex

clean :
	-$(RM) *.aux *.log *.synctex.gz *.out
