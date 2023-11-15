; ModuleID = 'gcov/../WA_c/271034_buggy.c'
source_filename = "gcov/../WA_c/271034_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Leap Year\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Not Leap Year\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Not Leap year\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  %4 = load i32, i32* %2, align 4, !dbg !14
  %5 = srem i32 %4, 4, !dbg !16
  %6 = icmp eq i32 %5, 0, !dbg !17
  br i1 %6, label %7, label %23, !dbg !18

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !19
  %9 = srem i32 %8, 100, !dbg !22
  %10 = icmp eq i32 %9, 0, !dbg !23
  br i1 %10, label %11, label %20, !dbg !24

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 4, !dbg !25
  %13 = srem i32 %12, 400, !dbg !28
  %14 = icmp eq i32 %13, 0, !dbg !29
  br i1 %14, label %15, label %17, !dbg !30

; <label>:15:                                     ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)), !dbg !31
  br label %19, !dbg !33

; <label>:17:                                     ; preds = %11
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !34
  br label %19

; <label>:19:                                     ; preds = %17, %15
  br label %22, !dbg !36

; <label>:20:                                     ; preds = %7
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)), !dbg !37
  br label %22

; <label>:22:                                     ; preds = %20, %19
  br label %25, !dbg !39

; <label>:23:                                     ; preds = %0
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)), !dbg !40
  br label %25

; <label>:25:                                     ; preds = %23, %22
  ret i32 0, !dbg !42
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/271034_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2824")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocation(line: 6, column: 5, scope: !7)
!14 = !DILocation(line: 7, column: 9, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 9)
!16 = !DILocation(line: 7, column: 10, scope: !15)
!17 = !DILocation(line: 7, column: 12, scope: !15)
!18 = !DILocation(line: 7, column: 9, scope: !7)
!19 = !DILocation(line: 9, column: 13, scope: !20)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 13)
!21 = distinct !DILexicalBlock(scope: !15, file: !1, line: 8, column: 5)
!22 = !DILocation(line: 9, column: 14, scope: !20)
!23 = !DILocation(line: 9, column: 18, scope: !20)
!24 = !DILocation(line: 9, column: 13, scope: !21)
!25 = !DILocation(line: 11, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 17)
!27 = distinct !DILexicalBlock(scope: !20, file: !1, line: 10, column: 9)
!28 = !DILocation(line: 11, column: 18, scope: !26)
!29 = !DILocation(line: 11, column: 22, scope: !26)
!30 = !DILocation(line: 11, column: 17, scope: !27)
!31 = !DILocation(line: 13, column: 17, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 12, column: 13)
!33 = !DILocation(line: 14, column: 13, scope: !32)
!34 = !DILocation(line: 17, column: 17, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 16, column: 13)
!36 = !DILocation(line: 19, column: 9, scope: !27)
!37 = !DILocation(line: 22, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !20, file: !1, line: 21, column: 9)
!39 = !DILocation(line: 25, column: 5, scope: !21)
!40 = !DILocation(line: 28, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !15, file: !1, line: 27, column: 5)
!42 = !DILocation(line: 30, column: 5, scope: !7)
