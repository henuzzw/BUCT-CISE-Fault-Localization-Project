; ModuleID = 'gcov/../WA_c/271851_buggy.c'
source_filename = "gcov/../WA_c/271851_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid Triangle\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Right Triangle\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Obtuse Triangle\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Acute Triangle\0A\00", align 1

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
  %7 = load i32, i32* %4, align 4, !dbg !20
  %8 = add nsw i32 %6, %7, !dbg !21
  %9 = load i32, i32* %3, align 4, !dbg !22
  %10 = icmp slt i32 %8, %9, !dbg !23
  br i1 %10, label %23, label %11, !dbg !24

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !25
  %13 = load i32, i32* %3, align 4, !dbg !26
  %14 = add nsw i32 %12, %13, !dbg !27
  %15 = load i32, i32* %4, align 4, !dbg !28
  %16 = icmp slt i32 %14, %15, !dbg !29
  br i1 %16, label %23, label %17, !dbg !30

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %3, align 4, !dbg !31
  %19 = load i32, i32* %4, align 4, !dbg !32
  %20 = add nsw i32 %18, %19, !dbg !33
  %21 = load i32, i32* %2, align 4, !dbg !34
  %22 = icmp slt i32 %20, %21, !dbg !35
  br i1 %22, label %23, label %25, !dbg !36

; <label>:23:                                     ; preds = %17, %11, %0
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !37
  br label %142, !dbg !39

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %3, align 4, !dbg !40
  %27 = load i32, i32* %3, align 4, !dbg !42
  %28 = mul nsw i32 %26, %27, !dbg !43
  %29 = load i32, i32* %2, align 4, !dbg !44
  %30 = load i32, i32* %2, align 4, !dbg !45
  %31 = mul nsw i32 %29, %30, !dbg !46
  %32 = load i32, i32* %4, align 4, !dbg !47
  %33 = load i32, i32* %4, align 4, !dbg !48
  %34 = mul nsw i32 %32, %33, !dbg !49
  %35 = add nsw i32 %31, %34, !dbg !50
  %36 = icmp eq i32 %28, %35, !dbg !51
  br i1 %36, label %61, label %37, !dbg !52

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %2, align 4, !dbg !53
  %39 = load i32, i32* %2, align 4, !dbg !54
  %40 = mul nsw i32 %38, %39, !dbg !55
  %41 = load i32, i32* %3, align 4, !dbg !56
  %42 = load i32, i32* %3, align 4, !dbg !57
  %43 = mul nsw i32 %41, %42, !dbg !58
  %44 = load i32, i32* %4, align 4, !dbg !59
  %45 = load i32, i32* %4, align 4, !dbg !60
  %46 = mul nsw i32 %44, %45, !dbg !61
  %47 = add nsw i32 %43, %46, !dbg !62
  %48 = icmp eq i32 %40, %47, !dbg !63
  br i1 %48, label %61, label %49, !dbg !64

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %4, align 4, !dbg !65
  %51 = load i32, i32* %4, align 4, !dbg !66
  %52 = mul nsw i32 %50, %51, !dbg !67
  %53 = load i32, i32* %2, align 4, !dbg !68
  %54 = load i32, i32* %2, align 4, !dbg !69
  %55 = mul nsw i32 %53, %54, !dbg !70
  %56 = load i32, i32* %3, align 4, !dbg !71
  %57 = load i32, i32* %3, align 4, !dbg !72
  %58 = mul nsw i32 %56, %57, !dbg !73
  %59 = add nsw i32 %55, %58, !dbg !74
  %60 = icmp eq i32 %52, %59, !dbg !75
  br i1 %60, label %61, label %63, !dbg !76

; <label>:61:                                     ; preds = %49, %37, %25
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !77
  br label %141, !dbg !79

; <label>:63:                                     ; preds = %49
  %64 = load i32, i32* %3, align 4, !dbg !80
  %65 = load i32, i32* %3, align 4, !dbg !82
  %66 = mul nsw i32 %64, %65, !dbg !83
  %67 = load i32, i32* %2, align 4, !dbg !84
  %68 = load i32, i32* %2, align 4, !dbg !85
  %69 = mul nsw i32 %67, %68, !dbg !86
  %70 = load i32, i32* %4, align 4, !dbg !87
  %71 = load i32, i32* %4, align 4, !dbg !88
  %72 = mul nsw i32 %70, %71, !dbg !89
  %73 = add nsw i32 %69, %72, !dbg !90
  %74 = icmp sgt i32 %66, %73, !dbg !91
  br i1 %74, label %99, label %75, !dbg !92

