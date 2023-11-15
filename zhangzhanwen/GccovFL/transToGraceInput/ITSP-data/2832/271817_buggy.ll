; ModuleID = 'gcov/../WA_c/271817_buggy.c'
source_filename = "gcov/../WA_c/271817_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Right Triangle\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Obtuse Triangle\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Acute Triangle\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid Triangle\00", align 1

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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  %6 = load i32, i32* %2, align 4, !dbg !18
  %7 = load i32, i32* %2, align 4, !dbg !20
  %8 = mul nsw i32 %6, %7, !dbg !21
  %9 = load i32, i32* %3, align 4, !dbg !22
  %10 = load i32, i32* %3, align 4, !dbg !23
  %11 = mul nsw i32 %9, %10, !dbg !24
  %12 = add nsw i32 %8, %11, !dbg !25
  %13 = load i32, i32* %4, align 4, !dbg !26
  %14 = load i32, i32* %4, align 4, !dbg !27
  %15 = mul nsw i32 %13, %14, !dbg !28
  %16 = icmp eq i32 %12, %15, !dbg !29
  br i1 %16, label %41, label %17, !dbg !30

; <label>:17:                                     ; preds = %0
  %18 = load i32, i32* %3, align 4, !dbg !31
  %19 = load i32, i32* %3, align 4, !dbg !32
  %20 = mul nsw i32 %18, %19, !dbg !33
  %21 = load i32, i32* %4, align 4, !dbg !34
  %22 = load i32, i32* %4, align 4, !dbg !35
  %23 = mul nsw i32 %21, %22, !dbg !36
  %24 = add nsw i32 %20, %23, !dbg !37
  %25 = load i32, i32* %2, align 4, !dbg !38
  %26 = load i32, i32* %2, align 4, !dbg !39
  %27 = mul nsw i32 %25, %26, !dbg !40
  %28 = icmp eq i32 %24, %27, !dbg !41
  br i1 %28, label %41, label %29, !dbg !42

; <label>:29:                                     ; preds = %17
  %30 = load i32, i32* %4, align 4, !dbg !43
  %31 = load i32, i32* %4, align 4, !dbg !44
  %32 = mul nsw i32 %30, %31, !dbg !45
  %33 = load i32, i32* %2, align 4, !dbg !46
  %34 = load i32, i32* %2, align 4, !dbg !47
  %35 = mul nsw i32 %33, %34, !dbg !48
  %36 = add nsw i32 %32, %35, !dbg !49
  %37 = load i32, i32* %3, align 4, !dbg !50
  %38 = load i32, i32* %3, align 4, !dbg !51
  %39 = mul nsw i32 %37, %38, !dbg !52
  %40 = icmp eq i32 %36, %39, !dbg !53
  br i1 %40, label %41, label %43, !dbg !54

; <label>:41:                                     ; preds = %29, %17, %0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !55
  br label %142, !dbg !57

; <label>:43:                                     ; preds = %29
  %44 = load i32, i32* %2, align 4, !dbg !58
  %45 = load i32, i32* %2, align 4, !dbg !60
  %46 = mul nsw i32 %44, %45, !dbg !61
  %47 = load i32, i32* %3, align 4, !dbg !62
  %48 = load i32, i32* %3, align 4, !dbg !63
  %49 = mul nsw i32 %47, %48, !dbg !64
  %50 = add nsw i32 %46, %49, !dbg !65
  %51 = load i32, i32* %4, align 4, !dbg !66
  %52 = load i32, i32* %4, align 4, !dbg !67
  %53 = mul nsw i32 %51, %52, !dbg !68
  %54 = icmp slt i32 %50, %53, !dbg !69
  br i1 %54, label %79, label %55, !dbg !70

; <label>:55:                                     ; preds = %43
  %56 = load i32, i32* %3, align 4, !dbg !71
  %57 = load i32, i32* %3, align 4, !dbg !72
  %58 = mul nsw i32 %56, %57, !dbg !73
  %59 = load i32, i32* %4, align 4, !dbg !74
  %60 = load i32, i32* %4, align 4, !dbg !75
  %61 = mul nsw i32 %59, %60, !dbg !76
  %62 = add nsw i32 %58, %61, !dbg !77
  %63 = load i32, i32* %2, align 4, !dbg !78
  %64 = load i32, i32* %2, align 4, !dbg !79
  %65 = mul nsw i32 %63, %64, !dbg !80
  %66 = icmp slt i32 %62, %65, !dbg !81
  br i1 %66, label %79, label %67, !dbg !82

