#!/bin/csh

#add initial zero to all single digits in the filename
foreach mydir ( `find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 | sed -e "s/.\//\n/g" | tr \  \*` )
   echo "entering $mydir"
   pushd "$mydir"
   foreach x ( `find $1 -name "*.mp4" | tr \  \*` )
         set y=`basename "$x"`
         #echo $y
         set z=`echo "$y" | sed 's/\<[0-9]\>/0&/g'`
         echo "$z"
         mv "$x" "$z"
   end
   popd
end




