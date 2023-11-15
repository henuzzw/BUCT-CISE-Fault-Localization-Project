; ModuleID = 'gcov/../WA_c/278461_buggy.c'
source_filename = "gcov/../WA_c/278461_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  %11 = load i32, i32* %4, align 4, !dbg !18
  %12 = icmp sge i32 %11, 2, !dbg !20
  br i1 %12, label %13, label %65, !dbg !21

; <label>:13:                                     ; preds = %0
  %14 = load i32, i32* %3, align 4, !dbg !22
  %15 = icmp sge i32 %14, 2, !dbg !23
  br i1 %15, label %16, label %65, !dbg !24

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %7, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 1, i32* %5, align 4, !dbg !32
  br label %17, !dbg !34

; <label>:17:                                     ; preds = %24, %16
  %18 = load i32, i32* %5, align 4, !dbg !35
  %19 = load i32, i32* %3, align 4, !dbg !37
  %20 = icmp sle i32 %18, %19, !dbg !38
  br i1 %20, label %21, label %27, !dbg !39

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %2, align 4, !dbg !40
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %22), !dbg !42
  br label %24, !dbg !43

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %5, align 4, !dbg !44
  %26 = add nsw i32 %25, 1, !dbg !44
  store i32 %26, i32* %5, align 4, !dbg !44
  br label %17, !dbg !45, !llvm.loop !46

; <label>:27:                                     ; preds = %17
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !48
  store i32 1, i32* %6, align 4, !dbg !49
  br label %29, !dbg !51

; <label>:29:                                     ; preds = %50, %27
  %30 = load i32, i32* %6, align 4, !dbg !52
  %31 = load i32, i32* %4, align 4, !dbg !54
  %32 = sub nsw i32 %31, 2, !dbg !55
  %33 = icmp sle i32 %30, %32, !dbg !56
  br i1 %33, label %34, label %53, !dbg !57

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %2, align 4, !dbg !58
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %35), !dbg !60
  store i32 1, i32* %7, align 4, !dbg !61
  br label %37, !dbg !63

; <label>:37:                                     ; preds = %44, %34
  %38 = load i32, i32* %7, align 4, !dbg !64
  %39 = load i32, i32* %3, align 4, !dbg !66
  %40 = sub nsw i32 %39, 2, !dbg !67
  %41 = icmp sle i32 %38, %40, !dbg !68
  br i1 %41, label %42, label %47, !dbg !69

; <label>:42:                                     ; preds = %37
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !70
  br label %44, !dbg !72

; <label>:44:                                     ; preds = %42
  %45 = load i32, i32* %7, align 4, !dbg !73
  %46 = add nsw i32 %45, 1, !dbg !73
  store i32 %46, i32* %7, align 4, !dbg !73
  br label %37, !dbg !74, !llvm.loop !75

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* %2, align 4, !dbg !77
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %48), !dbg !78
  br label %50, !dbg !79

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %6, align 4, !dbg !80
  %52 = add nsw i32 %51, 1, !dbg !80
  store i32 %52, i32* %6, align 4, !dbg !80
  br label %29, !dbg !81, !llvm.loop !82

; <label>:53:                                     ; preds = %29
  store i32 1, i32* %5, align 4, !dbg !84
  br label %54, !dbg !86

; <label>:54:                                     ; preds = %61, %53
  %55 = load i32, i32* %5, align 4, !dbg !87
  %56 = load i32, i32* %3, align 4, !dbg !89
  %57 = icmp sle i32 %55, %56, !dbg !90
  br i1 %57, label %58, label %64, !dbg !91

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %2, align 4, !dbg !92
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %59), !dbg !94
  br label %61, !dbg !95

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %5, align 4, !dbg !96
  %63 = add nsw i32 %62, 1, !dbg !96
  store i32 %63, i32* %5, align 4, !dbg !96
  br label %54, !dbg !97, !llvm.loop !98

; <label>:64:                                     ; preds = %54
  br label %65, !dbg !100

; <label>:65:                                     ; preds = %64, %13, %0
  call void @llvm.dbg.declare(metadata i32* %8, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %9, metadata !103, metadata !DIExpression()), !dbg !104
  %66 = load i32, i32* %4, align 4, !dbg !105
  %67 = icmp eq i32 %66, 1, !dbg !107
  br i1 %67, label %68, label %80, !dbg !108

; <label>:68:                                     ; preds = %65
  store i32 1, i32* %8, align 4, !dbg !109
  br label %69, !dbg !112