; <label>:67:                                     ; preds = %55
  %68 = load i32, i32* %4, align 4, !dbg !83
  %69 = load i32, i32* %4, align 4, !dbg !84
  %70 = mul nsw i32 %68, %69, !dbg !85
  %71 = load i32, i32* %2, align 4, !dbg !86
  %72 = load i32, i32* %2, align 4, !dbg !87
  %73 = mul nsw i32 %71, %72, !dbg !88
  %74 = add nsw i32 %70, %73, !dbg !89
  %75 = load i32, i32* %3, align 4, !dbg !90
  %76 = load i32, i32* %3, align 4, !dbg !91
  %77 = mul nsw i32 %75, %76, !dbg !92
  %78 = icmp slt i32 %74, %77, !dbg !93
  br i1 %78, label %79, label %81, !dbg !94

; <label>:79:                                     ; preds = %67, %55, %43
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !95
  br label %141, !dbg !97

; <label>:81:                                     ; preds = %67
  %82 = load i32, i32* %2, align 4, !dbg !98
  %83 = load i32, i32* %2, align 4, !dbg !100
  %84 = mul nsw i32 %82, %83, !dbg !101
  %85 = load i32, i32* %3, align 4, !dbg !102
  %86 = load i32, i32* %3, align 4, !dbg !103
  %87 = mul nsw i32 %85, %86, !dbg !104
  %88 = add nsw i32 %84, %87, !dbg !105
  %89 = load i32, i32* %4, align 4, !dbg !106
  %90 = load i32, i32* %4, align 4, !dbg !107
  %91 = mul nsw i32 %89, %90, !dbg !108
  %92 = icmp sgt i32 %88, %91, !dbg !109
  br i1 %92, label %117, label %93, !dbg !110

; <label>:93:                                     ; preds = %81
  %94 = load i32, i32* %3, align 4, !dbg !111
  %95 = load i32, i32* %3, align 4, !dbg !112
  %96 = mul nsw i32 %94, %95, !dbg !113
  %97 = load i32, i32* %4, align 4, !dbg !114
  %98 = load i32, i32* %4, align 4, !dbg !115
  %99 = mul nsw i32 %97, %98, !dbg !116
  %100 = add nsw i32 %96, %99, !dbg !117
  %101 = load i32, i32* %2, align 4, !dbg !118
  %102 = load i32, i32* %2, align 4, !dbg !119
  %103 = mul nsw i32 %101, %102, !dbg !120
  %104 = icmp sgt i32 %100, %103, !dbg !121
  br i1 %104, label %117, label %105, !dbg !122

; <label>:105:                                    ; preds = %93
  %106 = load i32, i32* %4, align 4, !dbg !123
  %107 = load i32, i32* %4, align 4, !dbg !124
  %108 = mul nsw i32 %106, %107, !dbg !125
  %109 = load i32, i32* %2, align 4, !dbg !126
  %110 = load i32, i32* %2, align 4, !dbg !127
  %111 = mul nsw i32 %109, %110, !dbg !128
  %112 = add nsw i32 %108, %111, !dbg !129
  %113 = load i32, i32* %3, align 4, !dbg !130
  %114 = load i32, i32* %3, align 4, !dbg !131
  %115 = mul nsw i32 %113, %114, !dbg !132
  %116 = icmp sgt i32 %112, %115, !dbg !133
  br i1 %116, label %117, label %119, !dbg !134

; <label>:117:                                    ; preds = %105, %93, %81
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !135
  br label %140, !dbg !137

; <label>:119:                                    ; preds = %105
  %120 = load i32, i32* %2, align 4, !dbg !138
  %121 = load i32, i32* %3, align 4, !dbg !140
  %122 = add nsw i32 %120, %121, !dbg !141
  %123 = load i32, i32* %4, align 4, !dbg !142
  %124 = icmp sle i32 %122, %123, !dbg !143
  br i1 %124, label %137, label %125, !dbg !144

; <label>:125:                                    ; preds = %119
  %126 = load i32, i32* %3, align 4, !dbg !145
  %127 = load i32, i32* %4, align 4, !dbg !146
  %128 = add nsw i32 %126, %127, !dbg !147
  %129 = load i32, i32* %2, align 4, !dbg !148
  %130 = icmp sle i32 %128, %129, !dbg !149
  br i1 %130, label %137, label %131, !dbg !150

; <label>:131:                                    ; preds = %125
  %132 = load i32, i32* %4, align 4, !dbg !151
  %133 = load i32, i32* %2, align 4, !dbg !152
  %134 = add nsw i32 %132, %133, !dbg !153
  %135 = load i32, i32* %3, align 4, !dbg !154
  %136 = icmp sle i32 %134, %135, !dbg !155
  br i1 %136, label %137, label %139, !dbg !156

; <label>:137:                                    ; preds = %131, %125, %119
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !157
  br label %139, !dbg !159

; <label>:139:                                    ; preds = %137, %131
  br label %140

