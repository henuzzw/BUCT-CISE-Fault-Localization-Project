#!/bin/bash
MAINFILE="658-C-16998123.c"
EXEFILE="658-C-16998123"
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
p1) run_test "$INPUT_NAME"4 "$OUTPUT_NAME"4 ;;
p2) run_test "$INPUT_NAME"7 "$OUTPUT_NAME"7 ;;
p3) run_test "$INPUT_NAME"8 "$OUTPUT_NAME"8 ;;
p4) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p5) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p6) run_test "$INPUT_NAME"12 "$OUTPUT_NAME"12 ;;
p7) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p8) run_test "$INPUT_NAME"16 "$OUTPUT_NAME"16 ;;
p9) run_test "$INPUT_NAME"17 "$OUTPUT_NAME"17 ;;
p10) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p11) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p12) run_test "$INPUT_NAME"24 "$OUTPUT_NAME"24 ;;
p13) run_test "$INPUT_NAME"25 "$OUTPUT_NAME"25 ;;
p14) run_test "$INPUT_NAME"28 "$OUTPUT_NAME"28 ;;
p15) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p16) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p17) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p18) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p19) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p20) run_test "$INPUT_NAME"51 "$OUTPUT_NAME"51 ;;
p21) run_test "$INPUT_NAME"52 "$OUTPUT_NAME"52 ;;
p22) run_test "$INPUT_NAME"53 "$OUTPUT_NAME"53 ;;
p23) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p24) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p25) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p26) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p27) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p28) run_test "$INPUT_NAME"60 "$OUTPUT_NAME"60 ;;
p29) run_test "$INPUT_NAME"63 "$OUTPUT_NAME"63 ;;
p30) run_test "$INPUT_NAME"64 "$OUTPUT_NAME"64 ;;
p31) run_test "$INPUT_NAME"68 "$OUTPUT_NAME"68 ;;
p32) run_test "$INPUT_NAME"69 "$OUTPUT_NAME"69 ;;
p33) run_test "$INPUT_NAME"71 "$OUTPUT_NAME"71 ;;
esac
exit 1
