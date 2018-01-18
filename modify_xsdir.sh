ROUTE=$1
FILENAME="$2"
[[ "$ROUTE" == "default" ]] && ROUTE=0
if [[ ! -z $ROUTE && -s "tape92" ]]
then
   sed -i "s|route|$ROUTE|" "tape92"
fi
if [[ ! -z $FILENAME && -s "tape92" ]]
then
   line=$(sed "s|filename|$FILENAME|" "tape92")
   newline=""
   if [[ ${#line} -gt 80 ]]
   then
      line=($line)
      tmpline=""
      icount=0
      for item in ${line[@]}
      do
         icount=$((icount+1))
         if [[ $((${#tmpline} + ${#item} + 1)) -lt 78 ]]
         then
            tmpline="$tmpline $item"
         else
            newline="$tmpline +\n"
            echo $newline
            tmpline="$item"
         fi
      done
      newline="$newline $tmpline"
   else
      newline="$line"
   fi
   echo !!!!!!!!!!!!! $newline
   #sed "s|filename|$newline|" "tape92"
fi
