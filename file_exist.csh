#!/bin/csh
if  (-e hello.csh) then 
	$1 hello.csh
else 
	echo "File does not exits!"
endif


