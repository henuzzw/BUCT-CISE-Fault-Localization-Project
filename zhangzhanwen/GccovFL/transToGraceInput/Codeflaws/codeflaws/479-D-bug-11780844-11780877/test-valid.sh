#!/bin/bash
MAINFILE="479-D-11780844.c"
EXEFILE="479-D-11780844"
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
p7) run_test "$INPUT_NAME"9 "$OUTPUT_NAME"9 ;;
p8) run_test "$INPUT_NAME"10 "$OUTPUT_NAME"10 ;;
p9) run_test "$INPUT_NAME"11 "$OUTPUT_NAME"11 ;;
p10) run_test "$INPUT_NAME"12 "$OUTPUT_NAME"12 ;;
p11) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p12) run_test "$INPUT_NAME"14 "$OUTPUT_NAME"14 ;;
p13) run_test "$INPUT_NAME"15 "$OUTPUT_NAME"15 ;;
p14) run_test "$INPUT_NAME"16 "$OUTPUT_NAME"16 ;;
p15) run_test "$INPUT_NAME"17 "$OUTPUT_NAME"17 ;;
p16) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p17) run_test "$INPUT_NAME"19 "$OUTPUT_NAME"19 ;;
p18) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p19) run_test "$INPUT_NAME"21 "$OUTPUT_NAME"21 ;;
p20) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p21) run_test "$INPUT_NAME"23 "$OUTPUT_NAME"23 ;;
p22) run_test "$INPUT_NAME"24 "$OUTPUT_NAME"24 ;;
p23) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p24) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p25) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p26) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p27) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p28) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
p29) run_test "$INPUT_NAME"60 "$OUTPUT_NAME"60 ;;
p30) run_test "$INPUT_NAME"61 "$OUTPUT_NAME"61 ;;
p31) run_test "$INPUT_NAME"62 "$OUTPUT_NAME"62 ;;
p32) run_test "$INPUT_NAME"63 "$OUTPUT_NAME"63 ;;
p33) run_test "$INPUT_NAME"64 "$OUTPUT_NAME"64 ;;
p34) run_test "$INPUT_NAME"66 "$OUTPUT_NAME"66 ;;
p35) run_test "$INPUT_NAME"67 "$OUTPUT_NAME"67 ;;
p36) run_test "$INPUT_NAME"68 "$OUTPUT_NAME"68 ;;
p37) run_test "$INPUT_NAME"69 "$OUTPUT_NAME"69 ;;
p38) run_test "$INPUT_NAME"70 "$OUTPUT_NAME"70 ;;
p39) run_test "$INPUT_NAME"71 "$OUTPUT_NAME"71 ;;
p40) run_test "$INPUT_NAME"72 "$OUTPUT_NAME"72 ;;
p41) run_test "$INPUT_NAME"73 "$OUTPUT_NAME"73 ;;
p42) run_test "$INPUT_NAME"74 "$OUTPUT_NAME"74 ;;
p43) run_test "$INPUT_NAME"75 "$OUTPUT_NAME"75 ;;
p44) run_test "$INPUT_NAME"76 "$OUTPUT_NAME"76 ;;
p45) run_test "$INPUT_NAME"77 "$OUTPUT_NAME"77 ;;
p46) run_test "$INPUT_NAME"78 "$OUTPUT_NAME"78 ;;
p47) run_test "$INPUT_NAME"79 "$OUTPUT_NAME"79 ;;
esac
exit 1
