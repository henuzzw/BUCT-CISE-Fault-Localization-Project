; ModuleID = 'gcov/../WA_c/270081_buggy.c'
source_filename = "gcov/../WA_c/270081_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%f%f\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"The area of (%6.4f, %6.4f), (%6.4f,0) and (0,%6.4f) is %6.4f.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), float* %2, float* %3), !dbg !16
  call void @llvm.dbg.declare(metadata float* %4, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load float, float* %2, align 4, !dbg !19
  %7 = load float, float* %3, align 4, !dbg !20
  %8 = fmul float %6, %7, !dbg !21
  %9 = fdiv float %8, 2.000000e+00, !dbg !22
  store float %9, float* %4, align 4, !dbg !23
  %10 = load float, float* %4, align 4, !dbg !24
  %11 = fcmp oge float %10, 0.000000e+00, !dbg !26
  br i1 %11, label %12, label %24, !dbg !27

; <label>:12:                                     ; preds = %0
  %13 = load float, float* %2, align 4, !dbg !28
  %14 = fpext float %13 to double, !dbg !28
  %15 = load float, float* %3, align 4, !dbg !30
  %16 = fpext float %15 to double, !dbg !30
  %17 = load float, float* %2, align 4, !dbg !31
  %18 = fpext float %17 to double, !dbg !31
  %19 = load float, float* %3, align 4, !dbg !32
  %20 = fpext float %19 to double, !dbg !32
  %21 = load float, float* %4, align 4, !dbg !33
  %22 = fpext float %21 to double, !dbg !33
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0), double %14, double %16, double %18, double %20, double %22), !dbg !34
  br label %39, !dbg !35

; <label>:24:                                     ; preds = %0
  %25 = load float, float* %2, align 4, !dbg !36
  %26 = fpext float %25 to double, !dbg !36
  %27 = load float, float* %3, align 4, !dbg !38
  %28 = fpext float %27 to double, !dbg !38
  %29 = load float, float* %2, align 4, !dbg !39
  %30 = fpext float %29 to double, !dbg !39
  %31 = load float, float* %3, align 4, !dbg !40
  %32 = fpext float %31 to double, !dbg !40
  %33 = load float, float* %4, align 4, !dbg !41
  %34 = load float, float* %4, align 4, !dbg !42
  %35 = fmul float %34, 2.000000e+00, !dbg !43
  %36 = fsub float %33, %35, !dbg !44
  %37 = fpext float %36 to double, !dbg !41
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0), double %26, double %28, double %30, double %32, double %37), !dbg !45
  br label %39

; <label>:39:                                     ; preds = %24, %12
  ret i32 0, !dbg !46
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
!1 = !DIFile(filename: "gcov/../WA_c/270081_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2810")
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
!14 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 6, type: !12)
!15 = !DILocation(line: 6, column: 11, scope: !7)
!16 = !DILocation(line: 7, column: 5, scope: !7)
!17 = !DILocalVariable(name: "area", scope: !7, file: !1, line: 8, type: !12)
!18 = !DILocation(line: 8, column: 11, scope: !7)
!19 = !DILocation(line: 9, column: 13, scope: !7)
!20 = !DILocation(line: 9, column: 15, scope: !7)
!21 = !DILocation(line: 9, column: 14, scope: !7)
!22 = !DILocation(line: 9, column: 17, scope: !7)
!23 = !DILocation(line: 9, column: 10, scope: !7)
!24 = !DILocation(line: 10, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 9)
!26 = !DILocation(line: 10, column: 14, scope: !25)
!27 = !DILocation(line: 10, column: 9, scope: !7)
!28 = !DILocation(line: 12, column: 81, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 11, column: 5)
!30 = !DILocation(line: 12, column: 84, scope: !29)
!31 = !DILocation(line: 12, column: 87, scope: !29)
!32 = !DILocation(line: 12, column: 90, scope: !29)
!33 = !DILocation(line: 12, column: 93, scope: !29)
!34 = !DILocation(line: 12, column: 9, scope: !29)
!35 = !DILocation(line: 13, column: 5, scope: !29)
!36 = !DILocation(line: 16, column: 81, scope: !37)
!37 = distinct !DILexicalBlock(scope: !25, file: !1, line: 15, column: 5)
!38 = !DILocation(line: 16, column: 84, scope: !37)
!39 = !DILocation(line: 16, column: 87, scope: !37)
!40 = !DILocation(line: 16, column: 90, scope: !37)
!41 = !DILocation(line: 16, column: 93, scope: !37)
!42 = !DILocation(line: 16, column: 99, scope: !37)
!43 = !DILocation(line: 16, column: 103, scope: !37)
!44 = !DILocation(line: 16, column: 97, scope: !37)
!45 = !DILocation(line: 16, column: 9, scope: !37)
!46 = !DILocation(line: 18, column: 5, scope: !7)
