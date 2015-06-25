#!/bin/csh

foreach num (`seq 1 9`)
   foreach x ( `find $1 -name "$num - *" | tr \  \*` )
      set y=`basename "$x"`
      set z=`echo "0$y"`
      echo $z
      mv "$x" "$z"
   end
end
