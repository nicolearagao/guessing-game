all: README.md

README.md:
	echo '# Nicole Aragão UNIX WORKBENCH' > README.md
	echo '* This makefile was run at: $(shell date +%Y-%m-%d:%H:%M:%S) *' >> README.md
	echo '# Enjoy the guessing Game! #'>>README.md
clean:
	rm README.md
