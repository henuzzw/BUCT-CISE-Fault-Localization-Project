; ModuleID = 'gcov/../WA_c/270466_buggy.c'
source_filename = "gcov/../WA_c/270466_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%f %f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INF\0A\00", align 1
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
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), float* %2, float* %4, float* %3, float* %5), !dbg !20
  call void @llvm.dbg.declare(metadata float* %6, metadata !21, metadata !DIExpression()), !dbg !22
  %11 = load float, float* %2, align 4, !dbg !23
  %12 = load float, float* %4, align 4, !dbg !24
  %13 = fdiv float %11, %12, !dbg !25
  store float %13, float* %6, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata float* %7, metadata !26, metadata !DIExpression()), !dbg !27
  %14 = load float, float* %3, align 4, !dbg !28
  %15 = load float, float* %5, align 4, !dbg !29
  %16 = fdiv float %14, %15, !dbg !30
  store float %16, float* %7, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata float* %8, metadata !31, metadata !DIExpression()), !dbg !32
  %17 = load float, float* %4, align 4, !dbg !33
  %18 = load float, float* %5, align 4, !dbg !34
  %19 = fsub float %17, %18, !dbg !35
  %20 = load float, float* %2, align 4, !dbg !36
  %21 = load float, float* %3, align 4, !dbg !37
  %22 = fmul float %20, %21, !dbg !38
  %23 = fmul float %19, %22, !dbg !39
  %24 = load float, float* %4, align 4, !dbg !40
  %25 = load float, float* %3, align 4, !dbg !41
  %26 = fmul float %24, %25, !dbg !42
  %27 = load float, float* %5, align 4, !dbg !43
  %28 = load float, float* %2, align 4, !dbg !44
  %29 = fmul float %27, %28, !dbg !45
  %30 = fsub float %26, %29, !dbg !46
  %31 = fdiv float %23, %30, !dbg !47
  store float %31, float* %8, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata float* %9, metadata !48, metadata !DIExpression()), !dbg !49
  %32 = load float, float* %2, align 4, !dbg !50
  %33 = load float, float* %3, align 4, !dbg !51
  %34 = fsub float %32, %33, !dbg !52
  %35 = load float, float* %4, align 4, !dbg !53
  %36 = load float, float* %5, align 4, !dbg !54
  %37 = fmul float %35, %36, !dbg !55
  %38 = fmul float %34, %37, !dbg !56
  %39 = load float, float* %2, align 4, !dbg !57
  %40 = load float, float* %5, align 4, !dbg !58
  %41 = fmul float %39, %40, !dbg !59
  %42 = load float, float* %3, align 4, !dbg !60
  %43 = load float, float* %4, align 4, !dbg !61
  %44 = fmul float %42, %43, !dbg !62
  %45 = fsub float %41, %44, !dbg !63
  %46 = fdiv float %38, %45, !dbg !64
  store float %46, float* %9, align 4, !dbg !49
  %47 = load float, float* %6, align 4, !dbg !65
  %48 = load float, float* %7, align 4, !dbg !67
  %49 = fcmp oeq float %47, %48, !dbg !68
  br i1 %49, label %50, label %52, !dbg !69

; <label>:50:                                     ; preds = %0
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !70
  br label %71, !dbg !72

; <label>:52:                                     ; preds = %0
  %53 = load float, float* %6, align 4, !dbg !73
  %54 = load float, float* %7, align 4, !dbg !75
  %55 = fcmp une float %53, %54, !dbg !76
  br i1 %55, label %56, label %70, !dbg !77

; <label>:56:                                     ; preds = %52
  %57 = load float, float* %8, align 4, !dbg !78
  %58 = fcmp oeq float %57, 0.000000e+00, !dbg !81
  br i1 %58, label %59, label %60, !dbg !82

; <label>:59:                                     ; preds = %56
  store float 0.000000e+00, float* %8, align 4, !dbg !83
  br label %60, !dbg !85

; <label>:60:                                     ; preds = %59, %56
  %61 = load float, float* %9, align 4, !dbg !86
  %62 = fcmp oeq float %61, 0.000000e+00, !dbg !88
  br i1 %62, label %63, label %64, !dbg !89

; <label>:63:                                     ; preds = %60
  store float 0.000000e+00, float* %9, align 4, !dbg !90
  br label %64, !dbg !92

; <label>:64:                                     ; preds = %63, %60
  %65 = load float, float* %8, align 4, !dbg !93
  %66 = fpext float %65 to double, !dbg !93
  %67 = load float, float* %9, align 4, !dbg !94
  %68 = fpext float %67 to double, !dbg !94
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %66, double %68), !dbg !95
  br label %70, !dbg !96

; <label>:70:                                     ; preds = %64, %52
  br label %71

