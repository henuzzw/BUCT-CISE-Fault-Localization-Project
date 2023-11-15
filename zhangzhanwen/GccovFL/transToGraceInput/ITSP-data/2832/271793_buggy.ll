; ModuleID = 'gcov/../WA_c/271793_buggy.c'
source_filename = "gcov/../WA_c/271793_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  %6 = load i32, i32* %2, align 4, !dbg !18
  %7 = load i32, i32* %3, align 4, !dbg !20
  %8 = add nsw i32 %6, %7, !dbg !21
  %9 = load i32, i32* %4, align 4, !dbg !22
  %10 = icmp slt i32 %8, %9, !dbg !23
  br i1 %10, label %23, label %11, !dbg !24

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !25
  %13 = load i32, i32* %4, align 4, !dbg !26
  %14 = add nsw i32 %12, %13, !dbg !27
  %15 = load i32, i32* %3, align 4, !dbg !28
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
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !37
  br label %105, !dbg !39

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %2, align 4, !dbg !40
  %27 = load i32, i32* %2, align 4, !dbg !43
  %28 = mul nsw i32 %26, %27, !dbg !44
  %29 = load i32, i32* %3, align 4, !dbg !45
  %30 = load i32, i32* %3, align 4, !dbg !46
  %31 = mul nsw i32 %29, %30, !dbg !47
  %32 = load i32, i32* %4, align 4, !dbg !48
  %33 = load i32, i32* %4, align 4, !dbg !49
  %34 = mul nsw i32 %32, %33, !dbg !50
  %35 = add nsw i32 %31, %34, !dbg !51
  %36 = icmp eq i32 %28, %35, !dbg !52
  br i1 %36, label %61, label %37, !dbg !53

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %3, align 4, !dbg !54
  %39 = load i32, i32* %3, align 4, !dbg !55
  %40 = mul nsw i32 %38, %39, !dbg !56
  %41 = load i32, i32* %2, align 4, !dbg !57
  %42 = load i32, i32* %2, align 4, !dbg !58
  %43 = mul nsw i32 %41, %42, !dbg !59
  %44 = load i32, i32* %4, align 4, !dbg !60
  %45 = load i32, i32* %4, align 4, !dbg !61
  %46 = mul nsw i32 %44, %45, !dbg !62
  %47 = add nsw i32 %43, %46, !dbg !63
  %48 = icmp eq i32 %40, %47, !dbg !64
  br i1 %48, label %61, label %49, !dbg !65

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %4, align 4, !dbg !66
  %51 = load i32, i32* %4, align 4, !dbg !67
  %52 = mul nsw i32 %50, %51, !dbg !68
  %53 = load i32, i32* %2, align 4, !dbg !69
  %54 = load i32, i32* %2, align 4, !dbg !70
  %55 = mul nsw i32 %53, %54, !dbg !71
  %56 = load i32, i32* %3, align 4, !dbg !72
  %57 = load i32, i32* %3, align 4, !dbg !73
  %58 = mul nsw i32 %56, %57, !dbg !74
  %59 = add nsw i32 %55, %58, !dbg !75
  %60 = icmp eq i32 %52, %59, !dbg !76
  br i1 %60, label %61, label %63, !dbg !77

; <label>:61:                                     ; preds = %49, %37, %25
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !78
  br label %104, !dbg !80

; <label>:63:                                     ; preds = %49
  %64 = load i32, i32* %2, align 4, !dbg !81
  %65 = load i32, i32* %2, align 4, !dbg !84
  %66 = mul nsw i32 %64, %65, !dbg !85
  %67 = load i32, i32* %3, align 4, !dbg !86
  %68 = load i32, i32* %3, align 4, !dbg !87
  %69 = mul nsw i32 %67, %68, !dbg !88
  %70 = load i32, i32* %4, align 4, !dbg !89
  %71 = load i32, i32* %4, align 4, !dbg !90
  %72 = mul nsw i32 %70, %71, !dbg !91
  %73 = add nsw i32 %69, %72, !dbg !92
  %74 = icmp sgt i32 %66, %73, !dbg !93
  br i1 %74, label %99, label %75, !dbg !94

