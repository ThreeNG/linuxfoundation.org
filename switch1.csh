#!/bin/csh
switch ($argv [$i])
	case quit:
		break 
	case list:
		ls
		breaksw
	case delete:
	case erase:
		@ k = $i + 1
		rm $argv [$k]
		breaksw
	endsw

