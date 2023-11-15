; ModuleID = 'gcov/../WA_c/270010_buggy.c'
source_filename = "gcov/../WA_c/270010_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), float* %2, float* %3), !dbg !18
  %6 = load float, float* %2, align 4, !dbg !19
  %7 = fpext float %6 to double, !dbg !19
  %8 = fmul double 5.000000e-01, %7, !dbg !20
  %9 = load float, float* %3, align 4, !dbg !21
  %10 = fpext float %9 to double, !dbg !21
  %11 = fmul double %8, %10, !dbg !22
  %12 = fptrunc double %11 to float, !dbg !23
  store float %12, float* %4, align 4, !dbg !24
  %13 = load float, float* %4, align 4, !dbg !25
  %14 = fcmp ogt float %13, 0.000000e+00, !dbg !27
  br i1 %14, label %15, label %27, !dbg !28

; <label>:15:                                     ; preds = %0
  %16 = load float, float* %2, align 4, !dbg !29
  %17 = fpext float %16 to double, !dbg !29
  %18 = load float, float* %3, align 4, !dbg !31
  %19 = fpext float %18 to double, !dbg !31
  %20 = load float, float* %2, align 4, !dbg !32
  %21 = fpext float %20 to double, !dbg !32
  %22 = load float, float* %3, align 4, !dbg !33
  %23 = fpext float %22 to double, !dbg !33
  %24 = load float, float* %4, align 4, !dbg !34
  %25 = fpext float %24 to double, !dbg !34
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0), double %17, double %19, double %21, double %23, double %25), !dbg !35
  br label %40, !dbg !36

; <label>:27:                                     ; preds = %0
  %28 = load float, float* %2, align 4, !dbg !37
  %29 = fpext float %28 to double, !dbg !37
  %30 = load float, float* %3, align 4, !dbg !39
  %31 = fpext float %30 to double, !dbg !39
  %32 = load float, float* %2, align 4, !dbg !40
  %33 = fpext float %32 to double, !dbg !40
  %34 = load float, float* %3, align 4, !dbg !41
  %35 = fpext float %34 to double, !dbg !41
  %36 = load float, float* %4, align 4, !dbg !42
  %37 = fsub float -0.000000e+00, %36, !dbg !43
  %38 = fpext float %37 to double, !dbg !43
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0), double %29, double %31, double %33, double %35, double %38), !dbg !44
  br label %40

; <label>:40:                                     ; preds = %27, %15
  ret i32 0, !dbg !45
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
!1 = !DIFile(filename: "gcov/../WA_c/270010_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2810")
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
!16 = !DILocalVariable(name: "area", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 15, scope: !7)
!18 = !DILocation(line: 6, column: 5, scope: !7)
!19 = !DILocation(line: 7, column: 13, scope: !7)
!20 = !DILocation(line: 7, column: 12, scope: !7)
!21 = !DILocation(line: 7, column: 15, scope: !7)
!22 = !DILocation(line: 7, column: 14, scope: !7)
!23 = !DILocation(line: 7, column: 10, scope: !7)
!24 = !DILocation(line: 7, column: 9, scope: !7)
!25 = !DILocation(line: 8, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 9)
!27 = !DILocation(line: 8, column: 13, scope: !26)
!28 = !DILocation(line: 8, column: 9, scope: !7)
!29 = !DILocation(line: 10, column: 73, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 5)
!31 = !DILocation(line: 10, column: 75, scope: !30)
!32 = !DILocation(line: 10, column: 77, scope: !30)
!33 = !DILocation(line: 10, column: 79, scope: !30)
!34 = !DILocation(line: 10, column: 81, scope: !30)
!35 = !DILocation(line: 10, column: 9, scope: !30)
!36 = !DILocation(line: 11, column: 5, scope: !30)
!37 = !DILocation(line: 14, column: 73, scope: !38)
!38 = distinct !DILexicalBlock(scope: !26, file: !1, line: 13, column: 5)
!39 = !DILocation(line: 14, column: 75, scope: !38)
!40 = !DILocation(line: 14, column: 77, scope: !38)
!41 = !DILocation(line: 14, column: 79, scope: !38)
!42 = !DILocation(line: 14, column: 82, scope: !38)
!43 = !DILocation(line: 14, column: 81, scope: !38)
!44 = !DILocation(line: 14, column: 9, scope: !38)
!45 = !DILocation(line: 16, column: 5, scope: !7)
