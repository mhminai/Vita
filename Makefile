all: resume_mhminai.pdf teaching_statement.pdf research_statement.pdf

resume_mhminai.pdf : resume_mhminai.tex
	pdflatex resume_mhminai.tex
	pdflatex resume_mhminai.tex
	pdf2htmlEX --zoom 1.70 --decompose-ligature 1 --optimize-text 1 --process-type3 1 --embed-css 0 resume_mhminai.pdf

teaching_statement.pdf : teaching_statement.pdc
	panzer teaching_statement.pdc -o teaching_statement.pdf

research_statement.pdf : research_statement.pdc
	panzer research_statement.pdc -o research_statement.pdf

clean :
	-$(RM) *.aux *.log *.synctex.gz *.out