; <label>:75:                                     ; preds = %63
  %76 = load i32, i32* %2, align 4, !dbg !93
  %77 = load i32, i32* %2, align 4, !dbg !94
  %78 = mul nsw i32 %76, %77, !dbg !95
  %79 = load i32, i32* %3, align 4, !dbg !96
  %80 = load i32, i32* %3, align 4, !dbg !97
  %81 = mul nsw i32 %79, %80, !dbg !98
  %82 = load i32, i32* %4, align 4, !dbg !99
  %83 = load i32, i32* %4, align 4, !dbg !100
  %84 = mul nsw i32 %82, %83, !dbg !101
  %85 = add nsw i32 %81, %84, !dbg !102
  %86 = icmp sgt i32 %78, %85, !dbg !103
  br i1 %86, label %99, label %87, !dbg !104

; <label>:87:                                     ; preds = %75
  %88 = load i32, i32* %4, align 4, !dbg !105
  %89 = load i32, i32* %4, align 4, !dbg !106
  %90 = mul nsw i32 %88, %89, !dbg !107
  %91 = load i32, i32* %2, align 4, !dbg !108
  %92 = load i32, i32* %2, align 4, !dbg !109
  %93 = mul nsw i32 %91, %92, !dbg !110
  %94 = load i32, i32* %3, align 4, !dbg !111
  %95 = load i32, i32* %3, align 4, !dbg !112
  %96 = mul nsw i32 %94, %95, !dbg !113
  %97 = add nsw i32 %93, %96, !dbg !114
  %98 = icmp sgt i32 %90, %97, !dbg !115
  br i1 %98, label %99, label %101, !dbg !116

; <label>:99:                                     ; preds = %87, %75, %63
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)), !dbg !117
  br label %140, !dbg !119

; <label>:101:                                    ; preds = %87
  %102 = load i32, i32* %3, align 4, !dbg !120
  %103 = load i32, i32* %3, align 4, !dbg !122
  %104 = mul nsw i32 %102, %103, !dbg !123
  %105 = load i32, i32* %2, align 4, !dbg !124
  %106 = load i32, i32* %2, align 4, !dbg !125
  %107 = mul nsw i32 %105, %106, !dbg !126
  %108 = load i32, i32* %4, align 4, !dbg !127
  %109 = load i32, i32* %4, align 4, !dbg !128
  %110 = mul nsw i32 %108, %109, !dbg !129
  %111 = add nsw i32 %107, %110, !dbg !130
  %112 = icmp slt i32 %104, %111, !dbg !131
  br i1 %112, label %137, label %113, !dbg !132

; <label>:113:                                    ; preds = %101
  %114 = load i32, i32* %2, align 4, !dbg !133
  %115 = load i32, i32* %2, align 4, !dbg !134
  %116 = mul nsw i32 %114, %115, !dbg !135
  %117 = load i32, i32* %3, align 4, !dbg !136
  %118 = load i32, i32* %3, align 4, !dbg !137
  %119 = mul nsw i32 %117, %118, !dbg !138
  %120 = load i32, i32* %4, align 4, !dbg !139
  %121 = load i32, i32* %4, align 4, !dbg !140
  %122 = mul nsw i32 %120, %121, !dbg !141
  %123 = add nsw i32 %119, %122, !dbg !142
  %124 = icmp slt i32 %116, %123, !dbg !143
  br i1 %124, label %137, label %125, !dbg !144

; <label>:125:                                    ; preds = %113
  %126 = load i32, i32* %4, align 4, !dbg !145
  %127 = load i32, i32* %4, align 4, !dbg !146
  %128 = mul nsw i32 %126, %127, !dbg !147
  %129 = load i32, i32* %2, align 4, !dbg !148
  %130 = load i32, i32* %2, align 4, !dbg !149
  %131 = mul nsw i32 %129, %130, !dbg !150
  %132 = load i32, i32* %3, align 4, !dbg !151
  %133 = load i32, i32* %3, align 4, !dbg !152
  %134 = mul nsw i32 %132, %133, !dbg !153
  %135 = add nsw i32 %131, %134, !dbg !154
  %136 = icmp slt i32 %128, %135, !dbg !155
  br i1 %136, label %137, label %139, !dbg !156

; <label>:137:                                    ; preds = %125, %113, %101
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)), !dbg !157
  br label %139, !dbg !159

; <label>:139:                                    ; preds = %137, %125
  br label %140

; <label>:140:                                    ; preds = %139, %99
  br label %141

; <label>:141:                                    ; preds = %140, %61
  br label %142

