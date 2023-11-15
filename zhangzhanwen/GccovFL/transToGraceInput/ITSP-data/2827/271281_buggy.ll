; ModuleID = 'gcov/../WA_c/271281_buggy.c'
source_filename = "gcov/../WA_c/271281_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"%f %f %f %f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"All points are on the same line.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"All points are not on the same line.\00", align 1

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
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata float* %7, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata float* %8, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata float* %9, metadata !26, metadata !DIExpression()), !dbg !27
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5, float* %6, float* %7), !dbg !28
  %11 = load float, float* %4, align 4, !dbg !29
  %12 = load float, float* %2, align 4, !dbg !31
  %13 = fcmp une float %11, %12, !dbg !32
  br i1 %13, label %14, label %22, !dbg !33

; <label>:14:                                     ; preds = %0
  %15 = load float, float* %5, align 4, !dbg !34
  %16 = load float, float* %3, align 4, !dbg !36
  %17 = fsub float %15, %16, !dbg !37
  %18 = load float, float* %4, align 4, !dbg !38
  %19 = load float, float* %2, align 4, !dbg !39
  %20 = fsub float %18, %19, !dbg !40
  %21 = fdiv float %17, %20, !dbg !41
  store float %21, float* %8, align 4, !dbg !42
  br label %22, !dbg !43

; <label>:22:                                     ; preds = %14, %0
  %23 = load float, float* %4, align 4, !dbg !44
  %24 = load float, float* %6, align 4, !dbg !46
  %25 = fcmp une float %23, %24, !dbg !47
  br i1 %25, label %26, label %34, !dbg !48

; <label>:26:                                     ; preds = %22
  %27 = load float, float* %7, align 4, !dbg !49
  %28 = load float, float* %5, align 4, !dbg !51
  %29 = fsub float %27, %28, !dbg !52
  %30 = load float, float* %6, align 4, !dbg !53
  %31 = load float, float* %4, align 4, !dbg !54
  %32 = fsub float %30, %31, !dbg !55
  %33 = fdiv float %29, %32, !dbg !56
  store float %33, float* %9, align 4, !dbg !57
  br label %34, !dbg !58

; <label>:34:                                     ; preds = %26, %22
  %35 = load float, float* %2, align 4, !dbg !59
  %36 = load float, float* %4, align 4, !dbg !61
  %37 = fcmp oeq float %35, %36, !dbg !62
  br i1 %37, label %38, label %44, !dbg !63

; <label>:38:                                     ; preds = %34
  %39 = load float, float* %4, align 4, !dbg !64
  %40 = load float, float* %6, align 4, !dbg !65
  %41 = fcmp oeq float %39, %40, !dbg !66
  br i1 %41, label %42, label %44, !dbg !67

; <label>:42:                                     ; preds = %38
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !68
  br label %75, !dbg !70

; <label>:44:                                     ; preds = %38, %34
  %45 = load float, float* %2, align 4, !dbg !71
  %46 = load float, float* %4, align 4, !dbg !73
  %47 = fcmp oeq float %45, %46, !dbg !74
  br i1 %47, label %48, label %54, !dbg !75

; <label>:48:                                     ; preds = %44
  %49 = load float, float* %4, align 4, !dbg !76
  %50 = load float, float* %6, align 4, !dbg !77
  %51 = fcmp une float %49, %50, !dbg !78
  br i1 %51, label %52, label %54, !dbg !79

; <label>:52:                                     ; preds = %48
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0)), !dbg !80
  br label %74, !dbg !82

; <label>:54:                                     ; preds = %48, %44
  %55 = load float, float* %2, align 4, !dbg !83
  %56 = load float, float* %4, align 4, !dbg !85
  %57 = fcmp une float %55, %56, !dbg !86
  br i1 %57, label %58, label %64, !dbg !87

; <label>:58:                                     ; preds = %54
  %59 = load float, float* %4, align 4, !dbg !88
  %60 = load float, float* %6, align 4, !dbg !89
  %61 = fcmp oeq float %59, %60, !dbg !90
  br i1 %61, label %62, label %64, !dbg !91

; <label>:62:                                     ; preds = %58
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0)), !dbg !92
  br label %73, !dbg !94

; <label>:64:                                     ; preds = %58, %54
  %65 = load float, float* %8, align 4, !dbg !95
  %66 = load float, float* %9, align 4, !dbg !98
  %67 = fcmp oeq float %65, %66, !dbg !99
  br i1 %67, label %68, label %70, !dbg !100

; <label>:68:                                     ; preds = %64
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !101
  br label %72, !dbg !103

; <label>:70:                                     ; preds = %64
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0)), !dbg !104
  br label %72

; <label>:72:                                     ; preds = %70, %68
  br label %73

; <label>:73:                                     ; preds = %72, %62
  br label %74

; <label>:74:                                     ; preds = %73, %52
  br label %75

