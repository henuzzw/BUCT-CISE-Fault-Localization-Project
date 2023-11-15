#!/bin/bash
MAINFILE="621-B-15783785.c"
EXEFILE="621-B-15783785"
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
p7) run_test "$INPUT_NAME"9 "$OUTPUT_NAME"9 ;;
p8) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p9) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p10) run_test "$INPUT_NAME"12 "$OUTPUT_NAME"12 ;;
p11) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p12) run_test "$INPUT_NAME"14 "$OUTPUT_NAME"14 ;;
p13) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p14) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p15) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p16) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p17) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
p18) run_test "$INPUT_NAME"60 "$OUTPUT_NAME"60 ;;
p19) run_test "$INPUT_NAME"61 "$OUTPUT_NAME"61 ;;
p20) run_test "$INPUT_NAME"62 "$OUTPUT_NAME"62 ;;
p21) run_test "$INPUT_NAME"63 "$OUTPUT_NAME"63 ;;
p22) run_test "$INPUT_NAME"64 "$OUTPUT_NAME"64 ;;
p23) run_test "$INPUT_NAME"65 "$OUTPUT_NAME"65 ;;
p24) run_test "$INPUT_NAME"66 "$OUTPUT_NAME"66 ;;
p25) run_test "$INPUT_NAME"67 "$OUTPUT_NAME"67 ;;
p26) run_test "$INPUT_NAME"68 "$OUTPUT_NAME"68 ;;
esac
exit 1
