#!/bin/bash
MAINFILE="535-A-18162703.c"
EXEFILE="535-A-18162703"
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
p12) run_test "$INPUT_NAME"13 "$OUTPUT_NAME"13 ;;
p13) run_test "$INPUT_NAME"14 "$OUTPUT_NAME"14 ;;
p14) run_test "$INPUT_NAME"15 "$OUTPUT_NAME"15 ;;
p15) run_test "$INPUT_NAME"16 "$OUTPUT_NAME"16 ;;
p16) run_test "$INPUT_NAME"17 "$OUTPUT_NAME"17 ;;
p17) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p18) run_test "$INPUT_NAME"19 "$OUTPUT_NAME"19 ;;
p19) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p20) run_test "$INPUT_NAME"21 "$OUTPUT_NAME"21 ;;
p21) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p22) run_test "$INPUT_NAME"23 "$OUTPUT_NAME"23 ;;
p23) run_test "$INPUT_NAME"24 "$OUTPUT_NAME"24 ;;
p24) run_test "$INPUT_NAME"25 "$OUTPUT_NAME"25 ;;
p25) run_test "$INPUT_NAME"26 "$OUTPUT_NAME"26 ;;
p26) run_test "$INPUT_NAME"27 "$OUTPUT_NAME"27 ;;
p27) run_test "$INPUT_NAME"28 "$OUTPUT_NAME"28 ;;
p28) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p29) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p30) run_test "$INPUT_NAME"31 "$OUTPUT_NAME"31 ;;
p31) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p32) run_test "$INPUT_NAME"33 "$OUTPUT_NAME"33 ;;
p33) run_test "$INPUT_NAME"34 "$OUTPUT_NAME"34 ;;
p34) run_test "$INPUT_NAME"35 "$OUTPUT_NAME"35 ;;
p35) run_test "$INPUT_NAME"36 "$OUTPUT_NAME"36 ;;
p36) run_test "$INPUT_NAME"37 "$OUTPUT_NAME"37 ;;
p37) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p38) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
p39) run_test "$INPUT_NAME"40 "$OUTPUT_NAME"40 ;;
p40) run_test "$INPUT_NAME"41 "$OUTPUT_NAME"41 ;;
p41) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p42) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p43) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p44) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p45) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p46) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
p47) run_test "$INPUT_NAME"48 "$OUTPUT_NAME"48 ;;
p48) run_test "$INPUT_NAME"49 "$OUTPUT_NAME"49 ;;
p49) run_test "$INPUT_NAME"50 "$OUTPUT_NAME"50 ;;
p50) run_test "$INPUT_NAME"51 "$OUTPUT_NAME"51 ;;
p51) run_test "$INPUT_NAME"52 "$OUTPUT_NAME"52 ;;
p52) run_test "$INPUT_NAME"53 "$OUTPUT_NAME"53 ;;
p53) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p54) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p55) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p56) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p57) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p58) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
p59) run_test "$INPUT_NAME"60 "$OUTPUT_NAME"60 ;;
p60) run_test "$INPUT_NAME"61 "$OUTPUT_NAME"61 ;;
p61) run_test "$INPUT_NAME"62 "$OUTPUT_NAME"62 ;;
p62) run_test "$INPUT_NAME"63 "$OUTPUT_NAME"63 ;;
p63) run_test "$INPUT_NAME"64 "$OUTPUT_NAME"64 ;;
p64) run_test "$INPUT_NAME"65 "$OUTPUT_NAME"65 ;;
p65) run_test "$INPUT_NAME"66 "$OUTPUT_NAME"66 ;;
p66) run_test "$INPUT_NAME"67 "$OUTPUT_NAME"67 ;;
p67) run_test "$INPUT_NAME"68 "$OUTPUT_NAME"68 ;;
p68) run_test "$INPUT_NAME"69 "$OUTPUT_NAME"69 ;;
p69) run_test "$INPUT_NAME"70 "$OUTPUT_NAME"70 ;;
p70) run_test "$INPUT_NAME"71 "$OUTPUT_NAME"71 ;;
p71) run_test "$INPUT_NAME"72 "$OUTPUT_NAME"72 ;;
p72) run_test "$INPUT_NAME"73 "$OUTPUT_NAME"73 ;;
p73) run_test "$INPUT_NAME"74 "$OUTPUT_NAME"74 ;;
p74) run_test "$INPUT_NAME"75 "$OUTPUT_NAME"75 ;;
p75) run_test "$INPUT_NAME"76 "$OUTPUT_NAME"76 ;;
p76) run_test "$INPUT_NAME"77 "$OUTPUT_NAME"77 ;;
p77) run_test "$INPUT_NAME"78 "$OUTPUT_NAME"78 ;;
p78) run_test "$INPUT_NAME"79 "$OUTPUT_NAME"79 ;;
p79) run_test "$INPUT_NAME"80 "$OUTPUT_NAME"80 ;;
p80) run_test "$INPUT_NAME"81 "$OUTPUT_NAME"81 ;;
p81) run_test "$INPUT_NAME"82 "$OUTPUT_NAME"82 ;;
p82) run_test "$INPUT_NAME"83 "$OUTPUT_NAME"83 ;;
p83) run_test "$INPUT_NAME"84 "$OUTPUT_NAME"84 ;;
p84) run_test "$INPUT_NAME"85 "$OUTPUT_NAME"85 ;;
p85) run_test "$INPUT_NAME"86 "$OUTPUT_NAME"86 ;;
p86) run_test "$INPUT_NAME"87 "$OUTPUT_NAME"87 ;;
p87) run_test "$INPUT_NAME"88 "$OUTPUT_NAME"88 ;;
p88) run_test "$INPUT_NAME"89 "$OUTPUT_NAME"89 ;;
p89) run_test "$INPUT_NAME"90 "$OUTPUT_NAME"90 ;;
p90) run_test "$INPUT_NAME"91 "$OUTPUT_NAME"91 ;;
p91) run_test "$INPUT_NAME"92 "$OUTPUT_NAME"92 ;;
p92) run_test "$INPUT_NAME"93 "$OUTPUT_NAME"93 ;;
p93) run_test "$INPUT_NAME"94 "$OUTPUT_NAME"94 ;;
p94) run_test "$INPUT_NAME"95 "$OUTPUT_NAME"95 ;;
p95) run_test "$INPUT_NAME"96 "$OUTPUT_NAME"96 ;;
p96) run_test "$INPUT_NAME"97 "$OUTPUT_NAME"97 ;;
p97) run_test "$INPUT_NAME"98 "$OUTPUT_NAME"98 ;;
p98) run_test "$INPUT_NAME"99 "$OUTPUT_NAME"99 ;;
p99) run_test "$INPUT_NAME"100 "$OUTPUT_NAME"100 ;;
esac
exit 1