; <label>:75:                                     ; preds = %63
  %76 = load i32, i32* %3, align 4, !dbg !95
  %77 = load i32, i32* %3, align 4, !dbg !96
  %78 = mul nsw i32 %76, %77, !dbg !97
  %79 = load i32, i32* %2, align 4, !dbg !98
  %80 = load i32, i32* %2, align 4, !dbg !99
  %81 = mul nsw i32 %79, %80, !dbg !100
  %82 = load i32, i32* %4, align 4, !dbg !101
  %83 = load i32, i32* %4, align 4, !dbg !102
  %84 = mul nsw i32 %82, %83, !dbg !103
  %85 = add nsw i32 %81, %84, !dbg !104
  %86 = icmp sgt i32 %78, %85, !dbg !105
  br i1 %86, label %99, label %87, !dbg !106

; <label>:87:                                     ; preds = %75
  %88 = load i32, i32* %4, align 4, !dbg !107
  %89 = load i32, i32* %4, align 4, !dbg !108
  %90 = mul nsw i32 %88, %89, !dbg !109
  %91 = load i32, i32* %2, align 4, !dbg !110
  %92 = load i32, i32* %2, align 4, !dbg !111
  %93 = mul nsw i32 %91, %92, !dbg !112
  %94 = load i32, i32* %3, align 4, !dbg !113
  %95 = load i32, i32* %3, align 4, !dbg !114
  %96 = mul nsw i32 %94, %95, !dbg !115
  %97 = add nsw i32 %93, %96, !dbg !116
  %98 = icmp sgt i32 %90, %97, !dbg !117
  br i1 %98, label %99, label %101, !dbg !118

; <label>:99:                                     ; preds = %87, %75, %63
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !119
  br label %103, !dbg !121

; <label>:101:                                    ; preds = %87
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !122
  br label %103

; <label>:103:                                    ; preds = %101, %99
  br label %104

; <label>:104:                                    ; preds = %103, %61
  br label %105

