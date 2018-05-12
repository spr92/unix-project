all: README

README: guessinggame.sh
	echo "# unix-project" > README.md
	echo "* Make was last run on * $(shell date) *" >> README.md
	echo "" >> README.md
	echo "* $(shell cat guessinggame.sh | wc -l) lines of code in guessinggame.sh" >> README.md
