; ModuleID = 'gcov/../WA_c/270327_buggy.c'
source_filename = "gcov/../WA_c/270327_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"input is zero.\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%.4f is negative.\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%.4f is positive.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %2), !dbg !14
  %4 = load float, float* %2, align 4, !dbg !15
  %5 = fcmp oeq float %4, 0.000000e+00, !dbg !17
  br i1 %5, label %6, label %8, !dbg !18

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !19
  br label %8, !dbg !21

; <label>:8:                                      ; preds = %6, %0
  %9 = load float, float* %2, align 4, !dbg !22
  %10 = fcmp olt float %9, 0.000000e+00, !dbg !24
  br i1 %10, label %11, label %15, !dbg !25

; <label>:11:                                     ; preds = %8
  %12 = load float, float* %2, align 4, !dbg !26
  %13 = fpext float %12 to double, !dbg !26
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), double %13), !dbg !28
  br label %15, !dbg !29

; <label>:15:                                     ; preds = %11, %8
  %16 = load float, float* %2, align 4, !dbg !30
  %17 = fcmp ogt float %16, 0.000000e+00, !dbg !32
  br i1 %17, label %18, label %22, !dbg !33

; <label>:18:                                     ; preds = %15
  %19 = load float, float* %2, align 4, !dbg !34
  %20 = fpext float %19 to double, !dbg !34
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), double %20), !dbg !36
  br label %22, !dbg !37

; <label>:22:                                     ; preds = %18, %15
  ret i32 0, !dbg !38
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
!1 = !DIFile(filename: "gcov/../WA_c/270327_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2812")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = !DILocation(line: 8, column: 8, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!17 = !DILocation(line: 8, column: 9, scope: !16)
!18 = !DILocation(line: 8, column: 8, scope: !7)
!19 = !DILocation(line: 10, column: 9, scope: !20)
!20 = distinct !DILexicalBlock(scope: !16, file: !1, line: 9, column: 5)
!21 = !DILocation(line: 11, column: 5, scope: !20)
!22 = !DILocation(line: 13, column: 8, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 8)
!24 = !DILocation(line: 13, column: 9, scope: !23)
!25 = !DILocation(line: 13, column: 8, scope: !7)
!26 = !DILocation(line: 15, column: 36, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 14, column: 5)
!28 = !DILocation(line: 15, column: 9, scope: !27)
!29 = !DILocation(line: 16, column: 5, scope: !27)
!30 = !DILocation(line: 18, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 8)
!32 = !DILocation(line: 18, column: 9, scope: !31)
!33 = !DILocation(line: 18, column: 8, scope: !7)
!34 = !DILocation(line: 20, column: 36, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 19, column: 5)
!36 = !DILocation(line: 20, column: 9, scope: !35)
!37 = !DILocation(line: 21, column: 5, scope: !35)
!38 = !DILocation(line: 23, column: 5, scope: !7)
