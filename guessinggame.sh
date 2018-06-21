#!usr/bin/env bash

function feedback {
	if [[ $user_answer -gt $no_of_files ]]
	then
		echo Your guess is too high
	else
		echo Your guess is too low
	fi
}

function enter {
	[[ $1 != retry ]] && echo How many files are in the current directory? || echo Please try again, how many files in the current directory?
	read user_answer
}

no_of_files=$(find -maxdepth 1 -type f -ls | wc -l)
enter
while [[ $user_answer -ne $no_of_files ]]
do
	feedback
	enter retry
done
echo Congratulations! You guessed correctly
