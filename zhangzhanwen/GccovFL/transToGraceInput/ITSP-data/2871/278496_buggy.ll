; ModuleID = 'gcov/../WA_c/278496_buggy.c'
source_filename = "gcov/../WA_c/278496_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 1, i32* %5, align 4, !dbg !22
  store i32 1, i32* %5, align 4, !dbg !23
  br label %8, !dbg !25

; <label>:8:                                      ; preds = %48, %0
  %9 = load i32, i32* %5, align 4, !dbg !26
  %10 = load i32, i32* %4, align 4, !dbg !28
  %11 = icmp sle i32 %9, %10, !dbg !29
  br i1 %11, label %12, label %51, !dbg !30

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4, !dbg !31
  %14 = icmp eq i32 %13, 1, !dbg !34
  br i1 %14, label %19, label %15, !dbg !35

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4, !dbg !36
  %17 = load i32, i32* %4, align 4, !dbg !37
  %18 = icmp eq i32 %16, %17, !dbg !38
  br i1 %18, label %19, label %31, !dbg !39

; <label>:19:                                     ; preds = %15, %12
  store i32 1, i32* %6, align 4, !dbg !40
  br label %20, !dbg !43

; <label>:20:                                     ; preds = %25, %19
  %21 = load i32, i32* %6, align 4, !dbg !44
  %22 = load i32, i32* %3, align 4, !dbg !46
  %23 = icmp sle i32 %21, %22, !dbg !47
  br i1 %23, label %24, label %28, !dbg !48

; <label>:24:                                     ; preds = %20
  br label %25, !dbg !48

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %6, align 4, !dbg !49
  %27 = add nsw i32 %26, 1, !dbg !49
  store i32 %27, i32* %6, align 4, !dbg !49
  br label %20, !dbg !50, !llvm.loop !51

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %2, align 4, !dbg !53
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %29), !dbg !54
  br label %46, !dbg !55

; <label>:31:                                     ; preds = %15
  %32 = load i32, i32* %2, align 4, !dbg !56
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %32), !dbg !58
  store i32 2, i32* %6, align 4, !dbg !59
  br label %34, !dbg !61

; <label>:34:                                     ; preds = %39, %31
  %35 = load i32, i32* %6, align 4, !dbg !62
  %36 = load i32, i32* %3, align 4, !dbg !64
  %37 = icmp slt i32 %35, %36, !dbg !65
  br i1 %37, label %38, label %42, !dbg !66

; <label>:38:                                     ; preds = %34
  br label %39, !dbg !66

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %6, align 4, !dbg !67
  %41 = add nsw i32 %40, 1, !dbg !67
  store i32 %41, i32* %6, align 4, !dbg !67
  br label %34, !dbg !68, !llvm.loop !69

; <label>:42:                                     ; preds = %34
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !71
  %44 = load i32, i32* %2, align 4, !dbg !72
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %44), !dbg !73
  br label %46

; <label>:46:                                     ; preds = %42, %28
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !74
  br label %48, !dbg !75

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* %5, align 4, !dbg !76
  %50 = add nsw i32 %49, 1, !dbg !76
  store i32 %50, i32* %5, align 4, !dbg !76
  br label %8, !dbg !77, !llvm.loop !78

; <label>:51:                                     ; preds = %8
  ret i32 0, !dbg !80
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
!1 = !DIFile(filename: "gcov/../WA_c/278496_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
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
!13 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 7, type: !10)
!19 = !DILocation(line: 7, column: 9, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 7, type: !10)
!21 = !DILocation(line: 7, column: 11, scope: !7)
!22 = !DILocation(line: 8, column: 6, scope: !7)
!23 = !DILocation(line: 9, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 5)
!25 = !DILocation(line: 9, column: 9, scope: !24)
!26 = !DILocation(line: 9, column: 14, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 5)
!28 = !DILocation(line: 9, column: 17, scope: !27)
!29 = !DILocation(line: 9, column: 15, scope: !27)
!30 = !DILocation(line: 9, column: 5, scope: !24)
!31 = !DILocation(line: 11, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 12)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 5)
!34 = !DILocation(line: 11, column: 13, scope: !32)
!35 = !DILocation(line: 11, column: 16, scope: !32)
!36 = !DILocation(line: 11, column: 18, scope: !32)
!37 = !DILocation(line: 11, column: 21, scope: !32)
!38 = !DILocation(line: 11, column: 19, scope: !32)
!39 = !DILocation(line: 11, column: 12, scope: !33)
!40 = !DILocation(line: 13, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 13)
!42 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 9)
!43 = !DILocation(line: 13, column: 17, scope: !41)
!44 = !DILocation(line: 13, column: 22, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 13)
!46 = !DILocation(line: 13, column: 25, scope: !45)
!47 = !DILocation(line: 13, column: 23, scope: !45)
!48 = !DILocation(line: 13, column: 13, scope: !41)
!49 = !DILocation(line: 13, column: 29, scope: !45)
!50 = !DILocation(line: 13, column: 13, scope: !45)
!51 = distinct !{!51, !48, !52}
!52 = !DILocation(line: 13, column: 32, scope: !41)
!53 = !DILocation(line: 14, column: 25, scope: !42)
!54 = !DILocation(line: 14, column: 13, scope: !42)
!55 = !DILocation(line: 15, column: 9, scope: !42)
!56 = !DILocation(line: 18, column: 25, scope: !57)
!57 = distinct !DILexicalBlock(scope: !32, file: !1, line: 17, column: 9)
!58 = !DILocation(line: 18, column: 13, scope: !57)
!59 = !DILocation(line: 19, column: 18, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 19, column: 13)
!61 = !DILocation(line: 19, column: 17, scope: !60)
!62 = !DILocation(line: 19, column: 22, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 19, column: 13)
!64 = !DILocation(line: 19, column: 24, scope: !63)
!65 = !DILocation(line: 19, column: 23, scope: !63)
!66 = !DILocation(line: 19, column: 13, scope: !60)
!67 = !DILocation(line: 19, column: 28, scope: !63)
!68 = !DILocation(line: 19, column: 13, scope: !63)
!69 = distinct !{!69, !66, !70}
!70 = !DILocation(line: 19, column: 31, scope: !60)
!71 = !DILocation(line: 20, column: 13, scope: !57)
!72 = !DILocation(line: 21, column: 25, scope: !57)
!73 = !DILocation(line: 21, column: 13, scope: !57)
!74 = !DILocation(line: 23, column: 9, scope: !33)
!75 = !DILocation(line: 24, column: 5, scope: !33)
!76 = !DILocation(line: 9, column: 21, scope: !27)
!77 = !DILocation(line: 9, column: 5, scope: !27)
!78 = distinct !{!78, !30, !79}
!79 = !DILocation(line: 24, column: 5, scope: !24)
!80 = !DILocation(line: 25, column: 5, scope: !7)
