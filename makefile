print_dir:
	echo `wc -l ./guessinggame.sh | egrep -o [0-9]+`
produce_readme:
	echo "# Marina Pasheeva unix workrbench" > README.md
	echo "\`\`\`" >> README.md
	echo "Make was run:" `date` >> README.md
	echo "\`\`\`" >> README.md
	echo "Lines of code in **guessinggame**:" `wc -l ./guessinggame.sh | egrep -o [0-9]+` >> README.md
