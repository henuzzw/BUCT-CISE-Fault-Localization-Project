; ModuleID = 'gcov/../WA_c/270454_buggy.c'
source_filename = "gcov/../WA_c/270454_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%f%f%f%f\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(%.3f,%.3f)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(0.000,0.000)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"INF\00", align 1

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
  %9 = load float, float* %4, align 4, !dbg !25
  %10 = load float, float* %5, align 4, !dbg !26
  %11 = fmul float %9, %10, !dbg !27
  %12 = load float, float* %2, align 4, !dbg !28
  %13 = fmul float %11, %12, !dbg !29
  %14 = load float, float* %2, align 4, !dbg !30
  %15 = load float, float* %3, align 4, !dbg !31
  %16 = fmul float %14, %15, !dbg !32
  %17 = load float, float* %4, align 4, !dbg !33
  %18 = fmul float %16, %17, !dbg !34
  %19 = fsub float %13, %18, !dbg !35
  %20 = load float, float* %2, align 4, !dbg !36
  %21 = load float, float* %5, align 4, !dbg !37
  %22 = fmul float %20, %21, !dbg !38
  %23 = load float, float* %4, align 4, !dbg !39
  %24 = load float, float* %3, align 4, !dbg !40
  %25 = fmul float %23, %24, !dbg !41
  %26 = fsub float %22, %25, !dbg !42
  %27 = fdiv float %19, %26, !dbg !43
  store float %27, float* %6, align 4, !dbg !44
  %28 = load float, float* %2, align 4, !dbg !45
  %29 = load float, float* %3, align 4, !dbg !46
  %30 = fmul float %28, %29, !dbg !47
  %31 = load float, float* %5, align 4, !dbg !48
  %32 = fmul float %30, %31, !dbg !49
  %33 = load float, float* %4, align 4, !dbg !50
  %34 = load float, float* %5, align 4, !dbg !51
  %35 = fmul float %33, %34, !dbg !52
  %36 = load float, float* %3, align 4, !dbg !53
  %37 = fmul float %35, %36, !dbg !54
  %38 = fsub float %32, %37, !dbg !55
  %39 = load float, float* %5, align 4, !dbg !56
  %40 = load float, float* %2, align 4, !dbg !57
  %41 = fmul float %39, %40, !dbg !58
  %42 = load float, float* %3, align 4, !dbg !59
  %43 = load float, float* %4, align 4, !dbg !60
  %44 = fmul float %42, %43, !dbg !61
  %45 = fsub float %41, %44, !dbg !62
  %46 = fdiv float %38, %45, !dbg !63
  store float %46, float* %7, align 4, !dbg !64
  %47 = load float, float* %2, align 4, !dbg !65
  %48 = load float, float* %5, align 4, !dbg !67
  %49 = fmul float %47, %48, !dbg !68
  %50 = load float, float* %3, align 4, !dbg !69
  %51 = load float, float* %4, align 4, !dbg !70
  %52 = fmul float %50, %51, !dbg !71
  %53 = fcmp une float %49, %52, !dbg !72
  br i1 %53, label %54, label %66, !dbg !73

; <label>:54:                                     ; preds = %0
  %55 = load float, float* %6, align 4, !dbg !74
  %56 = fcmp une float %55, 0.000000e+00, !dbg !75
  br i1 %56, label %57, label %66, !dbg !76

; <label>:57:                                     ; preds = %54
  %58 = load float, float* %7, align 4, !dbg !77
  %59 = fcmp une float %58, 0.000000e+00, !dbg !78
  br i1 %59, label %60, label %66, !dbg !79

; <label>:60:                                     ; preds = %57
  %61 = load float, float* %6, align 4, !dbg !80
  %62 = fpext float %61 to double, !dbg !80
  %63 = load float, float* %7, align 4, !dbg !82
  %64 = fpext float %63 to double, !dbg !82
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), double %62, double %64), !dbg !83
  br label %83, !dbg !84

