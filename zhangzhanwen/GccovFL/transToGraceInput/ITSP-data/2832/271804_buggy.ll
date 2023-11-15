; ModuleID = 'gcov/../WA_c/271804_buggy.c'
source_filename = "gcov/../WA_c/271804_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid Triangle\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Right Triangle\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Obtuse Triangle\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Acute Triangle\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !17
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !18
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !19
  %8 = load i32, i32* %2, align 4, !dbg !20
  %9 = load i32, i32* %3, align 4, !dbg !22
  %10 = add nsw i32 %8, %9, !dbg !23
  %11 = load i32, i32* %4, align 4, !dbg !24
  %12 = icmp sle i32 %10, %11, !dbg !25
  br i1 %12, label %25, label %13, !dbg !26

; <label>:13:                                     ; preds = %0
  %14 = load i32, i32* %3, align 4, !dbg !27
  %15 = load i32, i32* %4, align 4, !dbg !28
  %16 = add nsw i32 %14, %15, !dbg !29
  %17 = load i32, i32* %2, align 4, !dbg !30
  %18 = icmp sle i32 %16, %17, !dbg !31
  br i1 %18, label %25, label %19, !dbg !32

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %4, align 4, !dbg !33
  %21 = load i32, i32* %2, align 4, !dbg !34
  %22 = add nsw i32 %20, %21, !dbg !35
  %23 = load i32, i32* %3, align 4, !dbg !36
  %24 = icmp sle i32 %22, %23, !dbg !37
  br i1 %24, label %25, label %27, !dbg !38

; <label>:25:                                     ; preds = %19, %13, %0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !39
  br label %142, !dbg !41

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %2, align 4, !dbg !42
  %29 = load i32, i32* %2, align 4, !dbg !45
  %30 = mul nsw i32 %28, %29, !dbg !46
  %31 = load i32, i32* %3, align 4, !dbg !47
  %32 = load i32, i32* %3, align 4, !dbg !48
  %33 = mul nsw i32 %31, %32, !dbg !49
  %34 = load i32, i32* %4, align 4, !dbg !50
  %35 = load i32, i32* %4, align 4, !dbg !51
  %36 = mul nsw i32 %34, %35, !dbg !52
  %37 = add nsw i32 %33, %36, !dbg !53
  %38 = icmp eq i32 %30, %37, !dbg !54
  br i1 %38, label %63, label %39, !dbg !55

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %3, align 4, !dbg !56
  %41 = load i32, i32* %3, align 4, !dbg !57
  %42 = mul nsw i32 %40, %41, !dbg !58
  %43 = load i32, i32* %2, align 4, !dbg !59
  %44 = load i32, i32* %2, align 4, !dbg !60
  %45 = mul nsw i32 %43, %44, !dbg !61
  %46 = load i32, i32* %4, align 4, !dbg !62
  %47 = load i32, i32* %4, align 4, !dbg !63
  %48 = mul nsw i32 %46, %47, !dbg !64
  %49 = add nsw i32 %45, %48, !dbg !65
  %50 = icmp eq i32 %42, %49, !dbg !66
  br i1 %50, label %63, label %51, !dbg !67

; <label>:51:                                     ; preds = %39
  %52 = load i32, i32* %4, align 4, !dbg !68
  %53 = load i32, i32* %4, align 4, !dbg !69
  %54 = mul nsw i32 %52, %53, !dbg !70
  %55 = load i32, i32* %2, align 4, !dbg !71
  %56 = load i32, i32* %2, align 4, !dbg !72
  %57 = mul nsw i32 %55, %56, !dbg !73
  %58 = load i32, i32* %3, align 4, !dbg !74
  %59 = load i32, i32* %3, align 4, !dbg !75
  %60 = mul nsw i32 %58, %59, !dbg !76
  %61 = add nsw i32 %57, %60, !dbg !77
  %62 = icmp eq i32 %54, %61, !dbg !78
  br i1 %62, label %63, label %65, !dbg !79

; <label>:63:                                     ; preds = %51, %39, %27
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !80
  br label %65, !dbg !82

; <label>:65:                                     ; preds = %63, %51
  %66 = load i32, i32* %2, align 4, !dbg !83
  %67 = load i32, i32* %2, align 4, !dbg !85
  %68 = mul nsw i32 %66, %67, !dbg !86
  %69 = load i32, i32* %3, align 4, !dbg !87
  %70 = load i32, i32* %3, align 4, !dbg !88
  %71 = mul nsw i32 %69, %70, !dbg !89
  %72 = load i32, i32* %4, align 4, !dbg !90
  %73 = load i32, i32* %4, align 4, !dbg !91
  %74 = mul nsw i32 %72, %73, !dbg !92
  %75 = add nsw i32 %71, %74, !dbg !93
  %76 = icmp sgt i32 %68, %75, !dbg !94
  br i1 %76, label %101, label %77, !dbg !95

