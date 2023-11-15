; ModuleID = 'gcov/../WA_c/270349_buggy.c'
source_filename = "gcov/../WA_c/270349_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.4f\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" %f is negative\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%f is positive\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"input is zero\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %2), !dbg !14
  %4 = load float, float* %2, align 4, !dbg !15
  %5 = fpext float %4 to double, !dbg !15
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), double %5), !dbg !16
  %7 = load float, float* %2, align 4, !dbg !17
  %8 = fcmp olt float %7, 0.000000e+00, !dbg !19
  br i1 %8, label %9, label %13, !dbg !20

; <label>:9:                                      ; preds = %0
  %10 = load float, float* %2, align 4, !dbg !21
  %11 = fpext float %10 to double, !dbg !21
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), double %11), !dbg !23
  br label %23, !dbg !24

; <label>:13:                                     ; preds = %0
  %14 = load float, float* %2, align 4, !dbg !25
  %15 = fcmp ogt float %14, 0.000000e+00, !dbg !27
  br i1 %15, label %16, label %20, !dbg !28

; <label>:16:                                     ; preds = %13
  %17 = load float, float* %2, align 4, !dbg !29
  %18 = fpext float %17 to double, !dbg !29
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), double %18), !dbg !31
  br label %22, !dbg !32

; <label>:20:                                     ; preds = %13
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)), !dbg !33
  br label %22

; <label>:22:                                     ; preds = %20, %16
  br label %23

; <label>:23:                                     ; preds = %22, %9
  %24 = load i32, i32* %1, align 4, !dbg !35
  ret i32 %24, !dbg !35
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
!1 = !DIFile(filename: "gcov/../WA_c/270349_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2812")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocation(line: 9, column: 5, scope: !7)
!15 = !DILocation(line: 10, column: 19, scope: !7)
!16 = !DILocation(line: 10, column: 5, scope: !7)
!17 = !DILocation(line: 12, column: 8, scope: !18)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 8)
!19 = !DILocation(line: 12, column: 9, scope: !18)
!20 = !DILocation(line: 12, column: 8, scope: !7)
!21 = !DILocation(line: 14, column: 34, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !1, line: 13, column: 5)
!23 = !DILocation(line: 14, column: 9, scope: !22)
!24 = !DILocation(line: 15, column: 5, scope: !22)
!25 = !DILocation(line: 17, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !1, line: 17, column: 13)
!27 = !DILocation(line: 17, column: 14, scope: !26)
!28 = !DILocation(line: 17, column: 13, scope: !18)
!29 = !DILocation(line: 19, column: 33, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 18, column: 5)
!31 = !DILocation(line: 19, column: 9, scope: !30)
!32 = !DILocation(line: 20, column: 5, scope: !30)
!33 = !DILocation(line: 24, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 23, column: 5)
!35 = !DILocation(line: 27, column: 1, scope: !7)