; <label>:66:                                     ; preds = %57, %54, %0
  %67 = load float, float* %2, align 4, !dbg !85
  %68 = load float, float* %5, align 4, !dbg !87
  %69 = fmul float %67, %68, !dbg !88
  %70 = load float, float* %3, align 4, !dbg !89
  %71 = load float, float* %4, align 4, !dbg !90
  %72 = fmul float %70, %71, !dbg !91
  %73 = fcmp une float %69, %72, !dbg !92
  br i1 %73, label %74, label %82, !dbg !93

; <label>:74:                                     ; preds = %66
  %75 = load float, float* %6, align 4, !dbg !94
  %76 = fcmp oeq float %75, 0.000000e+00, !dbg !95
  br i1 %76, label %77, label %82, !dbg !96

; <label>:77:                                     ; preds = %74
  %78 = load float, float* %7, align 4, !dbg !97
  %79 = fcmp oeq float %78, 0.000000e+00, !dbg !98
  br i1 %79, label %80, label %82, !dbg !99

; <label>:80:                                     ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !100
  br label %82, !dbg !102

; <label>:82:                                     ; preds = %80, %77, %74, %66
  br label %83

; <label>:83:                                     ; preds = %82, %60
  %84 = load float, float* %2, align 4, !dbg !103
  %85 = load float, float* %5, align 4, !dbg !105
  %86 = fmul float %84, %85, !dbg !106
  %87 = load float, float* %3, align 4, !dbg !107
  %88 = load float, float* %4, align 4, !dbg !108
  %89 = fmul float %87, %88, !dbg !109
  %90 = fcmp oeq float %86, %89, !dbg !110
  br i1 %90, label %91, label %93, !dbg !111

; <label>:91:                                     ; preds = %83
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !112
  br label %93, !dbg !114

