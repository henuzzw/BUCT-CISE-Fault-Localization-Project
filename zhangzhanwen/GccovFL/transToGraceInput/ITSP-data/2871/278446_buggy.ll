; ModuleID = 'gcov/../WA_c/278446_buggy.c'
source_filename = "gcov/../WA_c/278446_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !21
  store i32 1, i32* %5, align 4, !dbg !22
  br label %8, !dbg !24

; <label>:8:                                      ; preds = %44, %0
  %9 = load i32, i32* %5, align 4, !dbg !25
  %10 = load i32, i32* %4, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %47, !dbg !29

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %6, align 4, !dbg !30
  br label %13, !dbg !33

; <label>:13:                                     ; preds = %39, %12
  %14 = load i32, i32* %6, align 4, !dbg !34
  %15 = load i32, i32* %3, align 4, !dbg !36
  %16 = icmp sle i32 %14, %15, !dbg !37
  br i1 %16, label %17, label %42, !dbg !38

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4, !dbg !39
  %19 = icmp eq i32 %18, 1, !dbg !42
  br i1 %19, label %24, label %20, !dbg !43

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %5, align 4, !dbg !44
  %22 = load i32, i32* %4, align 4, !dbg !45
  %23 = icmp eq i32 %21, %22, !dbg !46
  br i1 %23, label %24, label %27, !dbg !47

; <label>:24:                                     ; preds = %20, %17
  %25 = load i32, i32* %2, align 4, !dbg !48
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %25), !dbg !50
  br label %38, !dbg !51

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %6, align 4, !dbg !52
  %29 = icmp eq i32 %28, 1, !dbg !54
  br i1 %29, label %34, label %30, !dbg !55

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %6, align 4, !dbg !56
  %32 = load i32, i32* %3, align 4, !dbg !57
  %33 = icmp eq i32 %31, %32, !dbg !58
  br i1 %33, label %34, label %37, !dbg !59

; <label>:34:                                     ; preds = %30, %27
  %35 = load i32, i32* %2, align 4, !dbg !60
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %35), !dbg !62
  br label %37, !dbg !63

; <label>:37:                                     ; preds = %34, %30
  br label %38

; <label>:38:                                     ; preds = %37, %24
  br label %39, !dbg !64

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %6, align 4, !dbg !65
  %41 = add nsw i32 %40, 1, !dbg !65
  store i32 %41, i32* %6, align 4, !dbg !65
  br label %13, !dbg !66, !llvm.loop !67

; <label>:42:                                     ; preds = %13
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !69
  br label %44, !dbg !70

; <label>:44:                                     ; preds = %42
  %45 = load i32, i32* %5, align 4, !dbg !71
  %46 = add nsw i32 %45, 1, !dbg !71
  store i32 %46, i32* %5, align 4, !dbg !71
  br label %8, !dbg !72, !llvm.loop !73

; <label>:47:                                     ; preds = %8
  ret i32 0, !dbg !75
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
!1 = !DIFile(filename: "gcov/../WA_c/278446_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", scope: !7, file: !1, line: 13, type: !10)
!12 = !DILocation(line: 13, column: 9, scope: !7)
!13 = !DILocalVariable(name: "wid", scope: !7, file: !1, line: 13, type: !10)
!14 = !DILocation(line: 13, column: 13, scope: !7)
!15 = !DILocalVariable(name: "hig", scope: !7, file: !1, line: 13, type: !10)
!16 = !DILocation(line: 13, column: 17, scope: !7)
!17 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 13, type: !10)
!18 = !DILocation(line: 13, column: 21, scope: !7)
!19 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 13, type: !10)
!20 = !DILocation(line: 13, column: 23, scope: !7)
!21 = !DILocation(line: 17, column: 5, scope: !7)
!22 = !DILocation(line: 18, column: 10, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 5)
!24 = !DILocation(line: 18, column: 9, scope: !23)
!25 = !DILocation(line: 18, column: 14, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 18, column: 5)
!27 = !DILocation(line: 18, column: 17, scope: !26)
!28 = !DILocation(line: 18, column: 15, scope: !26)
!29 = !DILocation(line: 18, column: 5, scope: !23)
!30 = !DILocation(line: 20, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 20, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 19, column: 5)
!33 = !DILocation(line: 20, column: 13, scope: !31)
!34 = !DILocation(line: 20, column: 18, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 20, column: 9)
!36 = !DILocation(line: 20, column: 21, scope: !35)
!37 = !DILocation(line: 20, column: 19, scope: !35)
!38 = !DILocation(line: 20, column: 9, scope: !31)
!39 = !DILocation(line: 22, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 22, column: 16)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 21, column: 9)
!42 = !DILocation(line: 22, column: 17, scope: !40)
!43 = !DILocation(line: 22, column: 20, scope: !40)
!44 = !DILocation(line: 22, column: 22, scope: !40)
!45 = !DILocation(line: 22, column: 25, scope: !40)
!46 = !DILocation(line: 22, column: 23, scope: !40)
!47 = !DILocation(line: 22, column: 16, scope: !41)
!48 = !DILocation(line: 24, column: 29, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 23, column: 13)
!50 = !DILocation(line: 24, column: 17, scope: !49)
!51 = !DILocation(line: 25, column: 13, scope: !49)
!52 = !DILocation(line: 26, column: 21, scope: !53)
!53 = distinct !DILexicalBlock(scope: !40, file: !1, line: 26, column: 21)
!54 = !DILocation(line: 26, column: 22, scope: !53)
!55 = !DILocation(line: 26, column: 25, scope: !53)
!56 = !DILocation(line: 26, column: 27, scope: !53)
!57 = !DILocation(line: 26, column: 30, scope: !53)
!58 = !DILocation(line: 26, column: 28, scope: !53)
!59 = !DILocation(line: 26, column: 21, scope: !40)
!60 = !DILocation(line: 28, column: 29, scope: !61)
!61 = distinct !DILexicalBlock(scope: !53, file: !1, line: 27, column: 13)
!62 = !DILocation(line: 28, column: 17, scope: !61)
!63 = !DILocation(line: 29, column: 13, scope: !61)
!64 = !DILocation(line: 31, column: 9, scope: !41)
!65 = !DILocation(line: 20, column: 27, scope: !35)
!66 = !DILocation(line: 20, column: 9, scope: !35)
!67 = distinct !{!67, !38, !68}
!68 = !DILocation(line: 31, column: 9, scope: !31)
!69 = !DILocation(line: 32, column: 9, scope: !32)
!70 = !DILocation(line: 33, column: 5, scope: !32)
!71 = !DILocation(line: 18, column: 23, scope: !26)
!72 = !DILocation(line: 18, column: 5, scope: !26)
!73 = distinct !{!73, !29, !74}
!74 = !DILocation(line: 33, column: 5, scope: !23)
!75 = !DILocation(line: 34, column: 5, scope: !7)
