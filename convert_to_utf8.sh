#!/bin/sh
for i in *.htm; do # Whitespace-safe but not recursive.
    iconv -f iso-8859-1 -t utf-8 < "$i" > "$i".temp
    mv "$i".temp "$i"
done
