; ModuleID = 'gcov/../WA_c/271855_buggy.c'
source_filename = "gcov/../WA_c/271855_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  %6 = load i32, i32* %2, align 4, !dbg !18
  %7 = load i32, i32* %3, align 4, !dbg !20
  %8 = add nsw i32 %6, %7, !dbg !21
  %9 = load i32, i32* %4, align 4, !dbg !22
  %10 = icmp sgt i32 %8, %9, !dbg !23
  br i1 %10, label %11, label %140, !dbg !24

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* %3, align 4, !dbg !25
  %13 = load i32, i32* %4, align 4, !dbg !26
  %14 = add nsw i32 %12, %13, !dbg !27
  %15 = load i32, i32* %2, align 4, !dbg !28
  %16 = icmp sgt i32 %14, %15, !dbg !29
  br i1 %16, label %17, label %140, !dbg !30

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %2, align 4, !dbg !31
  %19 = load i32, i32* %4, align 4, !dbg !32
  %20 = add nsw i32 %18, %19, !dbg !33
  %21 = load i32, i32* %3, align 4, !dbg !34
  %22 = icmp sgt i32 %20, %21, !dbg !35
  br i1 %22, label %23, label %140, !dbg !36

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %2, align 4, !dbg !37
  %25 = load i32, i32* %2, align 4, !dbg !40
  %26 = mul nsw i32 %24, %25, !dbg !41
  %27 = load i32, i32* %3, align 4, !dbg !42
  %28 = load i32, i32* %3, align 4, !dbg !43
  %29 = mul nsw i32 %27, %28, !dbg !44
  %30 = load i32, i32* %4, align 4, !dbg !45
  %31 = load i32, i32* %4, align 4, !dbg !46
  %32 = mul nsw i32 %30, %31, !dbg !47
  %33 = add nsw i32 %29, %32, !dbg !48
  %34 = icmp eq i32 %26, %33, !dbg !49
  br i1 %34, label %59, label %35, !dbg !50

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %3, align 4, !dbg !51
  %37 = load i32, i32* %3, align 4, !dbg !52
  %38 = mul nsw i32 %36, %37, !dbg !53
  %39 = load i32, i32* %2, align 4, !dbg !54
  %40 = load i32, i32* %2, align 4, !dbg !55
  %41 = mul nsw i32 %39, %40, !dbg !56
  %42 = load i32, i32* %4, align 4, !dbg !57
  %43 = load i32, i32* %4, align 4, !dbg !58
  %44 = mul nsw i32 %42, %43, !dbg !59
  %45 = add nsw i32 %41, %44, !dbg !60
  %46 = icmp eq i32 %38, %45, !dbg !61
  br i1 %46, label %59, label %47, !dbg !62

; <label>:47:                                     ; preds = %35
  %48 = load i32, i32* %4, align 4, !dbg !63
  %49 = load i32, i32* %4, align 4, !dbg !64
  %50 = mul nsw i32 %48, %49, !dbg !65
  %51 = load i32, i32* %2, align 4, !dbg !66
  %52 = load i32, i32* %2, align 4, !dbg !67
  %53 = mul nsw i32 %51, %52, !dbg !68
  %54 = load i32, i32* %3, align 4, !dbg !69
  %55 = load i32, i32* %3, align 4, !dbg !70
  %56 = mul nsw i32 %54, %55, !dbg !71
  %57 = add nsw i32 %53, %56, !dbg !72
  %58 = icmp eq i32 %50, %57, !dbg !73
  br i1 %58, label %59, label %61, !dbg !74

; <label>:59:                                     ; preds = %47, %35, %23
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !75
  br label %139, !dbg !77

; <label>:61:                                     ; preds = %47
  %62 = load i32, i32* %2, align 4, !dbg !78
  %63 = load i32, i32* %2, align 4, !dbg !80
  %64 = mul nsw i32 %62, %63, !dbg !81
  %65 = load i32, i32* %3, align 4, !dbg !82
  %66 = load i32, i32* %3, align 4, !dbg !83
  %67 = mul nsw i32 %65, %66, !dbg !84
  %68 = load i32, i32* %4, align 4, !dbg !85
  %69 = load i32, i32* %4, align 4, !dbg !86
  %70 = mul nsw i32 %68, %69, !dbg !87
  %71 = add nsw i32 %67, %70, !dbg !88
  %72 = icmp slt i32 %64, %71, !dbg !89
  br i1 %72, label %97, label %73, !dbg !90

