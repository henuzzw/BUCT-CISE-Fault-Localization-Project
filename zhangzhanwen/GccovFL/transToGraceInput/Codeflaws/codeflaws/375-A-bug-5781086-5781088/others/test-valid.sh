#!/bin/bash
MAINFILE="375-A-5781086.c"
EXEFILE="375-A-5781086"
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
p2) run_test "$INPUT_NAME"37 "$OUTPUT_NAME"37 ;;
p3) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p4) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
p5) run_test "$INPUT_NAME"40 "$OUTPUT_NAME"40 ;;
p6) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p7) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p8) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p9) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p10) run_test "$INPUT_NAME"49 "$OUTPUT_NAME"49 ;;
p11) run_test "$INPUT_NAME"50 "$OUTPUT_NAME"50 ;;
p12) run_test "$INPUT_NAME"52 "$OUTPUT_NAME"52 ;;
p13) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
esac
exit 1
