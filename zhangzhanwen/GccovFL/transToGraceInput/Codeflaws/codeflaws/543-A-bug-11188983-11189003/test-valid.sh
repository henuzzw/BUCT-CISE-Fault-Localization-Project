#!/bin/bash
MAINFILE="543-A-11188983.c"
EXEFILE="543-A-11188983"
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
p3) run_test "$INPUT_NAME"4 "$OUTPUT_NAME"4 ;;
p4) run_test "$INPUT_NAME"5 "$OUTPUT_NAME"5 ;;
p5) run_test "$INPUT_NAME"6 "$OUTPUT_NAME"6 ;;
p6) run_test "$INPUT_NAME"8 "$OUTPUT_NAME"8 ;;
p7) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p8) run_test "$INPUT_NAME"16 "$OUTPUT_NAME"16 ;;
p9) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p10) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
p11) run_test "$INPUT_NAME"40 "$OUTPUT_NAME"40 ;;
p12) run_test "$INPUT_NAME"41 "$OUTPUT_NAME"41 ;;
p13) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p14) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p15) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p16) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p17) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p18) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
p19) run_test "$INPUT_NAME"48 "$OUTPUT_NAME"48 ;;
p20) run_test "$INPUT_NAME"49 "$OUTPUT_NAME"49 ;;
p21) run_test "$INPUT_NAME"50 "$OUTPUT_NAME"50 ;;
p22) run_test "$INPUT_NAME"51 "$OUTPUT_NAME"51 ;;
p23) run_test "$INPUT_NAME"53 "$OUTPUT_NAME"53 ;;
p24) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p25) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p26) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p27) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p28) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p29) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
esac
exit 1
