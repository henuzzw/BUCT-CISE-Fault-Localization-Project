#!/bin/bash
MAINFILE="401-A-16437058.c"
EXEFILE="401-A-16437058"
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
p6) run_test "$INPUT_NAME"7 "$OUTPUT_NAME"7 ;;
p7) run_test "$INPUT_NAME"8 "$OUTPUT_NAME"8 ;;
p8) run_test "$INPUT_NAME"9 "$OUTPUT_NAME"9 ;;
p9) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p10) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p11) run_test "$INPUT_NAME"12 "$OUTPUT_NAME"12 ;;
p12) run_test "$INPUT_NAME"14 "$OUTPUT_NAME"14 ;;
p13) run_test "$INPUT_NAME"15 "$OUTPUT_NAME"15 ;;
p14) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p15) run_test "$INPUT_NAME"21 "$OUTPUT_NAME"21 ;;
p16) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p17) run_test "$INPUT_NAME"25 "$OUTPUT_NAME"25 ;;
p18) run_test "$INPUT_NAME"34 "$OUTPUT_NAME"34 ;;
p19) run_test "$INPUT_NAME"36 "$OUTPUT_NAME"36 ;;
p20) run_test "$INPUT_NAME"37 "$OUTPUT_NAME"37 ;;
p21) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p22) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
p23) run_test "$INPUT_NAME"40 "$OUTPUT_NAME"40 ;;
p24) run_test "$INPUT_NAME"41 "$OUTPUT_NAME"41 ;;
p25) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p26) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p27) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p28) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p29) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p30) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
esac
exit 1
