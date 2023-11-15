#!/bin/bash
MAINFILE="113-A-691902.c"
EXEFILE="113-A-691902"
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
p17) run_test "$INPUT_NAME"18 "$OUTPUT_NAME"18 ;;
p18) run_test "$INPUT_NAME"19 "$OUTPUT_NAME"19 ;;
p19) run_test "$INPUT_NAME"20 "$OUTPUT_NAME"20 ;;
p20) run_test "$INPUT_NAME"21 "$OUTPUT_NAME"21 ;;
p21) run_test "$INPUT_NAME"22 "$OUTPUT_NAME"22 ;;
p22) run_test "$INPUT_NAME"23 "$OUTPUT_NAME"23 ;;
p23) run_test "$INPUT_NAME"24 "$OUTPUT_NAME"24 ;;
p24) run_test "$INPUT_NAME"25 "$OUTPUT_NAME"25 ;;
p25) run_test "$INPUT_NAME"26 "$OUTPUT_NAME"26 ;;
p26) run_test "$INPUT_NAME"28 "$OUTPUT_NAME"28 ;;
p27) run_test "$INPUT_NAME"29 "$OUTPUT_NAME"29 ;;
p28) run_test "$INPUT_NAME"30 "$OUTPUT_NAME"30 ;;
p29) run_test "$INPUT_NAME"31 "$OUTPUT_NAME"31 ;;
p30) run_test "$INPUT_NAME"32 "$OUTPUT_NAME"32 ;;
p31) run_test "$INPUT_NAME"33 "$OUTPUT_NAME"33 ;;
p32) run_test "$INPUT_NAME"35 "$OUTPUT_NAME"35 ;;
p33) run_test "$INPUT_NAME"36 "$OUTPUT_NAME"36 ;;
p34) run_test "$INPUT_NAME"37 "$OUTPUT_NAME"37 ;;
p35) run_test "$INPUT_NAME"38 "$OUTPUT_NAME"38 ;;
p36) run_test "$INPUT_NAME"39 "$OUTPUT_NAME"39 ;;
p37) run_test "$INPUT_NAME"40 "$OUTPUT_NAME"40 ;;
p38) run_test "$INPUT_NAME"41 "$OUTPUT_NAME"41 ;;
p39) run_test "$INPUT_NAME"42 "$OUTPUT_NAME"42 ;;
p40) run_test "$INPUT_NAME"43 "$OUTPUT_NAME"43 ;;
p41) run_test "$INPUT_NAME"44 "$OUTPUT_NAME"44 ;;
p42) run_test "$INPUT_NAME"45 "$OUTPUT_NAME"45 ;;
p43) run_test "$INPUT_NAME"46 "$OUTPUT_NAME"46 ;;
p44) run_test "$INPUT_NAME"47 "$OUTPUT_NAME"47 ;;
p45) run_test "$INPUT_NAME"49 "$OUTPUT_NAME"49 ;;
p46) run_test "$INPUT_NAME"50 "$OUTPUT_NAME"50 ;;
p47) run_test "$INPUT_NAME"51 "$OUTPUT_NAME"51 ;;
p48) run_test "$INPUT_NAME"52 "$OUTPUT_NAME"52 ;;
p49) run_test "$INPUT_NAME"53 "$OUTPUT_NAME"53 ;;
p50) run_test "$INPUT_NAME"54 "$OUTPUT_NAME"54 ;;
p51) run_test "$INPUT_NAME"55 "$OUTPUT_NAME"55 ;;
p52) run_test "$INPUT_NAME"56 "$OUTPUT_NAME"56 ;;
p53) run_test "$INPUT_NAME"57 "$OUTPUT_NAME"57 ;;
p54) run_test "$INPUT_NAME"58 "$OUTPUT_NAME"58 ;;
p55) run_test "$INPUT_NAME"59 "$OUTPUT_NAME"59 ;;
p56) run_test "$INPUT_NAME"60 "$OUTPUT_NAME"60 ;;
p57) run_test "$INPUT_NAME"61 "$OUTPUT_NAME"61 ;;
p58) run_test "$INPUT_NAME"62 "$OUTPUT_NAME"62 ;;
p59) run_test "$INPUT_NAME"69 "$OUTPUT_NAME"69 ;;
p60) run_test "$INPUT_NAME"70 "$OUTPUT_NAME"70 ;;
p61) run_test "$INPUT_NAME"71 "$OUTPUT_NAME"71 ;;
p62) run_test "$INPUT_NAME"72 "$OUTPUT_NAME"72 ;;
p63) run_test "$INPUT_NAME"73 "$OUTPUT_NAME"73 ;;
p64) run_test "$INPUT_NAME"74 "$OUTPUT_NAME"74 ;;
p65) run_test "$INPUT_NAME"75 "$OUTPUT_NAME"75 ;;
p66) run_test "$INPUT_NAME"76 "$OUTPUT_NAME"76 ;;
p67) run_test "$INPUT_NAME"77 "$OUTPUT_NAME"77 ;;
p68) run_test "$INPUT_NAME"78 "$OUTPUT_NAME"78 ;;
p69) run_test "$INPUT_NAME"79 "$OUTPUT_NAME"79 ;;
p70) run_test "$INPUT_NAME"80 "$OUTPUT_NAME"80 ;;
p71) run_test "$INPUT_NAME"81 "$OUTPUT_NAME"81 ;;
p72) run_test "$INPUT_NAME"82 "$OUTPUT_NAME"82 ;;
p73) run_test "$INPUT_NAME"83 "$OUTPUT_NAME"83 ;;
p74) run_test "$INPUT_NAME"84 "$OUTPUT_NAME"84 ;;
p75) run_test "$INPUT_NAME"85 "$OUTPUT_NAME"85 ;;
p76) run_test "$INPUT_NAME"86 "$OUTPUT_NAME"86 ;;
p77) run_test "$INPUT_NAME"87 "$OUTPUT_NAME"87 ;;
p78) run_test "$INPUT_NAME"88 "$OUTPUT_NAME"88 ;;
p79) run_test "$INPUT_NAME"89 "$OUTPUT_NAME"89 ;;
p80) run_test "$INPUT_NAME"90 "$OUTPUT_NAME"90 ;;
p81) run_test "$INPUT_NAME"91 "$OUTPUT_NAME"91 ;;
p82) run_test "$INPUT_NAME"92 "$OUTPUT_NAME"92 ;;
p83) run_test "$INPUT_NAME"93 "$OUTPUT_NAME"93 ;;
p84) run_test "$INPUT_NAME"94 "$OUTPUT_NAME"94 ;;
p85) run_test "$INPUT_NAME"95 "$OUTPUT_NAME"95 ;;
p86) run_test "$INPUT_NAME"96 "$OUTPUT_NAME"96 ;;
p87) run_test "$INPUT_NAME"97 "$OUTPUT_NAME"97 ;;
p88) run_test "$INPUT_NAME"98 "$OUTPUT_NAME"98 ;;
p89) run_test "$INPUT_NAME"99 "$OUTPUT_NAME"99 ;;
p90) run_test "$INPUT_NAME"100 "$OUTPUT_NAME"100 ;;
p91) run_test "$INPUT_NAME"101 "$OUTPUT_NAME"101 ;;
p92) run_test "$INPUT_NAME"102 "$OUTPUT_NAME"102 ;;
p93) run_test "$INPUT_NAME"103 "$OUTPUT_NAME"103 ;;
p94) run_test "$INPUT_NAME"104 "$OUTPUT_NAME"104 ;;
p95) run_test "$INPUT_NAME"105 "$OUTPUT_NAME"105 ;;
p96) run_test "$INPUT_NAME"106 "$OUTPUT_NAME"106 ;;
p97) run_test "$INPUT_NAME"107 "$OUTPUT_NAME"107 ;;
p98) run_test "$INPUT_NAME"108 "$OUTPUT_NAME"108 ;;
p99) run_test "$INPUT_NAME"109 "$OUTPUT_NAME"109 ;;
p100) run_test "$INPUT_NAME"110 "$OUTPUT_NAME"110 ;;
p101) run_test "$INPUT_NAME"111 "$OUTPUT_NAME"111 ;;
p102) run_test "$INPUT_NAME"112 "$OUTPUT_NAME"112 ;;
p103) run_test "$INPUT_NAME"113 "$OUTPUT_NAME"113 ;;
p104) run_test "$INPUT_NAME"114 "$OUTPUT_NAME"114 ;;
p105) run_test "$INPUT_NAME"115 "$OUTPUT_NAME"115 ;;
p106) run_test "$INPUT_NAME"116 "$OUTPUT_NAME"116 ;;
p107) run_test "$INPUT_NAME"117 "$OUTPUT_NAME"117 ;;
p108) run_test "$INPUT_NAME"118 "$OUTPUT_NAME"118 ;;
p109) run_test "$INPUT_NAME"119 "$OUTPUT_NAME"119 ;;
p110) run_test "$INPUT_NAME"120 "$OUTPUT_NAME"120 ;;
p111) run_test "$INPUT_NAME"121 "$OUTPUT_NAME"121 ;;
p112) run_test "$INPUT_NAME"122 "$OUTPUT_NAME"122 ;;
p113) run_test "$INPUT_NAME"123 "$OUTPUT_NAME"123 ;;
p114) run_test "$INPUT_NAME"124 "$OUTPUT_NAME"124 ;;
p115) run_test "$INPUT_NAME"125 "$OUTPUT_NAME"125 ;;
p116) run_test "$INPUT_NAME"126 "$OUTPUT_NAME"126 ;;
p117) run_test "$INPUT_NAME"127 "$OUTPUT_NAME"127 ;;
p118) run_test "$INPUT_NAME"128 "$OUTPUT_NAME"128 ;;
p119) run_test "$INPUT_NAME"129 "$OUTPUT_NAME"129 ;;
p120) run_test "$INPUT_NAME"130 "$OUTPUT_NAME"130 ;;
p121) run_test "$INPUT_NAME"131 "$OUTPUT_NAME"131 ;;
p122) run_test "$INPUT_NAME"132 "$OUTPUT_NAME"132 ;;
p123) run_test "$INPUT_NAME"133 "$OUTPUT_NAME"133 ;;
p124) run_test "$INPUT_NAME"134 "$OUTPUT_NAME"134 ;;
p125) run_test "$INPUT_NAME"135 "$OUTPUT_NAME"135 ;;
p126) run_test "$INPUT_NAME"136 "$OUTPUT_NAME"136 ;;
p127) run_test "$INPUT_NAME"137 "$OUTPUT_NAME"137 ;;
p128) run_test "$INPUT_NAME"138 "$OUTPUT_NAME"138 ;;
p129) run_test "$INPUT_NAME"139 "$OUTPUT_NAME"139 ;;
p130) run_test "$INPUT_NAME"140 "$OUTPUT_NAME"140 ;;
p131) run_test "$INPUT_NAME"141 "$OUTPUT_NAME"141 ;;
p132) run_test "$INPUT_NAME"142 "$OUTPUT_NAME"142 ;;
p133) run_test "$INPUT_NAME"143 "$OUTPUT_NAME"143 ;;
p134) run_test "$INPUT_NAME"144 "$OUTPUT_NAME"144 ;;
p135) run_test "$INPUT_NAME"145 "$OUTPUT_NAME"145 ;;
p136) run_test "$INPUT_NAME"146 "$OUTPUT_NAME"146 ;;
p137) run_test "$INPUT_NAME"147 "$OUTPUT_NAME"147 ;;
p138) run_test "$INPUT_NAME"148 "$OUTPUT_NAME"148 ;;
p139) run_test "$INPUT_NAME"149 "$OUTPUT_NAME"149 ;;
p140) run_test "$INPUT_NAME"150 "$OUTPUT_NAME"150 ;;
p141) run_test "$INPUT_NAME"151 "$OUTPUT_NAME"151 ;;
p142) run_test "$INPUT_NAME"152 "$OUTPUT_NAME"152 ;;
p143) run_test "$INPUT_NAME"153 "$OUTPUT_NAME"153 ;;
p144) run_test "$INPUT_NAME"154 "$OUTPUT_NAME"154 ;;
p145) run_test "$INPUT_NAME"155 "$OUTPUT_NAME"155 ;;
p146) run_test "$INPUT_NAME"156 "$OUTPUT_NAME"156 ;;
p147) run_test "$INPUT_NAME"157 "$OUTPUT_NAME"157 ;;
p148) run_test "$INPUT_NAME"158 "$OUTPUT_NAME"158 ;;
p149) run_test "$INPUT_NAME"159 "$OUTPUT_NAME"159 ;;
p150) run_test "$INPUT_NAME"160 "$OUTPUT_NAME"160 ;;
p151) run_test "$INPUT_NAME"161 "$OUTPUT_NAME"161 ;;
p152) run_test "$INPUT_NAME"162 "$OUTPUT_NAME"162 ;;
p153) run_test "$INPUT_NAME"163 "$OUTPUT_NAME"163 ;;
p154) run_test "$INPUT_NAME"164 "$OUTPUT_NAME"164 ;;
p155) run_test "$INPUT_NAME"165 "$OUTPUT_NAME"165 ;;
p156) run_test "$INPUT_NAME"166 "$OUTPUT_NAME"166 ;;
p157) run_test "$INPUT_NAME"167 "$OUTPUT_NAME"167 ;;
p158) run_test "$INPUT_NAME"168 "$OUTPUT_NAME"168 ;;
p159) run_test "$INPUT_NAME"169 "$OUTPUT_NAME"169 ;;
p160) run_test "$INPUT_NAME"170 "$OUTPUT_NAME"170 ;;
p161) run_test "$INPUT_NAME"171 "$OUTPUT_NAME"171 ;;
p162) run_test "$INPUT_NAME"172 "$OUTPUT_NAME"172 ;;
p163) run_test "$INPUT_NAME"173 "$OUTPUT_NAME"173 ;;
p164) run_test "$INPUT_NAME"174 "$OUTPUT_NAME"174 ;;
p165) run_test "$INPUT_NAME"175 "$OUTPUT_NAME"175 ;;
p166) run_test "$INPUT_NAME"176 "$OUTPUT_NAME"176 ;;
p167) run_test "$INPUT_NAME"177 "$OUTPUT_NAME"177 ;;
p168) run_test "$INPUT_NAME"178 "$OUTPUT_NAME"178 ;;
p169) run_test "$INPUT_NAME"179 "$OUTPUT_NAME"179 ;;
p170) run_test "$INPUT_NAME"180 "$OUTPUT_NAME"180 ;;
p171) run_test "$INPUT_NAME"181 "$OUTPUT_NAME"181 ;;
p172) run_test "$INPUT_NAME"182 "$OUTPUT_NAME"182 ;;
p173) run_test "$INPUT_NAME"183 "$OUTPUT_NAME"183 ;;
p174) run_test "$INPUT_NAME"184 "$OUTPUT_NAME"184 ;;
p175) run_test "$INPUT_NAME"185 "$OUTPUT_NAME"185 ;;
p176) run_test "$INPUT_NAME"186 "$OUTPUT_NAME"186 ;;
p177) run_test "$INPUT_NAME"187 "$OUTPUT_NAME"187 ;;
p178) run_test "$INPUT_NAME"188 "$OUTPUT_NAME"188 ;;
p179) run_test "$INPUT_NAME"189 "$OUTPUT_NAME"189 ;;
p180) run_test "$INPUT_NAME"190 "$OUTPUT_NAME"190 ;;
p181) run_test "$INPUT_NAME"191 "$OUTPUT_NAME"191 ;;
p182) run_test "$INPUT_NAME"192 "$OUTPUT_NAME"192 ;;
p183) run_test "$INPUT_NAME"193 "$OUTPUT_NAME"193 ;;
p184) run_test "$INPUT_NAME"194 "$OUTPUT_NAME"194 ;;
p185) run_test "$INPUT_NAME"195 "$OUTPUT_NAME"195 ;;
p186) run_test "$INPUT_NAME"196 "$OUTPUT_NAME"196 ;;
p187) run_test "$INPUT_NAME"197 "$OUTPUT_NAME"197 ;;
p188) run_test "$INPUT_NAME"198 "$OUTPUT_NAME"198 ;;
p189) run_test "$INPUT_NAME"199 "$OUTPUT_NAME"199 ;;
p190) run_test "$INPUT_NAME"200 "$OUTPUT_NAME"200 ;;
p191) run_test "$INPUT_NAME"201 "$OUTPUT_NAME"201 ;;
p192) run_test "$INPUT_NAME"202 "$OUTPUT_NAME"202 ;;
p193) run_test "$INPUT_NAME"203 "$OUTPUT_NAME"203 ;;
p194) run_test "$INPUT_NAME"204 "$OUTPUT_NAME"204 ;;
p195) run_test "$INPUT_NAME"205 "$OUTPUT_NAME"205 ;;
p196) run_test "$INPUT_NAME"206 "$OUTPUT_NAME"206 ;;
p197) run_test "$INPUT_NAME"207 "$OUTPUT_NAME"207 ;;
p198) run_test "$INPUT_NAME"208 "$OUTPUT_NAME"208 ;;
p199) run_test "$INPUT_NAME"209 "$OUTPUT_NAME"209 ;;
p200) run_test "$INPUT_NAME"210 "$OUTPUT_NAME"210 ;;
p201) run_test "$INPUT_NAME"211 "$OUTPUT_NAME"211 ;;
p202) run_test "$INPUT_NAME"212 "$OUTPUT_NAME"212 ;;
p203) run_test "$INPUT_NAME"213 "$OUTPUT_NAME"213 ;;
p204) run_test "$INPUT_NAME"214 "$OUTPUT_NAME"214 ;;
p205) run_test "$INPUT_NAME"215 "$OUTPUT_NAME"215 ;;
p206) run_test "$INPUT_NAME"216 "$OUTPUT_NAME"216 ;;
p207) run_test "$INPUT_NAME"217 "$OUTPUT_NAME"217 ;;
p208) run_test "$INPUT_NAME"218 "$OUTPUT_NAME"218 ;;
p209) run_test "$INPUT_NAME"219 "$OUTPUT_NAME"219 ;;
p210) run_test "$INPUT_NAME"220 "$OUTPUT_NAME"220 ;;
p211) run_test "$INPUT_NAME"221 "$OUTPUT_NAME"221 ;;
p212) run_test "$INPUT_NAME"222 "$OUTPUT_NAME"222 ;;
p213) run_test "$INPUT_NAME"223 "$OUTPUT_NAME"223 ;;
p214) run_test "$INPUT_NAME"224 "$OUTPUT_NAME"224 ;;
p215) run_test "$INPUT_NAME"225 "$OUTPUT_NAME"225 ;;
p216) run_test "$INPUT_NAME"226 "$OUTPUT_NAME"226 ;;
p217) run_test "$INPUT_NAME"227 "$OUTPUT_NAME"227 ;;
p218) run_test "$INPUT_NAME"228 "$OUTPUT_NAME"228 ;;
p219) run_test "$INPUT_NAME"229 "$OUTPUT_NAME"229 ;;
p220) run_test "$INPUT_NAME"230 "$OUTPUT_NAME"230 ;;
p221) run_test "$INPUT_NAME"231 "$OUTPUT_NAME"231 ;;
p222) run_test "$INPUT_NAME"232 "$OUTPUT_NAME"232 ;;
p223) run_test "$INPUT_NAME"233 "$OUTPUT_NAME"233 ;;
p224) run_test "$INPUT_NAME"234 "$OUTPUT_NAME"234 ;;
p225) run_test "$INPUT_NAME"235 "$OUTPUT_NAME"235 ;;
p226) run_test "$INPUT_NAME"236 "$OUTPUT_NAME"236 ;;
p227) run_test "$INPUT_NAME"237 "$OUTPUT_NAME"237 ;;
p228) run_test "$INPUT_NAME"238 "$OUTPUT_NAME"238 ;;
p229) run_test "$INPUT_NAME"239 "$OUTPUT_NAME"239 ;;
p230) run_test "$INPUT_NAME"240 "$OUTPUT_NAME"240 ;;
p231) run_test "$INPUT_NAME"241 "$OUTPUT_NAME"241 ;;
p232) run_test "$INPUT_NAME"242 "$OUTPUT_NAME"242 ;;
p233) run_test "$INPUT_NAME"243 "$OUTPUT_NAME"243 ;;
p234) run_test "$INPUT_NAME"244 "$OUTPUT_NAME"244 ;;
p235) run_test "$INPUT_NAME"245 "$OUTPUT_NAME"245 ;;
p236) run_test "$INPUT_NAME"246 "$OUTPUT_NAME"246 ;;
p237) run_test "$INPUT_NAME"247 "$OUTPUT_NAME"247 ;;
p238) run_test "$INPUT_NAME"248 "$OUTPUT_NAME"248 ;;
p239) run_test "$INPUT_NAME"249 "$OUTPUT_NAME"249 ;;
p240) run_test "$INPUT_NAME"250 "$OUTPUT_NAME"250 ;;
p241) run_test "$INPUT_NAME"251 "$OUTPUT_NAME"251 ;;
p242) run_test "$INPUT_NAME"252 "$OUTPUT_NAME"252 ;;
p243) run_test "$INPUT_NAME"253 "$OUTPUT_NAME"253 ;;
p244) run_test "$INPUT_NAME"254 "$OUTPUT_NAME"254 ;;
p245) run_test "$INPUT_NAME"255 "$OUTPUT_NAME"255 ;;
p246) run_test "$INPUT_NAME"256 "$OUTPUT_NAME"256 ;;
p247) run_test "$INPUT_NAME"257 "$OUTPUT_NAME"257 ;;
p248) run_test "$INPUT_NAME"258 "$OUTPUT_NAME"258 ;;
p249) run_test "$INPUT_NAME"259 "$OUTPUT_NAME"259 ;;
p250) run_test "$INPUT_NAME"260 "$OUTPUT_NAME"260 ;;
p251) run_test "$INPUT_NAME"261 "$OUTPUT_NAME"261 ;;
p252) run_test "$INPUT_NAME"262 "$OUTPUT_NAME"262 ;;
p253) run_test "$INPUT_NAME"263 "$OUTPUT_NAME"263 ;;
p254) run_test "$INPUT_NAME"264 "$OUTPUT_NAME"264 ;;
p255) run_test "$INPUT_NAME"265 "$OUTPUT_NAME"265 ;;
p256) run_test "$INPUT_NAME"266 "$OUTPUT_NAME"266 ;;
p257) run_test "$INPUT_NAME"267 "$OUTPUT_NAME"267 ;;
p258) run_test "$INPUT_NAME"268 "$OUTPUT_NAME"268 ;;
p259) run_test "$INPUT_NAME"269 "$OUTPUT_NAME"269 ;;
p260) run_test "$INPUT_NAME"270 "$OUTPUT_NAME"270 ;;
p261) run_test "$INPUT_NAME"271 "$OUTPUT_NAME"271 ;;
p262) run_test "$INPUT_NAME"272 "$OUTPUT_NAME"272 ;;
p263) run_test "$INPUT_NAME"273 "$OUTPUT_NAME"273 ;;
p264) run_test "$INPUT_NAME"274 "$OUTPUT_NAME"274 ;;
p265) run_test "$INPUT_NAME"275 "$OUTPUT_NAME"275 ;;
p266) run_test "$INPUT_NAME"276 "$OUTPUT_NAME"276 ;;
p267) run_test "$INPUT_NAME"277 "$OUTPUT_NAME"277 ;;
p268) run_test "$INPUT_NAME"278 "$OUTPUT_NAME"278 ;;
p269) run_test "$INPUT_NAME"279 "$OUTPUT_NAME"279 ;;
p270) run_test "$INPUT_NAME"280 "$OUTPUT_NAME"280 ;;
p271) run_test "$INPUT_NAME"281 "$OUTPUT_NAME"281 ;;
p272) run_test "$INPUT_NAME"282 "$OUTPUT_NAME"282 ;;
p273) run_test "$INPUT_NAME"283 "$OUTPUT_NAME"283 ;;
p274) run_test "$INPUT_NAME"284 "$OUTPUT_NAME"284 ;;
p275) run_test "$INPUT_NAME"285 "$OUTPUT_NAME"285 ;;
p276) run_test "$INPUT_NAME"286 "$OUTPUT_NAME"286 ;;
p277) run_test "$INPUT_NAME"287 "$OUTPUT_NAME"287 ;;
p278) run_test "$INPUT_NAME"288 "$OUTPUT_NAME"288 ;;
p279) run_test "$INPUT_NAME"289 "$OUTPUT_NAME"289 ;;
p280) run_test "$INPUT_NAME"290 "$OUTPUT_NAME"290 ;;
p281) run_test "$INPUT_NAME"291 "$OUTPUT_NAME"291 ;;
p282) run_test "$INPUT_NAME"292 "$OUTPUT_NAME"292 ;;
p283) run_test "$INPUT_NAME"293 "$OUTPUT_NAME"293 ;;
p284) run_test "$INPUT_NAME"294 "$OUTPUT_NAME"294 ;;
p285) run_test "$INPUT_NAME"295 "$OUTPUT_NAME"295 ;;
p286) run_test "$INPUT_NAME"296 "$OUTPUT_NAME"296 ;;
p287) run_test "$INPUT_NAME"297 "$OUTPUT_NAME"297 ;;
p288) run_test "$INPUT_NAME"298 "$OUTPUT_NAME"298 ;;
p289) run_test "$INPUT_NAME"299 "$OUTPUT_NAME"299 ;;
p290) run_test "$INPUT_NAME"300 "$OUTPUT_NAME"300 ;;
p291) run_test "$INPUT_NAME"301 "$OUTPUT_NAME"301 ;;
p292) run_test "$INPUT_NAME"302 "$OUTPUT_NAME"302 ;;
p293) run_test "$INPUT_NAME"303 "$OUTPUT_NAME"303 ;;
p294) run_test "$INPUT_NAME"304 "$OUTPUT_NAME"304 ;;
p295) run_test "$INPUT_NAME"305 "$OUTPUT_NAME"305 ;;
p296) run_test "$INPUT_NAME"306 "$OUTPUT_NAME"306 ;;
p297) run_test "$INPUT_NAME"307 "$OUTPUT_NAME"307 ;;
p298) run_test "$INPUT_NAME"308 "$OUTPUT_NAME"308 ;;
p299) run_test "$INPUT_NAME"309 "$OUTPUT_NAME"309 ;;
p300) run_test "$INPUT_NAME"310 "$OUTPUT_NAME"310 ;;
p301) run_test "$INPUT_NAME"311 "$OUTPUT_NAME"311 ;;
p302) run_test "$INPUT_NAME"312 "$OUTPUT_NAME"312 ;;
p303) run_test "$INPUT_NAME"313 "$OUTPUT_NAME"313 ;;
p304) run_test "$INPUT_NAME"314 "$OUTPUT_NAME"314 ;;
p305) run_test "$INPUT_NAME"315 "$OUTPUT_NAME"315 ;;
p306) run_test "$INPUT_NAME"316 "$OUTPUT_NAME"316 ;;
p307) run_test "$INPUT_NAME"317 "$OUTPUT_NAME"317 ;;
p308) run_test "$INPUT_NAME"318 "$OUTPUT_NAME"318 ;;
p309) run_test "$INPUT_NAME"319 "$OUTPUT_NAME"319 ;;
p310) run_test "$INPUT_NAME"320 "$OUTPUT_NAME"320 ;;
p311) run_test "$INPUT_NAME"321 "$OUTPUT_NAME"321 ;;
p312) run_test "$INPUT_NAME"322 "$OUTPUT_NAME"322 ;;
p313) run_test "$INPUT_NAME"323 "$OUTPUT_NAME"323 ;;
p314) run_test "$INPUT_NAME"324 "$OUTPUT_NAME"324 ;;
p315) run_test "$INPUT_NAME"325 "$OUTPUT_NAME"325 ;;
p316) run_test "$INPUT_NAME"326 "$OUTPUT_NAME"326 ;;
p317) run_test "$INPUT_NAME"327 "$OUTPUT_NAME"327 ;;
p318) run_test "$INPUT_NAME"328 "$OUTPUT_NAME"328 ;;
p319) run_test "$INPUT_NAME"329 "$OUTPUT_NAME"329 ;;
p320) run_test "$INPUT_NAME"330 "$OUTPUT_NAME"330 ;;
p321) run_test "$INPUT_NAME"331 "$OUTPUT_NAME"331 ;;
p322) run_test "$INPUT_NAME"332 "$OUTPUT_NAME"332 ;;
p323) run_test "$INPUT_NAME"333 "$OUTPUT_NAME"333 ;;
p324) run_test "$INPUT_NAME"334 "$OUTPUT_NAME"334 ;;
p325) run_test "$INPUT_NAME"335 "$OUTPUT_NAME"335 ;;
p326) run_test "$INPUT_NAME"336 "$OUTPUT_NAME"336 ;;
p327) run_test "$INPUT_NAME"337 "$OUTPUT_NAME"337 ;;
p328) run_test "$INPUT_NAME"338 "$OUTPUT_NAME"338 ;;
p329) run_test "$INPUT_NAME"339 "$OUTPUT_NAME"339 ;;
p330) run_test "$INPUT_NAME"340 "$OUTPUT_NAME"340 ;;
p331) run_test "$INPUT_NAME"341 "$OUTPUT_NAME"341 ;;
p332) run_test "$INPUT_NAME"342 "$OUTPUT_NAME"342 ;;
p333) run_test "$INPUT_NAME"343 "$OUTPUT_NAME"343 ;;
p334) run_test "$INPUT_NAME"344 "$OUTPUT_NAME"344 ;;
p335) run_test "$INPUT_NAME"345 "$OUTPUT_NAME"345 ;;
p336) run_test "$INPUT_NAME"346 "$OUTPUT_NAME"346 ;;
p337) run_test "$INPUT_NAME"347 "$OUTPUT_NAME"347 ;;
p338) run_test "$INPUT_NAME"348 "$OUTPUT_NAME"348 ;;
p339) run_test "$INPUT_NAME"349 "$OUTPUT_NAME"349 ;;
p340) run_test "$INPUT_NAME"350 "$OUTPUT_NAME"350 ;;
esac
exit 1
