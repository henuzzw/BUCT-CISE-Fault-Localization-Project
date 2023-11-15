; ModuleID = 'gcov/../WA_c/271922_buggy.c'
source_filename = "gcov/../WA_c/271922_buggy.c"
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
  store i32 0, i32* %3, align 4, !dbg !14
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 1, i32* %4, align 4, !dbg !18
  br label %8, !dbg !19

; <label>:8:                                      ; preds = %41, %0
  %9 = load i32, i32* %4, align 4, !dbg !20
  %10 = load i32, i32* %2, align 4, !dbg !22
  %11 = icmp sle i32 %9, %10, !dbg !23
  br i1 %11, label %12, label %44, !dbg !24

; <label>:12:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !28
  store i32 1, i32* %5, align 4, !dbg !28
  br label %13, !dbg !29

; <label>:13:                                     ; preds = %37, %12
  %14 = load i32, i32* %5, align 4, !dbg !30
  %15 = load i32, i32* %4, align 4, !dbg !32
  %16 = icmp sle i32 %14, %15, !dbg !33
  br i1 %16, label %17, label %40, !dbg !34

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %6, metadata !35, metadata !DIExpression()), !dbg !38
  store i32 1, i32* %6, align 4, !dbg !38
  br label %18, !dbg !39

; <label>:18:                                     ; preds = %33, %17
  %19 = load i32, i32* %6, align 4, !dbg !40
  %20 = load i32, i32* %5, align 4, !dbg !42
  %21 = icmp sle i32 %19, %20, !dbg !43
  br i1 %21, label %22, label %36, !dbg !44

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4, !dbg !45
  %24 = load i32, i32* %6, align 4, !dbg !48
  %25 = add nsw i32 %23, %24, !dbg !49
  %26 = load i32, i32* %4, align 4, !dbg !50
  %27 = icmp sgt i32 %25, %26, !dbg !51
  br i1 %27, label %28, label %31, !dbg !52

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %3, align 4, !dbg !53
  %30 = add nsw i32 %29, 1, !dbg !55
  store i32 %30, i32* %3, align 4, !dbg !56
  br label %32, !dbg !57

; <label>:31:                                     ; preds = %22
  br label %36, !dbg !58

; <label>:32:                                     ; preds = %28
  br label %33, !dbg !60

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %6, align 4, !dbg !61
  %35 = add nsw i32 %34, 1, !dbg !61
  store i32 %35, i32* %6, align 4, !dbg !61
  br label %18, !dbg !62, !llvm.loop !63

; <label>:36:                                     ; preds = %31, %18
  br label %37, !dbg !65

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %5, align 4, !dbg !66
  %39 = add nsw i32 %38, 1, !dbg !66
  store i32 %39, i32* %5, align 4, !dbg !66
  br label %13, !dbg !67, !llvm.loop !68

; <label>:40:                                     ; preds = %13
  br label %41, !dbg !70

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %4, align 4, !dbg !71
  %43 = add nsw i32 %42, 1, !dbg !71
  store i32 %43, i32* %4, align 4, !dbg !71
  br label %8, !dbg !72, !llvm.loop !73

; <label>:44:                                     ; preds = %8
  %45 = load i32, i32* %3, align 4, !dbg !75
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %45), !dbg !76
  ret i32 0, !dbg !77
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
!1 = !DIFile(filename: "gcov/../WA_c/271922_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
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
!13 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocation(line: 7, column: 5, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 8, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!18 = !DILocation(line: 8, column: 13, scope: !17)
!19 = !DILocation(line: 8, column: 9, scope: !17)
!20 = !DILocation(line: 8, column: 18, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 8, column: 5)
!22 = !DILocation(line: 8, column: 21, scope: !21)
!23 = !DILocation(line: 8, column: 19, scope: !21)
!24 = !DILocation(line: 8, column: 5, scope: !17)
!25 = !DILocalVariable(name: "j", scope: !26, file: !1, line: 10, type: !10)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 9)
!27 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 5)
!28 = !DILocation(line: 10, column: 17, scope: !26)
!29 = !DILocation(line: 10, column: 13, scope: !26)
!30 = !DILocation(line: 10, column: 22, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 9)
!32 = !DILocation(line: 10, column: 25, scope: !31)
!33 = !DILocation(line: 10, column: 23, scope: !31)
!34 = !DILocation(line: 10, column: 9, scope: !26)
!35 = !DILocalVariable(name: "k", scope: !36, file: !1, line: 12, type: !10)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 12, column: 13)
!37 = distinct !DILexicalBlock(scope: !31, file: !1, line: 11, column: 9)
!38 = !DILocation(line: 12, column: 21, scope: !36)
!39 = !DILocation(line: 12, column: 17, scope: !36)
!40 = !DILocation(line: 12, column: 26, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 13)
!42 = !DILocation(line: 12, column: 29, scope: !41)
!43 = !DILocation(line: 12, column: 27, scope: !41)
!44 = !DILocation(line: 12, column: 13, scope: !36)
!45 = !DILocation(line: 14, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 20)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 13)
!48 = !DILocation(line: 14, column: 23, scope: !46)
!49 = !DILocation(line: 14, column: 22, scope: !46)
!50 = !DILocation(line: 14, column: 26, scope: !46)
!51 = !DILocation(line: 14, column: 25, scope: !46)
!52 = !DILocation(line: 14, column: 20, scope: !47)
!53 = !DILocation(line: 16, column: 27, scope: !54)
!54 = distinct !DILexicalBlock(scope: !46, file: !1, line: 15, column: 17)
!55 = !DILocation(line: 16, column: 32, scope: !54)
!56 = !DILocation(line: 16, column: 26, scope: !54)
!57 = !DILocation(line: 17, column: 17, scope: !54)
!58 = !DILocation(line: 20, column: 21, scope: !59)
!59 = distinct !DILexicalBlock(scope: !46, file: !1, line: 19, column: 17)
!60 = !DILocation(line: 22, column: 13, scope: !47)
!61 = !DILocation(line: 12, column: 33, scope: !41)
!62 = !DILocation(line: 12, column: 13, scope: !41)
!63 = distinct !{!63, !44, !64}
!64 = !DILocation(line: 22, column: 13, scope: !36)
!65 = !DILocation(line: 23, column: 9, scope: !37)
!66 = !DILocation(line: 10, column: 29, scope: !31)
!67 = !DILocation(line: 10, column: 9, scope: !31)
!68 = distinct !{!68, !34, !69}
!69 = !DILocation(line: 23, column: 9, scope: !26)
!70 = !DILocation(line: 24, column: 5, scope: !27)
!71 = !DILocation(line: 8, column: 25, scope: !21)
!72 = !DILocation(line: 8, column: 5, scope: !21)
!73 = distinct !{!73, !24, !74}
!74 = !DILocation(line: 24, column: 5, scope: !17)
!75 = !DILocation(line: 25, column: 49, scope: !7)
!76 = !DILocation(line: 25, column: 5, scope: !7)
!77 = !DILocation(line: 26, column: 5, scope: !7)
