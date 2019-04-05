#!/bin/bash

if git rev-parse --git-dir > /dev/null 2>&1; then
	git log | grep -c $1 > word_count

	COUNT=$(cat word_count)
	rm word_count

	echo "Number of contributions: ${COUNT}"

	if [[ $COUNT = 0 ]]; then
		echo
		echo "Watch out! There's a Peet over here!"
		echo "¯\_(ツ)_/¯"
	fi
else
	echo "You must peet-bust git repositories!"
fi
