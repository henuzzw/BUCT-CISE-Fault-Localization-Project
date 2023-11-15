#!/bin/bash
MAINFILE="670-D2-17917943.c"
EXEFILE="670-D2-17917943"
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
p8) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p9) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p10) run_test "$INPUT_NAME"12 "$OUTPUT_NAME"12 ;;
p11) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p12) run_test "$INPUT_NAME"14 "$OUTPUT_NAME"14 ;;
p13) run_test "$INPUT_NAME"117 "$OUTPUT_NAME"117 ;;
p14) run_test "$INPUT_NAME"118 "$OUTPUT_NAME"118 ;;
p15) run_test "$INPUT_NAME"119 "$OUTPUT_NAME"119 ;;
p16) run_test "$INPUT_NAME"120 "$OUTPUT_NAME"120 ;;
p17) run_test "$INPUT_NAME"121 "$OUTPUT_NAME"121 ;;
p18) run_test "$INPUT_NAME"122 "$OUTPUT_NAME"122 ;;
p19) run_test "$INPUT_NAME"123 "$OUTPUT_NAME"123 ;;
p20) run_test "$INPUT_NAME"124 "$OUTPUT_NAME"124 ;;
p21) run_test "$INPUT_NAME"125 "$OUTPUT_NAME"125 ;;
p22) run_test "$INPUT_NAME"128 "$OUTPUT_NAME"128 ;;
p23) run_test "$INPUT_NAME"130 "$OUTPUT_NAME"130 ;;
p24) run_test "$INPUT_NAME"131 "$OUTPUT_NAME"131 ;;
p25) run_test "$INPUT_NAME"132 "$OUTPUT_NAME"132 ;;
p26) run_test "$INPUT_NAME"134 "$OUTPUT_NAME"134 ;;
p27) run_test "$INPUT_NAME"135 "$OUTPUT_NAME"135 ;;
p28) run_test "$INPUT_NAME"136 "$OUTPUT_NAME"136 ;;
p29) run_test "$INPUT_NAME"137 "$OUTPUT_NAME"137 ;;
p30) run_test "$INPUT_NAME"140 "$OUTPUT_NAME"140 ;;
p31) run_test "$INPUT_NAME"141 "$OUTPUT_NAME"141 ;;
p32) run_test "$INPUT_NAME"142 "$OUTPUT_NAME"142 ;;
p33) run_test "$INPUT_NAME"143 "$OUTPUT_NAME"143 ;;
p34) run_test "$INPUT_NAME"144 "$OUTPUT_NAME"144 ;;
p35) run_test "$INPUT_NAME"145 "$OUTPUT_NAME"145 ;;
p36) run_test "$INPUT_NAME"146 "$OUTPUT_NAME"146 ;;
p37) run_test "$INPUT_NAME"147 "$OUTPUT_NAME"147 ;;
p38) run_test "$INPUT_NAME"149 "$OUTPUT_NAME"149 ;;
p39) run_test "$INPUT_NAME"150 "$OUTPUT_NAME"150 ;;
esac
exit 1
