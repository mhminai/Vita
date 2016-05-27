all: resume_mhminai.pdf teaching_statement.pdf research_statement.pdf

resume_mhminai.pdf : resume_mhminai.tex
	pdflatex resume_mhminai.tex
	pdflatex resume_mhminai.tex

teaching_statement.pdf : teaching_statement.pdc
	panzer teaching_statement.pdc -o teaching_statement.pdf

research_statement.pdf : research_statement.pdc
	panzer research_statement.pdc -o research_statement.pdf

clean :
	-$(RM) *.aux *.log *.synctex.gz *.out