; <label>:75:                                     ; preds = %74, %42
  ret i32 0, !dbg !106
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
!1 = !DIFile(filename: "gcov/../WA_c/271281_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2827")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x1", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "x2", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "y2", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocalVariable(name: "x3", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "y3", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 26, scope: !7)
!24 = !DILocalVariable(name: "m1", scope: !7, file: !1, line: 5, type: !12)
!25 = !DILocation(line: 5, column: 29, scope: !7)
!26 = !DILocalVariable(name: "m2", scope: !7, file: !1, line: 5, type: !12)
!27 = !DILocation(line: 5, column: 32, scope: !7)
!28 = !DILocation(line: 6, column: 5, scope: !7)
!29 = !DILocation(line: 7, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!31 = !DILocation(line: 7, column: 12, scope: !30)
!32 = !DILocation(line: 7, column: 10, scope: !30)
!33 = !DILocation(line: 7, column: 8, scope: !7)
!34 = !DILocation(line: 9, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 8, column: 5)
!36 = !DILocation(line: 9, column: 16, scope: !35)
!37 = !DILocation(line: 9, column: 15, scope: !35)
!38 = !DILocation(line: 9, column: 21, scope: !35)
!39 = !DILocation(line: 9, column: 24, scope: !35)
!40 = !DILocation(line: 9, column: 23, scope: !35)
!41 = !DILocation(line: 9, column: 19, scope: !35)
!42 = !DILocation(line: 9, column: 11, scope: !35)
!43 = !DILocation(line: 10, column: 5, scope: !35)
!44 = !DILocation(line: 11, column: 8, scope: !45)
!45 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 8)
!46 = !DILocation(line: 11, column: 12, scope: !45)
!47 = !DILocation(line: 11, column: 10, scope: !45)
!48 = !DILocation(line: 11, column: 8, scope: !7)
!49 = !DILocation(line: 13, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 12, column: 5)
!51 = !DILocation(line: 13, column: 16, scope: !50)
!52 = !DILocation(line: 13, column: 15, scope: !50)
!53 = !DILocation(line: 13, column: 21, scope: !50)
!54 = !DILocation(line: 13, column: 24, scope: !50)
!55 = !DILocation(line: 13, column: 23, scope: !50)
!56 = !DILocation(line: 13, column: 19, scope: !50)
!57 = !DILocation(line: 13, column: 11, scope: !50)
!58 = !DILocation(line: 14, column: 5, scope: !50)
!59 = !DILocation(line: 15, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 8)
!61 = !DILocation(line: 15, column: 13, scope: !60)
!62 = !DILocation(line: 15, column: 11, scope: !60)
!63 = !DILocation(line: 15, column: 16, scope: !60)
!64 = !DILocation(line: 15, column: 19, scope: !60)
!65 = !DILocation(line: 15, column: 23, scope: !60)
!66 = !DILocation(line: 15, column: 21, scope: !60)
!67 = !DILocation(line: 15, column: 8, scope: !7)
!68 = !DILocation(line: 17, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 16, column: 5)
!70 = !DILocation(line: 18, column: 5, scope: !69)
!71 = !DILocation(line: 19, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !60, file: !1, line: 19, column: 13)
!73 = !DILocation(line: 19, column: 17, scope: !72)
!74 = !DILocation(line: 19, column: 15, scope: !72)
!75 = !DILocation(line: 19, column: 19, scope: !72)
!76 = !DILocation(line: 19, column: 21, scope: !72)
!77 = !DILocation(line: 19, column: 25, scope: !72)
!78 = !DILocation(line: 19, column: 23, scope: !72)
!79 = !DILocation(line: 19, column: 13, scope: !60)
!80 = !DILocation(line: 21, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !1, line: 20, column: 5)
!82 = !DILocation(line: 22, column: 5, scope: !81)
!83 = !DILocation(line: 23, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !72, file: !1, line: 23, column: 13)
!85 = !DILocation(line: 23, column: 17, scope: !84)
!86 = !DILocation(line: 23, column: 15, scope: !84)
!87 = !DILocation(line: 23, column: 19, scope: !84)
!88 = !DILocation(line: 23, column: 21, scope: !84)
!89 = !DILocation(line: 23, column: 25, scope: !84)
!90 = !DILocation(line: 23, column: 23, scope: !84)
!91 = !DILocation(line: 23, column: 13, scope: !72)
!92 = !DILocation(line: 25, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !1, line: 24, column: 5)
!94 = !DILocation(line: 26, column: 5, scope: !93)
!95 = !DILocation(line: 29, column: 12, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 29, column: 12)
!97 = distinct !DILexicalBlock(scope: !84, file: !1, line: 28, column: 5)
!98 = !DILocation(line: 29, column: 16, scope: !96)
!99 = !DILocation(line: 29, column: 14, scope: !96)
!100 = !DILocation(line: 29, column: 12, scope: !97)
!101 = !DILocation(line: 31, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !1, line: 30, column: 9)
!103 = !DILocation(line: 32, column: 9, scope: !102)
!104 = !DILocation(line: 35, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !1, line: 34, column: 9)
!106 = !DILocation(line: 39, column: 5, scope: !7)
