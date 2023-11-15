; ModuleID = 'gcov/../WA_c/270310_buggy.c'
source_filename = "gcov/../WA_c/270310_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%.4f is negative.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%.4f is positive.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"input is zero.\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), float* %2), !dbg !14
  %4 = load float, float* %2, align 4, !dbg !15
  %5 = fcmp olt float %4, 0.000000e+00, !dbg !17
  br i1 %5, label %6, label %10, !dbg !18

; <label>:6:                                      ; preds = %0
  %7 = load float, float* %2, align 4, !dbg !19
  %8 = fpext float %7 to double, !dbg !19
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), double %8), !dbg !21
  br label %20, !dbg !22

; <label>:10:                                     ; preds = %0
  %11 = load float, float* %2, align 4, !dbg !23
  %12 = fcmp ogt float %11, 0.000000e+00, !dbg !26
  br i1 %12, label %13, label %17, !dbg !27

; <label>:13:                                     ; preds = %10
  %14 = load float, float* %2, align 4, !dbg !28
  %15 = fpext float %14 to double, !dbg !28
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), double %15), !dbg !30
  br label %19, !dbg !31

; <label>:17:                                     ; preds = %10
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !32
  br label %19

; <label>:19:                                     ; preds = %17, %13
  br label %20

; <label>:20:                                     ; preds = %19, %6
  ret i32 0, !dbg !34
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
!1 = !DIFile(filename: "gcov/../WA_c/270310_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2812")
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
!15 = !DILocation(line: 7, column: 8, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!17 = !DILocation(line: 7, column: 9, scope: !16)
!18 = !DILocation(line: 7, column: 8, scope: !7)
!19 = !DILocation(line: 9, column: 39, scope: !20)
!20 = distinct !DILexicalBlock(scope: !16, file: !1, line: 8, column: 5)
!21 = !DILocation(line: 9, column: 9, scope: !20)
!22 = !DILocation(line: 10, column: 5, scope: !20)
!23 = !DILocation(line: 13, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 13, column: 12)
!25 = distinct !DILexicalBlock(scope: !16, file: !1, line: 12, column: 5)
!26 = !DILocation(line: 13, column: 13, scope: !24)
!27 = !DILocation(line: 13, column: 12, scope: !25)
!28 = !DILocation(line: 15, column: 43, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 14, column: 9)
!30 = !DILocation(line: 15, column: 13, scope: !29)
!31 = !DILocation(line: 16, column: 9, scope: !29)
!32 = !DILocation(line: 19, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !1, line: 18, column: 9)
!34 = !DILocation(line: 22, column: 5, scope: !7)
