; ModuleID = 'gcov/../WA_c/271977_buggy.c'
source_filename = "gcov/../WA_c/271977_buggy.c"
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
  store i32 0, i32* %6, align 4, !dbg !20
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !21
  store i32 1, i32* %3, align 4, !dbg !22
  br label %8, !dbg !24

; <label>:8:                                      ; preds = %52, %0
  %9 = load i32, i32* %3, align 4, !dbg !25
  %10 = load i32, i32* %2, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %55, !dbg !29

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !30
  br label %13, !dbg !33

; <label>:13:                                     ; preds = %48, %12
  %14 = load i32, i32* %4, align 4, !dbg !34
  %15 = load i32, i32* %2, align 4, !dbg !36
  %16 = icmp sle i32 %14, %15, !dbg !37
  br i1 %16, label %17, label %51, !dbg !38

; <label>:17:                                     ; preds = %13
  store i32 1, i32* %5, align 4, !dbg !39
  br label %18, !dbg !42

; <label>:18:                                     ; preds = %44, %17
  %19 = load i32, i32* %5, align 4, !dbg !43
  %20 = load i32, i32* %2, align 4, !dbg !45
  %21 = icmp sle i32 %19, %20, !dbg !46
  br i1 %21, label %22, label %47, !dbg !47

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %3, align 4, !dbg !48
  %24 = load i32, i32* %4, align 4, !dbg !51
  %25 = add nsw i32 %23, %24, !dbg !52
  %26 = load i32, i32* %5, align 4, !dbg !53
  %27 = icmp sgt i32 %25, %26, !dbg !54
  br i1 %27, label %28, label %43, !dbg !55

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %3, align 4, !dbg !56
  %30 = load i32, i32* %5, align 4, !dbg !57
  %31 = add nsw i32 %29, %30, !dbg !58
  %32 = load i32, i32* %4, align 4, !dbg !59
  %33 = icmp sgt i32 %31, %32, !dbg !60
  br i1 %33, label %34, label %43, !dbg !61

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %4, align 4, !dbg !62
  %36 = load i32, i32* %5, align 4, !dbg !63
  %37 = add nsw i32 %35, %36, !dbg !64
  %38 = load i32, i32* %3, align 4, !dbg !65
  %39 = icmp sgt i32 %37, %38, !dbg !66
  br i1 %39, label %40, label %43, !dbg !67

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %6, align 4, !dbg !68
  %42 = add nsw i32 %41, 1, !dbg !70
  store i32 %42, i32* %6, align 4, !dbg !71
  br label %43, !dbg !72

; <label>:43:                                     ; preds = %40, %34, %28, %22
  br label %44, !dbg !73

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %5, align 4, !dbg !74
  %46 = add nsw i32 %45, 1, !dbg !75
  store i32 %46, i32* %5, align 4, !dbg !76
  br label %18, !dbg !77, !llvm.loop !78

; <label>:47:                                     ; preds = %18
  br label %48, !dbg !80

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %4, align 4, !dbg !81
  %50 = add nsw i32 %49, 1, !dbg !82
  store i32 %50, i32* %4, align 4, !dbg !83
  br label %13, !dbg !84, !llvm.loop !85

; <label>:51:                                     ; preds = %13
  br label %52, !dbg !87

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %3, align 4, !dbg !88
  %54 = add nsw i32 %53, 1, !dbg !89
  store i32 %54, i32* %3, align 4, !dbg !90
  br label %8, !dbg !91, !llvm.loop !92

