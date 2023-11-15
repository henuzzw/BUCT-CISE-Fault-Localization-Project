; ModuleID = 'gcov/../WA_c/278419_buggy.c'
source_filename = "gcov/../WA_c/278419_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  %8 = load i32, i32* %2, align 4, !dbg !22
  %9 = icmp eq i32 %8, 1, !dbg !24
  br i1 %9, label %10, label %12, !dbg !25

; <label>:10:                                     ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 1), !dbg !26
  br label %65, !dbg !28

; <label>:12:                                     ; preds = %0
  store i32 1, i32* %5, align 4, !dbg !29
  br label %13, !dbg !32

; <label>:13:                                     ; preds = %61, %12
  %14 = load i32, i32* %5, align 4, !dbg !33
  %15 = load i32, i32* %4, align 4, !dbg !35
  %16 = icmp sle i32 %14, %15, !dbg !36
  br i1 %16, label %17, label %64, !dbg !37

; <label>:17:                                     ; preds = %13
  store i32 1, i32* %6, align 4, !dbg !38
  br label %18, !dbg !41

; <label>:18:                                     ; preds = %56, %17
  %19 = load i32, i32* %6, align 4, !dbg !42
  %20 = load i32, i32* %3, align 4, !dbg !44
  %21 = icmp sle i32 %19, %20, !dbg !45
  br i1 %21, label %22, label %59, !dbg !46

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4, !dbg !47
  %24 = icmp eq i32 %23, 1, !dbg !50
  br i1 %24, label %25, label %28, !dbg !51

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %2, align 4, !dbg !52
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %26), !dbg !54
  br label %28, !dbg !55

; <label>:28:                                     ; preds = %25, %22
  %29 = load i32, i32* %5, align 4, !dbg !56
  %30 = icmp sgt i32 %29, 1, !dbg !58
  br i1 %30, label %31, label %48, !dbg !59

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %5, align 4, !dbg !60
  %33 = load i32, i32* %4, align 4, !dbg !61
  %34 = icmp slt i32 %32, %33, !dbg !62
  br i1 %34, label %35, label %48, !dbg !63

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %6, align 4, !dbg !64
  %37 = icmp eq i32 %36, 1, !dbg !67
  br i1 %37, label %42, label %38, !dbg !68

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %6, align 4, !dbg !69
  %40 = load i32, i32* %3, align 4, !dbg !70
  %41 = icmp eq i32 %39, %40, !dbg !71
  br i1 %41, label %42, label %45, !dbg !72

; <label>:42:                                     ; preds = %38, %35
  %43 = load i32, i32* %2, align 4, !dbg !73
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %43), !dbg !75
  br label %47, !dbg !76

; <label>:45:                                     ; preds = %38
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !77
  br label %47

; <label>:47:                                     ; preds = %45, %42
  br label %48, !dbg !79

; <label>:48:                                     ; preds = %47, %31, %28
  %49 = load i32, i32* %5, align 4, !dbg !80
  %50 = load i32, i32* %4, align 4, !dbg !82
  %51 = icmp eq i32 %49, %50, !dbg !83
  br i1 %51, label %52, label %55, !dbg !84

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %2, align 4, !dbg !85
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %53), !dbg !87
  br label %55, !dbg !88

; <label>:55:                                     ; preds = %52, %48
  br label %56, !dbg !89

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %6, align 4, !dbg !90
  %58 = add nsw i32 %57, 1, !dbg !90
  store i32 %58, i32* %6, align 4, !dbg !90
  br label %18, !dbg !91, !llvm.loop !92

; <label>:59:                                     ; preds = %18
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !94
  br label %61, !dbg !95

; <label>:61:                                     ; preds = %59
  %62 = load i32, i32* %5, align 4, !dbg !96
  %63 = add nsw i32 %62, 1, !dbg !96
  store i32 %63, i32* %5, align 4, !dbg !96
  br label %13, !dbg !97, !llvm.loop !98

; <label>:64:                                     ; preds = %13
  br label %65

