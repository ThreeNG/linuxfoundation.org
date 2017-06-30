#
cd
foreach i (*)
	if (-f $i) then 
		echo $i
	endif
end

