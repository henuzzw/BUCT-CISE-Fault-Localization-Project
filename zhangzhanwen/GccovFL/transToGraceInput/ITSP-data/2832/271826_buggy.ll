; ModuleID = 'gcov/../WA_c/271826_buggy.c'
source_filename = "gcov/../WA_c/271826_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Right Triangle\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Acute Triangle\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Obtuse Triangle\00", align 1
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
  br i1 %10, label %11, label %147, !dbg !24

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* %3, align 4, !dbg !25
  %13 = load i32, i32* %4, align 4, !dbg !26
  %14 = add nsw i32 %12, %13, !dbg !27
  %15 = load i32, i32* %2, align 4, !dbg !28
  %16 = icmp sgt i32 %14, %15, !dbg !29
  br i1 %16, label %17, label %147, !dbg !30

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %2, align 4, !dbg !31
  %19 = load i32, i32* %4, align 4, !dbg !32
  %20 = add nsw i32 %18, %19, !dbg !33
  %21 = load i32, i32* %3, align 4, !dbg !34
  %22 = icmp sgt i32 %20, %21, !dbg !35
  br i1 %22, label %23, label %147, !dbg !36

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %2, align 4, !dbg !37
  %25 = load i32, i32* %2, align 4, !dbg !40
  %26 = mul nsw i32 %24, %25, !dbg !41
  %27 = load i32, i32* %3, align 4, !dbg !42
  %28 = load i32, i32* %3, align 4, !dbg !43
  %29 = mul nsw i32 %27, %28, !dbg !44
  %30 = add nsw i32 %26, %29, !dbg !45
  %31 = load i32, i32* %4, align 4, !dbg !46
  %32 = load i32, i32* %4, align 4, !dbg !47
  %33 = mul nsw i32 %31, %32, !dbg !48
  %34 = sub nsw i32 %30, %33, !dbg !49
  %35 = icmp eq i32 %34, 0, !dbg !50
  br i1 %35, label %62, label %36, !dbg !51

; <label>:36:                                     ; preds = %23
  %37 = load i32, i32* %3, align 4, !dbg !52
  %38 = load i32, i32* %3, align 4, !dbg !53
  %39 = mul nsw i32 %37, %38, !dbg !54
  %40 = load i32, i32* %4, align 4, !dbg !55
  %41 = load i32, i32* %4, align 4, !dbg !56
  %42 = mul nsw i32 %40, %41, !dbg !57
  %43 = add nsw i32 %39, %42, !dbg !58
  %44 = load i32, i32* %2, align 4, !dbg !59
  %45 = load i32, i32* %2, align 4, !dbg !60
  %46 = mul nsw i32 %44, %45, !dbg !61
  %47 = sub nsw i32 %43, %46, !dbg !62
  %48 = icmp eq i32 %47, 0, !dbg !63
  br i1 %48, label %62, label %49, !dbg !64

; <label>:49:                                     ; preds = %36
  %50 = load i32, i32* %2, align 4, !dbg !65
  %51 = load i32, i32* %2, align 4, !dbg !66
  %52 = mul nsw i32 %50, %51, !dbg !67
  %53 = load i32, i32* %4, align 4, !dbg !68
  %54 = load i32, i32* %4, align 4, !dbg !69
  %55 = mul nsw i32 %53, %54, !dbg !70
  %56 = add nsw i32 %52, %55, !dbg !71
  %57 = load i32, i32* %3, align 4, !dbg !72
  %58 = load i32, i32* %3, align 4, !dbg !73
  %59 = mul nsw i32 %57, %58, !dbg !74
  %60 = sub nsw i32 %56, %59, !dbg !75
  %61 = icmp eq i32 %60, 0, !dbg !76
  br i1 %61, label %62, label %64, !dbg !77

; <label>:62:                                     ; preds = %49, %36, %23
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !78
  br label %146, !dbg !80