; <label>:69:                                     ; preds = %76, %68
  %70 = load i32, i32* %8, align 4, !dbg !113
  %71 = load i32, i32* %3, align 4, !dbg !115
  %72 = icmp sle i32 %70, %71, !dbg !116
  br i1 %72, label %73, label %79, !dbg !117

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %2, align 4, !dbg !118
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %74), !dbg !120
  br label %76, !dbg !121

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %8, align 4, !dbg !122
  %78 = add nsw i32 %77, 1, !dbg !122
  store i32 %78, i32* %8, align 4, !dbg !122
  br label %69, !dbg !123, !llvm.loop !124

; <label>:79:                                     ; preds = %69
  br label %80, !dbg !126

; <label>:80:                                     ; preds = %79, %65
  %81 = load i32, i32* %3, align 4, !dbg !127
  %82 = icmp eq i32 %81, 1, !dbg !129
  br i1 %82, label %83, label %95, !dbg !130

; <label>:83:                                     ; preds = %80
  store i32 1, i32* %9, align 4, !dbg !131
  br label %84, !dbg !134

; <label>:84:                                     ; preds = %91, %83
  %85 = load i32, i32* %9, align 4, !dbg !135
  %86 = load i32, i32* %4, align 4, !dbg !137
  %87 = icmp sle i32 %85, %86, !dbg !138
  br i1 %87, label %88, label %94, !dbg !139

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %2, align 4, !dbg !140
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %89), !dbg !142
  br label %91, !dbg !143

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %9, align 4, !dbg !144
  %93 = add nsw i32 %92, 1, !dbg !144
  store i32 %93, i32* %9, align 4, !dbg !144
  br label %84, !dbg !145, !llvm.loop !146

; <label>:94:                                     ; preds = %84
  br label %95, !dbg !148