; <label>:55:                                     ; preds = %8
  %56 = load i32, i32* %6, align 4, !dbg !94
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %56), !dbg !95
  ret i32 0, !dbg !96
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
!1 = !DIFile(filename: "gcov/../WA_c/271977_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 11, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 7, column: 10, scope: !23)
!25 = !DILocation(line: 7, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 7, column: 18, scope: !26)
!28 = !DILocation(line: 7, column: 16, scope: !26)
!29 = !DILocation(line: 7, column: 5, scope: !23)
!30 = !DILocation(line: 9, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!33 = !DILocation(line: 9, column: 14, scope: !31)
!34 = !DILocation(line: 9, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 9, column: 9)
!36 = !DILocation(line: 9, column: 22, scope: !35)
!37 = !DILocation(line: 9, column: 20, scope: !35)
!38 = !DILocation(line: 9, column: 9, scope: !31)
!39 = !DILocation(line: 11, column: 19, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 13)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 9)
!42 = !DILocation(line: 11, column: 18, scope: !40)
!43 = !DILocation(line: 11, column: 23, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 11, column: 13)
!45 = !DILocation(line: 11, column: 26, scope: !44)
!46 = !DILocation(line: 11, column: 24, scope: !44)
!47 = !DILocation(line: 11, column: 13, scope: !40)
!48 = !DILocation(line: 13, column: 21, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 13, column: 21)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 13)
!51 = !DILocation(line: 13, column: 23, scope: !49)
!52 = !DILocation(line: 13, column: 22, scope: !49)
!53 = !DILocation(line: 13, column: 25, scope: !49)
!54 = !DILocation(line: 13, column: 24, scope: !49)
!55 = !DILocation(line: 13, column: 26, scope: !49)
!56 = !DILocation(line: 13, column: 28, scope: !49)
!57 = !DILocation(line: 13, column: 30, scope: !49)
!58 = !DILocation(line: 13, column: 29, scope: !49)
!59 = !DILocation(line: 13, column: 32, scope: !49)
!60 = !DILocation(line: 13, column: 31, scope: !49)
!61 = !DILocation(line: 13, column: 33, scope: !49)
!62 = !DILocation(line: 13, column: 35, scope: !49)
!63 = !DILocation(line: 13, column: 37, scope: !49)
!64 = !DILocation(line: 13, column: 36, scope: !49)
!65 = !DILocation(line: 13, column: 39, scope: !49)
!66 = !DILocation(line: 13, column: 38, scope: !49)
!67 = !DILocation(line: 13, column: 21, scope: !50)
!68 = !DILocation(line: 15, column: 23, scope: !69)
!69 = distinct !DILexicalBlock(scope: !49, file: !1, line: 14, column: 17)
!70 = !DILocation(line: 15, column: 24, scope: !69)
!71 = !DILocation(line: 15, column: 22, scope: !69)
!72 = !DILocation(line: 17, column: 17, scope: !69)
!73 = !DILocation(line: 20, column: 13, scope: !50)
!74 = !DILocation(line: 11, column: 31, scope: !44)
!75 = !DILocation(line: 11, column: 32, scope: !44)
!76 = !DILocation(line: 11, column: 30, scope: !44)
!77 = !DILocation(line: 11, column: 13, scope: !44)
!78 = distinct !{!78, !47, !79}
!79 = !DILocation(line: 20, column: 13, scope: !40)
!80 = !DILocation(line: 22, column: 9, scope: !41)
!81 = !DILocation(line: 9, column: 27, scope: !35)
!82 = !DILocation(line: 9, column: 28, scope: !35)
!83 = !DILocation(line: 9, column: 26, scope: !35)
!84 = !DILocation(line: 9, column: 9, scope: !35)
!85 = distinct !{!85, !38, !86}
!86 = !DILocation(line: 22, column: 9, scope: !31)
!87 = !DILocation(line: 26, column: 5, scope: !32)
!88 = !DILocation(line: 7, column: 23, scope: !26)
!89 = !DILocation(line: 7, column: 24, scope: !26)
!90 = !DILocation(line: 7, column: 22, scope: !26)
!91 = !DILocation(line: 7, column: 5, scope: !26)
!92 = distinct !{!92, !29, !93}
!93 = !DILocation(line: 26, column: 5, scope: !23)
!94 = !DILocation(line: 27, column: 49, scope: !7)
!95 = !DILocation(line: 27, column: 5, scope: !7)
!96 = !DILocation(line: 28, column: 5, scope: !7)
