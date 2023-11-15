; ModuleID = 'gcov/../WA_c/271043_buggy.c'
source_filename = "gcov/../WA_c/271043_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Leap Year\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Not Leap Year\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  %4 = load i32, i32* %2, align 4, !dbg !14
  %5 = srem i32 %4, 100, !dbg !16
  %6 = icmp eq i32 %5, 0, !dbg !17
  br i1 %6, label %7, label %16, !dbg !18

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !19
  %9 = srem i32 %8, 4, !dbg !22
  %10 = icmp eq i32 %9, 0, !dbg !23
  br i1 %10, label %11, label %13, !dbg !24

; <label>:11:                                     ; preds = %7
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)), !dbg !25
  br label %15, !dbg !27

; <label>:13:                                     ; preds = %7
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !28
  br label %15

; <label>:15:                                     ; preds = %13, %11
  br label %25, !dbg !30

; <label>:16:                                     ; preds = %0
  %17 = load i32, i32* %2, align 4, !dbg !31
  %18 = srem i32 %17, 4, !dbg !34
  %19 = icmp eq i32 %18, 0, !dbg !35
  br i1 %19, label %20, label %22, !dbg !36

; <label>:20:                                     ; preds = %16
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)), !dbg !37
  br label %24, !dbg !39

; <label>:22:                                     ; preds = %16
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !40
  br label %24

; <label>:24:                                     ; preds = %22, %20
  br label %25

; <label>:25:                                     ; preds = %24, %15
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
!1 = !DIFile(filename: "gcov/../WA_c/271043_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2824")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "year", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocation(line: 6, column: 5, scope: !7)
!14 = !DILocation(line: 7, column: 9, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 9)
!16 = !DILocation(line: 7, column: 13, scope: !15)
!17 = !DILocation(line: 7, column: 18, scope: !15)
!18 = !DILocation(line: 7, column: 9, scope: !7)
!19 = !DILocation(line: 9, column: 13, scope: !20)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 13)
!21 = distinct !DILexicalBlock(scope: !15, file: !1, line: 8, column: 5)
!22 = !DILocation(line: 9, column: 17, scope: !20)
!23 = !DILocation(line: 9, column: 20, scope: !20)
!24 = !DILocation(line: 9, column: 13, scope: !21)
!25 = !DILocation(line: 11, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !20, file: !1, line: 10, column: 9)
!27 = !DILocation(line: 12, column: 9, scope: !26)
!28 = !DILocation(line: 15, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !20, file: !1, line: 14, column: 9)
!30 = !DILocation(line: 17, column: 5, scope: !21)
!31 = !DILocation(line: 20, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 20, column: 13)
!33 = distinct !DILexicalBlock(scope: !15, file: !1, line: 19, column: 5)
!34 = !DILocation(line: 20, column: 17, scope: !32)
!35 = !DILocation(line: 20, column: 20, scope: !32)
!36 = !DILocation(line: 20, column: 13, scope: !33)
!37 = !DILocation(line: 22, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 21, column: 9)
!39 = !DILocation(line: 23, column: 9, scope: !38)
!40 = !DILocation(line: 26, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 25, column: 9)
!42 = !DILocation(line: 30, column: 5, scope: !7)
