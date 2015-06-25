#!/bin/csh

foreach mydir ( `find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 | sed -e "s/.\//\n/g" | tr \  \*` )
   echo "entering $mydir"
   pushd
   foreach num (`seq 1 9`)
      foreach x ( `find $1 -name "$num - *" | tr \  \*` )
         set y=`basename "$x"`
         set z=`echo "0$y"`
         echo $z
         mv "$x" "$z"
      end
   end
   popd
end
