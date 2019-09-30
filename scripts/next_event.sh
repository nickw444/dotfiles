#!/bin/sh
/usr/local/bin/icalBuddy -n -nc \
    -ps "|• |" -iep "title,datetime"  \
    -po "datetime,title" -ic "nick@nickwhyte.com,nick@canva.com"  \
    -tf "%1I:%M %p" -df "%b %d" \
    -ea -eed eventsToday \
    | head -n 1 \
    | awk -F "• " '{print toupper(substr($2,1,1)) tolower(substr($2,2))"  ·  "$3}'
