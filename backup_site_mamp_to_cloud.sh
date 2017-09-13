#! /bin/sh

source="/Applications/MAMP/htdocs/"
cible="/Users/Thomas/Dropbox/......../1.SITES"
	
rsync -vrup --delete --exclude=".DS_Store" --exclude="node_modules/" "${source}" "${cible}" 
	
exit 0