; ModuleID = 'gcov/../WA_c/271754_buggy.c'
source_filename = "gcov/../WA_c/271754_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Reverse of %d is %d%d%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Reverse of %d is %d%d%d%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Reverse of %d is %d%d%d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Reverse of %d is %d%d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Reverse of %d is 1\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Reverse of %d is %d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !23
  %9 = load i32, i32* %2, align 4, !dbg !24
  %10 = srem i32 %9, 10, !dbg !25
  store i32 %10, i32* %7, align 4, !dbg !26
  %11 = load i32, i32* %2, align 4, !dbg !27
  %12 = srem i32 %11, 100, !dbg !28
  %13 = load i32, i32* %7, align 4, !dbg !29
  %14 = sub nsw i32 %12, %13, !dbg !30
  %15 = sdiv i32 %14, 10, !dbg !31
  store i32 %15, i32* %6, align 4, !dbg !32
  %16 = load i32, i32* %2, align 4, !dbg !33
  %17 = srem i32 %16, 1000, !dbg !34
  %18 = load i32, i32* %7, align 4, !dbg !35
  %19 = sub nsw i32 %17, %18, !dbg !36
  %20 = load i32, i32* %6, align 4, !dbg !37
  %21 = mul nsw i32 %20, 10, !dbg !38
  %22 = sub nsw i32 %19, %21, !dbg !39
  %23 = sdiv i32 %22, 100, !dbg !40
  store i32 %23, i32* %5, align 4, !dbg !41
  %24 = load i32, i32* %2, align 4, !dbg !42
  %25 = srem i32 %24, 10000, !dbg !43
  %26 = load i32, i32* %7, align 4, !dbg !44
  %27 = sub nsw i32 %25, %26, !dbg !45
  %28 = load i32, i32* %6, align 4, !dbg !46
  %29 = mul nsw i32 %28, 10, !dbg !47
  %30 = sub nsw i32 %27, %29, !dbg !48
  %31 = load i32, i32* %5, align 4, !dbg !49
  %32 = mul nsw i32 %31, 100, !dbg !50
  %33 = sub nsw i32 %30, %32, !dbg !51
  %34 = sdiv i32 %33, 1000, !dbg !52
  store i32 %34, i32* %4, align 4, !dbg !53
  %35 = load i32, i32* %2, align 4, !dbg !54
  %36 = sdiv i32 %35, 10000, !dbg !55
  store i32 %36, i32* %3, align 4, !dbg !56
  %37 = load i32, i32* %2, align 4, !dbg !57
  %38 = icmp sge i32 %37, 10000, !dbg !59
  br i1 %38, label %39, label %47, !dbg !60

; <label>:39:                                     ; preds = %0
  %40 = load i32, i32* %2, align 4, !dbg !61
  %41 = load i32, i32* %7, align 4, !dbg !63
  %42 = load i32, i32* %6, align 4, !dbg !64
  %43 = load i32, i32* %5, align 4, !dbg !65
  %44 = load i32, i32* %4, align 4, !dbg !66
  %45 = load i32, i32* %3, align 4, !dbg !67
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45), !dbg !68
  br label %97, !dbg !69

; <label>:47:                                     ; preds = %0
  %48 = load i32, i32* %2, align 4, !dbg !70
  %49 = icmp sge i32 %48, 1000, !dbg !72
  br i1 %49, label %50, label %57, !dbg !73

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %2, align 4, !dbg !74
  %52 = load i32, i32* %7, align 4, !dbg !76
  %53 = load i32, i32* %6, align 4, !dbg !77
  %54 = load i32, i32* %5, align 4, !dbg !78
  %55 = load i32, i32* %4, align 4, !dbg !79
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %51, i32 %52, i32 %53, i32 %54, i32 %55), !dbg !80
  br label %96, !dbg !81

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %2, align 4, !dbg !82
  %59 = icmp sgt i32 %58, 100, !dbg !84
  br i1 %59, label %60, label %66, !dbg !85

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %2, align 4, !dbg !86
  %62 = load i32, i32* %7, align 4, !dbg !88
  %63 = load i32, i32* %6, align 4, !dbg !89
  %64 = load i32, i32* %5, align 4, !dbg !90
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %61, i32 %62, i32 %63, i32 %64), !dbg !91
  br label %95, !dbg !92

