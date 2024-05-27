#!/bin/bash

filename=$1

WORD_COUNT=$(wc -w < "$filename")
echo "Words: $WORD_COUNT"

CHAR_COUNT=$(wc -m < "$filename")
echo "Characters: $CHAR_COUNT"

SENT_COUNT=$(grep -o '[.?!]' < "$filename" | wc -l)
echo "Sentences: $SENT_COUNT"

cbyw=$(echo "scale=2; $CHAR_COUNT / $WORD_COUNT" | bc)
echo "Characters per word: $cbyw"

wordbysent=$(echo "$WORD_COUNT / $SENT_COUNT" | bc)
echo "Words per sentence: $wordbysent"

ARIf=$(echo "scale=2; (4.71 * $cbyw + 0.5 * $wordbysent - 21.43)" | bc)
echo "ARIf: $ARIf"
ARI=$(printf "%.0f" "$ARIf")

if test $ARI -eq 1
then
     echo "Group:Kinder garden"     
elif test $ARI -eq 2
then
     echo "Group :First Grade"
elif test $ARI -eq 3
then
     echo "Group :Second Grade"
elif test $ARI -eq 4
then
     echo "Group :Third Grade"
elif test $ARI -eq 5
then
    echo "Group :Fourth Grade"
elif test $ARI -eq 6
then
    echo "Group :Fifth Grade"
elif test $ARI -eq 7
then
    echo "Group :Sixth Grade"
elif test $ARI -eq 8
then
    echo "Group :Seventh Grade"
elif test $ARI -eq 9
then
    echo "Group :Eight Grade"
elif test $ARI -eq 10
then
    echo "Group :Ninth Grade"
elif test $ARI -eq 11
then
    echo "Group :Tenth Grade"
elif test $ARI -eq 12
then
    echo "Group :Eleventh Grade"
elif test $ARI -eq 13
then
    echo "Group :Twelth Grade"
elif test $ARI -eq 14
then
    echo "Group : College Student"
fi