; <label>:64:                                     ; preds = %49
  %65 = load i32, i32* %2, align 4, !dbg !81
  %66 = load i32, i32* %2, align 4, !dbg !83
  %67 = mul nsw i32 %65, %66, !dbg !84
  %68 = load i32, i32* %3, align 4, !dbg !85
  %69 = load i32, i32* %3, align 4, !dbg !86
  %70 = mul nsw i32 %68, %69, !dbg !87
  %71 = add nsw i32 %67, %70, !dbg !88
  %72 = load i32, i32* %4, align 4, !dbg !89
  %73 = load i32, i32* %4, align 4, !dbg !90
  %74 = mul nsw i32 %72, %73, !dbg !91
  %75 = sub nsw i32 %71, %74, !dbg !92
  %76 = icmp sgt i32 %75, 0, !dbg !93
  br i1 %76, label %77, label %105, !dbg !94

; <label>:77:                                     ; preds = %64
  %78 = load i32, i32* %3, align 4, !dbg !95
  %79 = load i32, i32* %3, align 4, !dbg !96
  %80 = mul nsw i32 %78, %79, !dbg !97
  %81 = load i32, i32* %4, align 4, !dbg !98
  %82 = load i32, i32* %4, align 4, !dbg !99
  %83 = mul nsw i32 %81, %82, !dbg !100
  %84 = add nsw i32 %80, %83, !dbg !101
  %85 = load i32, i32* %2, align 4, !dbg !102
  %86 = load i32, i32* %2, align 4, !dbg !103
  %87 = mul nsw i32 %85, %86, !dbg !104
  %88 = sub nsw i32 %84, %87, !dbg !105
  %89 = icmp sgt i32 %88, 0, !dbg !106
  br i1 %89, label %90, label %105, !dbg !107

; <label>:90:                                     ; preds = %77
  %91 = load i32, i32* %2, align 4, !dbg !108
  %92 = load i32, i32* %2, align 4, !dbg !109
  %93 = mul nsw i32 %91, %92, !dbg !110
  %94 = load i32, i32* %4, align 4, !dbg !111
  %95 = load i32, i32* %4, align 4, !dbg !112
  %96 = mul nsw i32 %94, %95, !dbg !113
  %97 = add nsw i32 %93, %96, !dbg !114
  %98 = load i32, i32* %3, align 4, !dbg !115
  %99 = load i32, i32* %3, align 4, !dbg !116
  %100 = mul nsw i32 %98, %99, !dbg !117
  %101 = sub nsw i32 %97, %100, !dbg !118
  %102 = icmp sgt i32 %101, 0, !dbg !119
  br i1 %102, label %103, label %105, !dbg !120

; <label>:103:                                    ; preds = %90
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !121
  br label %145, !dbg !123

; <label>:105:                                    ; preds = %90, %77, %64
  %106 = load i32, i32* %2, align 4, !dbg !124
  %107 = load i32, i32* %2, align 4, !dbg !126
  %108 = mul nsw i32 %106, %107, !dbg !127
  %109 = load i32, i32* %3, align 4, !dbg !128
  %110 = load i32, i32* %3, align 4, !dbg !129
  %111 = mul nsw i32 %109, %110, !dbg !130
  %112 = add nsw i32 %108, %111, !dbg !131
  %113 = load i32, i32* %4, align 4, !dbg !132
  %114 = load i32, i32* %4, align 4, !dbg !133
  %115 = mul nsw i32 %113, %114, !dbg !134
  %116 = sub nsw i32 %112, %115, !dbg !135
  %117 = icmp slt i32 %116, 0, !dbg !136
  br i1 %117, label %118, label %144, !dbg !137