; <label>:71:                                     ; preds = %70, %50
  ret i32 0, !dbg !97
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
!1 = !DIFile(filename: "gcov/../WA_c/270466_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2813")
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
!14 = !DILocalVariable(name: "a2", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "b1", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "b2", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocation(line: 6, column: 5, scope: !7)
!21 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 7, type: !12)
!22 = !DILocation(line: 7, column: 11, scope: !7)
!23 = !DILocation(line: 7, column: 13, scope: !7)
!24 = !DILocation(line: 7, column: 16, scope: !7)
!25 = !DILocation(line: 7, column: 15, scope: !7)
!26 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 8, type: !12)
!27 = !DILocation(line: 8, column: 11, scope: !7)
!28 = !DILocation(line: 8, column: 13, scope: !7)
!29 = !DILocation(line: 8, column: 16, scope: !7)
!30 = !DILocation(line: 8, column: 15, scope: !7)
!31 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 9, type: !12)
!32 = !DILocation(line: 9, column: 11, scope: !7)
!33 = !DILocation(line: 9, column: 15, scope: !7)
!34 = !DILocation(line: 9, column: 18, scope: !7)
!35 = !DILocation(line: 9, column: 17, scope: !7)
!36 = !DILocation(line: 9, column: 23, scope: !7)
!37 = !DILocation(line: 9, column: 26, scope: !7)
!38 = !DILocation(line: 9, column: 25, scope: !7)
!39 = !DILocation(line: 9, column: 21, scope: !7)
!40 = !DILocation(line: 9, column: 33, scope: !7)
!41 = !DILocation(line: 9, column: 36, scope: !7)
!42 = !DILocation(line: 9, column: 35, scope: !7)
!43 = !DILocation(line: 9, column: 41, scope: !7)
!44 = !DILocation(line: 9, column: 44, scope: !7)
!45 = !DILocation(line: 9, column: 43, scope: !7)
!46 = !DILocation(line: 9, column: 39, scope: !7)
!47 = !DILocation(line: 9, column: 30, scope: !7)
!48 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 10, type: !12)
!49 = !DILocation(line: 10, column: 11, scope: !7)
!50 = !DILocation(line: 10, column: 15, scope: !7)
!51 = !DILocation(line: 10, column: 18, scope: !7)
!52 = !DILocation(line: 10, column: 17, scope: !7)
!53 = !DILocation(line: 10, column: 23, scope: !7)
!54 = !DILocation(line: 10, column: 26, scope: !7)
!55 = !DILocation(line: 10, column: 25, scope: !7)
!56 = !DILocation(line: 10, column: 21, scope: !7)
!57 = !DILocation(line: 10, column: 33, scope: !7)
!58 = !DILocation(line: 10, column: 36, scope: !7)
!59 = !DILocation(line: 10, column: 35, scope: !7)
!60 = !DILocation(line: 10, column: 41, scope: !7)
!61 = !DILocation(line: 10, column: 44, scope: !7)
!62 = !DILocation(line: 10, column: 43, scope: !7)
!63 = !DILocation(line: 10, column: 39, scope: !7)
!64 = !DILocation(line: 10, column: 30, scope: !7)
!65 = !DILocation(line: 12, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 9)
!67 = !DILocation(line: 12, column: 12, scope: !66)
!68 = !DILocation(line: 12, column: 10, scope: !66)
!69 = !DILocation(line: 12, column: 9, scope: !7)
!70 = !DILocation(line: 14, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 13, column: 5)
!72 = !DILocation(line: 15, column: 5, scope: !71)
!73 = !DILocation(line: 16, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !66, file: !1, line: 16, column: 14)
!75 = !DILocation(line: 16, column: 17, scope: !74)
!76 = !DILocation(line: 16, column: 15, scope: !74)
!77 = !DILocation(line: 16, column: 14, scope: !66)
!78 = !DILocation(line: 18, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 18, column: 13)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 17, column: 5)
!81 = !DILocation(line: 18, column: 14, scope: !79)
!82 = !DILocation(line: 18, column: 13, scope: !80)
!83 = !DILocation(line: 20, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 19, column: 9)
!85 = !DILocation(line: 21, column: 9, scope: !84)
!86 = !DILocation(line: 22, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !80, file: !1, line: 22, column: 13)
!88 = !DILocation(line: 22, column: 14, scope: !87)
!89 = !DILocation(line: 22, column: 13, scope: !80)
!90 = !DILocation(line: 24, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 23, column: 9)
!92 = !DILocation(line: 25, column: 9, scope: !91)
!93 = !DILocation(line: 27, column: 31, scope: !80)
!94 = !DILocation(line: 27, column: 33, scope: !80)
!95 = !DILocation(line: 27, column: 9, scope: !80)
!96 = !DILocation(line: 28, column: 5, scope: !80)
!97 = !DILocation(line: 30, column: 5, scope: !7)
