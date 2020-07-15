#!/bin/csh -f

if ($1 == '') then
	set ln='cn'
else 
	set ln=$1
endif

echo "Program: switch language to $ln"

set listFiles = 'accepted author committee contact history hotel program images registration sponsor transportation visa index.html video keynote live'

echo $listFiles;

echo "Identify and replace the files"
foreach n ($listFiles)
	echo "Select files/folder: $n"
	rm -rf $n
	cp -rf $ln/$n .
end

echo "Transfer completed"
