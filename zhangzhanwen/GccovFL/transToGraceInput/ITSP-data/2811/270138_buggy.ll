; ModuleID = 'gcov/../WA_c/270138_buggy.c'
source_filename = "gcov/../WA_c/270138_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%f%f%f%f\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"(%.3f,%.3f)\00", align 1

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
  call void @llvm.dbg.declare(metadata float* %7, metadata !22, metadata !DIExpression()), !dbg !23
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5), !dbg !24
  %9 = load float, float* %2, align 4, !dbg !25
  %10 = load float, float* %4, align 4, !dbg !27
  %11 = fdiv float %9, %10, !dbg !28
  %12 = load float, float* %3, align 4, !dbg !29
  %13 = load float, float* %5, align 4, !dbg !30
  %14 = fdiv float %12, %13, !dbg !31
  %15 = fcmp oeq float %11, %14, !dbg !32
  br i1 %15, label %16, label %18, !dbg !33

; <label>:16:                                     ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !34
  br label %46, !dbg !36

; <label>:18:                                     ; preds = %0
  %19 = load float, float* %4, align 4, !dbg !37
  %20 = load float, float* %2, align 4, !dbg !39
  %21 = fsub float %19, %20, !dbg !40
  %22 = load float, float* %4, align 4, !dbg !41
  %23 = load float, float* %3, align 4, !dbg !42
  %24 = fmul float %22, %23, !dbg !43
  %25 = load float, float* %5, align 4, !dbg !44
  %26 = load float, float* %2, align 4, !dbg !45
  %27 = fmul float %25, %26, !dbg !46
  %28 = fsub float %24, %27, !dbg !47
  %29 = fdiv float %21, %28, !dbg !48
  store float %29, float* %7, align 4, !dbg !49
  %30 = load float, float* %5, align 4, !dbg !50
  %31 = load float, float* %3, align 4, !dbg !51
  %32 = fsub float %30, %31, !dbg !52
  %33 = load float, float* %5, align 4, !dbg !53
  %34 = load float, float* %2, align 4, !dbg !54
  %35 = fmul float %33, %34, !dbg !55
  %36 = load float, float* %3, align 4, !dbg !56
  %37 = load float, float* %4, align 4, !dbg !57
  %38 = fmul float %36, %37, !dbg !58
  %39 = fsub float %35, %38, !dbg !59
  %40 = fdiv float %32, %39, !dbg !60
  store float %40, float* %6, align 4, !dbg !61
  %41 = load float, float* %6, align 4, !dbg !62
  %42 = fpext float %41 to double, !dbg !62
  %43 = load float, float* %7, align 4, !dbg !63
  %44 = fpext float %43 to double, !dbg !63
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %42, double %44), !dbg !64
  br label %46

; <label>:46:                                     ; preds = %18, %16
  ret i32 0, !dbg !65
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
!1 = !DIFile(filename: "gcov/../WA_c/270138_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2811")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a1", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "b1", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "a2", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "b2", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocalVariable(name: "X", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "Y", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 25, scope: !7)
!24 = !DILocation(line: 6, column: 5, scope: !7)
!25 = !DILocation(line: 7, column: 10, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 9)
!27 = !DILocation(line: 7, column: 13, scope: !26)
!28 = !DILocation(line: 7, column: 12, scope: !26)
!29 = !DILocation(line: 7, column: 18, scope: !26)
!30 = !DILocation(line: 7, column: 21, scope: !26)
!31 = !DILocation(line: 7, column: 20, scope: !26)
!32 = !DILocation(line: 7, column: 16, scope: !26)
!33 = !DILocation(line: 7, column: 9, scope: !7)
!34 = !DILocation(line: 9, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!36 = !DILocation(line: 10, column: 5, scope: !35)
!37 = !DILocation(line: 13, column: 12, scope: !38)
!38 = distinct !DILexicalBlock(scope: !26, file: !1, line: 12, column: 5)
!39 = !DILocation(line: 13, column: 15, scope: !38)
!40 = !DILocation(line: 13, column: 14, scope: !38)
!41 = !DILocation(line: 13, column: 20, scope: !38)
!42 = !DILocation(line: 13, column: 23, scope: !38)
!43 = !DILocation(line: 13, column: 22, scope: !38)
!44 = !DILocation(line: 13, column: 26, scope: !38)
!45 = !DILocation(line: 13, column: 29, scope: !38)
!46 = !DILocation(line: 13, column: 28, scope: !38)
!47 = !DILocation(line: 13, column: 25, scope: !38)
!48 = !DILocation(line: 13, column: 18, scope: !38)
!49 = !DILocation(line: 13, column: 10, scope: !38)
!50 = !DILocation(line: 14, column: 12, scope: !38)
!51 = !DILocation(line: 14, column: 15, scope: !38)
!52 = !DILocation(line: 14, column: 14, scope: !38)
!53 = !DILocation(line: 14, column: 20, scope: !38)
!54 = !DILocation(line: 14, column: 23, scope: !38)
!55 = !DILocation(line: 14, column: 22, scope: !38)
!56 = !DILocation(line: 14, column: 26, scope: !38)
!57 = !DILocation(line: 14, column: 29, scope: !38)
!58 = !DILocation(line: 14, column: 28, scope: !38)
!59 = !DILocation(line: 14, column: 25, scope: !38)
!60 = !DILocation(line: 14, column: 18, scope: !38)
!61 = !DILocation(line: 14, column: 10, scope: !38)
!62 = !DILocation(line: 15, column: 30, scope: !38)
!63 = !DILocation(line: 15, column: 32, scope: !38)
!64 = !DILocation(line: 15, column: 9, scope: !38)
!65 = !DILocation(line: 19, column: 5, scope: !7)
