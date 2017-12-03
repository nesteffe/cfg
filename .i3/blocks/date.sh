#!/bin/sh
#~/.i3/blocks/date.sh

case $BLOCK_BUTTON in
  2)date '+%l:%M %p %Z %a %m/%d/%Y' ;;
  1)gsimplecal ;;
  3)galculator ;;

esac

date '+%l:%M %p %Z %a %m/%d/%Y'