; <label>:65:                                     ; preds = %64, %10
  ret i32 0, !dbg !100
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
!1 = !DIFile(filename: "gcov/../WA_c/278419_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
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
!22 = !DILocation(line: 8, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 9)
!24 = !DILocation(line: 8, column: 10, scope: !23)
!25 = !DILocation(line: 8, column: 9, scope: !7)
!26 = !DILocation(line: 10, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 5)
!28 = !DILocation(line: 11, column: 5, scope: !27)
!29 = !DILocation(line: 14, column: 15, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 14, column: 9)
!31 = distinct !DILexicalBlock(scope: !23, file: !1, line: 13, column: 5)
!32 = !DILocation(line: 14, column: 14, scope: !30)
!33 = !DILocation(line: 14, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 14, column: 9)
!35 = !DILocation(line: 14, column: 22, scope: !34)
!36 = !DILocation(line: 14, column: 20, scope: !34)
!37 = !DILocation(line: 14, column: 9, scope: !30)
!38 = !DILocation(line: 16, column: 19, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 16, column: 13)
!40 = distinct !DILexicalBlock(scope: !34, file: !1, line: 15, column: 9)
!41 = !DILocation(line: 16, column: 18, scope: !39)
!42 = !DILocation(line: 16, column: 23, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 16, column: 13)
!44 = !DILocation(line: 16, column: 26, scope: !43)
!45 = !DILocation(line: 16, column: 24, scope: !43)
!46 = !DILocation(line: 16, column: 13, scope: !39)
!47 = !DILocation(line: 18, column: 21, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 21)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 17, column: 13)
!50 = !DILocation(line: 18, column: 22, scope: !48)
!51 = !DILocation(line: 18, column: 21, scope: !49)
!52 = !DILocation(line: 20, column: 33, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 19, column: 17)
!54 = !DILocation(line: 20, column: 21, scope: !53)
!55 = !DILocation(line: 21, column: 17, scope: !53)
!56 = !DILocation(line: 22, column: 22, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 22, column: 21)
!58 = !DILocation(line: 22, column: 23, scope: !57)
!59 = !DILocation(line: 22, column: 26, scope: !57)
!60 = !DILocation(line: 22, column: 29, scope: !57)
!61 = !DILocation(line: 22, column: 31, scope: !57)
!62 = !DILocation(line: 22, column: 30, scope: !57)
!63 = !DILocation(line: 22, column: 21, scope: !49)
!64 = !DILocation(line: 24, column: 26, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 24, column: 25)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 23, column: 17)
!67 = !DILocation(line: 24, column: 27, scope: !65)
!68 = !DILocation(line: 24, column: 31, scope: !65)
!69 = !DILocation(line: 24, column: 34, scope: !65)
!70 = !DILocation(line: 24, column: 37, scope: !65)
!71 = !DILocation(line: 24, column: 35, scope: !65)
!72 = !DILocation(line: 24, column: 25, scope: !66)
!73 = !DILocation(line: 26, column: 37, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 25, column: 21)
!75 = !DILocation(line: 26, column: 25, scope: !74)
!76 = !DILocation(line: 27, column: 21, scope: !74)
!77 = !DILocation(line: 30, column: 25, scope: !78)
!78 = distinct !DILexicalBlock(scope: !65, file: !1, line: 29, column: 21)
!79 = !DILocation(line: 32, column: 17, scope: !66)
!80 = !DILocation(line: 34, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !49, file: !1, line: 34, column: 21)
!82 = !DILocation(line: 34, column: 24, scope: !81)
!83 = !DILocation(line: 34, column: 22, scope: !81)
!84 = !DILocation(line: 34, column: 21, scope: !49)
!85 = !DILocation(line: 36, column: 33, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 35, column: 17)
!87 = !DILocation(line: 36, column: 21, scope: !86)
!88 = !DILocation(line: 37, column: 17, scope: !86)
!89 = !DILocation(line: 38, column: 13, scope: !49)
!90 = !DILocation(line: 16, column: 30, scope: !43)
!91 = !DILocation(line: 16, column: 13, scope: !43)
!92 = distinct !{!92, !46, !93}
!93 = !DILocation(line: 38, column: 13, scope: !39)
!94 = !DILocation(line: 39, column: 13, scope: !40)
!95 = !DILocation(line: 40, column: 9, scope: !40)
!96 = !DILocation(line: 14, column: 26, scope: !34)
!97 = !DILocation(line: 14, column: 9, scope: !34)
!98 = distinct !{!98, !37, !99}
!99 = !DILocation(line: 40, column: 9, scope: !30)
!100 = !DILocation(line: 42, column: 5, scope: !7)
