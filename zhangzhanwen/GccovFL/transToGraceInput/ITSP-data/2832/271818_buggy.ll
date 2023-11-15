; ModuleID = 'gcov/../WA_c/271818_buggy.c'
source_filename = "gcov/../WA_c/271818_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Right Triangle\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Obtuse Triangle\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid Triangle\00", align 1

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
  %8 = load i32, i32* %4, align 4, !dbg !22
  %9 = icmp sgt i32 %7, %8, !dbg !23
  br i1 %9, label %10, label %14, !dbg !24

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %4, align 4, !dbg !25
  store i32 %11, i32* %5, align 4, !dbg !27
  %12 = load i32, i32* %2, align 4, !dbg !28
  store i32 %12, i32* %4, align 4, !dbg !29
  %13 = load i32, i32* %5, align 4, !dbg !30
  store i32 %13, i32* %2, align 4, !dbg !31
  br label %14, !dbg !32

; <label>:14:                                     ; preds = %10, %0
  %15 = load i32, i32* %3, align 4, !dbg !33
  %16 = load i32, i32* %4, align 4, !dbg !35
  %17 = icmp sgt i32 %15, %16, !dbg !36
  br i1 %17, label %18, label %22, !dbg !37

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !38
  store i32 %19, i32* %5, align 4, !dbg !40
  %20 = load i32, i32* %3, align 4, !dbg !41
  store i32 %20, i32* %4, align 4, !dbg !42
  %21 = load i32, i32* %5, align 4, !dbg !43
  store i32 %21, i32* %3, align 4, !dbg !44
  br label %22, !dbg !45

; <label>:22:                                     ; preds = %18, %14
  %23 = load i32, i32* %2, align 4, !dbg !46
  %24 = load i32, i32* %3, align 4, !dbg !48
  %25 = add nsw i32 %23, %24, !dbg !49
  %26 = load i32, i32* %4, align 4, !dbg !50
  %27 = icmp sgt i32 %25, %26, !dbg !51
  br i1 %27, label %28, label %85, !dbg !52

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %3, align 4, !dbg !53
  %30 = load i32, i32* %4, align 4, !dbg !54
  %31 = add nsw i32 %29, %30, !dbg !55
  %32 = load i32, i32* %2, align 4, !dbg !56
  %33 = icmp sgt i32 %31, %32, !dbg !57
  br i1 %33, label %34, label %85, !dbg !58

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %4, align 4, !dbg !59
  %36 = load i32, i32* %2, align 4, !dbg !60
  %37 = add nsw i32 %35, %36, !dbg !61
  %38 = load i32, i32* %3, align 4, !dbg !62
  %39 = icmp sgt i32 %37, %38, !dbg !63
  br i1 %39, label %40, label %85, !dbg !64

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %2, align 4, !dbg !65
  %42 = load i32, i32* %2, align 4, !dbg !68
  %43 = mul nsw i32 %41, %42, !dbg !69
  %44 = load i32, i32* %3, align 4, !dbg !70
  %45 = load i32, i32* %3, align 4, !dbg !71
  %46 = mul nsw i32 %44, %45, !dbg !72
  %47 = add nsw i32 %43, %46, !dbg !73
  %48 = load i32, i32* %4, align 4, !dbg !74
  %49 = load i32, i32* %4, align 4, !dbg !75
  %50 = mul nsw i32 %48, %49, !dbg !76
  %51 = icmp eq i32 %47, %50, !dbg !77
  br i1 %51, label %52, label %54, !dbg !78

; <label>:52:                                     ; preds = %40
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !79
  br label %84, !dbg !81

