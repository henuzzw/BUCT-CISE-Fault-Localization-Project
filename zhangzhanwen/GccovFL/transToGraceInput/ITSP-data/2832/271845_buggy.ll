; ModuleID = 'gcov/../WA_c/271845_buggy.c'
source_filename = "gcov/../WA_c/271845_buggy.c"
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
  %12 = icmp slt i32 %10, %11, !dbg !25
  br i1 %12, label %25, label %13, !dbg !26

; <label>:13:                                     ; preds = %0
  %14 = load i32, i32* %3, align 4, !dbg !27
  %15 = load i32, i32* %4, align 4, !dbg !28
  %16 = add nsw i32 %14, %15, !dbg !29
  %17 = load i32, i32* %2, align 4, !dbg !30
  %18 = icmp slt i32 %16, %17, !dbg !31
  br i1 %18, label %25, label %19, !dbg !32

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %2, align 4, !dbg !33
  %21 = load i32, i32* %4, align 4, !dbg !34
  %22 = add nsw i32 %20, %21, !dbg !35
  %23 = load i32, i32* %3, align 4, !dbg !36
  %24 = icmp slt i32 %22, %23, !dbg !37
  br i1 %24, label %25, label %27, !dbg !38

; <label>:25:                                     ; preds = %19, %13, %0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !39
  br label %107, !dbg !41

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %4, align 4, !dbg !42
  %29 = load i32, i32* %4, align 4, !dbg !44
  %30 = mul nsw i32 %28, %29, !dbg !45
  %31 = load i32, i32* %2, align 4, !dbg !46
  %32 = load i32, i32* %2, align 4, !dbg !47
  %33 = mul nsw i32 %31, %32, !dbg !48
  %34 = load i32, i32* %3, align 4, !dbg !49
  %35 = load i32, i32* %3, align 4, !dbg !50
  %36 = mul nsw i32 %34, %35, !dbg !51
  %37 = add nsw i32 %33, %36, !dbg !52
  %38 = icmp eq i32 %30, %37, !dbg !53
  br i1 %38, label %63, label %39, !dbg !54

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %3, align 4, !dbg !55
  %41 = load i32, i32* %3, align 4, !dbg !56
  %42 = mul nsw i32 %40, %41, !dbg !57
  %43 = load i32, i32* %2, align 4, !dbg !58
  %44 = load i32, i32* %2, align 4, !dbg !59
  %45 = mul nsw i32 %43, %44, !dbg !60
  %46 = load i32, i32* %4, align 4, !dbg !61
  %47 = load i32, i32* %4, align 4, !dbg !62
  %48 = mul nsw i32 %46, %47, !dbg !63
  %49 = add nsw i32 %45, %48, !dbg !64
  %50 = icmp eq i32 %42, %49, !dbg !65
  br i1 %50, label %63, label %51, !dbg !66

; <label>:51:                                     ; preds = %39
  %52 = load i32, i32* %2, align 4, !dbg !67
  %53 = load i32, i32* %2, align 4, !dbg !68
  %54 = mul nsw i32 %52, %53, !dbg !69
  %55 = load i32, i32* %3, align 4, !dbg !70
  %56 = load i32, i32* %3, align 4, !dbg !71
  %57 = mul nsw i32 %55, %56, !dbg !72
  %58 = load i32, i32* %4, align 4, !dbg !73
  %59 = load i32, i32* %4, align 4, !dbg !74
  %60 = mul nsw i32 %58, %59, !dbg !75
  %61 = add nsw i32 %57, %60, !dbg !76
  %62 = icmp eq i32 %54, %61, !dbg !77
  br i1 %62, label %63, label %65, !dbg !78

; <label>:63:                                     ; preds = %51, %39, %27
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !79
  br label %106, !dbg !81

; <label>:65:                                     ; preds = %51
  %66 = load i32, i32* %4, align 4, !dbg !82
  %67 = load i32, i32* %4, align 4, !dbg !84
  %68 = mul nsw i32 %66, %67, !dbg !85
  %69 = load i32, i32* %2, align 4, !dbg !86
  %70 = load i32, i32* %2, align 4, !dbg !87
  %71 = mul nsw i32 %69, %70, !dbg !88
  %72 = load i32, i32* %3, align 4, !dbg !89
  %73 = load i32, i32* %3, align 4, !dbg !90
  %74 = mul nsw i32 %72, %73, !dbg !91
  %75 = add nsw i32 %71, %74, !dbg !92
  %76 = icmp sgt i32 %68, %75, !dbg !93
  br i1 %76, label %101, label %77, !dbg !94