; <label>:73:                                     ; preds = %61
  %74 = load i32, i32* %3, align 4, !dbg !91
  %75 = load i32, i32* %3, align 4, !dbg !92
  %76 = mul nsw i32 %74, %75, !dbg !93
  %77 = load i32, i32* %4, align 4, !dbg !94
  %78 = load i32, i32* %4, align 4, !dbg !95
  %79 = mul nsw i32 %77, %78, !dbg !96
  %80 = load i32, i32* %2, align 4, !dbg !97
  %81 = load i32, i32* %2, align 4, !dbg !98
  %82 = mul nsw i32 %80, %81, !dbg !99
  %83 = add nsw i32 %79, %82, !dbg !100
  %84 = icmp slt i32 %76, %83, !dbg !101
  br i1 %84, label %97, label %85, !dbg !102

; <label>:85:                                     ; preds = %73
  %86 = load i32, i32* %4, align 4, !dbg !103
  %87 = load i32, i32* %4, align 4, !dbg !104
  %88 = mul nsw i32 %86, %87, !dbg !105
  %89 = load i32, i32* %3, align 4, !dbg !106
  %90 = load i32, i32* %3, align 4, !dbg !107
  %91 = mul nsw i32 %89, %90, !dbg !108
  %92 = load i32, i32* %2, align 4, !dbg !109
  %93 = load i32, i32* %2, align 4, !dbg !110
  %94 = mul nsw i32 %92, %93, !dbg !111
  %95 = add nsw i32 %91, %94, !dbg !112
  %96 = icmp slt i32 %88, %95, !dbg !113
  br i1 %96, label %97, label %99, !dbg !114

; <label>:97:                                     ; preds = %85, %73, %61
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !115
  br label %138, !dbg !117

; <label>:99:                                     ; preds = %85
  %100 = load i32, i32* %2, align 4, !dbg !118
  %101 = load i32, i32* %2, align 4, !dbg !120
  %102 = mul nsw i32 %100, %101, !dbg !121
  %103 = load i32, i32* %3, align 4, !dbg !122
  %104 = load i32, i32* %3, align 4, !dbg !123
  %105 = mul nsw i32 %103, %104, !dbg !124
  %106 = load i32, i32* %4, align 4, !dbg !125
  %107 = load i32, i32* %4, align 4, !dbg !126
  %108 = mul nsw i32 %106, %107, !dbg !127
  %109 = add nsw i32 %105, %108, !dbg !128
  %110 = icmp sgt i32 %102, %109, !dbg !129
  br i1 %110, label %135, label %111, !dbg !130

; <label>:111:                                    ; preds = %99
  %112 = load i32, i32* %3, align 4, !dbg !131
  %113 = load i32, i32* %3, align 4, !dbg !132
  %114 = mul nsw i32 %112, %113, !dbg !133
  %115 = load i32, i32* %4, align 4, !dbg !134
  %116 = load i32, i32* %4, align 4, !dbg !135
  %117 = mul nsw i32 %115, %116, !dbg !136
  %118 = load i32, i32* %2, align 4, !dbg !137
  %119 = load i32, i32* %2, align 4, !dbg !138
  %120 = mul nsw i32 %118, %119, !dbg !139
  %121 = add nsw i32 %117, %120, !dbg !140
  %122 = icmp sgt i32 %114, %121, !dbg !141
  br i1 %122, label %135, label %123, !dbg !142

; <label>:123:                                    ; preds = %111
  %124 = load i32, i32* %4, align 4, !dbg !143
  %125 = load i32, i32* %4, align 4, !dbg !144
  %126 = mul nsw i32 %124, %125, !dbg !145
  %127 = load i32, i32* %3, align 4, !dbg !146
  %128 = load i32, i32* %3, align 4, !dbg !147
  %129 = mul nsw i32 %127, %128, !dbg !148
  %130 = load i32, i32* %2, align 4, !dbg !149
  %131 = load i32, i32* %2, align 4, !dbg !150
  %132 = mul nsw i32 %130, %131, !dbg !151
  %133 = add nsw i32 %129, %132, !dbg !152
  %134 = icmp sgt i32 %126, %133, !dbg !153
  br i1 %134, label %135, label %137, !dbg !154

; <label>:135:                                    ; preds = %123, %111, %99
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !155
  br label %137, !dbg !157

; <label>:137:                                    ; preds = %135, %123
  br label %138

; <label>:138:                                    ; preds = %137, %97
  br label %139

; <label>:139:                                    ; preds = %138, %59
  br label %142, !dbg !158

; <label>:140:                                    ; preds = %17, %11, %0
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !159
  br label %142