; <label>:140:                                    ; preds = %139, %117
  br label %141

; <label>:141:                                    ; preds = %140, %79
  br label %142

; <label>:142:                                    ; preds = %141, %41
  ret i32 0, !dbg !160
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
!1 = !DIFile(filename: "gcov/../WA_c/271817_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocation(line: 7, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!20 = !DILocation(line: 7, column: 10, scope: !19)
!21 = !DILocation(line: 7, column: 9, scope: !19)
!22 = !DILocation(line: 7, column: 12, scope: !19)
!23 = !DILocation(line: 7, column: 14, scope: !19)
!24 = !DILocation(line: 7, column: 13, scope: !19)
!25 = !DILocation(line: 7, column: 11, scope: !19)
!26 = !DILocation(line: 7, column: 17, scope: !19)
!27 = !DILocation(line: 7, column: 19, scope: !19)
!28 = !DILocation(line: 7, column: 18, scope: !19)
!29 = !DILocation(line: 7, column: 15, scope: !19)
!30 = !DILocation(line: 7, column: 20, scope: !19)
!31 = !DILocation(line: 7, column: 22, scope: !19)
!32 = !DILocation(line: 7, column: 24, scope: !19)
!33 = !DILocation(line: 7, column: 23, scope: !19)
!34 = !DILocation(line: 7, column: 26, scope: !19)
!35 = !DILocation(line: 7, column: 28, scope: !19)
!36 = !DILocation(line: 7, column: 27, scope: !19)
!37 = !DILocation(line: 7, column: 25, scope: !19)
!38 = !DILocation(line: 7, column: 31, scope: !19)
!39 = !DILocation(line: 7, column: 33, scope: !19)
!40 = !DILocation(line: 7, column: 32, scope: !19)
!41 = !DILocation(line: 7, column: 29, scope: !19)
!42 = !DILocation(line: 7, column: 34, scope: !19)
!43 = !DILocation(line: 7, column: 36, scope: !19)
!44 = !DILocation(line: 7, column: 38, scope: !19)
!45 = !DILocation(line: 7, column: 37, scope: !19)
!46 = !DILocation(line: 7, column: 40, scope: !19)
!47 = !DILocation(line: 7, column: 42, scope: !19)
!48 = !DILocation(line: 7, column: 41, scope: !19)
!49 = !DILocation(line: 7, column: 39, scope: !19)
!50 = !DILocation(line: 7, column: 45, scope: !19)
!51 = !DILocation(line: 7, column: 47, scope: !19)
!52 = !DILocation(line: 7, column: 46, scope: !19)
!53 = !DILocation(line: 7, column: 43, scope: !19)
!54 = !DILocation(line: 7, column: 8, scope: !7)
!55 = !DILocation(line: 9, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!57 = !DILocation(line: 10, column: 5, scope: !56)
!58 = !DILocation(line: 11, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !19, file: !1, line: 11, column: 13)
!60 = !DILocation(line: 11, column: 15, scope: !59)
!61 = !DILocation(line: 11, column: 14, scope: !59)
!62 = !DILocation(line: 11, column: 17, scope: !59)
!63 = !DILocation(line: 11, column: 19, scope: !59)
!64 = !DILocation(line: 11, column: 18, scope: !59)
!65 = !DILocation(line: 11, column: 16, scope: !59)
!66 = !DILocation(line: 11, column: 21, scope: !59)
!67 = !DILocation(line: 11, column: 23, scope: !59)
!68 = !DILocation(line: 11, column: 22, scope: !59)
!69 = !DILocation(line: 11, column: 20, scope: !59)
!70 = !DILocation(line: 11, column: 24, scope: !59)
!71 = !DILocation(line: 11, column: 26, scope: !59)
!72 = !DILocation(line: 11, column: 28, scope: !59)
!73 = !DILocation(line: 11, column: 27, scope: !59)
!74 = !DILocation(line: 11, column: 30, scope: !59)
!75 = !DILocation(line: 11, column: 32, scope: !59)
!76 = !DILocation(line: 11, column: 31, scope: !59)
!77 = !DILocation(line: 11, column: 29, scope: !59)
!78 = !DILocation(line: 11, column: 34, scope: !59)
!79 = !DILocation(line: 11, column: 36, scope: !59)
!80 = !DILocation(line: 11, column: 35, scope: !59)
!81 = !DILocation(line: 11, column: 33, scope: !59)
!82 = !DILocation(line: 11, column: 37, scope: !59)
!83 = !DILocation(line: 11, column: 39, scope: !59)
!84 = !DILocation(line: 11, column: 41, scope: !59)
!85 = !DILocation(line: 11, column: 40, scope: !59)
!86 = !DILocation(line: 11, column: 43, scope: !59)
!87 = !DILocation(line: 11, column: 45, scope: !59)
!88 = !DILocation(line: 11, column: 44, scope: !59)
!89 = !DILocation(line: 11, column: 42, scope: !59)
!90 = !DILocation(line: 11, column: 47, scope: !59)
!91 = !DILocation(line: 11, column: 49, scope: !59)
!92 = !DILocation(line: 11, column: 48, scope: !59)
!93 = !DILocation(line: 11, column: 46, scope: !59)
!94 = !DILocation(line: 11, column: 13, scope: !19)
!95 = !DILocation(line: 13, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !59, file: !1, line: 12, column: 5)
!97 = !DILocation(line: 15, column: 5, scope: !96)
!98 = !DILocation(line: 16, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !59, file: !1, line: 16, column: 13)
!100 = !DILocation(line: 16, column: 15, scope: !99)
!101 = !DILocation(line: 16, column: 14, scope: !99)
!102 = !DILocation(line: 16, column: 17, scope: !99)
!103 = !DILocation(line: 16, column: 19, scope: !99)
!104 = !DILocation(line: 16, column: 18, scope: !99)
!105 = !DILocation(line: 16, column: 16, scope: !99)
!106 = !DILocation(line: 16, column: 21, scope: !99)
!107 = !DILocation(line: 16, column: 23, scope: !99)
!108 = !DILocation(line: 16, column: 22, scope: !99)
!109 = !DILocation(line: 16, column: 20, scope: !99)
!110 = !DILocation(line: 16, column: 24, scope: !99)
!111 = !DILocation(line: 16, column: 26, scope: !99)
!112 = !DILocation(line: 16, column: 28, scope: !99)
!113 = !DILocation(line: 16, column: 27, scope: !99)
!114 = !DILocation(line: 16, column: 30, scope: !99)
!115 = !DILocation(line: 16, column: 32, scope: !99)
!116 = !DILocation(line: 16, column: 31, scope: !99)
!117 = !DILocation(line: 16, column: 29, scope: !99)
!118 = !DILocation(line: 16, column: 34, scope: !99)
!119 = !DILocation(line: 16, column: 36, scope: !99)
!120 = !DILocation(line: 16, column: 35, scope: !99)
!121 = !DILocation(line: 16, column: 33, scope: !99)
!122 = !DILocation(line: 16, column: 37, scope: !99)
!123 = !DILocation(line: 16, column: 39, scope: !99)
!124 = !DILocation(line: 16, column: 41, scope: !99)
!125 = !DILocation(line: 16, column: 40, scope: !99)
!126 = !DILocation(line: 16, column: 43, scope: !99)
!127 = !DILocation(line: 16, column: 45, scope: !99)
!128 = !DILocation(line: 16, column: 44, scope: !99)
!129 = !DILocation(line: 16, column: 42, scope: !99)
!130 = !DILocation(line: 16, column: 47, scope: !99)
!131 = !DILocation(line: 16, column: 49, scope: !99)
!132 = !DILocation(line: 16, column: 48, scope: !99)
!133 = !DILocation(line: 16, column: 46, scope: !99)
!134 = !DILocation(line: 16, column: 13, scope: !59)
!135 = !DILocation(line: 18, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !99, file: !1, line: 17, column: 5)
!137 = !DILocation(line: 19, column: 5, scope: !136)
!138 = !DILocation(line: 20, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !99, file: !1, line: 20, column: 13)
!140 = !DILocation(line: 20, column: 15, scope: !139)
!141 = !DILocation(line: 20, column: 14, scope: !139)
!142 = !DILocation(line: 20, column: 18, scope: !139)
!143 = !DILocation(line: 20, column: 16, scope: !139)
!144 = !DILocation(line: 20, column: 19, scope: !139)
!145 = !DILocation(line: 20, column: 21, scope: !139)
!146 = !DILocation(line: 20, column: 23, scope: !139)
!147 = !DILocation(line: 20, column: 22, scope: !139)
!148 = !DILocation(line: 20, column: 26, scope: !139)
!149 = !DILocation(line: 20, column: 24, scope: !139)
!150 = !DILocation(line: 20, column: 27, scope: !139)
!151 = !DILocation(line: 20, column: 29, scope: !139)
!152 = !DILocation(line: 20, column: 31, scope: !139)
!153 = !DILocation(line: 20, column: 30, scope: !139)
!154 = !DILocation(line: 20, column: 34, scope: !139)
!155 = !DILocation(line: 20, column: 32, scope: !139)
!156 = !DILocation(line: 20, column: 13, scope: !99)
!157 = !DILocation(line: 22, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !139, file: !1, line: 21, column: 5)
!159 = !DILocation(line: 24, column: 5, scope: !158)
!160 = !DILocation(line: 25, column: 5, scope: !7)