; <label>:77:                                     ; preds = %65
  %78 = load i32, i32* %3, align 4, !dbg !95
  %79 = load i32, i32* %3, align 4, !dbg !96
  %80 = mul nsw i32 %78, %79, !dbg !97
  %81 = load i32, i32* %2, align 4, !dbg !98
  %82 = load i32, i32* %2, align 4, !dbg !99
  %83 = mul nsw i32 %81, %82, !dbg !100
  %84 = load i32, i32* %4, align 4, !dbg !101
  %85 = load i32, i32* %4, align 4, !dbg !102
  %86 = mul nsw i32 %84, %85, !dbg !103
  %87 = add nsw i32 %83, %86, !dbg !104
  %88 = icmp sgt i32 %80, %87, !dbg !105
  br i1 %88, label %101, label %89, !dbg !106

; <label>:89:                                     ; preds = %77
  %90 = load i32, i32* %2, align 4, !dbg !107
  %91 = load i32, i32* %2, align 4, !dbg !108
  %92 = mul nsw i32 %90, %91, !dbg !109
  %93 = load i32, i32* %3, align 4, !dbg !110
  %94 = load i32, i32* %3, align 4, !dbg !111
  %95 = mul nsw i32 %93, %94, !dbg !112
  %96 = load i32, i32* %4, align 4, !dbg !113
  %97 = load i32, i32* %4, align 4, !dbg !114
  %98 = mul nsw i32 %96, %97, !dbg !115
  %99 = add nsw i32 %95, %98, !dbg !116
  %100 = icmp sgt i32 %92, %99, !dbg !117
  br i1 %100, label %101, label %103, !dbg !118

; <label>:101:                                    ; preds = %89, %77, %65
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !119
  br label %105, !dbg !121

; <label>:103:                                    ; preds = %89
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !122
  br label %105

; <label>:105:                                    ; preds = %103, %101
  br label %106

; <label>:106:                                    ; preds = %105, %63
  br label %107

