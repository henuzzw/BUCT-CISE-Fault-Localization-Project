; ModuleID = 'gcov/../WA_c/271993_buggy.c'
source_filename = "gcov/../WA_c/271993_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Number of possible triangle is %d\00", align 1

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

; <label>:8:                                      ; preds = %54, %0
  %9 = load i32, i32* %3, align 4, !dbg !25
  %10 = load i32, i32* %2, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %57, !dbg !29

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %3, align 4, !dbg !30
  store i32 %13, i32* %4, align 4, !dbg !33
  br label %14, !dbg !34

; <label>:14:                                     ; preds = %50, %12
  %15 = load i32, i32* %4, align 4, !dbg !35
  %16 = load i32, i32* %2, align 4, !dbg !37
  %17 = icmp sle i32 %15, %16, !dbg !38
  br i1 %17, label %18, label %53, !dbg !39

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !40
  store i32 %19, i32* %5, align 4, !dbg !43
  br label %20, !dbg !44

; <label>:20:                                     ; preds = %46, %18
  %21 = load i32, i32* %5, align 4, !dbg !45
  %22 = load i32, i32* %2, align 4, !dbg !47
  %23 = icmp sle i32 %21, %22, !dbg !48
  br i1 %23, label %24, label %49, !dbg !49

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %3, align 4, !dbg !50
  %26 = load i32, i32* %4, align 4, !dbg !53
  %27 = add nsw i32 %25, %26, !dbg !54
  %28 = load i32, i32* %5, align 4, !dbg !55
  %29 = icmp sgt i32 %27, %28, !dbg !56
  br i1 %29, label %30, label %45, !dbg !57

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %3, align 4, !dbg !58
  %32 = load i32, i32* %5, align 4, !dbg !59
  %33 = add nsw i32 %31, %32, !dbg !60
  %34 = load i32, i32* %4, align 4, !dbg !61
  %35 = icmp sgt i32 %33, %34, !dbg !62
  br i1 %35, label %36, label %45, !dbg !63

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %4, align 4, !dbg !64
  %38 = load i32, i32* %5, align 4, !dbg !65
  %39 = add nsw i32 %37, %38, !dbg !66
  %40 = load i32, i32* %3, align 4, !dbg !67
  %41 = icmp sgt i32 %39, %40, !dbg !68
  br i1 %41, label %42, label %45, !dbg !69

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %6, align 4, !dbg !70
  %44 = add nsw i32 %43, 1, !dbg !70
  store i32 %44, i32* %6, align 4, !dbg !70
  br label %45, !dbg !72

; <label>:45:                                     ; preds = %42, %36, %30, %24
  br label %46, !dbg !73

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %5, align 4, !dbg !74
  %48 = add nsw i32 %47, 1, !dbg !74
  store i32 %48, i32* %5, align 4, !dbg !74
  br label %20, !dbg !75, !llvm.loop !76

; <label>:49:                                     ; preds = %20
  br label %50, !dbg !78

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %4, align 4, !dbg !79
  %52 = add nsw i32 %51, 1, !dbg !79
  store i32 %52, i32* %4, align 4, !dbg !79
  br label %14, !dbg !80, !llvm.loop !81

; <label>:53:                                     ; preds = %14
  br label %54, !dbg !83

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %3, align 4, !dbg !84
  %56 = add nsw i32 %55, 1, !dbg !84
  store i32 %56, i32* %3, align 4, !dbg !84
  br label %8, !dbg !85, !llvm.loop !86

; <label>:57:                                     ; preds = %8
  %58 = load i32, i32* %6, align 4, !dbg !88
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %58), !dbg !89
  ret i32 0, !dbg !90
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
!1 = !DIFile(filename: "gcov/../WA_c/271993_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
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
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !10)
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
!30 = !DILocation(line: 9, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!33 = !DILocation(line: 9, column: 14, scope: !31)
!34 = !DILocation(line: 9, column: 13, scope: !31)
!35 = !DILocation(line: 9, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 9, column: 9)
!37 = !DILocation(line: 9, column: 21, scope: !36)
!38 = !DILocation(line: 9, column: 19, scope: !36)
!39 = !DILocation(line: 9, column: 9, scope: !31)
!40 = !DILocation(line: 11, column: 19, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 11, column: 13)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 10, column: 9)
!43 = !DILocation(line: 11, column: 18, scope: !41)
!44 = !DILocation(line: 11, column: 17, scope: !41)
!45 = !DILocation(line: 11, column: 22, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 13)
!47 = !DILocation(line: 11, column: 25, scope: !46)
!48 = !DILocation(line: 11, column: 23, scope: !46)
!49 = !DILocation(line: 11, column: 13, scope: !41)
!50 = !DILocation(line: 13, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 13, column: 20)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 12, column: 13)
!53 = !DILocation(line: 13, column: 23, scope: !51)
!54 = !DILocation(line: 13, column: 22, scope: !51)
!55 = !DILocation(line: 13, column: 26, scope: !51)
!56 = !DILocation(line: 13, column: 25, scope: !51)
!57 = !DILocation(line: 13, column: 27, scope: !51)
!58 = !DILocation(line: 13, column: 30, scope: !51)
!59 = !DILocation(line: 13, column: 32, scope: !51)
!60 = !DILocation(line: 13, column: 31, scope: !51)
!61 = !DILocation(line: 13, column: 35, scope: !51)
!62 = !DILocation(line: 13, column: 34, scope: !51)
!63 = !DILocation(line: 13, column: 36, scope: !51)
!64 = !DILocation(line: 13, column: 39, scope: !51)
!65 = !DILocation(line: 13, column: 41, scope: !51)
!66 = !DILocation(line: 13, column: 40, scope: !51)
!67 = !DILocation(line: 13, column: 44, scope: !51)
!68 = !DILocation(line: 13, column: 43, scope: !51)
!69 = !DILocation(line: 13, column: 20, scope: !52)
!70 = !DILocation(line: 15, column: 22, scope: !71)
!71 = distinct !DILexicalBlock(scope: !51, file: !1, line: 14, column: 17)
!72 = !DILocation(line: 16, column: 17, scope: !71)
!73 = !DILocation(line: 17, column: 13, scope: !52)
!74 = !DILocation(line: 11, column: 29, scope: !46)
!75 = !DILocation(line: 11, column: 13, scope: !46)
!76 = distinct !{!76, !49, !77}
!77 = !DILocation(line: 17, column: 13, scope: !41)
!78 = !DILocation(line: 18, column: 9, scope: !42)
!79 = !DILocation(line: 9, column: 25, scope: !36)
!80 = !DILocation(line: 9, column: 9, scope: !36)
!81 = distinct !{!81, !39, !82}
!82 = !DILocation(line: 18, column: 9, scope: !31)
!83 = !DILocation(line: 19, column: 5, scope: !32)
!84 = !DILocation(line: 7, column: 21, scope: !26)
!85 = !DILocation(line: 7, column: 5, scope: !26)
!86 = distinct !{!86, !29, !87}
!87 = !DILocation(line: 19, column: 5, scope: !23)
!88 = !DILocation(line: 20, column: 48, scope: !7)
!89 = !DILocation(line: 20, column: 5, scope: !7)
!90 = !DILocation(line: 21, column: 5, scope: !7)
