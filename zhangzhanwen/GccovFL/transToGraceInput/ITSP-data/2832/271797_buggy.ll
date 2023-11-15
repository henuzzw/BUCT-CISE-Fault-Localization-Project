; ModuleID = 'gcov/../WA_c/271797_buggy.c'
source_filename = "gcov/../WA_c/271797_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid Triangle\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Right Triangle\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Acute Triangle\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Obtuse Triangle\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !19
  %7 = load i32, i32* %2, align 4, !dbg !20
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = icmp sle i32 %7, %8, !dbg !23
  br i1 %9, label %10, label %19, !dbg !24

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %3, align 4, !dbg !25
  %12 = load i32, i32* %4, align 4, !dbg !28
  %13 = icmp sge i32 %11, %12, !dbg !29
  br i1 %13, label %14, label %16, !dbg !30

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 4, !dbg !31
  store i32 %15, i32* %5, align 4, !dbg !33
  br label %18, !dbg !34

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %4, align 4, !dbg !35
  store i32 %17, i32* %5, align 4, !dbg !37
  br label %18

; <label>:18:                                     ; preds = %16, %14
  br label %28, !dbg !38

; <label>:19:                                     ; preds = %0
  %20 = load i32, i32* %2, align 4, !dbg !39
  %21 = load i32, i32* %4, align 4, !dbg !42
  %22 = icmp sle i32 %20, %21, !dbg !43
  br i1 %22, label %23, label %25, !dbg !44

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %2, align 4, !dbg !45
  store i32 %24, i32* %5, align 4, !dbg !47
  br label %27, !dbg !48

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %4, align 4, !dbg !49
  store i32 %26, i32* %5, align 4, !dbg !51
  br label %27

; <label>:27:                                     ; preds = %25, %23
  br label %28

; <label>:28:                                     ; preds = %27, %18
  %29 = load i32, i32* %2, align 4, !dbg !52
  %30 = load i32, i32* %3, align 4, !dbg !54
  %31 = add nsw i32 %29, %30, !dbg !55
  %32 = load i32, i32* %4, align 4, !dbg !56
  %33 = add nsw i32 %31, %32, !dbg !57
  %34 = load i32, i32* %5, align 4, !dbg !58
  %35 = mul nsw i32 2, %34, !dbg !59
  %36 = sub nsw i32 %33, %35, !dbg !60
  %37 = icmp sle i32 %36, 0, !dbg !61
  br i1 %37, label %38, label %40, !dbg !62

; <label>:38:                                     ; preds = %28
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !63
  br label %40, !dbg !65

; <label>:40:                                     ; preds = %38, %28
  %41 = load i32, i32* %2, align 4, !dbg !66
  %42 = load i32, i32* %3, align 4, !dbg !68
  %43 = add nsw i32 %41, %42, !dbg !69
  %44 = load i32, i32* %4, align 4, !dbg !70
  %45 = add nsw i32 %43, %44, !dbg !71
  %46 = load i32, i32* %5, align 4, !dbg !72
  %47 = mul nsw i32 2, %46, !dbg !73
  %48 = sub nsw i32 %45, %47, !dbg !74
  %49 = icmp sge i32 %48, 0, !dbg !75
  br i1 %49, label %50, label %110, !dbg !76

; <label>:50:                                     ; preds = %40
  %51 = load i32, i32* %2, align 4, !dbg !77
  %52 = load i32, i32* %2, align 4, !dbg !80
  %53 = mul nsw i32 %51, %52, !dbg !81
  %54 = load i32, i32* %3, align 4, !dbg !82
  %55 = load i32, i32* %3, align 4, !dbg !83
  %56 = mul nsw i32 %54, %55, !dbg !84
  %57 = add nsw i32 %53, %56, !dbg !85
  %58 = load i32, i32* %4, align 4, !dbg !86
  %59 = load i32, i32* %4, align 4, !dbg !87
  %60 = mul nsw i32 %58, %59, !dbg !88
  %61 = add nsw i32 %57, %60, !dbg !89
  %62 = load i32, i32* %5, align 4, !dbg !90
  %63 = mul nsw i32 2, %62, !dbg !91
  %64 = load i32, i32* %5, align 4, !dbg !92
  %65 = mul nsw i32 %63, %64, !dbg !93
  %66 = icmp eq i32 %61, %65, !dbg !94
  br i1 %66, label %67, label %69, !dbg !95

; <label>:67:                                     ; preds = %50
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !96
  br label %109, !dbg !98

; <label>:69:                                     ; preds = %50
  %70 = load i32, i32* %2, align 4, !dbg !99
  %71 = load i32, i32* %2, align 4, !dbg !101
  %72 = mul nsw i32 %70, %71, !dbg !102
  %73 = load i32, i32* %3, align 4, !dbg !103
  %74 = load i32, i32* %3, align 4, !dbg !104
  %75 = mul nsw i32 %73, %74, !dbg !105
  %76 = add nsw i32 %72, %75, !dbg !106
  %77 = load i32, i32* %4, align 4, !dbg !107
  %78 = load i32, i32* %4, align 4, !dbg !108
  %79 = mul nsw i32 %77, %78, !dbg !109
  %80 = add nsw i32 %76, %79, !dbg !110
  %81 = load i32, i32* %5, align 4, !dbg !111
  %82 = mul nsw i32 2, %81, !dbg !112
  %83 = load i32, i32* %5, align 4, !dbg !113
  %84 = mul nsw i32 %82, %83, !dbg !114
  %85 = icmp sge i32 %80, %84, !dbg !115
  br i1 %85, label %86, label %88, !dbg !116