; <label>:142:                                    ; preds = %140, %139
  ret i32 0, !dbg !161
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
!1 = !DIFile(filename: "gcov/../WA_c/271855_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 9, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 7, type: !10)
!14 = !DILocation(line: 7, column: 9, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 8, type: !10)
!16 = !DILocation(line: 8, column: 9, scope: !7)
!17 = !DILocation(line: 9, column: 5, scope: !7)
!18 = !DILocation(line: 10, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 8)
!20 = !DILocation(line: 10, column: 11, scope: !19)
!21 = !DILocation(line: 10, column: 10, scope: !19)
!22 = !DILocation(line: 10, column: 13, scope: !19)
!23 = !DILocation(line: 10, column: 12, scope: !19)
!24 = !DILocation(line: 10, column: 15, scope: !19)
!25 = !DILocation(line: 10, column: 18, scope: !19)
!26 = !DILocation(line: 10, column: 20, scope: !19)
!27 = !DILocation(line: 10, column: 19, scope: !19)
!28 = !DILocation(line: 10, column: 22, scope: !19)
!29 = !DILocation(line: 10, column: 21, scope: !19)
!30 = !DILocation(line: 10, column: 24, scope: !19)
!31 = !DILocation(line: 10, column: 27, scope: !19)
!32 = !DILocation(line: 10, column: 29, scope: !19)
!33 = !DILocation(line: 10, column: 28, scope: !19)
!34 = !DILocation(line: 10, column: 31, scope: !19)
!35 = !DILocation(line: 10, column: 30, scope: !19)
!36 = !DILocation(line: 10, column: 8, scope: !7)
!37 = !DILocation(line: 12, column: 14, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 12, column: 12)
!39 = distinct !DILexicalBlock(scope: !19, file: !1, line: 11, column: 5)
!40 = !DILocation(line: 12, column: 16, scope: !38)
!41 = !DILocation(line: 12, column: 15, scope: !38)
!42 = !DILocation(line: 12, column: 21, scope: !38)
!43 = !DILocation(line: 12, column: 23, scope: !38)
!44 = !DILocation(line: 12, column: 22, scope: !38)
!45 = !DILocation(line: 12, column: 27, scope: !38)
!46 = !DILocation(line: 12, column: 29, scope: !38)
!47 = !DILocation(line: 12, column: 28, scope: !38)
!48 = !DILocation(line: 12, column: 25, scope: !38)
!49 = !DILocation(line: 12, column: 18, scope: !38)
!50 = !DILocation(line: 12, column: 32, scope: !38)
!51 = !DILocation(line: 12, column: 36, scope: !38)
!52 = !DILocation(line: 12, column: 38, scope: !38)
!53 = !DILocation(line: 12, column: 37, scope: !38)
!54 = !DILocation(line: 12, column: 43, scope: !38)
!55 = !DILocation(line: 12, column: 45, scope: !38)
!56 = !DILocation(line: 12, column: 44, scope: !38)
!57 = !DILocation(line: 12, column: 49, scope: !38)
!58 = !DILocation(line: 12, column: 51, scope: !38)
!59 = !DILocation(line: 12, column: 50, scope: !38)
!60 = !DILocation(line: 12, column: 47, scope: !38)
!61 = !DILocation(line: 12, column: 40, scope: !38)
!62 = !DILocation(line: 12, column: 54, scope: !38)
!63 = !DILocation(line: 12, column: 58, scope: !38)
!64 = !DILocation(line: 12, column: 60, scope: !38)
!65 = !DILocation(line: 12, column: 59, scope: !38)
!66 = !DILocation(line: 12, column: 65, scope: !38)
!67 = !DILocation(line: 12, column: 67, scope: !38)
!68 = !DILocation(line: 12, column: 66, scope: !38)
!69 = !DILocation(line: 12, column: 71, scope: !38)
!70 = !DILocation(line: 12, column: 73, scope: !38)
!71 = !DILocation(line: 12, column: 72, scope: !38)
!72 = !DILocation(line: 12, column: 69, scope: !38)
!73 = !DILocation(line: 12, column: 62, scope: !38)
!74 = !DILocation(line: 12, column: 12, scope: !39)
!75 = !DILocation(line: 14, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 9)
!77 = !DILocation(line: 15, column: 9, scope: !76)
!78 = !DILocation(line: 16, column: 19, scope: !79)
!79 = distinct !DILexicalBlock(scope: !38, file: !1, line: 16, column: 17)
!80 = !DILocation(line: 16, column: 21, scope: !79)
!81 = !DILocation(line: 16, column: 20, scope: !79)
!82 = !DILocation(line: 16, column: 25, scope: !79)
!83 = !DILocation(line: 16, column: 27, scope: !79)
!84 = !DILocation(line: 16, column: 26, scope: !79)
!85 = !DILocation(line: 16, column: 31, scope: !79)
!86 = !DILocation(line: 16, column: 33, scope: !79)
!87 = !DILocation(line: 16, column: 32, scope: !79)
!88 = !DILocation(line: 16, column: 29, scope: !79)
!89 = !DILocation(line: 16, column: 23, scope: !79)
!90 = !DILocation(line: 16, column: 36, scope: !79)
!91 = !DILocation(line: 16, column: 40, scope: !79)
!92 = !DILocation(line: 16, column: 42, scope: !79)
!93 = !DILocation(line: 16, column: 41, scope: !79)
!94 = !DILocation(line: 16, column: 46, scope: !79)
!95 = !DILocation(line: 16, column: 48, scope: !79)
!96 = !DILocation(line: 16, column: 47, scope: !79)
!97 = !DILocation(line: 16, column: 52, scope: !79)
!98 = !DILocation(line: 16, column: 54, scope: !79)
!99 = !DILocation(line: 16, column: 53, scope: !79)
!100 = !DILocation(line: 16, column: 50, scope: !79)
!101 = !DILocation(line: 16, column: 44, scope: !79)
!102 = !DILocation(line: 16, column: 57, scope: !79)
!103 = !DILocation(line: 16, column: 61, scope: !79)
!104 = !DILocation(line: 16, column: 63, scope: !79)
!105 = !DILocation(line: 16, column: 62, scope: !79)
!106 = !DILocation(line: 16, column: 67, scope: !79)
!107 = !DILocation(line: 16, column: 69, scope: !79)
!108 = !DILocation(line: 16, column: 68, scope: !79)
!109 = !DILocation(line: 16, column: 73, scope: !79)
!110 = !DILocation(line: 16, column: 75, scope: !79)
!111 = !DILocation(line: 16, column: 74, scope: !79)
!112 = !DILocation(line: 16, column: 71, scope: !79)
!113 = !DILocation(line: 16, column: 65, scope: !79)
!114 = !DILocation(line: 16, column: 17, scope: !38)
!115 = !DILocation(line: 18, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !79, file: !1, line: 17, column: 9)
!117 = !DILocation(line: 19, column: 9, scope: !116)
!118 = !DILocation(line: 20, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !79, file: !1, line: 20, column: 17)
!120 = !DILocation(line: 20, column: 21, scope: !119)
!121 = !DILocation(line: 20, column: 20, scope: !119)
!122 = !DILocation(line: 20, column: 25, scope: !119)
!123 = !DILocation(line: 20, column: 27, scope: !119)
!124 = !DILocation(line: 20, column: 26, scope: !119)
!125 = !DILocation(line: 20, column: 31, scope: !119)
!126 = !DILocation(line: 20, column: 33, scope: !119)
!127 = !DILocation(line: 20, column: 32, scope: !119)
!128 = !DILocation(line: 20, column: 29, scope: !119)
!129 = !DILocation(line: 20, column: 23, scope: !119)
!130 = !DILocation(line: 20, column: 36, scope: !119)
!131 = !DILocation(line: 20, column: 40, scope: !119)
!132 = !DILocation(line: 20, column: 42, scope: !119)
!133 = !DILocation(line: 20, column: 41, scope: !119)
!134 = !DILocation(line: 20, column: 46, scope: !119)
!135 = !DILocation(line: 20, column: 48, scope: !119)
!136 = !DILocation(line: 20, column: 47, scope: !119)
!137 = !DILocation(line: 20, column: 52, scope: !119)
!138 = !DILocation(line: 20, column: 54, scope: !119)
!139 = !DILocation(line: 20, column: 53, scope: !119)
!140 = !DILocation(line: 20, column: 50, scope: !119)
!141 = !DILocation(line: 20, column: 44, scope: !119)
!142 = !DILocation(line: 20, column: 57, scope: !119)
!143 = !DILocation(line: 20, column: 61, scope: !119)
!144 = !DILocation(line: 20, column: 63, scope: !119)
!145 = !DILocation(line: 20, column: 62, scope: !119)
!146 = !DILocation(line: 20, column: 67, scope: !119)
!147 = !DILocation(line: 20, column: 69, scope: !119)
!148 = !DILocation(line: 20, column: 68, scope: !119)
!149 = !DILocation(line: 20, column: 73, scope: !119)
!150 = !DILocation(line: 20, column: 75, scope: !119)
!151 = !DILocation(line: 20, column: 74, scope: !119)
!152 = !DILocation(line: 20, column: 71, scope: !119)
!153 = !DILocation(line: 20, column: 65, scope: !119)
!154 = !DILocation(line: 20, column: 17, scope: !79)
!155 = !DILocation(line: 22, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !119, file: !1, line: 21, column: 9)
!157 = !DILocation(line: 23, column: 9, scope: !156)
!158 = !DILocation(line: 24, column: 5, scope: !39)
!159 = !DILocation(line: 27, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !19, file: !1, line: 26, column: 5)
!161 = !DILocation(line: 29, column: 5, scope: !7)