; <label>:107:                                    ; preds = %106, %25
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
!1 = !DIFile(filename: "gcov/../WA_c/271845_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!18 = !DILocation(line: 7, column: 5, scope: !7)
!19 = !DILocation(line: 8, column: 5, scope: !7)
!20 = !DILocation(line: 9, column: 10, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 8)
!22 = !DILocation(line: 9, column: 12, scope: !21)
!23 = !DILocation(line: 9, column: 11, scope: !21)
!24 = !DILocation(line: 9, column: 15, scope: !21)
!25 = !DILocation(line: 9, column: 14, scope: !21)
!26 = !DILocation(line: 9, column: 17, scope: !21)
!27 = !DILocation(line: 9, column: 21, scope: !21)
!28 = !DILocation(line: 9, column: 23, scope: !21)
!29 = !DILocation(line: 9, column: 22, scope: !21)
!30 = !DILocation(line: 9, column: 26, scope: !21)
!31 = !DILocation(line: 9, column: 25, scope: !21)
!32 = !DILocation(line: 9, column: 28, scope: !21)
!33 = !DILocation(line: 9, column: 32, scope: !21)
!34 = !DILocation(line: 9, column: 34, scope: !21)
!35 = !DILocation(line: 9, column: 33, scope: !21)
!36 = !DILocation(line: 9, column: 37, scope: !21)
!37 = !DILocation(line: 9, column: 36, scope: !21)
!38 = !DILocation(line: 9, column: 8, scope: !7)
!39 = !DILocation(line: 11, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 5)
!41 = !DILocation(line: 12, column: 5, scope: !40)
!42 = !DILocation(line: 13, column: 15, scope: !43)
!43 = distinct !DILexicalBlock(scope: !21, file: !1, line: 13, column: 13)
!44 = !DILocation(line: 13, column: 17, scope: !43)
!45 = !DILocation(line: 13, column: 16, scope: !43)
!46 = !DILocation(line: 13, column: 22, scope: !43)
!47 = !DILocation(line: 13, column: 24, scope: !43)
!48 = !DILocation(line: 13, column: 23, scope: !43)
!49 = !DILocation(line: 13, column: 26, scope: !43)
!50 = !DILocation(line: 13, column: 28, scope: !43)
!51 = !DILocation(line: 13, column: 27, scope: !43)
!52 = !DILocation(line: 13, column: 25, scope: !43)
!53 = !DILocation(line: 13, column: 19, scope: !43)
!54 = !DILocation(line: 13, column: 31, scope: !43)
!55 = !DILocation(line: 13, column: 35, scope: !43)
!56 = !DILocation(line: 13, column: 37, scope: !43)
!57 = !DILocation(line: 13, column: 36, scope: !43)
!58 = !DILocation(line: 13, column: 42, scope: !43)
!59 = !DILocation(line: 13, column: 44, scope: !43)
!60 = !DILocation(line: 13, column: 43, scope: !43)
!61 = !DILocation(line: 13, column: 46, scope: !43)
!62 = !DILocation(line: 13, column: 48, scope: !43)
!63 = !DILocation(line: 13, column: 47, scope: !43)
!64 = !DILocation(line: 13, column: 45, scope: !43)
!65 = !DILocation(line: 13, column: 39, scope: !43)
!66 = !DILocation(line: 13, column: 51, scope: !43)
!67 = !DILocation(line: 13, column: 55, scope: !43)
!68 = !DILocation(line: 13, column: 57, scope: !43)
!69 = !DILocation(line: 13, column: 56, scope: !43)
!70 = !DILocation(line: 13, column: 62, scope: !43)
!71 = !DILocation(line: 13, column: 64, scope: !43)
!72 = !DILocation(line: 13, column: 63, scope: !43)
!73 = !DILocation(line: 13, column: 66, scope: !43)
!74 = !DILocation(line: 13, column: 68, scope: !43)
!75 = !DILocation(line: 13, column: 67, scope: !43)
!76 = !DILocation(line: 13, column: 65, scope: !43)
!77 = !DILocation(line: 13, column: 59, scope: !43)
!78 = !DILocation(line: 13, column: 13, scope: !21)
!79 = !DILocation(line: 15, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !43, file: !1, line: 14, column: 5)
!81 = !DILocation(line: 16, column: 5, scope: !80)
!82 = !DILocation(line: 17, column: 15, scope: !83)
!83 = distinct !DILexicalBlock(scope: !43, file: !1, line: 17, column: 13)
!84 = !DILocation(line: 17, column: 17, scope: !83)
!85 = !DILocation(line: 17, column: 16, scope: !83)
!86 = !DILocation(line: 17, column: 21, scope: !83)
!87 = !DILocation(line: 17, column: 23, scope: !83)
!88 = !DILocation(line: 17, column: 22, scope: !83)
!89 = !DILocation(line: 17, column: 25, scope: !83)
!90 = !DILocation(line: 17, column: 27, scope: !83)
!91 = !DILocation(line: 17, column: 26, scope: !83)
!92 = !DILocation(line: 17, column: 24, scope: !83)
!93 = !DILocation(line: 17, column: 19, scope: !83)
!94 = !DILocation(line: 17, column: 30, scope: !83)
!95 = !DILocation(line: 17, column: 34, scope: !83)
!96 = !DILocation(line: 17, column: 36, scope: !83)
!97 = !DILocation(line: 17, column: 35, scope: !83)
!98 = !DILocation(line: 17, column: 40, scope: !83)
!99 = !DILocation(line: 17, column: 42, scope: !83)
!100 = !DILocation(line: 17, column: 41, scope: !83)
!101 = !DILocation(line: 17, column: 44, scope: !83)
!102 = !DILocation(line: 17, column: 46, scope: !83)
!103 = !DILocation(line: 17, column: 45, scope: !83)
!104 = !DILocation(line: 17, column: 43, scope: !83)
!105 = !DILocation(line: 17, column: 38, scope: !83)
!106 = !DILocation(line: 17, column: 49, scope: !83)
!107 = !DILocation(line: 17, column: 53, scope: !83)
!108 = !DILocation(line: 17, column: 55, scope: !83)
!109 = !DILocation(line: 17, column: 54, scope: !83)
!110 = !DILocation(line: 17, column: 59, scope: !83)
!111 = !DILocation(line: 17, column: 61, scope: !83)
!112 = !DILocation(line: 17, column: 60, scope: !83)
!113 = !DILocation(line: 17, column: 63, scope: !83)
!114 = !DILocation(line: 17, column: 65, scope: !83)
!115 = !DILocation(line: 17, column: 64, scope: !83)
!116 = !DILocation(line: 17, column: 62, scope: !83)
!117 = !DILocation(line: 17, column: 57, scope: !83)
!118 = !DILocation(line: 17, column: 13, scope: !43)
!119 = !DILocation(line: 19, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !83, file: !1, line: 18, column: 5)
!121 = !DILocation(line: 20, column: 5, scope: !120)
!122 = !DILocation(line: 23, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !83, file: !1, line: 22, column: 5)
!124 = !DILocation(line: 25, column: 5, scope: !7)
