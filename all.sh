#!/usr/bin/bash

set -e

# http://mywiki.wooledge.org/BashFAQ/026
shuffle() {
  local i tmp size max rand

  # $RANDOM % (i+1) is biased because of the limited range of $RANDOM
  # Compensate by using a range which is a multiple of the array size.
  size=${#array[@]}
  max=$(( 32768 / size * size ))

  for ((i=size-1; i>0; i--)); do
    while (( (rand=$RANDOM) >= max )); do :; done
    rand=$(( rand % (i+1) ))
    tmp=${array[i]} array[i]=${array[rand]} array[rand]=$tmp
  done
}

array=($(echo data/*))
if [ "$NOSHUFFLE" != "1" ]; then
  shuffle
fi

for company in "${array[@]}"; do
  name=${company#data/}
  img=$company/logo.png
  img2=$company/logo@2x.png
  if [ -f $img2 ]; then
    img=$img2
  fi
  quote=$company/quote.html
  cat <<END
  <div class="row clearfix" id="$name">
    <p><img src="$img" height=34 alt="$name"></p>
END
  cat $quote
  cat <<END
  </div>
END
done
