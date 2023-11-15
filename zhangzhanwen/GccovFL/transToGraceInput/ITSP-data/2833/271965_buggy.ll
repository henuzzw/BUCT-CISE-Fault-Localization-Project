; ModuleID = 'gcov/../WA_c/271965_buggy.c'
source_filename = "gcov/../WA_c/271965_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Number of possible triangles is %d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %6, align 4, !dbg !21
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !22
  store i32 1, i32* %3, align 4, !dbg !23
  br label %8, !dbg !25

; <label>:8:                                      ; preds = %52, %0
  %9 = load i32, i32* %3, align 4, !dbg !26
  %10 = load i32, i32* %2, align 4, !dbg !28
  %11 = icmp sle i32 %9, %10, !dbg !29
  br i1 %11, label %12, label %55, !dbg !30

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !31
  br label %13, !dbg !34

; <label>:13:                                     ; preds = %48, %12
  %14 = load i32, i32* %4, align 4, !dbg !35
  %15 = load i32, i32* %2, align 4, !dbg !37
  %16 = icmp sle i32 %14, %15, !dbg !38
  br i1 %16, label %17, label %51, !dbg !39

; <label>:17:                                     ; preds = %13
  store i32 1, i32* %5, align 4, !dbg !40
  br label %18, !dbg !43

; <label>:18:                                     ; preds = %44, %17
  %19 = load i32, i32* %5, align 4, !dbg !44
  %20 = load i32, i32* %2, align 4, !dbg !46
  %21 = icmp sle i32 %19, %20, !dbg !47
  br i1 %21, label %22, label %47, !dbg !48

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %3, align 4, !dbg !49
  %24 = load i32, i32* %4, align 4, !dbg !52
  %25 = add nsw i32 %23, %24, !dbg !53
  %26 = load i32, i32* %5, align 4, !dbg !54
  %27 = icmp sgt i32 %25, %26, !dbg !55
  br i1 %27, label %28, label %43, !dbg !56

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !57
  %30 = load i32, i32* %5, align 4, !dbg !58
  %31 = add nsw i32 %29, %30, !dbg !59
  %32 = load i32, i32* %3, align 4, !dbg !60
  %33 = icmp sgt i32 %31, %32, !dbg !61
  br i1 %33, label %34, label %43, !dbg !62

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %5, align 4, !dbg !63
  %36 = load i32, i32* %3, align 4, !dbg !64
  %37 = add nsw i32 %35, %36, !dbg !65
  %38 = load i32, i32* %4, align 4, !dbg !66
  %39 = icmp sgt i32 %37, %38, !dbg !67
  br i1 %39, label %40, label %43, !dbg !68

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %6, align 4, !dbg !69
  %42 = add nsw i32 %41, 1, !dbg !71
  store i32 %42, i32* %6, align 4, !dbg !72
  br label %43, !dbg !73

; <label>:43:                                     ; preds = %40, %34, %28, %22
  br label %44, !dbg !74

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %5, align 4, !dbg !75
  %46 = add nsw i32 %45, 1, !dbg !76
  store i32 %46, i32* %5, align 4, !dbg !77
  br label %18, !dbg !78, !llvm.loop !79

; <label>:47:                                     ; preds = %18
  br label %48, !dbg !81

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %4, align 4, !dbg !82
  %50 = add nsw i32 %49, 1, !dbg !83
  store i32 %50, i32* %4, align 4, !dbg !84
  br label %13, !dbg !85, !llvm.loop !86

; <label>:51:                                     ; preds = %13
  br label %52, !dbg !88

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %3, align 4, !dbg !89
  %54 = add nsw i32 %53, 1, !dbg !90
  store i32 %54, i32* %3, align 4, !dbg !91
  br label %8, !dbg !92, !llvm.loop !93

