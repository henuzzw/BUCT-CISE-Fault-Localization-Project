#!/bin/bash
MAINFILE="603-A-14677680.c"
EXEFILE="603-A-14677680"
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
p23) run_test "$INPUT_NAME"25 "$OUTPUT_NAME"25 ;;
p24) run_test "$INPUT_NAME"26 "$OUTPUT_NAME"26 ;;
p25) run_test "$INPUT_NAME"27 "$OUTPUT_NAME"27 ;;
p26) run_test "$INPUT_NAME"28 "$OUTPUT_NAME"28 ;;
p27) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p28) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p29) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p30) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p31) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p32) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p33) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p34) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
p35) run_test "$INPUT_NAME"62 "$OUTPUT_NAME"62 ;;
p36) run_test "$INPUT_NAME"63 "$OUTPUT_NAME"63 ;;
p37) run_test "$INPUT_NAME"64 "$OUTPUT_NAME"64 ;;
p38) run_test "$INPUT_NAME"65 "$OUTPUT_NAME"65 ;;
p39) run_test "$INPUT_NAME"66 "$OUTPUT_NAME"66 ;;
p40) run_test "$INPUT_NAME"67 "$OUTPUT_NAME"67 ;;
p41) run_test "$INPUT_NAME"68 "$OUTPUT_NAME"68 ;;
p42) run_test "$INPUT_NAME"69 "$OUTPUT_NAME"69 ;;
p43) run_test "$INPUT_NAME"70 "$OUTPUT_NAME"70 ;;
p44) run_test "$INPUT_NAME"71 "$OUTPUT_NAME"71 ;;
p45) run_test "$INPUT_NAME"72 "$OUTPUT_NAME"72 ;;
p46) run_test "$INPUT_NAME"73 "$OUTPUT_NAME"73 ;;
p47) run_test "$INPUT_NAME"74 "$OUTPUT_NAME"74 ;;
p48) run_test "$INPUT_NAME"75 "$OUTPUT_NAME"75 ;;
p49) run_test "$INPUT_NAME"76 "$OUTPUT_NAME"76 ;;
p50) run_test "$INPUT_NAME"77 "$OUTPUT_NAME"77 ;;
p51) run_test "$INPUT_NAME"78 "$OUTPUT_NAME"78 ;;
p52) run_test "$INPUT_NAME"79 "$OUTPUT_NAME"79 ;;
p53) run_test "$INPUT_NAME"80 "$OUTPUT_NAME"80 ;;
p54) run_test "$INPUT_NAME"81 "$OUTPUT_NAME"81 ;;
p55) run_test "$INPUT_NAME"82 "$OUTPUT_NAME"82 ;;
p56) run_test "$INPUT_NAME"83 "$OUTPUT_NAME"83 ;;
p57) run_test "$INPUT_NAME"84 "$OUTPUT_NAME"84 ;;
p58) run_test "$INPUT_NAME"85 "$OUTPUT_NAME"85 ;;
p59) run_test "$INPUT_NAME"86 "$OUTPUT_NAME"86 ;;
p60) run_test "$INPUT_NAME"87 "$OUTPUT_NAME"87 ;;
p61) run_test "$INPUT_NAME"88 "$OUTPUT_NAME"88 ;;
p62) run_test "$INPUT_NAME"89 "$OUTPUT_NAME"89 ;;
esac
exit 1
