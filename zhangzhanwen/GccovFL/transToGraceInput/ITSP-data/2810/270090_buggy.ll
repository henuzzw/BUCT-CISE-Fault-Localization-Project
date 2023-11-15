; ModuleID = 'gcov/../WA_c/270090_buggy.c'
source_filename = "gcov/../WA_c/270090_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"The area of (%.4f,%.4f),\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(%.4f,0) and \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(0,%.4f) is %.4f.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), float* %2, float* %3), !dbg !16
  call void @llvm.dbg.declare(metadata float* %4, metadata !17, metadata !DIExpression()), !dbg !18
  %7 = load float, float* %2, align 4, !dbg !19
  %8 = fpext float %7 to double, !dbg !19
  %9 = fmul double 5.000000e-01, %8, !dbg !20
  %10 = load float, float* %3, align 4, !dbg !21
  %11 = fpext float %10 to double, !dbg !21
  %12 = fmul double %9, %11, !dbg !22
  %13 = fptrunc double %12 to float, !dbg !23
  store float %13, float* %4, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata float* %5, metadata !24, metadata !DIExpression()), !dbg !25
  %14 = load float, float* %2, align 4, !dbg !26
  %15 = fpext float %14 to double, !dbg !26
  %16 = fmul double -5.000000e-01, %15, !dbg !27
  %17 = load float, float* %3, align 4, !dbg !28
  %18 = fpext float %17 to double, !dbg !28
  %19 = fmul double %16, %18, !dbg !29
  %20 = fptrunc double %19 to float, !dbg !30
  store float %20, float* %5, align 4, !dbg !25
  %21 = load float, float* %2, align 4, !dbg !31
  %22 = fpext float %21 to double, !dbg !31
  %23 = load float, float* %3, align 4, !dbg !32
  %24 = fpext float %23 to double, !dbg !32
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), double %22, double %24), !dbg !33
  %26 = load float, float* %2, align 4, !dbg !34
  %27 = fpext float %26 to double, !dbg !34
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), double %27), !dbg !35
  %29 = load float, float* %4, align 4, !dbg !36
  %30 = fcmp ogt float %29, 0.000000e+00, !dbg !38
  br i1 %30, label %31, label %37, !dbg !39

; <label>:31:                                     ; preds = %0
  %32 = load float, float* %3, align 4, !dbg !40
  %33 = fpext float %32 to double, !dbg !40
  %34 = load float, float* %4, align 4, !dbg !42
  %35 = fpext float %34 to double, !dbg !42
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), double %33, double %35), !dbg !43
  br label %43, !dbg !44

; <label>:37:                                     ; preds = %0
  %38 = load float, float* %3, align 4, !dbg !45
  %39 = fpext float %38 to double, !dbg !45
  %40 = load float, float* %5, align 4, !dbg !47
  %41 = fpext float %40 to double, !dbg !47
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), double %39, double %41), !dbg !48
  br label %43

; <label>:43:                                     ; preds = %37, %31
  ret i32 0, !dbg !49
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
!1 = !DIFile(filename: "gcov/../WA_c/270090_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2810")
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
!16 = !DILocation(line: 6, column: 5, scope: !7)
!17 = !DILocalVariable(name: "area", scope: !7, file: !1, line: 7, type: !12)
!18 = !DILocation(line: 7, column: 11, scope: !7)
!19 = !DILocation(line: 7, column: 24, scope: !7)
!20 = !DILocation(line: 7, column: 23, scope: !7)
!21 = !DILocation(line: 7, column: 26, scope: !7)
!22 = !DILocation(line: 7, column: 25, scope: !7)
!23 = !DILocation(line: 7, column: 16, scope: !7)
!24 = !DILocalVariable(name: "ar", scope: !7, file: !1, line: 8, type: !12)
!25 = !DILocation(line: 8, column: 11, scope: !7)
!26 = !DILocation(line: 8, column: 23, scope: !7)
!27 = !DILocation(line: 8, column: 22, scope: !7)
!28 = !DILocation(line: 8, column: 25, scope: !7)
!29 = !DILocation(line: 8, column: 24, scope: !7)
!30 = !DILocation(line: 8, column: 14, scope: !7)
!31 = !DILocation(line: 9, column: 39, scope: !7)
!32 = !DILocation(line: 9, column: 41, scope: !7)
!33 = !DILocation(line: 9, column: 5, scope: !7)
!34 = !DILocation(line: 10, column: 28, scope: !7)
!35 = !DILocation(line: 10, column: 5, scope: !7)
!36 = !DILocation(line: 11, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 9)
!38 = !DILocation(line: 11, column: 13, scope: !37)
!39 = !DILocation(line: 11, column: 9, scope: !7)
!40 = !DILocation(line: 13, column: 36, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 12, column: 5)
!42 = !DILocation(line: 13, column: 38, scope: !41)
!43 = !DILocation(line: 13, column: 9, scope: !41)
!44 = !DILocation(line: 14, column: 5, scope: !41)
!45 = !DILocation(line: 17, column: 36, scope: !46)
!46 = distinct !DILexicalBlock(scope: !37, file: !1, line: 16, column: 5)
!47 = !DILocation(line: 17, column: 38, scope: !46)
!48 = !DILocation(line: 17, column: 9, scope: !46)
!49 = !DILocation(line: 19, column: 5, scope: !7)