; <label>:55:                                     ; preds = %8
  %56 = load i32, i32* %6, align 4, !dbg !95
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %56), !dbg !96
  ret i32 0, !dbg !97
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
!1 = !DIFile(filename: "gcov/../WA_c/271965_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 10, scope: !7)
!22 = !DILocation(line: 7, column: 5, scope: !7)
!23 = !DILocation(line: 8, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!25 = !DILocation(line: 8, column: 9, scope: !24)
!26 = !DILocation(line: 8, column: 14, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 5)
!28 = !DILocation(line: 8, column: 17, scope: !27)
!29 = !DILocation(line: 8, column: 15, scope: !27)
!30 = !DILocation(line: 8, column: 5, scope: !24)
!31 = !DILocation(line: 10, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 9)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 9, column: 5)
!34 = !DILocation(line: 10, column: 13, scope: !32)
!35 = !DILocation(line: 10, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 9)
!37 = !DILocation(line: 10, column: 21, scope: !36)
!38 = !DILocation(line: 10, column: 19, scope: !36)
!39 = !DILocation(line: 10, column: 9, scope: !32)
!40 = !DILocation(line: 12, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 12, column: 13)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 9)
!43 = !DILocation(line: 12, column: 17, scope: !41)
!44 = !DILocation(line: 12, column: 22, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 13)
!46 = !DILocation(line: 12, column: 25, scope: !45)
!47 = !DILocation(line: 12, column: 23, scope: !45)
!48 = !DILocation(line: 12, column: 13, scope: !41)
!49 = !DILocation(line: 14, column: 22, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 14, column: 21)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 13, column: 13)
!52 = !DILocation(line: 14, column: 24, scope: !50)
!53 = !DILocation(line: 14, column: 23, scope: !50)
!54 = !DILocation(line: 14, column: 26, scope: !50)
!55 = !DILocation(line: 14, column: 25, scope: !50)
!56 = !DILocation(line: 14, column: 28, scope: !50)
!57 = !DILocation(line: 14, column: 31, scope: !50)
!58 = !DILocation(line: 14, column: 33, scope: !50)
!59 = !DILocation(line: 14, column: 32, scope: !50)
!60 = !DILocation(line: 14, column: 35, scope: !50)
!61 = !DILocation(line: 14, column: 34, scope: !50)
!62 = !DILocation(line: 14, column: 37, scope: !50)
!63 = !DILocation(line: 14, column: 40, scope: !50)
!64 = !DILocation(line: 14, column: 42, scope: !50)
!65 = !DILocation(line: 14, column: 41, scope: !50)
!66 = !DILocation(line: 14, column: 44, scope: !50)
!67 = !DILocation(line: 14, column: 43, scope: !50)
!68 = !DILocation(line: 14, column: 21, scope: !51)
!69 = !DILocation(line: 16, column: 27, scope: !70)
!70 = distinct !DILexicalBlock(scope: !50, file: !1, line: 15, column: 17)
!71 = !DILocation(line: 16, column: 32, scope: !70)
!72 = !DILocation(line: 16, column: 26, scope: !70)
!73 = !DILocation(line: 17, column: 17, scope: !70)
!74 = !DILocation(line: 18, column: 13, scope: !51)
!75 = !DILocation(line: 12, column: 30, scope: !45)
!76 = !DILocation(line: 12, column: 31, scope: !45)
!77 = !DILocation(line: 12, column: 29, scope: !45)
!78 = !DILocation(line: 12, column: 13, scope: !45)
!79 = distinct !{!79, !48, !80}
!80 = !DILocation(line: 18, column: 13, scope: !41)
!81 = !DILocation(line: 19, column: 9, scope: !42)
!82 = !DILocation(line: 10, column: 26, scope: !36)
!83 = !DILocation(line: 10, column: 27, scope: !36)
!84 = !DILocation(line: 10, column: 25, scope: !36)
!85 = !DILocation(line: 10, column: 9, scope: !36)
!86 = distinct !{!86, !39, !87}
!87 = !DILocation(line: 19, column: 9, scope: !32)
!88 = !DILocation(line: 20, column: 5, scope: !33)
!89 = !DILocation(line: 8, column: 22, scope: !27)
!90 = !DILocation(line: 8, column: 23, scope: !27)
!91 = !DILocation(line: 8, column: 21, scope: !27)
!92 = !DILocation(line: 8, column: 5, scope: !27)
!93 = distinct !{!93, !30, !94}
!94 = !DILocation(line: 20, column: 5, scope: !24)
!95 = !DILocation(line: 21, column: 49, scope: !7)
!96 = !DILocation(line: 21, column: 5, scope: !7)
!97 = !DILocation(line: 22, column: 5, scope: !7)
