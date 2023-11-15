#!/bin/bash
MAINFILE="112-C-10442755.c"
EXEFILE="112-C-10442755"
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
p1) run_test "$INPUT_NAME"2 "$OUTPUT_NAME"2 ;;
p2) run_test "$INPUT_NAME"3 "$OUTPUT_NAME"3 ;;
p3) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p4) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p5) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p6) run_test "$INPUT_NAME"15 "$OUTPUT_NAME"15 ;;
p7) run_test "$INPUT_NAME"16 "$OUTPUT_NAME"16 ;;
p8) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p9) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p10) run_test "$INPUT_NAME"21 "$OUTPUT_NAME"21 ;;
p11) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p12) run_test "$INPUT_NAME"24 "$OUTPUT_NAME"24 ;;
p13) run_test "$INPUT_NAME"26 "$OUTPUT_NAME"26 ;;
p14) run_test "$INPUT_NAME"27 "$OUTPUT_NAME"27 ;;
p15) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p16) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p17) run_test "$INPUT_NAME"33 "$OUTPUT_NAME"33 ;;
esac
exit 1