; <label>:95:                                     ; preds = %94, %80
  ret i32 0, !dbg !149
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
!1 = !DIFile(filename: "gcov/../WA_c/278461_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocation(line: 8, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!20 = !DILocation(line: 8, column: 9, scope: !19)
!21 = !DILocation(line: 8, column: 12, scope: !19)
!22 = !DILocation(line: 8, column: 14, scope: !19)
!23 = !DILocation(line: 8, column: 15, scope: !19)
!24 = !DILocation(line: 8, column: 8, scope: !7)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 10, type: !10)
!26 = distinct !DILexicalBlock(scope: !19, file: !1, line: 9, column: 5)
!27 = !DILocation(line: 10, column: 13, scope: !26)
!28 = !DILocalVariable(name: "j", scope: !26, file: !1, line: 10, type: !10)
!29 = !DILocation(line: 10, column: 15, scope: !26)
!30 = !DILocalVariable(name: "k", scope: !26, file: !1, line: 10, type: !10)
!31 = !DILocation(line: 10, column: 17, scope: !26)
!32 = !DILocation(line: 11, column: 14, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 11, column: 9)
!34 = !DILocation(line: 11, column: 13, scope: !33)
!35 = !DILocation(line: 11, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 9)
!37 = !DILocation(line: 11, column: 21, scope: !36)
!38 = !DILocation(line: 11, column: 19, scope: !36)
!39 = !DILocation(line: 11, column: 9, scope: !33)
!40 = !DILocation(line: 13, column: 25, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 9)
!42 = !DILocation(line: 13, column: 13, scope: !41)
!43 = !DILocation(line: 14, column: 9, scope: !41)
!44 = !DILocation(line: 11, column: 25, scope: !36)
!45 = !DILocation(line: 11, column: 9, scope: !36)
!46 = distinct !{!46, !39, !47}
!47 = !DILocation(line: 14, column: 9, scope: !33)
!48 = !DILocation(line: 15, column: 9, scope: !26)
!49 = !DILocation(line: 16, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !26, file: !1, line: 16, column: 9)
!51 = !DILocation(line: 16, column: 13, scope: !50)
!52 = !DILocation(line: 16, column: 18, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 16, column: 9)
!54 = !DILocation(line: 16, column: 22, scope: !53)
!55 = !DILocation(line: 16, column: 23, scope: !53)
!56 = !DILocation(line: 16, column: 19, scope: !53)
!57 = !DILocation(line: 16, column: 9, scope: !50)
!58 = !DILocation(line: 18, column: 25, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 17, column: 9)
!60 = !DILocation(line: 18, column: 13, scope: !59)
!61 = !DILocation(line: 19, column: 18, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 19, column: 13)
!63 = !DILocation(line: 19, column: 17, scope: !62)
!64 = !DILocation(line: 19, column: 22, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 19, column: 13)
!66 = !DILocation(line: 19, column: 26, scope: !65)
!67 = !DILocation(line: 19, column: 27, scope: !65)
!68 = !DILocation(line: 19, column: 23, scope: !65)
!69 = !DILocation(line: 19, column: 13, scope: !62)
!70 = !DILocation(line: 21, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 20, column: 13)
!72 = !DILocation(line: 22, column: 13, scope: !71)
!73 = !DILocation(line: 19, column: 33, scope: !65)
!74 = !DILocation(line: 19, column: 13, scope: !65)
!75 = distinct !{!75, !69, !76}
!76 = !DILocation(line: 22, column: 13, scope: !62)
!77 = !DILocation(line: 23, column: 27, scope: !59)
!78 = !DILocation(line: 23, column: 13, scope: !59)
!79 = !DILocation(line: 25, column: 9, scope: !59)
!80 = !DILocation(line: 16, column: 29, scope: !53)
!81 = !DILocation(line: 16, column: 9, scope: !53)
!82 = distinct !{!82, !57, !83}
!83 = !DILocation(line: 25, column: 9, scope: !50)
!84 = !DILocation(line: 26, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !26, file: !1, line: 26, column: 9)
!86 = !DILocation(line: 26, column: 13, scope: !85)
!87 = !DILocation(line: 26, column: 18, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 26, column: 9)
!89 = !DILocation(line: 26, column: 21, scope: !88)
!90 = !DILocation(line: 26, column: 19, scope: !88)
!91 = !DILocation(line: 26, column: 9, scope: !85)
!92 = !DILocation(line: 28, column: 25, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 27, column: 9)
!94 = !DILocation(line: 28, column: 13, scope: !93)
!95 = !DILocation(line: 29, column: 9, scope: !93)
!96 = !DILocation(line: 26, column: 25, scope: !88)
!97 = !DILocation(line: 26, column: 9, scope: !88)
!98 = distinct !{!98, !91, !99}
!99 = !DILocation(line: 29, column: 9, scope: !85)
!100 = !DILocation(line: 30, column: 5, scope: !26)
!101 = !DILocalVariable(name: "l", scope: !7, file: !1, line: 31, type: !10)
!102 = !DILocation(line: 31, column: 9, scope: !7)
!103 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 31, type: !10)
!104 = !DILocation(line: 31, column: 11, scope: !7)
!105 = !DILocation(line: 32, column: 8, scope: !106)
!106 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 8)
!107 = !DILocation(line: 32, column: 9, scope: !106)
!108 = !DILocation(line: 32, column: 8, scope: !7)
!109 = !DILocation(line: 34, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 34, column: 9)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 33, column: 5)
!112 = !DILocation(line: 34, column: 13, scope: !110)
!113 = !DILocation(line: 34, column: 18, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 34, column: 9)
!115 = !DILocation(line: 34, column: 21, scope: !114)
!116 = !DILocation(line: 34, column: 19, scope: !114)
!117 = !DILocation(line: 34, column: 9, scope: !110)
!118 = !DILocation(line: 36, column: 25, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 35, column: 9)
!120 = !DILocation(line: 36, column: 13, scope: !119)
!121 = !DILocation(line: 37, column: 9, scope: !119)
!122 = !DILocation(line: 34, column: 25, scope: !114)
!123 = !DILocation(line: 34, column: 9, scope: !114)
!124 = distinct !{!124, !117, !125}
!125 = !DILocation(line: 37, column: 9, scope: !110)
!126 = !DILocation(line: 38, column: 5, scope: !111)
!127 = !DILocation(line: 39, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !7, file: !1, line: 39, column: 8)
!129 = !DILocation(line: 39, column: 9, scope: !128)
!130 = !DILocation(line: 39, column: 8, scope: !7)
!131 = !DILocation(line: 41, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 41, column: 9)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 40, column: 5)
!134 = !DILocation(line: 41, column: 13, scope: !132)
!135 = !DILocation(line: 41, column: 18, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 41, column: 9)
!137 = !DILocation(line: 41, column: 21, scope: !136)
!138 = !DILocation(line: 41, column: 19, scope: !136)
!139 = !DILocation(line: 41, column: 9, scope: !132)
!140 = !DILocation(line: 43, column: 27, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 42, column: 9)
!142 = !DILocation(line: 43, column: 13, scope: !141)
!143 = !DILocation(line: 44, column: 9, scope: !141)
!144 = !DILocation(line: 41, column: 25, scope: !136)
!145 = !DILocation(line: 41, column: 9, scope: !136)
!146 = distinct !{!146, !139, !147}
!147 = !DILocation(line: 44, column: 9, scope: !132)
!148 = !DILocation(line: 45, column: 5, scope: !133)
!149 = !DILocation(line: 47, column: 5, scope: !7)
