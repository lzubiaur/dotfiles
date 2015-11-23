#!/bin/ksh

function source_project {
	for file in ~/$1/.{path,exports,aliases,functions,extra}; do
		[ -r "$file" ] && [ -f "$file" ] && source "$file";
	done;
}

select PROJECT in woot none
do
   case $PROJECT in
      woot)
        	source_project '.woot'
					break
      ;;
      none) 
         break 
      ;;
      *) echo "ERROR: Invalid selection" 
      ;;
   esac
done