; <label>:77:                                     ; preds = %65
  %78 = load i32, i32* %3, align 4, !dbg !96
  %79 = load i32, i32* %3, align 4, !dbg !97
  %80 = mul nsw i32 %78, %79, !dbg !98
  %81 = load i32, i32* %2, align 4, !dbg !99
  %82 = load i32, i32* %2, align 4, !dbg !100
  %83 = mul nsw i32 %81, %82, !dbg !101
  %84 = load i32, i32* %4, align 4, !dbg !102
  %85 = load i32, i32* %4, align 4, !dbg !103
  %86 = mul nsw i32 %84, %85, !dbg !104
  %87 = add nsw i32 %83, %86, !dbg !105
  %88 = icmp sgt i32 %80, %87, !dbg !106
  br i1 %88, label %101, label %89, !dbg !107

; <label>:89:                                     ; preds = %77
  %90 = load i32, i32* %4, align 4, !dbg !108
  %91 = load i32, i32* %4, align 4, !dbg !109
  %92 = mul nsw i32 %90, %91, !dbg !110
  %93 = load i32, i32* %2, align 4, !dbg !111
  %94 = load i32, i32* %2, align 4, !dbg !112
  %95 = mul nsw i32 %93, %94, !dbg !113
  %96 = load i32, i32* %3, align 4, !dbg !114
  %97 = load i32, i32* %3, align 4, !dbg !115
  %98 = mul nsw i32 %96, %97, !dbg !116
  %99 = add nsw i32 %95, %98, !dbg !117
  %100 = icmp sgt i32 %92, %99, !dbg !118
  br i1 %100, label %101, label %103, !dbg !119

; <label>:101:                                    ; preds = %89, %77, %65
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !120
  br label %103, !dbg !122

; <label>:103:                                    ; preds = %101, %89
  %104 = load i32, i32* %2, align 4, !dbg !123
  %105 = load i32, i32* %2, align 4, !dbg !125
  %106 = mul nsw i32 %104, %105, !dbg !126
  %107 = load i32, i32* %3, align 4, !dbg !127
  %108 = load i32, i32* %3, align 4, !dbg !128
  %109 = mul nsw i32 %107, %108, !dbg !129
  %110 = load i32, i32* %4, align 4, !dbg !130
  %111 = load i32, i32* %4, align 4, !dbg !131
  %112 = mul nsw i32 %110, %111, !dbg !132
  %113 = add nsw i32 %109, %112, !dbg !133
  %114 = icmp sgt i32 %106, %113, !dbg !134
  br i1 %114, label %115, label %141, !dbg !135

; <label>:115:                                    ; preds = %103
  %116 = load i32, i32* %3, align 4, !dbg !136
  %117 = load i32, i32* %3, align 4, !dbg !137
  %118 = mul nsw i32 %116, %117, !dbg !138
  %119 = load i32, i32* %2, align 4, !dbg !139
  %120 = load i32, i32* %2, align 4, !dbg !140
  %121 = mul nsw i32 %119, %120, !dbg !141
  %122 = load i32, i32* %4, align 4, !dbg !142
  %123 = load i32, i32* %4, align 4, !dbg !143
  %124 = mul nsw i32 %122, %123, !dbg !144
  %125 = add nsw i32 %121, %124, !dbg !145
  %126 = icmp sgt i32 %118, %125, !dbg !146
  br i1 %126, label %127, label %141, !dbg !147

; <label>:127:                                    ; preds = %115
  %128 = load i32, i32* %4, align 4, !dbg !148
  %129 = load i32, i32* %4, align 4, !dbg !149
  %130 = mul nsw i32 %128, %129, !dbg !150
  %131 = load i32, i32* %2, align 4, !dbg !151
  %132 = load i32, i32* %2, align 4, !dbg !152
  %133 = mul nsw i32 %131, %132, !dbg !153
  %134 = load i32, i32* %3, align 4, !dbg !154
  %135 = load i32, i32* %3, align 4, !dbg !155
  %136 = mul nsw i32 %134, %135, !dbg !156
  %137 = add nsw i32 %133, %136, !dbg !157
  %138 = icmp sgt i32 %130, %137, !dbg !158
  br i1 %138, label %139, label %141, !dbg !159

; <label>:139:                                    ; preds = %127
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !160
  br label %141, !dbg !162

; <label>:141:                                    ; preds = %139, %127, %115, %103
  br label %142

