#!/bin/bash
MAINFILE="599-B-15615019.c"
EXEFILE="599-B-15615019"
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
p3) run_test "$INPUT_NAME"5 "$OUTPUT_NAME"5 ;;
p4) run_test "$INPUT_NAME"7 "$OUTPUT_NAME"7 ;;
p5) run_test "$INPUT_NAME"8 "$OUTPUT_NAME"8 ;;
p6) run_test "$INPUT_NAME"9 "$OUTPUT_NAME"9 ;;
p7) run_test "$INPUT_NAME"12 "$OUTPUT_NAME"12 ;;
p8) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p9) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p10) run_test "$INPUT_NAME"27 "$OUTPUT_NAME"27 ;;
p11) run_test "$INPUT_NAME"28 "$OUTPUT_NAME"28 ;;
p12) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p13) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p14) run_test "$INPUT_NAME"31 "$OUTPUT_NAME"31 ;;
p15) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p16) run_test "$INPUT_NAME"34 "$OUTPUT_NAME"34 ;;
p17) run_test "$INPUT_NAME"36 "$OUTPUT_NAME"36 ;;
p18) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p19) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
p20) run_test "$INPUT_NAME"40 "$OUTPUT_NAME"40 ;;
p21) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p22) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p23) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p24) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p25) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
p26) run_test "$INPUT_NAME"48 "$OUTPUT_NAME"48 ;;
p27) run_test "$INPUT_NAME"49 "$OUTPUT_NAME"49 ;;
p28) run_test "$INPUT_NAME"50 "$OUTPUT_NAME"50 ;;
p29) run_test "$INPUT_NAME"51 "$OUTPUT_NAME"51 ;;
p30) run_test "$INPUT_NAME"52 "$OUTPUT_NAME"52 ;;
p31) run_test "$INPUT_NAME"53 "$OUTPUT_NAME"53 ;;
p32) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p33) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p34) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p35) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p36) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p37) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
p38) run_test "$INPUT_NAME"60 "$OUTPUT_NAME"60 ;;
p39) run_test "$INPUT_NAME"61 "$OUTPUT_NAME"61 ;;
esac
exit 1
