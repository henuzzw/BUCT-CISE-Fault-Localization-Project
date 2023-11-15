#!/bin/bash
MAINFILE="111-A-12842177.c"
EXEFILE="111-A-12842177"
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
p1) run_test "$INPUT_NAME"1 "$OUTPUT_NAME"1 ;;
p2) run_test "$INPUT_NAME"2 "$OUTPUT_NAME"2 ;;
p3) run_test "$INPUT_NAME"3 "$OUTPUT_NAME"3 ;;
p4) run_test "$INPUT_NAME"5 "$OUTPUT_NAME"5 ;;
p5) run_test "$INPUT_NAME"6 "$OUTPUT_NAME"6 ;;
p6) run_test "$INPUT_NAME"7 "$OUTPUT_NAME"7 ;;
p7) run_test "$INPUT_NAME"8 "$OUTPUT_NAME"8 ;;
p8) run_test "$INPUT_NAME"9 "$OUTPUT_NAME"9 ;;
p9) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p10) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p11) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p12) run_test "$INPUT_NAME"15 "$OUTPUT_NAME"15 ;;
p13) run_test "$INPUT_NAME"16 "$OUTPUT_NAME"16 ;;
p14) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p15) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p16) run_test "$INPUT_NAME"21 "$OUTPUT_NAME"21 ;;
p17) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p18) run_test "$INPUT_NAME"23 "$OUTPUT_NAME"23 ;;
p19) run_test "$INPUT_NAME"24 "$OUTPUT_NAME"24 ;;
p20) run_test "$INPUT_NAME"26 "$OUTPUT_NAME"26 ;;
p21) run_test "$INPUT_NAME"27 "$OUTPUT_NAME"27 ;;
p22) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p23) run_test "$INPUT_NAME"31 "$OUTPUT_NAME"31 ;;
p24) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p25) run_test "$INPUT_NAME"33 "$OUTPUT_NAME"33 ;;
p26) run_test "$INPUT_NAME"34 "$OUTPUT_NAME"34 ;;
p27) run_test "$INPUT_NAME"35 "$OUTPUT_NAME"35 ;;
p28) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p29) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p30) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p31) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p32) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p33) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
esac
exit 1
