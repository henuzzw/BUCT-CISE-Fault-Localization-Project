; ModuleID = 'gcov/../WA_c/271083_buggy.c'
source_filename = "gcov/../WA_c/271083_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Leap Year\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Not Leap Year\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Not Leap year\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  %4 = load i32, i32* %2, align 4, !dbg !14
  %5 = srem i32 %4, 400, !dbg !16
  %6 = icmp eq i32 %5, 0, !dbg !17
  br i1 %6, label %7, label %9, !dbg !18

; <label>:7:                                      ; preds = %0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)), !dbg !19
  br label %25, !dbg !21

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !22
  %11 = srem i32 %10, 100, !dbg !24
  %12 = icmp eq i32 %11, 0, !dbg !25
  br i1 %12, label %13, label %15, !dbg !26

; <label>:13:                                     ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !27
  br label %24, !dbg !29

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %2, align 4, !dbg !30
  %17 = srem i32 %16, 4, !dbg !32
  %18 = icmp eq i32 %17, 0, !dbg !33
  br i1 %18, label %19, label %21, !dbg !34

; <label>:19:                                     ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)), !dbg !35
  br label %23, !dbg !37

; <label>:21:                                     ; preds = %15
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !38
  br label %23

; <label>:23:                                     ; preds = %21, %19
  br label %24

; <label>:24:                                     ; preds = %23, %13
  br label %25

; <label>:25:                                     ; preds = %24, %7
  ret i32 0, !dbg !40
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
!1 = !DIFile(filename: "gcov/../WA_c/271083_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2824")
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
!14 = !DILocation(line: 7, column: 10, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 10)
!16 = !DILocation(line: 7, column: 14, scope: !15)
!17 = !DILocation(line: 7, column: 19, scope: !15)
!18 = !DILocation(line: 7, column: 10, scope: !7)
!19 = !DILocation(line: 9, column: 9, scope: !20)
!20 = distinct !DILexicalBlock(scope: !15, file: !1, line: 8, column: 5)
!21 = !DILocation(line: 10, column: 5, scope: !20)
!22 = !DILocation(line: 11, column: 15, scope: !23)
!23 = distinct !DILexicalBlock(scope: !15, file: !1, line: 11, column: 15)
!24 = !DILocation(line: 11, column: 19, scope: !23)
!25 = !DILocation(line: 11, column: 24, scope: !23)
!26 = !DILocation(line: 11, column: 15, scope: !15)
!27 = !DILocation(line: 13, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 12, column: 5)
!29 = !DILocation(line: 14, column: 5, scope: !28)
!30 = !DILocation(line: 15, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !23, file: !1, line: 15, column: 15)
!32 = !DILocation(line: 15, column: 19, scope: !31)
!33 = !DILocation(line: 15, column: 22, scope: !31)
!34 = !DILocation(line: 15, column: 15, scope: !23)
!35 = !DILocation(line: 17, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 16, column: 5)
!37 = !DILocation(line: 18, column: 5, scope: !36)
!38 = !DILocation(line: 21, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !31, file: !1, line: 20, column: 5)
!40 = !DILocation(line: 23, column: 5, scope: !7)
