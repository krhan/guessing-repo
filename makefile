all: README.md

readme: README.md

README.md: guessinggame.sh
	echo "# Project: Guessing Game" > README.md
	echo "Make was run at:" >> README.md
	date >> README.md
	echo "\n"
	echo "Lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
  