; <label>:54:                                     ; preds = %40
  %55 = load i32, i32* %2, align 4, !dbg !82
  %56 = load i32, i32* %2, align 4, !dbg !84
  %57 = mul nsw i32 %55, %56, !dbg !85
  %58 = load i32, i32* %3, align 4, !dbg !86
  %59 = load i32, i32* %3, align 4, !dbg !87
  %60 = mul nsw i32 %58, %59, !dbg !88
  %61 = add nsw i32 %57, %60, !dbg !89
  %62 = load i32, i32* %4, align 4, !dbg !90
  %63 = load i32, i32* %4, align 4, !dbg !91
  %64 = mul nsw i32 %62, %63, !dbg !92
  %65 = icmp slt i32 %61, %64, !dbg !93
  br i1 %65, label %66, label %68, !dbg !94

; <label>:66:                                     ; preds = %54
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !95
  br label %83, !dbg !97

; <label>:68:                                     ; preds = %54
  %69 = load i32, i32* %2, align 4, !dbg !98
  %70 = load i32, i32* %2, align 4, !dbg !100
  %71 = mul nsw i32 %69, %70, !dbg !101
  %72 = load i32, i32* %3, align 4, !dbg !102
  %73 = load i32, i32* %3, align 4, !dbg !103
  %74 = mul nsw i32 %72, %73, !dbg !104
  %75 = add nsw i32 %71, %74, !dbg !105
  %76 = load i32, i32* %4, align 4, !dbg !106
  %77 = load i32, i32* %4, align 4, !dbg !107
  %78 = mul nsw i32 %76, %77, !dbg !108
  %79 = icmp sgt i32 %75, %78, !dbg !109
  br i1 %79, label %80, label %82, !dbg !110

; <label>:80:                                     ; preds = %68
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !111
  br label %82, !dbg !113

; <label>:82:                                     ; preds = %80, %68
  br label %83

; <label>:83:                                     ; preds = %82, %66
  br label %84

; <label>:84:                                     ; preds = %83, %52
  br label %87, !dbg !114

; <label>:85:                                     ; preds = %34, %28, %22
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)), !dbg !115
  br label %87