; <label>:105:                                    ; preds = %104, %23
  ret i32 0, !dbg !124
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
!1 = !DIFile(filename: "gcov/../WA_c/271793_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!20 = !DILocation(line: 7, column: 11, scope: !19)
!21 = !DILocation(line: 7, column: 10, scope: !19)
!22 = !DILocation(line: 7, column: 13, scope: !19)
!23 = !DILocation(line: 7, column: 12, scope: !19)
!24 = !DILocation(line: 7, column: 15, scope: !19)
!25 = !DILocation(line: 7, column: 18, scope: !19)
!26 = !DILocation(line: 7, column: 20, scope: !19)
!27 = !DILocation(line: 7, column: 19, scope: !19)
!28 = !DILocation(line: 7, column: 22, scope: !19)
!29 = !DILocation(line: 7, column: 21, scope: !19)
!30 = !DILocation(line: 7, column: 24, scope: !19)
!31 = !DILocation(line: 7, column: 27, scope: !19)
!32 = !DILocation(line: 7, column: 29, scope: !19)
!33 = !DILocation(line: 7, column: 28, scope: !19)
!34 = !DILocation(line: 7, column: 31, scope: !19)
!35 = !DILocation(line: 7, column: 30, scope: !19)
!36 = !DILocation(line: 7, column: 8, scope: !7)
!37 = !DILocation(line: 9, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!39 = !DILocation(line: 10, column: 5, scope: !38)
!40 = !DILocation(line: 13, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 12)
!42 = distinct !DILexicalBlock(scope: !19, file: !1, line: 12, column: 5)
!43 = !DILocation(line: 13, column: 15, scope: !41)
!44 = !DILocation(line: 13, column: 14, scope: !41)
!45 = !DILocation(line: 13, column: 18, scope: !41)
!46 = !DILocation(line: 13, column: 20, scope: !41)
!47 = !DILocation(line: 13, column: 19, scope: !41)
!48 = !DILocation(line: 13, column: 22, scope: !41)
!49 = !DILocation(line: 13, column: 24, scope: !41)
!50 = !DILocation(line: 13, column: 23, scope: !41)
!51 = !DILocation(line: 13, column: 21, scope: !41)
!52 = !DILocation(line: 13, column: 16, scope: !41)
!53 = !DILocation(line: 13, column: 26, scope: !41)
!54 = !DILocation(line: 13, column: 29, scope: !41)
!55 = !DILocation(line: 13, column: 31, scope: !41)
!56 = !DILocation(line: 13, column: 30, scope: !41)
!57 = !DILocation(line: 13, column: 34, scope: !41)
!58 = !DILocation(line: 13, column: 36, scope: !41)
!59 = !DILocation(line: 13, column: 35, scope: !41)
!60 = !DILocation(line: 13, column: 38, scope: !41)
!61 = !DILocation(line: 13, column: 40, scope: !41)
!62 = !DILocation(line: 13, column: 39, scope: !41)
!63 = !DILocation(line: 13, column: 37, scope: !41)
!64 = !DILocation(line: 13, column: 32, scope: !41)
!65 = !DILocation(line: 13, column: 42, scope: !41)
!66 = !DILocation(line: 13, column: 45, scope: !41)
!67 = !DILocation(line: 13, column: 47, scope: !41)
!68 = !DILocation(line: 13, column: 46, scope: !41)
!69 = !DILocation(line: 13, column: 50, scope: !41)
!70 = !DILocation(line: 13, column: 52, scope: !41)
!71 = !DILocation(line: 13, column: 51, scope: !41)
!72 = !DILocation(line: 13, column: 54, scope: !41)
!73 = !DILocation(line: 13, column: 56, scope: !41)
!74 = !DILocation(line: 13, column: 55, scope: !41)
!75 = !DILocation(line: 13, column: 53, scope: !41)
!76 = !DILocation(line: 13, column: 48, scope: !41)
!77 = !DILocation(line: 13, column: 12, scope: !42)
!78 = !DILocation(line: 15, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 9)
!80 = !DILocation(line: 16, column: 9, scope: !79)
!81 = !DILocation(line: 19, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 19, column: 16)
!83 = distinct !DILexicalBlock(scope: !41, file: !1, line: 18, column: 9)
!84 = !DILocation(line: 19, column: 19, scope: !82)
!85 = !DILocation(line: 19, column: 18, scope: !82)
!86 = !DILocation(line: 19, column: 21, scope: !82)
!87 = !DILocation(line: 19, column: 23, scope: !82)
!88 = !DILocation(line: 19, column: 22, scope: !82)
!89 = !DILocation(line: 19, column: 25, scope: !82)
!90 = !DILocation(line: 19, column: 27, scope: !82)
!91 = !DILocation(line: 19, column: 26, scope: !82)
!92 = !DILocation(line: 19, column: 24, scope: !82)
!93 = !DILocation(line: 19, column: 20, scope: !82)
!94 = !DILocation(line: 19, column: 29, scope: !82)
!95 = !DILocation(line: 19, column: 32, scope: !82)
!96 = !DILocation(line: 19, column: 34, scope: !82)
!97 = !DILocation(line: 19, column: 33, scope: !82)
!98 = !DILocation(line: 19, column: 36, scope: !82)
!99 = !DILocation(line: 19, column: 38, scope: !82)
!100 = !DILocation(line: 19, column: 37, scope: !82)
!101 = !DILocation(line: 19, column: 40, scope: !82)
!102 = !DILocation(line: 19, column: 42, scope: !82)
!103 = !DILocation(line: 19, column: 41, scope: !82)
!104 = !DILocation(line: 19, column: 39, scope: !82)
!105 = !DILocation(line: 19, column: 35, scope: !82)
!106 = !DILocation(line: 19, column: 44, scope: !82)
!107 = !DILocation(line: 19, column: 47, scope: !82)
!108 = !DILocation(line: 19, column: 49, scope: !82)
!109 = !DILocation(line: 19, column: 48, scope: !82)
!110 = !DILocation(line: 19, column: 51, scope: !82)
!111 = !DILocation(line: 19, column: 53, scope: !82)
!112 = !DILocation(line: 19, column: 52, scope: !82)
!113 = !DILocation(line: 19, column: 55, scope: !82)
!114 = !DILocation(line: 19, column: 57, scope: !82)
!115 = !DILocation(line: 19, column: 56, scope: !82)
!116 = !DILocation(line: 19, column: 54, scope: !82)
!117 = !DILocation(line: 19, column: 50, scope: !82)
!118 = !DILocation(line: 19, column: 16, scope: !83)
!119 = !DILocation(line: 21, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !82, file: !1, line: 20, column: 13)
!121 = !DILocation(line: 22, column: 13, scope: !120)
!122 = !DILocation(line: 25, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !82, file: !1, line: 24, column: 13)
!124 = !DILocation(line: 29, column: 5, scope: !7)