; <label>:142:                                    ; preds = %141, %25
  ret i32 0, !dbg !163
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
!1 = !DIFile(filename: "gcov/../WA_c/271804_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 9, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 11, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 13, scope: !7)
!17 = !DILocation(line: 7, column: 5, scope: !7)
!18 = !DILocation(line: 8, column: 5, scope: !7)
!19 = !DILocation(line: 9, column: 5, scope: !7)
!20 = !DILocation(line: 11, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 9)
!22 = !DILocation(line: 11, column: 11, scope: !21)
!23 = !DILocation(line: 11, column: 10, scope: !21)
!24 = !DILocation(line: 11, column: 14, scope: !21)
!25 = !DILocation(line: 11, column: 12, scope: !21)
!26 = !DILocation(line: 11, column: 16, scope: !21)
!27 = !DILocation(line: 11, column: 19, scope: !21)
!28 = !DILocation(line: 11, column: 21, scope: !21)
!29 = !DILocation(line: 11, column: 20, scope: !21)
!30 = !DILocation(line: 11, column: 24, scope: !21)
!31 = !DILocation(line: 11, column: 22, scope: !21)
!32 = !DILocation(line: 11, column: 26, scope: !21)
!33 = !DILocation(line: 11, column: 29, scope: !21)
!34 = !DILocation(line: 11, column: 31, scope: !21)
!35 = !DILocation(line: 11, column: 30, scope: !21)
!36 = !DILocation(line: 11, column: 34, scope: !21)
!37 = !DILocation(line: 11, column: 32, scope: !21)
!38 = !DILocation(line: 11, column: 9, scope: !7)
!39 = !DILocation(line: 13, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !21, file: !1, line: 12, column: 5)
!41 = !DILocation(line: 14, column: 5, scope: !40)
!42 = !DILocation(line: 17, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 17, column: 13)
!44 = distinct !DILexicalBlock(scope: !21, file: !1, line: 16, column: 5)
!45 = !DILocation(line: 17, column: 15, scope: !43)
!46 = !DILocation(line: 17, column: 14, scope: !43)
!47 = !DILocation(line: 17, column: 18, scope: !43)
!48 = !DILocation(line: 17, column: 20, scope: !43)
!49 = !DILocation(line: 17, column: 19, scope: !43)
!50 = !DILocation(line: 17, column: 24, scope: !43)
!51 = !DILocation(line: 17, column: 26, scope: !43)
!52 = !DILocation(line: 17, column: 25, scope: !43)
!53 = !DILocation(line: 17, column: 22, scope: !43)
!54 = !DILocation(line: 17, column: 16, scope: !43)
!55 = !DILocation(line: 17, column: 28, scope: !43)
!56 = !DILocation(line: 17, column: 31, scope: !43)
!57 = !DILocation(line: 17, column: 33, scope: !43)
!58 = !DILocation(line: 17, column: 32, scope: !43)
!59 = !DILocation(line: 17, column: 36, scope: !43)
!60 = !DILocation(line: 17, column: 38, scope: !43)
!61 = !DILocation(line: 17, column: 37, scope: !43)
!62 = !DILocation(line: 17, column: 40, scope: !43)
!63 = !DILocation(line: 17, column: 42, scope: !43)
!64 = !DILocation(line: 17, column: 41, scope: !43)
!65 = !DILocation(line: 17, column: 39, scope: !43)
!66 = !DILocation(line: 17, column: 34, scope: !43)
!67 = !DILocation(line: 17, column: 44, scope: !43)
!68 = !DILocation(line: 17, column: 47, scope: !43)
!69 = !DILocation(line: 17, column: 49, scope: !43)
!70 = !DILocation(line: 17, column: 48, scope: !43)
!71 = !DILocation(line: 17, column: 52, scope: !43)
!72 = !DILocation(line: 17, column: 54, scope: !43)
!73 = !DILocation(line: 17, column: 53, scope: !43)
!74 = !DILocation(line: 17, column: 56, scope: !43)
!75 = !DILocation(line: 17, column: 58, scope: !43)
!76 = !DILocation(line: 17, column: 57, scope: !43)
!77 = !DILocation(line: 17, column: 55, scope: !43)
!78 = !DILocation(line: 17, column: 50, scope: !43)
!79 = !DILocation(line: 17, column: 13, scope: !44)
!80 = !DILocation(line: 19, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !43, file: !1, line: 18, column: 9)
!82 = !DILocation(line: 20, column: 9, scope: !81)
!83 = !DILocation(line: 21, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !44, file: !1, line: 21, column: 13)
!85 = !DILocation(line: 21, column: 15, scope: !84)
!86 = !DILocation(line: 21, column: 14, scope: !84)
!87 = !DILocation(line: 21, column: 17, scope: !84)
!88 = !DILocation(line: 21, column: 19, scope: !84)
!89 = !DILocation(line: 21, column: 18, scope: !84)
!90 = !DILocation(line: 21, column: 21, scope: !84)
!91 = !DILocation(line: 21, column: 23, scope: !84)
!92 = !DILocation(line: 21, column: 22, scope: !84)
!93 = !DILocation(line: 21, column: 20, scope: !84)
!94 = !DILocation(line: 21, column: 16, scope: !84)
!95 = !DILocation(line: 21, column: 25, scope: !84)
!96 = !DILocation(line: 21, column: 28, scope: !84)
!97 = !DILocation(line: 21, column: 30, scope: !84)
!98 = !DILocation(line: 21, column: 29, scope: !84)
!99 = !DILocation(line: 21, column: 32, scope: !84)
!100 = !DILocation(line: 21, column: 34, scope: !84)
!101 = !DILocation(line: 21, column: 33, scope: !84)
!102 = !DILocation(line: 21, column: 36, scope: !84)
!103 = !DILocation(line: 21, column: 38, scope: !84)
!104 = !DILocation(line: 21, column: 37, scope: !84)
!105 = !DILocation(line: 21, column: 35, scope: !84)
!106 = !DILocation(line: 21, column: 31, scope: !84)
!107 = !DILocation(line: 21, column: 40, scope: !84)
!108 = !DILocation(line: 21, column: 43, scope: !84)
!109 = !DILocation(line: 21, column: 45, scope: !84)
!110 = !DILocation(line: 21, column: 44, scope: !84)
!111 = !DILocation(line: 21, column: 47, scope: !84)
!112 = !DILocation(line: 21, column: 49, scope: !84)
!113 = !DILocation(line: 21, column: 48, scope: !84)
!114 = !DILocation(line: 21, column: 51, scope: !84)
!115 = !DILocation(line: 21, column: 53, scope: !84)
!116 = !DILocation(line: 21, column: 52, scope: !84)
!117 = !DILocation(line: 21, column: 50, scope: !84)
!118 = !DILocation(line: 21, column: 46, scope: !84)
!119 = !DILocation(line: 21, column: 13, scope: !44)
!120 = !DILocation(line: 23, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !84, file: !1, line: 22, column: 9)
!122 = !DILocation(line: 24, column: 9, scope: !121)
!123 = !DILocation(line: 25, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !44, file: !1, line: 25, column: 13)
!125 = !DILocation(line: 25, column: 15, scope: !124)
!126 = !DILocation(line: 25, column: 14, scope: !124)
!127 = !DILocation(line: 25, column: 17, scope: !124)
!128 = !DILocation(line: 25, column: 19, scope: !124)
!129 = !DILocation(line: 25, column: 18, scope: !124)
!130 = !DILocation(line: 25, column: 21, scope: !124)
!131 = !DILocation(line: 25, column: 23, scope: !124)
!132 = !DILocation(line: 25, column: 22, scope: !124)
!133 = !DILocation(line: 25, column: 20, scope: !124)
!134 = !DILocation(line: 25, column: 16, scope: !124)
!135 = !DILocation(line: 25, column: 25, scope: !124)
!136 = !DILocation(line: 25, column: 28, scope: !124)
!137 = !DILocation(line: 25, column: 30, scope: !124)
!138 = !DILocation(line: 25, column: 29, scope: !124)
!139 = !DILocation(line: 25, column: 32, scope: !124)
!140 = !DILocation(line: 25, column: 34, scope: !124)
!141 = !DILocation(line: 25, column: 33, scope: !124)
!142 = !DILocation(line: 25, column: 36, scope: !124)
!143 = !DILocation(line: 25, column: 38, scope: !124)
!144 = !DILocation(line: 25, column: 37, scope: !124)
!145 = !DILocation(line: 25, column: 35, scope: !124)
!146 = !DILocation(line: 25, column: 31, scope: !124)
!147 = !DILocation(line: 25, column: 40, scope: !124)
!148 = !DILocation(line: 25, column: 43, scope: !124)
!149 = !DILocation(line: 25, column: 45, scope: !124)
!150 = !DILocation(line: 25, column: 44, scope: !124)
!151 = !DILocation(line: 25, column: 47, scope: !124)
!152 = !DILocation(line: 25, column: 49, scope: !124)
!153 = !DILocation(line: 25, column: 48, scope: !124)
!154 = !DILocation(line: 25, column: 51, scope: !124)
!155 = !DILocation(line: 25, column: 53, scope: !124)
!156 = !DILocation(line: 25, column: 52, scope: !124)
!157 = !DILocation(line: 25, column: 50, scope: !124)
!158 = !DILocation(line: 25, column: 46, scope: !124)
!159 = !DILocation(line: 25, column: 13, scope: !44)
!160 = !DILocation(line: 27, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !124, file: !1, line: 26, column: 9)
!162 = !DILocation(line: 28, column: 9, scope: !161)
!163 = !DILocation(line: 30, column: 5, scope: !7)
