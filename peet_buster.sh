#!/bin/bash

git log | grep -c $1 > word_count

COUNT=$(cat word_count)
rm word_count

echo "Number of contributions: ${COUNT}"

if [[ $COUNT = 0 ]]; then
	echo
	echo "Watch out! There's a Peet over here!"
	echo "¯\_(ツ)_/¯"
fi