; <label>:118:                                    ; preds = %105
  %119 = load i32, i32* %3, align 4, !dbg !138
  %120 = load i32, i32* %3, align 4, !dbg !139
  %121 = mul nsw i32 %119, %120, !dbg !140
  %122 = load i32, i32* %4, align 4, !dbg !141
  %123 = load i32, i32* %4, align 4, !dbg !142
  %124 = mul nsw i32 %122, %123, !dbg !143
  %125 = add nsw i32 %121, %124, !dbg !144
  %126 = load i32, i32* %2, align 4, !dbg !145
  %127 = load i32, i32* %2, align 4, !dbg !146
  %128 = mul nsw i32 %126, %127, !dbg !147
  %129 = icmp slt i32 %125, %128, !dbg !148
  br i1 %129, label %130, label %144, !dbg !149

; <label>:130:                                    ; preds = %118
  %131 = load i32, i32* %2, align 4, !dbg !150
  %132 = load i32, i32* %2, align 4, !dbg !151
  %133 = mul nsw i32 %131, %132, !dbg !152
  %134 = load i32, i32* %4, align 4, !dbg !153
  %135 = load i32, i32* %4, align 4, !dbg !154
  %136 = mul nsw i32 %134, %135, !dbg !155
  %137 = add nsw i32 %133, %136, !dbg !156
  %138 = load i32, i32* %3, align 4, !dbg !157
  %139 = load i32, i32* %3, align 4, !dbg !158
  %140 = mul nsw i32 %138, %139, !dbg !159
  %141 = icmp slt i32 %137, %140, !dbg !160
  br i1 %141, label %142, label %144, !dbg !161

; <label>:142:                                    ; preds = %130
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !162
  br label %144, !dbg !164

; <label>:144:                                    ; preds = %142, %130, %118, %105
  br label %145

; <label>:145:                                    ; preds = %144, %103
  br label %146

; <label>:146:                                    ; preds = %145, %62
  br label %149, !dbg !165

; <label>:147:                                    ; preds = %17, %11, %0
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !166
  br label %149

