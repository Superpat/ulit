#!/bin/sh

awk '
/\\begin\{lstlisting\}/ {flag=1;next}
/\\end\{lstlisting\}/    {flag=0}
flag     {print}
flag==0 {printf "-- %s \n", $0}
' "$1"