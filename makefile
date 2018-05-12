all: readme

readme: guessinggame.sh
	echo "# unix-project" > README.md
	date >> README.md
	echo "" >> README.md
	wc -l guessinggame.sh >> README.md