; <label>:149:                                    ; preds = %147, %146
  ret i32 0, !dbg !168
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
!1 = !DIFile(filename: "gcov/../WA_c/271826_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!18 = !DILocation(line: 8, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!20 = !DILocation(line: 8, column: 10, scope: !19)
!21 = !DILocation(line: 8, column: 9, scope: !19)
!22 = !DILocation(line: 8, column: 12, scope: !19)
!23 = !DILocation(line: 8, column: 11, scope: !19)
!24 = !DILocation(line: 8, column: 14, scope: !19)
!25 = !DILocation(line: 8, column: 17, scope: !19)
!26 = !DILocation(line: 8, column: 19, scope: !19)
!27 = !DILocation(line: 8, column: 18, scope: !19)
!28 = !DILocation(line: 8, column: 22, scope: !19)
!29 = !DILocation(line: 8, column: 21, scope: !19)
!30 = !DILocation(line: 8, column: 24, scope: !19)
!31 = !DILocation(line: 8, column: 27, scope: !19)
!32 = !DILocation(line: 8, column: 29, scope: !19)
!33 = !DILocation(line: 8, column: 28, scope: !19)
!34 = !DILocation(line: 8, column: 31, scope: !19)
!35 = !DILocation(line: 8, column: 30, scope: !19)
!36 = !DILocation(line: 8, column: 8, scope: !7)
!37 = !DILocation(line: 10, column: 12, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 10, column: 12)
!39 = distinct !DILexicalBlock(scope: !19, file: !1, line: 9, column: 5)
!40 = !DILocation(line: 10, column: 14, scope: !38)
!41 = !DILocation(line: 10, column: 13, scope: !38)
!42 = !DILocation(line: 10, column: 16, scope: !38)
!43 = !DILocation(line: 10, column: 18, scope: !38)
!44 = !DILocation(line: 10, column: 17, scope: !38)
!45 = !DILocation(line: 10, column: 15, scope: !38)
!46 = !DILocation(line: 10, column: 20, scope: !38)
!47 = !DILocation(line: 10, column: 22, scope: !38)
!48 = !DILocation(line: 10, column: 21, scope: !38)
!49 = !DILocation(line: 10, column: 19, scope: !38)
!50 = !DILocation(line: 10, column: 23, scope: !38)
!51 = !DILocation(line: 10, column: 27, scope: !38)
!52 = !DILocation(line: 10, column: 30, scope: !38)
!53 = !DILocation(line: 10, column: 32, scope: !38)
!54 = !DILocation(line: 10, column: 31, scope: !38)
!55 = !DILocation(line: 10, column: 34, scope: !38)
!56 = !DILocation(line: 10, column: 36, scope: !38)
!57 = !DILocation(line: 10, column: 35, scope: !38)
!58 = !DILocation(line: 10, column: 33, scope: !38)
!59 = !DILocation(line: 10, column: 38, scope: !38)
!60 = !DILocation(line: 10, column: 40, scope: !38)
!61 = !DILocation(line: 10, column: 39, scope: !38)
!62 = !DILocation(line: 10, column: 37, scope: !38)
!63 = !DILocation(line: 10, column: 41, scope: !38)
!64 = !DILocation(line: 10, column: 45, scope: !38)
!65 = !DILocation(line: 10, column: 48, scope: !38)
!66 = !DILocation(line: 10, column: 50, scope: !38)
!67 = !DILocation(line: 10, column: 49, scope: !38)
!68 = !DILocation(line: 10, column: 52, scope: !38)
!69 = !DILocation(line: 10, column: 54, scope: !38)
!70 = !DILocation(line: 10, column: 53, scope: !38)
!71 = !DILocation(line: 10, column: 51, scope: !38)
!72 = !DILocation(line: 10, column: 56, scope: !38)
!73 = !DILocation(line: 10, column: 58, scope: !38)
!74 = !DILocation(line: 10, column: 57, scope: !38)
!75 = !DILocation(line: 10, column: 55, scope: !38)
!76 = !DILocation(line: 10, column: 59, scope: !38)
!77 = !DILocation(line: 10, column: 12, scope: !39)
!78 = !DILocation(line: 12, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !38, file: !1, line: 11, column: 9)
!80 = !DILocation(line: 13, column: 9, scope: !79)
!81 = !DILocation(line: 14, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !38, file: !1, line: 14, column: 17)
!83 = !DILocation(line: 14, column: 19, scope: !82)
!84 = !DILocation(line: 14, column: 18, scope: !82)
!85 = !DILocation(line: 14, column: 21, scope: !82)
!86 = !DILocation(line: 14, column: 23, scope: !82)
!87 = !DILocation(line: 14, column: 22, scope: !82)
!88 = !DILocation(line: 14, column: 20, scope: !82)
!89 = !DILocation(line: 14, column: 26, scope: !82)
!90 = !DILocation(line: 14, column: 28, scope: !82)
!91 = !DILocation(line: 14, column: 27, scope: !82)
!92 = !DILocation(line: 14, column: 25, scope: !82)
!93 = !DILocation(line: 14, column: 29, scope: !82)
!94 = !DILocation(line: 14, column: 33, scope: !82)
!95 = !DILocation(line: 14, column: 36, scope: !82)
!96 = !DILocation(line: 14, column: 38, scope: !82)
!97 = !DILocation(line: 14, column: 37, scope: !82)
!98 = !DILocation(line: 14, column: 40, scope: !82)
!99 = !DILocation(line: 14, column: 42, scope: !82)
!100 = !DILocation(line: 14, column: 41, scope: !82)
!101 = !DILocation(line: 14, column: 39, scope: !82)
!102 = !DILocation(line: 14, column: 44, scope: !82)
!103 = !DILocation(line: 14, column: 46, scope: !82)
!104 = !DILocation(line: 14, column: 45, scope: !82)
!105 = !DILocation(line: 14, column: 43, scope: !82)
!106 = !DILocation(line: 14, column: 48, scope: !82)
!107 = !DILocation(line: 14, column: 51, scope: !82)
!108 = !DILocation(line: 14, column: 54, scope: !82)
!109 = !DILocation(line: 14, column: 56, scope: !82)
!110 = !DILocation(line: 14, column: 55, scope: !82)
!111 = !DILocation(line: 14, column: 58, scope: !82)
!112 = !DILocation(line: 14, column: 60, scope: !82)
!113 = !DILocation(line: 14, column: 59, scope: !82)
!114 = !DILocation(line: 14, column: 57, scope: !82)
!115 = !DILocation(line: 14, column: 62, scope: !82)
!116 = !DILocation(line: 14, column: 64, scope: !82)
!117 = !DILocation(line: 14, column: 63, scope: !82)
!118 = !DILocation(line: 14, column: 61, scope: !82)
!119 = !DILocation(line: 14, column: 65, scope: !82)
!120 = !DILocation(line: 14, column: 17, scope: !38)
!121 = !DILocation(line: 16, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !82, file: !1, line: 15, column: 9)
!123 = !DILocation(line: 17, column: 9, scope: !122)
!124 = !DILocation(line: 18, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !82, file: !1, line: 18, column: 17)
!126 = !DILocation(line: 18, column: 19, scope: !125)
!127 = !DILocation(line: 18, column: 18, scope: !125)
!128 = !DILocation(line: 18, column: 21, scope: !125)
!129 = !DILocation(line: 18, column: 23, scope: !125)
!130 = !DILocation(line: 18, column: 22, scope: !125)
!131 = !DILocation(line: 18, column: 20, scope: !125)
!132 = !DILocation(line: 18, column: 25, scope: !125)
!133 = !DILocation(line: 18, column: 27, scope: !125)
!134 = !DILocation(line: 18, column: 26, scope: !125)
!135 = !DILocation(line: 18, column: 24, scope: !125)
!136 = !DILocation(line: 18, column: 29, scope: !125)
!137 = !DILocation(line: 18, column: 32, scope: !125)
!138 = !DILocation(line: 18, column: 35, scope: !125)
!139 = !DILocation(line: 18, column: 37, scope: !125)
!140 = !DILocation(line: 18, column: 36, scope: !125)
!141 = !DILocation(line: 18, column: 39, scope: !125)
!142 = !DILocation(line: 18, column: 41, scope: !125)
!143 = !DILocation(line: 18, column: 40, scope: !125)
!144 = !DILocation(line: 18, column: 38, scope: !125)
!145 = !DILocation(line: 18, column: 43, scope: !125)
!146 = !DILocation(line: 18, column: 45, scope: !125)
!147 = !DILocation(line: 18, column: 44, scope: !125)
!148 = !DILocation(line: 18, column: 42, scope: !125)
!149 = !DILocation(line: 18, column: 47, scope: !125)
!150 = !DILocation(line: 18, column: 50, scope: !125)
!151 = !DILocation(line: 18, column: 52, scope: !125)
!152 = !DILocation(line: 18, column: 51, scope: !125)
!153 = !DILocation(line: 18, column: 54, scope: !125)
!154 = !DILocation(line: 18, column: 56, scope: !125)
!155 = !DILocation(line: 18, column: 55, scope: !125)
!156 = !DILocation(line: 18, column: 53, scope: !125)
!157 = !DILocation(line: 18, column: 58, scope: !125)
!158 = !DILocation(line: 18, column: 60, scope: !125)
!159 = !DILocation(line: 18, column: 59, scope: !125)
!160 = !DILocation(line: 18, column: 57, scope: !125)
!161 = !DILocation(line: 18, column: 17, scope: !82)
!162 = !DILocation(line: 20, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !125, file: !1, line: 19, column: 9)
!164 = !DILocation(line: 21, column: 9, scope: !163)
!165 = !DILocation(line: 22, column: 5, scope: !39)
!166 = !DILocation(line: 25, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !19, file: !1, line: 24, column: 5)
!168 = !DILocation(line: 28, column: 5, scope: !7)