; <label>:142:                                    ; preds = %141, %23
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
!1 = !DIFile(filename: "gcov/../WA_c/271851_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!18 = !DILocation(line: 7, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 9)
!20 = !DILocation(line: 7, column: 11, scope: !19)
!21 = !DILocation(line: 7, column: 10, scope: !19)
!22 = !DILocation(line: 7, column: 13, scope: !19)
!23 = !DILocation(line: 7, column: 12, scope: !19)
!24 = !DILocation(line: 7, column: 14, scope: !19)
!25 = !DILocation(line: 7, column: 16, scope: !19)
!26 = !DILocation(line: 7, column: 18, scope: !19)
!27 = !DILocation(line: 7, column: 17, scope: !19)
!28 = !DILocation(line: 7, column: 20, scope: !19)
!29 = !DILocation(line: 7, column: 19, scope: !19)
!30 = !DILocation(line: 7, column: 21, scope: !19)
!31 = !DILocation(line: 7, column: 23, scope: !19)
!32 = !DILocation(line: 7, column: 25, scope: !19)
!33 = !DILocation(line: 7, column: 24, scope: !19)
!34 = !DILocation(line: 7, column: 27, scope: !19)
!35 = !DILocation(line: 7, column: 26, scope: !19)
!36 = !DILocation(line: 7, column: 9, scope: !7)
!37 = !DILocation(line: 9, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!39 = !DILocation(line: 10, column: 5, scope: !38)
!40 = !DILocation(line: 11, column: 14, scope: !41)
!41 = distinct !DILexicalBlock(scope: !19, file: !1, line: 11, column: 14)
!42 = !DILocation(line: 11, column: 16, scope: !41)
!43 = !DILocation(line: 11, column: 15, scope: !41)
!44 = !DILocation(line: 11, column: 19, scope: !41)
!45 = !DILocation(line: 11, column: 21, scope: !41)
!46 = !DILocation(line: 11, column: 20, scope: !41)
!47 = !DILocation(line: 11, column: 23, scope: !41)
!48 = !DILocation(line: 11, column: 25, scope: !41)
!49 = !DILocation(line: 11, column: 24, scope: !41)
!50 = !DILocation(line: 11, column: 22, scope: !41)
!51 = !DILocation(line: 11, column: 17, scope: !41)
!52 = !DILocation(line: 11, column: 26, scope: !41)
!53 = !DILocation(line: 11, column: 28, scope: !41)
!54 = !DILocation(line: 11, column: 30, scope: !41)
!55 = !DILocation(line: 11, column: 29, scope: !41)
!56 = !DILocation(line: 11, column: 33, scope: !41)
!57 = !DILocation(line: 11, column: 35, scope: !41)
!58 = !DILocation(line: 11, column: 34, scope: !41)
!59 = !DILocation(line: 11, column: 37, scope: !41)
!60 = !DILocation(line: 11, column: 39, scope: !41)
!61 = !DILocation(line: 11, column: 38, scope: !41)
!62 = !DILocation(line: 11, column: 36, scope: !41)
!63 = !DILocation(line: 11, column: 31, scope: !41)
!64 = !DILocation(line: 11, column: 40, scope: !41)
!65 = !DILocation(line: 11, column: 42, scope: !41)
!66 = !DILocation(line: 11, column: 44, scope: !41)
!67 = !DILocation(line: 11, column: 43, scope: !41)
!68 = !DILocation(line: 11, column: 47, scope: !41)
!69 = !DILocation(line: 11, column: 49, scope: !41)
!70 = !DILocation(line: 11, column: 48, scope: !41)
!71 = !DILocation(line: 11, column: 51, scope: !41)
!72 = !DILocation(line: 11, column: 53, scope: !41)
!73 = !DILocation(line: 11, column: 52, scope: !41)
!74 = !DILocation(line: 11, column: 50, scope: !41)
!75 = !DILocation(line: 11, column: 45, scope: !41)
!76 = !DILocation(line: 11, column: 14, scope: !19)
!77 = !DILocation(line: 13, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 5)
!79 = !DILocation(line: 14, column: 5, scope: !78)
!80 = !DILocation(line: 16, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !41, file: !1, line: 16, column: 14)
!82 = !DILocation(line: 16, column: 16, scope: !81)
!83 = !DILocation(line: 16, column: 15, scope: !81)
!84 = !DILocation(line: 16, column: 18, scope: !81)
!85 = !DILocation(line: 16, column: 20, scope: !81)
!86 = !DILocation(line: 16, column: 19, scope: !81)
!87 = !DILocation(line: 16, column: 22, scope: !81)
!88 = !DILocation(line: 16, column: 24, scope: !81)
!89 = !DILocation(line: 16, column: 23, scope: !81)
!90 = !DILocation(line: 16, column: 21, scope: !81)
!91 = !DILocation(line: 16, column: 17, scope: !81)
!92 = !DILocation(line: 16, column: 25, scope: !81)
!93 = !DILocation(line: 16, column: 27, scope: !81)
!94 = !DILocation(line: 16, column: 29, scope: !81)
!95 = !DILocation(line: 16, column: 28, scope: !81)
!96 = !DILocation(line: 16, column: 31, scope: !81)
!97 = !DILocation(line: 16, column: 33, scope: !81)
!98 = !DILocation(line: 16, column: 32, scope: !81)
!99 = !DILocation(line: 16, column: 35, scope: !81)
!100 = !DILocation(line: 16, column: 37, scope: !81)
!101 = !DILocation(line: 16, column: 36, scope: !81)
!102 = !DILocation(line: 16, column: 34, scope: !81)
!103 = !DILocation(line: 16, column: 30, scope: !81)
!104 = !DILocation(line: 16, column: 38, scope: !81)
!105 = !DILocation(line: 16, column: 40, scope: !81)
!106 = !DILocation(line: 16, column: 42, scope: !81)
!107 = !DILocation(line: 16, column: 41, scope: !81)
!108 = !DILocation(line: 16, column: 44, scope: !81)
!109 = !DILocation(line: 16, column: 46, scope: !81)
!110 = !DILocation(line: 16, column: 45, scope: !81)
!111 = !DILocation(line: 16, column: 48, scope: !81)
!112 = !DILocation(line: 16, column: 50, scope: !81)
!113 = !DILocation(line: 16, column: 49, scope: !81)
!114 = !DILocation(line: 16, column: 47, scope: !81)
!115 = !DILocation(line: 16, column: 43, scope: !81)
!116 = !DILocation(line: 16, column: 14, scope: !41)
!117 = !DILocation(line: 18, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !81, file: !1, line: 17, column: 5)
!119 = !DILocation(line: 20, column: 5, scope: !118)
!120 = !DILocation(line: 21, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !81, file: !1, line: 21, column: 14)
!122 = !DILocation(line: 21, column: 16, scope: !121)
!123 = !DILocation(line: 21, column: 15, scope: !121)
!124 = !DILocation(line: 21, column: 18, scope: !121)
!125 = !DILocation(line: 21, column: 20, scope: !121)
!126 = !DILocation(line: 21, column: 19, scope: !121)
!127 = !DILocation(line: 21, column: 22, scope: !121)
!128 = !DILocation(line: 21, column: 24, scope: !121)
!129 = !DILocation(line: 21, column: 23, scope: !121)
!130 = !DILocation(line: 21, column: 21, scope: !121)
!131 = !DILocation(line: 21, column: 17, scope: !121)
!132 = !DILocation(line: 21, column: 25, scope: !121)
!133 = !DILocation(line: 21, column: 27, scope: !121)
!134 = !DILocation(line: 21, column: 29, scope: !121)
!135 = !DILocation(line: 21, column: 28, scope: !121)
!136 = !DILocation(line: 21, column: 31, scope: !121)
!137 = !DILocation(line: 21, column: 33, scope: !121)
!138 = !DILocation(line: 21, column: 32, scope: !121)
!139 = !DILocation(line: 21, column: 35, scope: !121)
!140 = !DILocation(line: 21, column: 37, scope: !121)
!141 = !DILocation(line: 21, column: 36, scope: !121)
!142 = !DILocation(line: 21, column: 34, scope: !121)
!143 = !DILocation(line: 21, column: 30, scope: !121)
!144 = !DILocation(line: 21, column: 38, scope: !121)
!145 = !DILocation(line: 21, column: 40, scope: !121)
!146 = !DILocation(line: 21, column: 42, scope: !121)
!147 = !DILocation(line: 21, column: 41, scope: !121)
!148 = !DILocation(line: 21, column: 44, scope: !121)
!149 = !DILocation(line: 21, column: 46, scope: !121)
!150 = !DILocation(line: 21, column: 45, scope: !121)
!151 = !DILocation(line: 21, column: 48, scope: !121)
!152 = !DILocation(line: 21, column: 50, scope: !121)
!153 = !DILocation(line: 21, column: 49, scope: !121)
!154 = !DILocation(line: 21, column: 47, scope: !121)
!155 = !DILocation(line: 21, column: 43, scope: !121)
!156 = !DILocation(line: 21, column: 14, scope: !81)
!157 = !DILocation(line: 23, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !121, file: !1, line: 22, column: 5)
!159 = !DILocation(line: 25, column: 5, scope: !158)
!160 = !DILocation(line: 26, column: 5, scope: !7)
