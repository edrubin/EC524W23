

# Lecture 000: Render HTML and PDF
cd 000
Rscript --vanilla -e 'xaringan::inf_mr("000-slides.Rmd")'
Rscript --vanilla -e 'pagedown::chrome_print("000-slides.html", "000-slides.pdf", wait = 4, timeout = 120)'
cd ..
# Lecture 001: Render HTML and PDF
cd 001
Rscript --vanilla -e 'xaringan::inf_mr("001-slides.Rmd")'
Rscript --vanilla -e 'pagedown::chrome_print("001-slides.html", "001-slides.pdf", wait = 4, timeout = 120)'
cd ..
# Lecture 002: Render HTML and PDF
cd 002
Rscript --vanilla -e 'xaringan::inf_mr("002-slides.Rmd")'
Rscript --vanilla -e 'pagedown::chrome_print("002-slides.html", "002-slides.pdf", wait = 4, timeout = 120)'
cd ..
# Lecture 003: Render HTML and PDF
cd 003
Rscript --vanilla -e 'xaringan::inf_mr("003-slides.Rmd")'
Rscript --vanilla -e 'pagedown::chrome_print("003-slides.html", "003-slides.pdf", wait = 4, timeout = 120)'
cd ..