; <label>:66:                                     ; preds = %57
  %67 = load i32, i32* %2, align 4, !dbg !93
  %68 = icmp sge i32 %67, 10, !dbg !95
  br i1 %68, label %69, label %74, !dbg !96

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %2, align 4, !dbg !97
  %71 = load i32, i32* %7, align 4, !dbg !99
  %72 = load i32, i32* %6, align 4, !dbg !100
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %70, i32 %71, i32 %72), !dbg !101
  br label %94, !dbg !102

; <label>:74:                                     ; preds = %66
  %75 = load i32, i32* %2, align 4, !dbg !103
  %76 = icmp eq i32 %75, 10000, !dbg !105
  br i1 %76, label %86, label %77, !dbg !106

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %2, align 4, !dbg !107
  %79 = icmp eq i32 %78, 1000, !dbg !108
  br i1 %79, label %86, label %80, !dbg !109

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %2, align 4, !dbg !110
  %82 = icmp eq i32 %81, 100, !dbg !111
  br i1 %82, label %86, label %83, !dbg !112

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %2, align 4, !dbg !113
  %85 = icmp eq i32 %84, 10, !dbg !114
  br i1 %85, label %86, label %89, !dbg !115

; <label>:86:                                     ; preds = %83, %80, %77, %74
  %87 = load i32, i32* %2, align 4, !dbg !116
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 %87), !dbg !118
  br label %93, !dbg !119

; <label>:89:                                     ; preds = %83
  %90 = load i32, i32* %2, align 4, !dbg !120
  %91 = load i32, i32* %7, align 4, !dbg !122
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i32 %90, i32 %91), !dbg !123
  br label %93

; <label>:93:                                     ; preds = %89, %86
  br label %94

; <label>:94:                                     ; preds = %93, %69
  br label %95

; <label>:95:                                     ; preds = %94, %60
  br label %96

; <label>:96:                                     ; preds = %95, %50
  br label %97