; <label>:87:                                     ; preds = %85, %84
  ret i32 0, !dbg !117
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
!1 = !DIFile(filename: "gcov/../WA_c/271818_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!17 = !DILocalVariable(name: "l", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 8, column: 8, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!22 = !DILocation(line: 8, column: 10, scope: !21)
!23 = !DILocation(line: 8, column: 9, scope: !21)
!24 = !DILocation(line: 8, column: 8, scope: !7)
!25 = !DILocation(line: 10, column: 11, scope: !26)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 5)
!27 = !DILocation(line: 10, column: 10, scope: !26)
!28 = !DILocation(line: 11, column: 11, scope: !26)
!29 = !DILocation(line: 11, column: 10, scope: !26)
!30 = !DILocation(line: 12, column: 11, scope: !26)
!31 = !DILocation(line: 12, column: 10, scope: !26)
!32 = !DILocation(line: 13, column: 5, scope: !26)
!33 = !DILocation(line: 14, column: 8, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 8)
!35 = !DILocation(line: 14, column: 10, scope: !34)
!36 = !DILocation(line: 14, column: 9, scope: !34)
!37 = !DILocation(line: 14, column: 8, scope: !7)
!38 = !DILocation(line: 16, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !34, file: !1, line: 15, column: 5)
!40 = !DILocation(line: 16, column: 10, scope: !39)
!41 = !DILocation(line: 17, column: 11, scope: !39)
!42 = !DILocation(line: 17, column: 10, scope: !39)
!43 = !DILocation(line: 18, column: 11, scope: !39)
!44 = !DILocation(line: 18, column: 10, scope: !39)
!45 = !DILocation(line: 19, column: 5, scope: !39)
!46 = !DILocation(line: 20, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 8)
!48 = !DILocation(line: 20, column: 11, scope: !47)
!49 = !DILocation(line: 20, column: 10, scope: !47)
!50 = !DILocation(line: 20, column: 13, scope: !47)
!51 = !DILocation(line: 20, column: 12, scope: !47)
!52 = !DILocation(line: 20, column: 15, scope: !47)
!53 = !DILocation(line: 20, column: 18, scope: !47)
!54 = !DILocation(line: 20, column: 20, scope: !47)
!55 = !DILocation(line: 20, column: 19, scope: !47)
!56 = !DILocation(line: 20, column: 22, scope: !47)
!57 = !DILocation(line: 20, column: 21, scope: !47)
!58 = !DILocation(line: 20, column: 24, scope: !47)
!59 = !DILocation(line: 20, column: 27, scope: !47)
!60 = !DILocation(line: 20, column: 29, scope: !47)
!61 = !DILocation(line: 20, column: 28, scope: !47)
!62 = !DILocation(line: 20, column: 31, scope: !47)
!63 = !DILocation(line: 20, column: 30, scope: !47)
!64 = !DILocation(line: 20, column: 8, scope: !7)
!65 = !DILocation(line: 22, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 22, column: 12)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 21, column: 5)
!68 = !DILocation(line: 22, column: 16, scope: !66)
!69 = !DILocation(line: 22, column: 15, scope: !66)
!70 = !DILocation(line: 22, column: 20, scope: !66)
!71 = !DILocation(line: 22, column: 22, scope: !66)
!72 = !DILocation(line: 22, column: 21, scope: !66)
!73 = !DILocation(line: 22, column: 18, scope: !66)
!74 = !DILocation(line: 22, column: 28, scope: !66)
!75 = !DILocation(line: 22, column: 30, scope: !66)
!76 = !DILocation(line: 22, column: 29, scope: !66)
!77 = !DILocation(line: 22, column: 25, scope: !66)
!78 = !DILocation(line: 22, column: 12, scope: !67)
!79 = !DILocation(line: 24, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !66, file: !1, line: 23, column: 9)
!81 = !DILocation(line: 25, column: 9, scope: !80)
!82 = !DILocation(line: 26, column: 19, scope: !83)
!83 = distinct !DILexicalBlock(scope: !66, file: !1, line: 26, column: 17)
!84 = !DILocation(line: 26, column: 21, scope: !83)
!85 = !DILocation(line: 26, column: 20, scope: !83)
!86 = !DILocation(line: 26, column: 25, scope: !83)
!87 = !DILocation(line: 26, column: 27, scope: !83)
!88 = !DILocation(line: 26, column: 26, scope: !83)
!89 = !DILocation(line: 26, column: 23, scope: !83)
!90 = !DILocation(line: 26, column: 32, scope: !83)
!91 = !DILocation(line: 26, column: 34, scope: !83)
!92 = !DILocation(line: 26, column: 33, scope: !83)
!93 = !DILocation(line: 26, column: 30, scope: !83)
!94 = !DILocation(line: 26, column: 17, scope: !66)
!95 = !DILocation(line: 28, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !83, file: !1, line: 27, column: 9)
!97 = !DILocation(line: 29, column: 9, scope: !96)
!98 = !DILocation(line: 30, column: 19, scope: !99)
!99 = distinct !DILexicalBlock(scope: !83, file: !1, line: 30, column: 17)
!100 = !DILocation(line: 30, column: 21, scope: !99)
!101 = !DILocation(line: 30, column: 20, scope: !99)
!102 = !DILocation(line: 30, column: 25, scope: !99)
!103 = !DILocation(line: 30, column: 27, scope: !99)
!104 = !DILocation(line: 30, column: 26, scope: !99)
!105 = !DILocation(line: 30, column: 23, scope: !99)
!106 = !DILocation(line: 30, column: 32, scope: !99)
!107 = !DILocation(line: 30, column: 34, scope: !99)
!108 = !DILocation(line: 30, column: 33, scope: !99)
!109 = !DILocation(line: 30, column: 30, scope: !99)
!110 = !DILocation(line: 30, column: 17, scope: !83)
!111 = !DILocation(line: 32, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !99, file: !1, line: 31, column: 9)
!113 = !DILocation(line: 33, column: 9, scope: !112)
!114 = !DILocation(line: 34, column: 5, scope: !67)
!115 = !DILocation(line: 37, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !47, file: !1, line: 36, column: 5)
!117 = !DILocation(line: 39, column: 5, scope: !7)