; <label>:93:                                     ; preds = %91, %83
  ret i32 0, !dbg !115
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
!1 = !DIFile(filename: "gcov/../WA_c/270454_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2813")
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
!20 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 25, scope: !7)
!24 = !DILocation(line: 6, column: 5, scope: !7)
!25 = !DILocation(line: 9, column: 11, scope: !7)
!26 = !DILocation(line: 9, column: 14, scope: !7)
!27 = !DILocation(line: 9, column: 13, scope: !7)
!28 = !DILocation(line: 9, column: 17, scope: !7)
!29 = !DILocation(line: 9, column: 16, scope: !7)
!30 = !DILocation(line: 9, column: 22, scope: !7)
!31 = !DILocation(line: 9, column: 25, scope: !7)
!32 = !DILocation(line: 9, column: 24, scope: !7)
!33 = !DILocation(line: 9, column: 28, scope: !7)
!34 = !DILocation(line: 9, column: 27, scope: !7)
!35 = !DILocation(line: 9, column: 20, scope: !7)
!36 = !DILocation(line: 9, column: 35, scope: !7)
!37 = !DILocation(line: 9, column: 38, scope: !7)
!38 = !DILocation(line: 9, column: 37, scope: !7)
!39 = !DILocation(line: 9, column: 43, scope: !7)
!40 = !DILocation(line: 9, column: 46, scope: !7)
!41 = !DILocation(line: 9, column: 45, scope: !7)
!42 = !DILocation(line: 9, column: 41, scope: !7)
!43 = !DILocation(line: 9, column: 32, scope: !7)
!44 = !DILocation(line: 9, column: 7, scope: !7)
!45 = !DILocation(line: 12, column: 11, scope: !7)
!46 = !DILocation(line: 12, column: 14, scope: !7)
!47 = !DILocation(line: 12, column: 13, scope: !7)
!48 = !DILocation(line: 12, column: 17, scope: !7)
!49 = !DILocation(line: 12, column: 16, scope: !7)
!50 = !DILocation(line: 12, column: 22, scope: !7)
!51 = !DILocation(line: 12, column: 25, scope: !7)
!52 = !DILocation(line: 12, column: 24, scope: !7)
!53 = !DILocation(line: 12, column: 28, scope: !7)
!54 = !DILocation(line: 12, column: 27, scope: !7)
!55 = !DILocation(line: 12, column: 20, scope: !7)
!56 = !DILocation(line: 12, column: 35, scope: !7)
!57 = !DILocation(line: 12, column: 38, scope: !7)
!58 = !DILocation(line: 12, column: 37, scope: !7)
!59 = !DILocation(line: 12, column: 43, scope: !7)
!60 = !DILocation(line: 12, column: 46, scope: !7)
!61 = !DILocation(line: 12, column: 45, scope: !7)
!62 = !DILocation(line: 12, column: 41, scope: !7)
!63 = !DILocation(line: 12, column: 32, scope: !7)
!64 = !DILocation(line: 12, column: 7, scope: !7)
!65 = !DILocation(line: 15, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 8)
!67 = !DILocation(line: 15, column: 11, scope: !66)
!68 = !DILocation(line: 15, column: 10, scope: !66)
!69 = !DILocation(line: 15, column: 15, scope: !66)
!70 = !DILocation(line: 15, column: 18, scope: !66)
!71 = !DILocation(line: 15, column: 17, scope: !66)
!72 = !DILocation(line: 15, column: 13, scope: !66)
!73 = !DILocation(line: 15, column: 20, scope: !66)
!74 = !DILocation(line: 15, column: 22, scope: !66)
!75 = !DILocation(line: 15, column: 23, scope: !66)
!76 = !DILocation(line: 15, column: 26, scope: !66)
!77 = !DILocation(line: 15, column: 28, scope: !66)
!78 = !DILocation(line: 15, column: 29, scope: !66)
!79 = !DILocation(line: 15, column: 8, scope: !7)
!80 = !DILocation(line: 17, column: 30, scope: !81)
!81 = distinct !DILexicalBlock(scope: !66, file: !1, line: 16, column: 5)
!82 = !DILocation(line: 17, column: 32, scope: !81)
!83 = !DILocation(line: 17, column: 9, scope: !81)
!84 = !DILocation(line: 18, column: 5, scope: !81)
!85 = !DILocation(line: 19, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !66, file: !1, line: 19, column: 13)
!87 = !DILocation(line: 19, column: 16, scope: !86)
!88 = !DILocation(line: 19, column: 15, scope: !86)
!89 = !DILocation(line: 19, column: 20, scope: !86)
!90 = !DILocation(line: 19, column: 23, scope: !86)
!91 = !DILocation(line: 19, column: 22, scope: !86)
!92 = !DILocation(line: 19, column: 18, scope: !86)
!93 = !DILocation(line: 19, column: 25, scope: !86)
!94 = !DILocation(line: 19, column: 27, scope: !86)
!95 = !DILocation(line: 19, column: 28, scope: !86)
!96 = !DILocation(line: 19, column: 31, scope: !86)
!97 = !DILocation(line: 19, column: 33, scope: !86)
!98 = !DILocation(line: 19, column: 34, scope: !86)
!99 = !DILocation(line: 19, column: 13, scope: !66)
!100 = !DILocation(line: 21, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !86, file: !1, line: 20, column: 5)
!102 = !DILocation(line: 22, column: 5, scope: !101)
!103 = !DILocation(line: 25, column: 8, scope: !104)
!104 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 8)
!105 = !DILocation(line: 25, column: 11, scope: !104)
!106 = !DILocation(line: 25, column: 10, scope: !104)
!107 = !DILocation(line: 25, column: 15, scope: !104)
!108 = !DILocation(line: 25, column: 18, scope: !104)
!109 = !DILocation(line: 25, column: 17, scope: !104)
!110 = !DILocation(line: 25, column: 13, scope: !104)
!111 = !DILocation(line: 25, column: 8, scope: !7)
!112 = !DILocation(line: 27, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !1, line: 26, column: 5)
!114 = !DILocation(line: 28, column: 5, scope: !113)
!115 = !DILocation(line: 30, column: 5, scope: !7)
