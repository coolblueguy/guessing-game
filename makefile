no_of_lines_tgt: date_tgt
	echo "Number of lines in \`guessinggame.sh\`: $(shell cat guessinggame.sh | wc -l)" >> README.md

date_tgt: title_tgt
	echo "Date when make was run: $(shell date)" >> README.md

title_tgt:
	echo "# Guessing Game" > README.md

all: no_of_lines_tgt