; <label>:86:                                     ; preds = %69
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !117
  br label %108, !dbg !119

; <label>:88:                                     ; preds = %69
  %89 = load i32, i32* %2, align 4, !dbg !120
  %90 = load i32, i32* %2, align 4, !dbg !122
  %91 = mul nsw i32 %89, %90, !dbg !123
  %92 = load i32, i32* %3, align 4, !dbg !124
  %93 = load i32, i32* %3, align 4, !dbg !125
  %94 = mul nsw i32 %92, %93, !dbg !126
  %95 = add nsw i32 %91, %94, !dbg !127
  %96 = load i32, i32* %4, align 4, !dbg !128
  %97 = load i32, i32* %4, align 4, !dbg !129
  %98 = mul nsw i32 %96, %97, !dbg !130
  %99 = add nsw i32 %95, %98, !dbg !131
  %100 = load i32, i32* %5, align 4, !dbg !132
  %101 = mul nsw i32 2, %100, !dbg !133
  %102 = load i32, i32* %5, align 4, !dbg !134
  %103 = mul nsw i32 %101, %102, !dbg !135
  %104 = icmp sle i32 %99, %103, !dbg !136
  br i1 %104, label %105, label %107, !dbg !137

; <label>:105:                                    ; preds = %88
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)), !dbg !138
  br label %107, !dbg !140

; <label>:107:                                    ; preds = %105, %88
  br label %108

; <label>:108:                                    ; preds = %107, %86
  br label %109

; <label>:109:                                    ; preds = %108, %67
  br label %110, !dbg !141

