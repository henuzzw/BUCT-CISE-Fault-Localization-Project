; ModuleID = 'gcov/../WA_c/271241_buggy.c'
source_filename = "gcov/../WA_c/271241_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%f %f %f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Point is inside the circle.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Point is outside the circle.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Point is on the circle.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5, float* %6), !dbg !22
  call void @llvm.dbg.declare(metadata float* %7, metadata !23, metadata !DIExpression()), !dbg !24
  %9 = load float, float* %2, align 4, !dbg !25
  %10 = load float, float* %5, align 4, !dbg !26
  %11 = fsub float %9, %10, !dbg !27
  %12 = load float, float* %2, align 4, !dbg !28
  %13 = load float, float* %5, align 4, !dbg !29
  %14 = fsub float %12, %13, !dbg !30
  %15 = fmul float %11, %14, !dbg !31
  %16 = load float, float* %3, align 4, !dbg !32
  %17 = load float, float* %6, align 4, !dbg !33
  %18 = fsub float %16, %17, !dbg !34
  %19 = load float, float* %3, align 4, !dbg !35
  %20 = load float, float* %6, align 4, !dbg !36
  %21 = fsub float %19, %20, !dbg !37
  %22 = fmul float %18, %21, !dbg !38
  %23 = fadd float %15, %22, !dbg !39
  store float %23, float* %7, align 4, !dbg !24
  %24 = load float, float* %7, align 4, !dbg !40
  %25 = load float, float* %4, align 4, !dbg !42
  %26 = load float, float* %4, align 4, !dbg !43
  %27 = fmul float %25, %26, !dbg !44
  %28 = fcmp olt float %24, %27, !dbg !45
  br i1 %28, label %29, label %31, !dbg !46

; <label>:29:                                     ; preds = %0
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)), !dbg !47
  br label %42, !dbg !49

; <label>:31:                                     ; preds = %0
  %32 = load float, float* %7, align 4, !dbg !50
  %33 = load float, float* %4, align 4, !dbg !52
  %34 = load float, float* %4, align 4, !dbg !53
  %35 = fmul float %33, %34, !dbg !54
  %36 = fcmp ogt float %32, %35, !dbg !55
  br i1 %36, label %37, label %39, !dbg !56

; <label>:37:                                     ; preds = %31
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !57
  br label %41, !dbg !59

; <label>:39:                                     ; preds = %31
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)), !dbg !60
  br label %41

; <label>:41:                                     ; preds = %39, %37
  br label %42

; <label>:42:                                     ; preds = %41, %29
  ret i32 0, !dbg !62
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
!1 = !DIFile(filename: "gcov/../WA_c/271241_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "x1", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 24, scope: !7)
!22 = !DILocation(line: 6, column: 5, scope: !7)
!23 = !DILocalVariable(name: "dsquared", scope: !7, file: !1, line: 7, type: !12)
!24 = !DILocation(line: 7, column: 11, scope: !7)
!25 = !DILocation(line: 7, column: 24, scope: !7)
!26 = !DILocation(line: 7, column: 26, scope: !7)
!27 = !DILocation(line: 7, column: 25, scope: !7)
!28 = !DILocation(line: 7, column: 31, scope: !7)
!29 = !DILocation(line: 7, column: 33, scope: !7)
!30 = !DILocation(line: 7, column: 32, scope: !7)
!31 = !DILocation(line: 7, column: 29, scope: !7)
!32 = !DILocation(line: 7, column: 42, scope: !7)
!33 = !DILocation(line: 7, column: 44, scope: !7)
!34 = !DILocation(line: 7, column: 43, scope: !7)
!35 = !DILocation(line: 7, column: 49, scope: !7)
!36 = !DILocation(line: 7, column: 51, scope: !7)
!37 = !DILocation(line: 7, column: 50, scope: !7)
!38 = !DILocation(line: 7, column: 47, scope: !7)
!39 = !DILocation(line: 7, column: 38, scope: !7)
!40 = !DILocation(line: 8, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!42 = !DILocation(line: 8, column: 20, scope: !41)
!43 = !DILocation(line: 8, column: 22, scope: !41)
!44 = !DILocation(line: 8, column: 21, scope: !41)
!45 = !DILocation(line: 8, column: 17, scope: !41)
!46 = !DILocation(line: 8, column: 8, scope: !7)
!47 = !DILocation(line: 10, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !41, file: !1, line: 9, column: 5)
!49 = !DILocation(line: 11, column: 5, scope: !48)
!50 = !DILocation(line: 12, column: 13, scope: !51)
!51 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 13)
!52 = !DILocation(line: 12, column: 25, scope: !51)
!53 = !DILocation(line: 12, column: 27, scope: !51)
!54 = !DILocation(line: 12, column: 26, scope: !51)
!55 = !DILocation(line: 12, column: 22, scope: !51)
!56 = !DILocation(line: 12, column: 13, scope: !41)
!57 = !DILocation(line: 14, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !51, file: !1, line: 13, column: 5)
!59 = !DILocation(line: 15, column: 5, scope: !58)
!60 = !DILocation(line: 18, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !51, file: !1, line: 17, column: 5)
!62 = !DILocation(line: 20, column: 5, scope: !7)
