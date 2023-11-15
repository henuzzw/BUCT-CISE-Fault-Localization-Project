; ModuleID = 'gcov/../WA_c/278451_buggy.c'
source_filename = "gcov/../WA_c/278451_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

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

; <label>:8:                                      ; preds = %50, %0
  %9 = load i32, i32* %5, align 4, !dbg !25
  %10 = load i32, i32* %4, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %53, !dbg !29

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %6, align 4, !dbg !30
  br label %13, !dbg !33

; <label>:13:                                     ; preds = %46, %12
  %14 = load i32, i32* %6, align 4, !dbg !34
  %15 = load i32, i32* %3, align 4, !dbg !36
  %16 = icmp sle i32 %14, %15, !dbg !37
  br i1 %16, label %17, label %49, !dbg !38

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4, !dbg !39
  %19 = icmp eq i32 %18, 1, !dbg !42
  br i1 %19, label %20, label %23, !dbg !43

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %2, align 4, !dbg !44
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %21), !dbg !46
  br label %23, !dbg !47

; <label>:23:                                     ; preds = %20, %17
  %24 = load i32, i32* %5, align 4, !dbg !48
  %25 = load i32, i32* %4, align 4, !dbg !50
  %26 = icmp eq i32 %24, %25, !dbg !51
  br i1 %26, label %27, label %30, !dbg !52

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %2, align 4, !dbg !53
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %28), !dbg !55
  br label %30, !dbg !56

; <label>:30:                                     ; preds = %27, %23
  %31 = load i32, i32* %6, align 4, !dbg !57
  %32 = icmp eq i32 %31, 1, !dbg !59
  br i1 %32, label %33, label %36, !dbg !60

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %2, align 4, !dbg !61
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %34), !dbg !63
  br label %36, !dbg !64

; <label>:36:                                     ; preds = %33, %30
  %37 = load i32, i32* %6, align 4, !dbg !65
  %38 = load i32, i32* %3, align 4, !dbg !67
  %39 = icmp eq i32 %37, %38, !dbg !68
  br i1 %39, label %40, label %43, !dbg !69

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %2, align 4, !dbg !70
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %41), !dbg !72
  br label %45, !dbg !73

; <label>:43:                                     ; preds = %36
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !74
  br label %45

; <label>:45:                                     ; preds = %43, %40
  br label %46, !dbg !76

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %6, align 4, !dbg !77
  %48 = add nsw i32 %47, 1, !dbg !77
  store i32 %48, i32* %6, align 4, !dbg !77
  br label %13, !dbg !78, !llvm.loop !79

; <label>:49:                                     ; preds = %13
  br label %50, !dbg !81

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %5, align 4, !dbg !82
  %52 = add nsw i32 %51, 1, !dbg !82
  store i32 %52, i32* %5, align 4, !dbg !82
  br label %8, !dbg !83, !llvm.loop !84

; <label>:53:                                     ; preds = %8
  ret i32 0, !dbg !86
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
!1 = !DIFile(filename: "gcov/../WA_c/278451_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
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
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 10, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 7, column: 9, scope: !23)
!25 = !DILocation(line: 7, column: 14, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 7, column: 17, scope: !26)
!28 = !DILocation(line: 7, column: 15, scope: !26)
!29 = !DILocation(line: 7, column: 5, scope: !23)
!30 = !DILocation(line: 9, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!33 = !DILocation(line: 9, column: 13, scope: !31)
!34 = !DILocation(line: 9, column: 18, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 9, column: 9)
!36 = !DILocation(line: 9, column: 21, scope: !35)
!37 = !DILocation(line: 9, column: 19, scope: !35)
!38 = !DILocation(line: 9, column: 9, scope: !31)
!39 = !DILocation(line: 11, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 16)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 9)
!42 = !DILocation(line: 11, column: 17, scope: !40)
!43 = !DILocation(line: 11, column: 16, scope: !41)
!44 = !DILocation(line: 13, column: 29, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 12, column: 13)
!46 = !DILocation(line: 13, column: 17, scope: !45)
!47 = !DILocation(line: 14, column: 13, scope: !45)
!48 = !DILocation(line: 15, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !41, file: !1, line: 15, column: 16)
!50 = !DILocation(line: 15, column: 19, scope: !49)
!51 = !DILocation(line: 15, column: 17, scope: !49)
!52 = !DILocation(line: 15, column: 16, scope: !41)
!53 = !DILocation(line: 17, column: 29, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 16, column: 13)
!55 = !DILocation(line: 17, column: 17, scope: !54)
!56 = !DILocation(line: 18, column: 13, scope: !54)
!57 = !DILocation(line: 19, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !41, file: !1, line: 19, column: 16)
!59 = !DILocation(line: 19, column: 17, scope: !58)
!60 = !DILocation(line: 19, column: 16, scope: !41)
!61 = !DILocation(line: 21, column: 29, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 20, column: 13)
!63 = !DILocation(line: 21, column: 17, scope: !62)
!64 = !DILocation(line: 22, column: 13, scope: !62)
!65 = !DILocation(line: 23, column: 16, scope: !66)
!66 = distinct !DILexicalBlock(scope: !41, file: !1, line: 23, column: 16)
!67 = !DILocation(line: 23, column: 19, scope: !66)
!68 = !DILocation(line: 23, column: 17, scope: !66)
!69 = !DILocation(line: 23, column: 16, scope: !41)
!70 = !DILocation(line: 25, column: 29, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 24, column: 13)
!72 = !DILocation(line: 25, column: 17, scope: !71)
!73 = !DILocation(line: 26, column: 13, scope: !71)
!74 = !DILocation(line: 29, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !66, file: !1, line: 28, column: 13)
!76 = !DILocation(line: 31, column: 9, scope: !41)
!77 = !DILocation(line: 9, column: 25, scope: !35)
!78 = !DILocation(line: 9, column: 9, scope: !35)
!79 = distinct !{!79, !38, !80}
!80 = !DILocation(line: 31, column: 9, scope: !31)
!81 = !DILocation(line: 33, column: 5, scope: !32)
!82 = !DILocation(line: 7, column: 21, scope: !26)
!83 = !DILocation(line: 7, column: 5, scope: !26)
!84 = distinct !{!84, !29, !85}
!85 = !DILocation(line: 33, column: 5, scope: !23)
!86 = !DILocation(line: 35, column: 5, scope: !7)
