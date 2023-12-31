#!/bin/bash
MAINFILE="31-A-13602848.c"
EXEFILE="31-A-13602848"
ANGELIXPRE=$ANGELIX_RUN
INPUT_NAME=heldout-input-pos
NEGINPUT_NAME=heldout-input-neg
OUTPUT_NAME=heldout-output-pos
NEGOUTPUT_NAME=heldout-output-neg
MY_NAME=my_output
rm -R $MY_NAME* &>/dev/null
run_test()
{
test_case="$1"
if ! `which time` -o time.out -f "(%es)" timeout -k 50s 50s $ANGELIXPRE ./$EXEFILE < $test_case | sed -e '/^$/d' -e 's/^[ \t]*//' > $MY_NAME$test_case; then
echo Sample test \#$test_case: Runtime Error`cat time.out`
echo ========================================
echo Sample Input \#$test_case
        cat $test_case
exit 2
else
if grep "Command" time.out; then 
 echo "ERROR";
 exit -1;
fi
	if diff --brief --ignore-trailing-space $MY_NAME$test_case $2; then
echo Sample test \#$test_case: Accepted`cat time.out`
exit 0
	else
echo Sample test \#$test_case: Wrong Answer`cat time.out`
echo ========================================
 echo Sample Input \#$test_case
 cat $test_case
echo ========================================
echo Sample Output \#$2
cat $2
echo ========================================
echo My Output \#$MY_NAMEtest_case
cat $MY_NAME$test_case
echo ========================================
exit 1
fi
    fi
}
case $1 in
p1) run_test "$INPUT_NAME"3 "$OUTPUT_NAME"3 ;;
p2) run_test "$INPUT_NAME"4 "$OUTPUT_NAME"4 ;;
p3) run_test "$INPUT_NAME"5 "$OUTPUT_NAME"5 ;;
p4) run_test "$INPUT_NAME"14 "$OUTPUT_NAME"14 ;;
p5) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p6) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p7) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p8) run_test "$INPUT_NAME"33 "$OUTPUT_NAME"33 ;;
p9) run_test "$INPUT_NAME"34 "$OUTPUT_NAME"34 ;;
p10) run_test "$INPUT_NAME"35 "$OUTPUT_NAME"35 ;;
p11) run_test "$INPUT_NAME"36 "$OUTPUT_NAME"36 ;;
p12) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p13) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
esac
exit 1
