#!/bin/bash
MAINFILE="670-A-17963192.c"
EXEFILE="670-A-17963192"
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
p17) run_test "$INPUT_NAME"17 "$OUTPUT_NAME"17 ;;
p18) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p19) run_test "$INPUT_NAME"19 "$OUTPUT_NAME"19 ;;
p20) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p21) run_test "$INPUT_NAME"21 "$OUTPUT_NAME"21 ;;
p22) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p23) run_test "$INPUT_NAME"23 "$OUTPUT_NAME"23 ;;
p24) run_test "$INPUT_NAME"24 "$OUTPUT_NAME"24 ;;
p25) run_test "$INPUT_NAME"25 "$OUTPUT_NAME"25 ;;
p26) run_test "$INPUT_NAME"26 "$OUTPUT_NAME"26 ;;
p27) run_test "$INPUT_NAME"27 "$OUTPUT_NAME"27 ;;
p28) run_test "$INPUT_NAME"28 "$OUTPUT_NAME"28 ;;
p29) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p30) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p31) run_test "$INPUT_NAME"31 "$OUTPUT_NAME"31 ;;
p32) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p33) run_test "$INPUT_NAME"33 "$OUTPUT_NAME"33 ;;
p34) run_test "$INPUT_NAME"34 "$OUTPUT_NAME"34 ;;
p35) run_test "$INPUT_NAME"35 "$OUTPUT_NAME"35 ;;
p36) run_test "$INPUT_NAME"36 "$OUTPUT_NAME"36 ;;
p37) run_test "$INPUT_NAME"37 "$OUTPUT_NAME"37 ;;
p38) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p39) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
p40) run_test "$INPUT_NAME"40 "$OUTPUT_NAME"40 ;;
p41) run_test "$INPUT_NAME"41 "$OUTPUT_NAME"41 ;;
p42) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p43) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p44) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p45) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p46) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p47) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
p48) run_test "$INPUT_NAME"48 "$OUTPUT_NAME"48 ;;
p49) run_test "$INPUT_NAME"49 "$OUTPUT_NAME"49 ;;
p50) run_test "$INPUT_NAME"50 "$OUTPUT_NAME"50 ;;
p51) run_test "$INPUT_NAME"51 "$OUTPUT_NAME"51 ;;
p52) run_test "$INPUT_NAME"52 "$OUTPUT_NAME"52 ;;
p53) run_test "$INPUT_NAME"53 "$OUTPUT_NAME"53 ;;
p54) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p55) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p56) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p57) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p58) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p59) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
p60) run_test "$INPUT_NAME"60 "$OUTPUT_NAME"60 ;;
p61) run_test "$INPUT_NAME"61 "$OUTPUT_NAME"61 ;;
p62) run_test "$INPUT_NAME"62 "$OUTPUT_NAME"62 ;;
p63) run_test "$INPUT_NAME"63 "$OUTPUT_NAME"63 ;;
p64) run_test "$INPUT_NAME"64 "$OUTPUT_NAME"64 ;;
p65) run_test "$INPUT_NAME"65 "$OUTPUT_NAME"65 ;;
p66) run_test "$INPUT_NAME"66 "$OUTPUT_NAME"66 ;;
p67) run_test "$INPUT_NAME"67 "$OUTPUT_NAME"67 ;;
p68) run_test "$INPUT_NAME"68 "$OUTPUT_NAME"68 ;;
p69) run_test "$INPUT_NAME"69 "$OUTPUT_NAME"69 ;;
p70) run_test "$INPUT_NAME"70 "$OUTPUT_NAME"70 ;;
p71) run_test "$INPUT_NAME"71 "$OUTPUT_NAME"71 ;;
p72) run_test "$INPUT_NAME"72 "$OUTPUT_NAME"72 ;;
p73) run_test "$INPUT_NAME"73 "$OUTPUT_NAME"73 ;;
p74) run_test "$INPUT_NAME"74 "$OUTPUT_NAME"74 ;;
p75) run_test "$INPUT_NAME"75 "$OUTPUT_NAME"75 ;;
p76) run_test "$INPUT_NAME"76 "$OUTPUT_NAME"76 ;;
p77) run_test "$INPUT_NAME"77 "$OUTPUT_NAME"77 ;;
p78) run_test "$INPUT_NAME"78 "$OUTPUT_NAME"78 ;;
p79) run_test "$INPUT_NAME"79 "$OUTPUT_NAME"79 ;;
p80) run_test "$INPUT_NAME"80 "$OUTPUT_NAME"80 ;;
p81) run_test "$INPUT_NAME"81 "$OUTPUT_NAME"81 ;;
p82) run_test "$INPUT_NAME"82 "$OUTPUT_NAME"82 ;;
p83) run_test "$INPUT_NAME"83 "$OUTPUT_NAME"83 ;;
p84) run_test "$INPUT_NAME"84 "$OUTPUT_NAME"84 ;;
p85) run_test "$INPUT_NAME"85 "$OUTPUT_NAME"85 ;;
p86) run_test "$INPUT_NAME"86 "$OUTPUT_NAME"86 ;;
p87) run_test "$INPUT_NAME"87 "$OUTPUT_NAME"87 ;;
p88) run_test "$INPUT_NAME"88 "$OUTPUT_NAME"88 ;;
p89) run_test "$INPUT_NAME"89 "$OUTPUT_NAME"89 ;;
p90) run_test "$INPUT_NAME"90 "$OUTPUT_NAME"90 ;;
p91) run_test "$INPUT_NAME"91 "$OUTPUT_NAME"91 ;;
p92) run_test "$INPUT_NAME"92 "$OUTPUT_NAME"92 ;;
p93) run_test "$INPUT_NAME"93 "$OUTPUT_NAME"93 ;;
p94) run_test "$INPUT_NAME"94 "$OUTPUT_NAME"94 ;;
p95) run_test "$INPUT_NAME"95 "$OUTPUT_NAME"95 ;;
p96) run_test "$INPUT_NAME"96 "$OUTPUT_NAME"96 ;;
p97) run_test "$INPUT_NAME"97 "$OUTPUT_NAME"97 ;;
p98) run_test "$INPUT_NAME"98 "$OUTPUT_NAME"98 ;;
p99) run_test "$INPUT_NAME"99 "$OUTPUT_NAME"99 ;;
p100) run_test "$INPUT_NAME"100 "$OUTPUT_NAME"100 ;;
p101) run_test "$INPUT_NAME"101 "$OUTPUT_NAME"101 ;;
p102) run_test "$INPUT_NAME"102 "$OUTPUT_NAME"102 ;;
p103) run_test "$INPUT_NAME"103 "$OUTPUT_NAME"103 ;;
p104) run_test "$INPUT_NAME"104 "$OUTPUT_NAME"104 ;;
p105) run_test "$INPUT_NAME"105 "$OUTPUT_NAME"105 ;;
p106) run_test "$INPUT_NAME"106 "$OUTPUT_NAME"106 ;;
p107) run_test "$INPUT_NAME"107 "$OUTPUT_NAME"107 ;;
p108) run_test "$INPUT_NAME"108 "$OUTPUT_NAME"108 ;;
p109) run_test "$INPUT_NAME"109 "$OUTPUT_NAME"109 ;;
p110) run_test "$INPUT_NAME"110 "$OUTPUT_NAME"110 ;;
p111) run_test "$INPUT_NAME"111 "$OUTPUT_NAME"111 ;;
p112) run_test "$INPUT_NAME"112 "$OUTPUT_NAME"112 ;;
p113) run_test "$INPUT_NAME"113 "$OUTPUT_NAME"113 ;;
p114) run_test "$INPUT_NAME"114 "$OUTPUT_NAME"114 ;;
p115) run_test "$INPUT_NAME"115 "$OUTPUT_NAME"115 ;;
p116) run_test "$INPUT_NAME"116 "$OUTPUT_NAME"116 ;;
p117) run_test "$INPUT_NAME"117 "$OUTPUT_NAME"117 ;;
p118) run_test "$INPUT_NAME"118 "$OUTPUT_NAME"118 ;;
p119) run_test "$INPUT_NAME"119 "$OUTPUT_NAME"119 ;;
p120) run_test "$INPUT_NAME"120 "$OUTPUT_NAME"120 ;;
p121) run_test "$INPUT_NAME"121 "$OUTPUT_NAME"121 ;;
p122) run_test "$INPUT_NAME"122 "$OUTPUT_NAME"122 ;;
p123) run_test "$INPUT_NAME"123 "$OUTPUT_NAME"123 ;;
p124) run_test "$INPUT_NAME"124 "$OUTPUT_NAME"124 ;;
p125) run_test "$INPUT_NAME"125 "$OUTPUT_NAME"125 ;;
p126) run_test "$INPUT_NAME"126 "$OUTPUT_NAME"126 ;;
p127) run_test "$INPUT_NAME"127 "$OUTPUT_NAME"127 ;;
p128) run_test "$INPUT_NAME"128 "$OUTPUT_NAME"128 ;;
p129) run_test "$INPUT_NAME"129 "$OUTPUT_NAME"129 ;;
p130) run_test "$INPUT_NAME"130 "$OUTPUT_NAME"130 ;;
p131) run_test "$INPUT_NAME"131 "$OUTPUT_NAME"131 ;;
p132) run_test "$INPUT_NAME"132 "$OUTPUT_NAME"132 ;;
p133) run_test "$INPUT_NAME"133 "$OUTPUT_NAME"133 ;;
p134) run_test "$INPUT_NAME"134 "$OUTPUT_NAME"134 ;;
p135) run_test "$INPUT_NAME"135 "$OUTPUT_NAME"135 ;;
p136) run_test "$INPUT_NAME"136 "$OUTPUT_NAME"136 ;;
p137) run_test "$INPUT_NAME"137 "$OUTPUT_NAME"137 ;;
p138) run_test "$INPUT_NAME"138 "$OUTPUT_NAME"138 ;;
p139) run_test "$INPUT_NAME"139 "$OUTPUT_NAME"139 ;;
p140) run_test "$INPUT_NAME"140 "$OUTPUT_NAME"140 ;;
p141) run_test "$INPUT_NAME"141 "$OUTPUT_NAME"141 ;;
p142) run_test "$INPUT_NAME"142 "$OUTPUT_NAME"142 ;;
p143) run_test "$INPUT_NAME"143 "$OUTPUT_NAME"143 ;;
p144) run_test "$INPUT_NAME"144 "$OUTPUT_NAME"144 ;;
p145) run_test "$INPUT_NAME"145 "$OUTPUT_NAME"145 ;;
p146) run_test "$INPUT_NAME"146 "$OUTPUT_NAME"146 ;;
p147) run_test "$INPUT_NAME"147 "$OUTPUT_NAME"147 ;;
p148) run_test "$INPUT_NAME"148 "$OUTPUT_NAME"148 ;;
p149) run_test "$INPUT_NAME"149 "$OUTPUT_NAME"149 ;;
p150) run_test "$INPUT_NAME"150 "$OUTPUT_NAME"150 ;;
p151) run_test "$INPUT_NAME"151 "$OUTPUT_NAME"151 ;;
p152) run_test "$INPUT_NAME"152 "$OUTPUT_NAME"152 ;;
p153) run_test "$INPUT_NAME"153 "$OUTPUT_NAME"153 ;;
p154) run_test "$INPUT_NAME"154 "$OUTPUT_NAME"154 ;;
p155) run_test "$INPUT_NAME"155 "$OUTPUT_NAME"155 ;;
p156) run_test "$INPUT_NAME"156 "$OUTPUT_NAME"156 ;;
p157) run_test "$INPUT_NAME"157 "$OUTPUT_NAME"157 ;;
p158) run_test "$INPUT_NAME"158 "$OUTPUT_NAME"158 ;;
p159) run_test "$INPUT_NAME"159 "$OUTPUT_NAME"159 ;;
p160) run_test "$INPUT_NAME"160 "$OUTPUT_NAME"160 ;;
p161) run_test "$INPUT_NAME"161 "$OUTPUT_NAME"161 ;;
p162) run_test "$INPUT_NAME"162 "$OUTPUT_NAME"162 ;;
p163) run_test "$INPUT_NAME"163 "$OUTPUT_NAME"163 ;;
p164) run_test "$INPUT_NAME"164 "$OUTPUT_NAME"164 ;;
p165) run_test "$INPUT_NAME"165 "$OUTPUT_NAME"165 ;;
p166) run_test "$INPUT_NAME"166 "$OUTPUT_NAME"166 ;;
p167) run_test "$INPUT_NAME"167 "$OUTPUT_NAME"167 ;;
p168) run_test "$INPUT_NAME"168 "$OUTPUT_NAME"168 ;;
p169) run_test "$INPUT_NAME"169 "$OUTPUT_NAME"169 ;;
p170) run_test "$INPUT_NAME"170 "$OUTPUT_NAME"170 ;;
p171) run_test "$INPUT_NAME"171 "$OUTPUT_NAME"171 ;;
p172) run_test "$INPUT_NAME"172 "$OUTPUT_NAME"172 ;;
p173) run_test "$INPUT_NAME"173 "$OUTPUT_NAME"173 ;;
p174) run_test "$INPUT_NAME"174 "$OUTPUT_NAME"174 ;;
p175) run_test "$INPUT_NAME"175 "$OUTPUT_NAME"175 ;;
p176) run_test "$INPUT_NAME"176 "$OUTPUT_NAME"176 ;;
p177) run_test "$INPUT_NAME"177 "$OUTPUT_NAME"177 ;;
p178) run_test "$INPUT_NAME"178 "$OUTPUT_NAME"178 ;;
p179) run_test "$INPUT_NAME"179 "$OUTPUT_NAME"179 ;;
p180) run_test "$INPUT_NAME"180 "$OUTPUT_NAME"180 ;;
p181) run_test "$INPUT_NAME"181 "$OUTPUT_NAME"181 ;;
p182) run_test "$INPUT_NAME"182 "$OUTPUT_NAME"182 ;;
p183) run_test "$INPUT_NAME"183 "$OUTPUT_NAME"183 ;;
p184) run_test "$INPUT_NAME"184 "$OUTPUT_NAME"184 ;;
p185) run_test "$INPUT_NAME"185 "$OUTPUT_NAME"185 ;;
p186) run_test "$INPUT_NAME"186 "$OUTPUT_NAME"186 ;;
p187) run_test "$INPUT_NAME"187 "$OUTPUT_NAME"187 ;;
p188) run_test "$INPUT_NAME"188 "$OUTPUT_NAME"188 ;;
p189) run_test "$INPUT_NAME"189 "$OUTPUT_NAME"189 ;;
p190) run_test "$INPUT_NAME"190 "$OUTPUT_NAME"190 ;;
p191) run_test "$INPUT_NAME"191 "$OUTPUT_NAME"191 ;;
p192) run_test "$INPUT_NAME"192 "$OUTPUT_NAME"192 ;;
p193) run_test "$INPUT_NAME"193 "$OUTPUT_NAME"193 ;;
p194) run_test "$INPUT_NAME"194 "$OUTPUT_NAME"194 ;;
p195) run_test "$INPUT_NAME"195 "$OUTPUT_NAME"195 ;;
p196) run_test "$INPUT_NAME"196 "$OUTPUT_NAME"196 ;;
p197) run_test "$INPUT_NAME"197 "$OUTPUT_NAME"197 ;;
p198) run_test "$INPUT_NAME"198 "$OUTPUT_NAME"198 ;;
esac
exit 1
