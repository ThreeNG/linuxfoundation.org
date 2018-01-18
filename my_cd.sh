#!/bin/bash
export a=$1
s="${a}"
s=${s/c:}
path=${s//\\//}
echo "Moving to $path"
