#!/bin/bash
MAINFILE="451-B-17972601.c"
EXEFILE="451-B-17972601"
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
p4) run_test "$INPUT_NAME"4 "$OUTPUT_NAME"4 ;;
p5) run_test "$INPUT_NAME"5 "$OUTPUT_NAME"5 ;;
p6) run_test "$INPUT_NAME"6 "$OUTPUT_NAME"6 ;;
p7) run_test "$INPUT_NAME"7 "$OUTPUT_NAME"7 ;;
p8) run_test "$INPUT_NAME"8 "$OUTPUT_NAME"8 ;;
p9) run_test "$INPUT_NAME"9 "$OUTPUT_NAME"9 ;;
p10) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p11) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p12) run_test "$INPUT_NAME"12 "$OUTPUT_NAME"12 ;;
p13) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p14) run_test "$INPUT_NAME"14 "$OUTPUT_NAME"14 ;;
p15) run_test "$INPUT_NAME"15 "$OUTPUT_NAME"15 ;;
p16) run_test "$INPUT_NAME"16 "$OUTPUT_NAME"16 ;;
p17) run_test "$INPUT_NAME"25 "$OUTPUT_NAME"25 ;;
p18) run_test "$INPUT_NAME"26 "$OUTPUT_NAME"26 ;;
p19) run_test "$INPUT_NAME"27 "$OUTPUT_NAME"27 ;;
p20) run_test "$INPUT_NAME"28 "$OUTPUT_NAME"28 ;;
p21) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p22) run_test "$INPUT_NAME"36 "$OUTPUT_NAME"36 ;;
p23) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p24) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p25) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p26) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
p27) run_test "$INPUT_NAME"48 "$OUTPUT_NAME"48 ;;
p28) run_test "$INPUT_NAME"49 "$OUTPUT_NAME"49 ;;
p29) run_test "$INPUT_NAME"50 "$OUTPUT_NAME"50 ;;
p30) run_test "$INPUT_NAME"51 "$OUTPUT_NAME"51 ;;
p31) run_test "$INPUT_NAME"52 "$OUTPUT_NAME"52 ;;
p32) run_test "$INPUT_NAME"53 "$OUTPUT_NAME"53 ;;
p33) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p34) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
esac
exit 1
