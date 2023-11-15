; ModuleID = 'gcov/../WA_c/270054_buggy.c'
source_filename = "gcov/../WA_c/270054_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%f%f\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"The area of (%.4f,%.4f),(%.4f,0) and (0,%.4f) is %.4f.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), float* %2, float* %3), !dbg !18
  %6 = load float, float* %2, align 4, !dbg !19
  %7 = load float, float* %3, align 4, !dbg !20
  %8 = fmul float %6, %7, !dbg !21
  %9 = fpext float %8 to double, !dbg !22
  %10 = fmul double 5.000000e-01, %9, !dbg !23
  %11 = fptrunc double %10 to float, !dbg !24
  store float %11, float* %4, align 4, !dbg !25
  %12 = load float, float* %4, align 4, !dbg !26
  %13 = fcmp olt float %12, 0.000000e+00, !dbg !28
  br i1 %13, label %14, label %17, !dbg !29

; <label>:14:                                     ; preds = %0
  %15 = load float, float* %4, align 4, !dbg !30
  %16 = fmul float -1.000000e+00, %15, !dbg !32
  store float %16, float* %4, align 4, !dbg !33
  br label %17, !dbg !34

; <label>:17:                                     ; preds = %14, %0
  %18 = load float, float* %2, align 4, !dbg !35
  %19 = fpext float %18 to double, !dbg !35
  %20 = load float, float* %3, align 4, !dbg !36
  %21 = fpext float %20 to double, !dbg !36
  %22 = load float, float* %2, align 4, !dbg !37
  %23 = fpext float %22 to double, !dbg !37
  %24 = load float, float* %3, align 4, !dbg !38
  %25 = fpext float %24 to double, !dbg !38
  %26 = load float, float* %4, align 4, !dbg !39
  %27 = fpext float %26 to double, !dbg !39
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0), double %19, double %21, double %23, double %25, double %27), !dbg !40
  ret i32 0, !dbg !41
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
!1 = !DIFile(filename: "gcov/../WA_c/270054_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2810")
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
!14 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 13, scope: !7)
!16 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 15, scope: !7)
!18 = !DILocation(line: 6, column: 5, scope: !7)
!19 = !DILocation(line: 7, column: 18, scope: !7)
!20 = !DILocation(line: 7, column: 20, scope: !7)
!21 = !DILocation(line: 7, column: 19, scope: !7)
!22 = !DILocation(line: 7, column: 17, scope: !7)
!23 = !DILocation(line: 7, column: 16, scope: !7)
!24 = !DILocation(line: 7, column: 7, scope: !7)
!25 = !DILocation(line: 7, column: 6, scope: !7)
!26 = !DILocation(line: 8, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 9)
!28 = !DILocation(line: 8, column: 10, scope: !27)
!29 = !DILocation(line: 8, column: 9, scope: !7)
!30 = !DILocation(line: 10, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 9, column: 5)
!32 = !DILocation(line: 10, column: 13, scope: !31)
!33 = !DILocation(line: 10, column: 10, scope: !31)
!34 = !DILocation(line: 11, column: 5, scope: !31)
!35 = !DILocation(line: 12, column: 69, scope: !7)
!36 = !DILocation(line: 12, column: 71, scope: !7)
!37 = !DILocation(line: 12, column: 73, scope: !7)
!38 = !DILocation(line: 12, column: 75, scope: !7)
!39 = !DILocation(line: 12, column: 77, scope: !7)
!40 = !DILocation(line: 12, column: 5, scope: !7)
!41 = !DILocation(line: 13, column: 5, scope: !7)