; <label>:110:                                    ; preds = %109, %40
  ret i32 0, !dbg !142
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
!1 = !DIFile(filename: "gcov/../WA_c/271797_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 7, type: !10)
!16 = !DILocation(line: 7, column: 9, scope: !7)
!17 = !DILocalVariable(name: "max", scope: !7, file: !1, line: 8, type: !10)
!18 = !DILocation(line: 8, column: 9, scope: !7)
!19 = !DILocation(line: 9, column: 5, scope: !7)
!20 = !DILocation(line: 10, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 9)
!22 = !DILocation(line: 10, column: 14, scope: !21)
!23 = !DILocation(line: 10, column: 11, scope: !21)
!24 = !DILocation(line: 10, column: 9, scope: !7)
!25 = !DILocation(line: 12, column: 12, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 12, column: 12)
!27 = distinct !DILexicalBlock(scope: !21, file: !1, line: 11, column: 5)
!28 = !DILocation(line: 12, column: 17, scope: !26)
!29 = !DILocation(line: 12, column: 14, scope: !26)
!30 = !DILocation(line: 12, column: 12, scope: !27)
!31 = !DILocation(line: 14, column: 18, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 13, column: 9)
!33 = !DILocation(line: 14, column: 17, scope: !32)
!34 = !DILocation(line: 15, column: 9, scope: !32)
!35 = !DILocation(line: 18, column: 17, scope: !36)
!36 = distinct !DILexicalBlock(scope: !26, file: !1, line: 17, column: 9)
!37 = !DILocation(line: 18, column: 16, scope: !36)
!38 = !DILocation(line: 20, column: 5, scope: !27)
!39 = !DILocation(line: 23, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 23, column: 13)
!41 = distinct !DILexicalBlock(scope: !21, file: !1, line: 22, column: 5)
!42 = !DILocation(line: 23, column: 18, scope: !40)
!43 = !DILocation(line: 23, column: 15, scope: !40)
!44 = !DILocation(line: 23, column: 13, scope: !41)
!45 = !DILocation(line: 25, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 24, column: 9)
!47 = !DILocation(line: 25, column: 16, scope: !46)
!48 = !DILocation(line: 26, column: 9, scope: !46)
!49 = !DILocation(line: 29, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !1, line: 28, column: 9)
!51 = !DILocation(line: 29, column: 16, scope: !50)
!52 = !DILocation(line: 32, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 9)
!54 = !DILocation(line: 32, column: 12, scope: !53)
!55 = !DILocation(line: 32, column: 11, scope: !53)
!56 = !DILocation(line: 32, column: 14, scope: !53)
!57 = !DILocation(line: 32, column: 13, scope: !53)
!58 = !DILocation(line: 32, column: 19, scope: !53)
!59 = !DILocation(line: 32, column: 18, scope: !53)
!60 = !DILocation(line: 32, column: 15, scope: !53)
!61 = !DILocation(line: 32, column: 24, scope: !53)
!62 = !DILocation(line: 32, column: 9, scope: !7)
!63 = !DILocation(line: 34, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !53, file: !1, line: 33, column: 5)
!65 = !DILocation(line: 35, column: 5, scope: !64)
!66 = !DILocation(line: 36, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !7, file: !1, line: 36, column: 9)
!68 = !DILocation(line: 36, column: 12, scope: !67)
!69 = !DILocation(line: 36, column: 11, scope: !67)
!70 = !DILocation(line: 36, column: 14, scope: !67)
!71 = !DILocation(line: 36, column: 13, scope: !67)
!72 = !DILocation(line: 36, column: 19, scope: !67)
!73 = !DILocation(line: 36, column: 18, scope: !67)
!74 = !DILocation(line: 36, column: 15, scope: !67)
!75 = !DILocation(line: 36, column: 24, scope: !67)
!76 = !DILocation(line: 36, column: 9, scope: !7)
!77 = !DILocation(line: 38, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 38, column: 13)
!79 = distinct !DILexicalBlock(scope: !67, file: !1, line: 37, column: 5)
!80 = !DILocation(line: 38, column: 16, scope: !78)
!81 = !DILocation(line: 38, column: 15, scope: !78)
!82 = !DILocation(line: 38, column: 20, scope: !78)
!83 = !DILocation(line: 38, column: 22, scope: !78)
!84 = !DILocation(line: 38, column: 21, scope: !78)
!85 = !DILocation(line: 38, column: 18, scope: !78)
!86 = !DILocation(line: 38, column: 26, scope: !78)
!87 = !DILocation(line: 38, column: 28, scope: !78)
!88 = !DILocation(line: 38, column: 27, scope: !78)
!89 = !DILocation(line: 38, column: 24, scope: !78)
!90 = !DILocation(line: 38, column: 35, scope: !78)
!91 = !DILocation(line: 38, column: 34, scope: !78)
!92 = !DILocation(line: 38, column: 39, scope: !78)
!93 = !DILocation(line: 38, column: 38, scope: !78)
!94 = !DILocation(line: 38, column: 30, scope: !78)
!95 = !DILocation(line: 38, column: 13, scope: !79)
!96 = !DILocation(line: 40, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !78, file: !1, line: 39, column: 9)
!98 = !DILocation(line: 41, column: 9, scope: !97)
!99 = !DILocation(line: 42, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !78, file: !1, line: 42, column: 17)
!101 = !DILocation(line: 42, column: 20, scope: !100)
!102 = !DILocation(line: 42, column: 19, scope: !100)
!103 = !DILocation(line: 42, column: 24, scope: !100)
!104 = !DILocation(line: 42, column: 26, scope: !100)
!105 = !DILocation(line: 42, column: 25, scope: !100)
!106 = !DILocation(line: 42, column: 22, scope: !100)
!107 = !DILocation(line: 42, column: 30, scope: !100)
!108 = !DILocation(line: 42, column: 32, scope: !100)
!109 = !DILocation(line: 42, column: 31, scope: !100)
!110 = !DILocation(line: 42, column: 28, scope: !100)
!111 = !DILocation(line: 42, column: 39, scope: !100)
!112 = !DILocation(line: 42, column: 38, scope: !100)
!113 = !DILocation(line: 42, column: 43, scope: !100)
!114 = !DILocation(line: 42, column: 42, scope: !100)
!115 = !DILocation(line: 42, column: 34, scope: !100)
!116 = !DILocation(line: 42, column: 17, scope: !78)
!117 = !DILocation(line: 44, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !100, file: !1, line: 43, column: 9)
!119 = !DILocation(line: 45, column: 9, scope: !118)
!120 = !DILocation(line: 46, column: 18, scope: !121)
!121 = distinct !DILexicalBlock(scope: !100, file: !1, line: 46, column: 17)
!122 = !DILocation(line: 46, column: 20, scope: !121)
!123 = !DILocation(line: 46, column: 19, scope: !121)
!124 = !DILocation(line: 46, column: 24, scope: !121)
!125 = !DILocation(line: 46, column: 26, scope: !121)
!126 = !DILocation(line: 46, column: 25, scope: !121)
!127 = !DILocation(line: 46, column: 22, scope: !121)
!128 = !DILocation(line: 46, column: 30, scope: !121)
!129 = !DILocation(line: 46, column: 32, scope: !121)
!130 = !DILocation(line: 46, column: 31, scope: !121)
!131 = !DILocation(line: 46, column: 28, scope: !121)
!132 = !DILocation(line: 46, column: 39, scope: !121)
!133 = !DILocation(line: 46, column: 38, scope: !121)
!134 = !DILocation(line: 46, column: 43, scope: !121)
!135 = !DILocation(line: 46, column: 42, scope: !121)
!136 = !DILocation(line: 46, column: 34, scope: !121)
!137 = !DILocation(line: 46, column: 17, scope: !100)
!138 = !DILocation(line: 48, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !121, file: !1, line: 47, column: 9)
!140 = !DILocation(line: 49, column: 9, scope: !139)
!141 = !DILocation(line: 50, column: 5, scope: !79)
!142 = !DILocation(line: 52, column: 5, scope: !7)