; <label>:97:                                     ; preds = %96, %39
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
!1 = !DIFile(filename: "gcov/../WA_c/271754_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2831")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "n1", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 13, scope: !7)
!15 = !DILocalVariable(name: "n2", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 16, scope: !7)
!17 = !DILocalVariable(name: "n3", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 19, scope: !7)
!19 = !DILocalVariable(name: "n4", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 22, scope: !7)
!21 = !DILocalVariable(name: "n5", scope: !7, file: !1, line: 4, type: !10)
!22 = !DILocation(line: 4, column: 25, scope: !7)
!23 = !DILocation(line: 5, column: 5, scope: !7)
!24 = !DILocation(line: 6, column: 8, scope: !7)
!25 = !DILocation(line: 6, column: 11, scope: !7)
!26 = !DILocation(line: 6, column: 7, scope: !7)
!27 = !DILocation(line: 7, column: 10, scope: !7)
!28 = !DILocation(line: 7, column: 13, scope: !7)
!29 = !DILocation(line: 7, column: 19, scope: !7)
!30 = !DILocation(line: 7, column: 18, scope: !7)
!31 = !DILocation(line: 7, column: 22, scope: !7)
!32 = !DILocation(line: 7, column: 7, scope: !7)
!33 = !DILocation(line: 8, column: 10, scope: !7)
!34 = !DILocation(line: 8, column: 13, scope: !7)
!35 = !DILocation(line: 8, column: 20, scope: !7)
!36 = !DILocation(line: 8, column: 19, scope: !7)
!37 = !DILocation(line: 8, column: 24, scope: !7)
!38 = !DILocation(line: 8, column: 26, scope: !7)
!39 = !DILocation(line: 8, column: 22, scope: !7)
!40 = !DILocation(line: 8, column: 31, scope: !7)
!41 = !DILocation(line: 8, column: 7, scope: !7)
!42 = !DILocation(line: 9, column: 10, scope: !7)
!43 = !DILocation(line: 9, column: 13, scope: !7)
!44 = !DILocation(line: 9, column: 21, scope: !7)
!45 = !DILocation(line: 9, column: 20, scope: !7)
!46 = !DILocation(line: 9, column: 25, scope: !7)
!47 = !DILocation(line: 9, column: 27, scope: !7)
!48 = !DILocation(line: 9, column: 23, scope: !7)
!49 = !DILocation(line: 9, column: 33, scope: !7)
!50 = !DILocation(line: 9, column: 35, scope: !7)
!51 = !DILocation(line: 9, column: 31, scope: !7)
!52 = !DILocation(line: 9, column: 41, scope: !7)
!53 = !DILocation(line: 9, column: 7, scope: !7)
!54 = !DILocation(line: 10, column: 8, scope: !7)
!55 = !DILocation(line: 10, column: 11, scope: !7)
!56 = !DILocation(line: 10, column: 7, scope: !7)
!57 = !DILocation(line: 11, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 8)
!59 = !DILocation(line: 11, column: 11, scope: !58)
!60 = !DILocation(line: 11, column: 8, scope: !7)
!61 = !DILocation(line: 13, column: 46, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 12, column: 5)
!63 = !DILocation(line: 13, column: 50, scope: !62)
!64 = !DILocation(line: 13, column: 53, scope: !62)
!65 = !DILocation(line: 13, column: 56, scope: !62)
!66 = !DILocation(line: 13, column: 59, scope: !62)
!67 = !DILocation(line: 13, column: 62, scope: !62)
!68 = !DILocation(line: 13, column: 9, scope: !62)
!69 = !DILocation(line: 14, column: 5, scope: !62)
!70 = !DILocation(line: 15, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !1, line: 15, column: 13)
!72 = !DILocation(line: 15, column: 16, scope: !71)
!73 = !DILocation(line: 15, column: 13, scope: !58)
!74 = !DILocation(line: 17, column: 44, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 16, column: 5)
!76 = !DILocation(line: 17, column: 48, scope: !75)
!77 = !DILocation(line: 17, column: 51, scope: !75)
!78 = !DILocation(line: 17, column: 54, scope: !75)
!79 = !DILocation(line: 17, column: 57, scope: !75)
!80 = !DILocation(line: 17, column: 9, scope: !75)
!81 = !DILocation(line: 18, column: 5, scope: !75)
!82 = !DILocation(line: 19, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !71, file: !1, line: 19, column: 13)
!84 = !DILocation(line: 19, column: 16, scope: !83)
!85 = !DILocation(line: 19, column: 13, scope: !71)
!86 = !DILocation(line: 21, column: 42, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 20, column: 5)
!88 = !DILocation(line: 21, column: 46, scope: !87)
!89 = !DILocation(line: 21, column: 49, scope: !87)
!90 = !DILocation(line: 21, column: 52, scope: !87)
!91 = !DILocation(line: 21, column: 9, scope: !87)
!92 = !DILocation(line: 22, column: 5, scope: !87)
!93 = !DILocation(line: 23, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !83, file: !1, line: 23, column: 13)
!95 = !DILocation(line: 23, column: 16, scope: !94)
!96 = !DILocation(line: 23, column: 13, scope: !83)
!97 = !DILocation(line: 25, column: 40, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 24, column: 5)
!99 = !DILocation(line: 25, column: 44, scope: !98)
!100 = !DILocation(line: 25, column: 47, scope: !98)
!101 = !DILocation(line: 25, column: 9, scope: !98)
!102 = !DILocation(line: 26, column: 5, scope: !98)
!103 = !DILocation(line: 27, column: 14, scope: !104)
!104 = distinct !DILexicalBlock(scope: !94, file: !1, line: 27, column: 13)
!105 = !DILocation(line: 27, column: 17, scope: !104)
!106 = !DILocation(line: 27, column: 25, scope: !104)
!107 = !DILocation(line: 27, column: 28, scope: !104)
!108 = !DILocation(line: 27, column: 31, scope: !104)
!109 = !DILocation(line: 27, column: 38, scope: !104)
!110 = !DILocation(line: 27, column: 41, scope: !104)
!111 = !DILocation(line: 27, column: 44, scope: !104)
!112 = !DILocation(line: 27, column: 50, scope: !104)
!113 = !DILocation(line: 27, column: 53, scope: !104)
!114 = !DILocation(line: 27, column: 56, scope: !104)
!115 = !DILocation(line: 27, column: 13, scope: !94)
!116 = !DILocation(line: 29, column: 37, scope: !117)
!117 = distinct !DILexicalBlock(scope: !104, file: !1, line: 28, column: 5)
!118 = !DILocation(line: 29, column: 9, scope: !117)
!119 = !DILocation(line: 30, column: 5, scope: !117)
!120 = !DILocation(line: 33, column: 38, scope: !121)
!121 = distinct !DILexicalBlock(scope: !104, file: !1, line: 32, column: 5)
!122 = !DILocation(line: 33, column: 42, scope: !121)
!123 = !DILocation(line: 33, column: 9, scope: !121)
!124 = !DILocation(line: 35, column: 5, scope: !7)
