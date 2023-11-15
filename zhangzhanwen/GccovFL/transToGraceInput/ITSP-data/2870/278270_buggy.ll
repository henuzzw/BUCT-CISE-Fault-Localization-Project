; ModuleID = 'gcov/../WA_c/278270_buggy.c'
source_filename = "gcov/../WA_c/278270_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %5, align 4, !dbg !16
  store i32 1, i32* %4, align 4, !dbg !17
  br label %6, !dbg !19

; <label>:6:                                      ; preds = %19, %1
  %7 = load i32, i32* %4, align 4, !dbg !20
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = icmp sle i32 %7, %8, !dbg !23
  br i1 %9, label %10, label %22, !dbg !24

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !25
  %12 = load i32, i32* %4, align 4, !dbg !28
  %13 = srem i32 %11, %12, !dbg !29
  %14 = icmp eq i32 %13, 0, !dbg !30
  br i1 %14, label %15, label %18, !dbg !31

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4, !dbg !32
  %17 = add nsw i32 %16, 1, !dbg !32
  store i32 %17, i32* %5, align 4, !dbg !32
  br label %18, !dbg !34

; <label>:18:                                     ; preds = %15, %10
  br label %19, !dbg !35

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4, !dbg !36
  %21 = add nsw i32 %20, 1, !dbg !36
  store i32 %21, i32* %4, align 4, !dbg !36
  br label %6, !dbg !37, !llvm.loop !38

; <label>:22:                                     ; preds = %6
  %23 = load i32, i32* %5, align 4, !dbg !40
  %24 = icmp sgt i32 %23, 2, !dbg !42
  br i1 %24, label %25, label %26, !dbg !43

; <label>:25:                                     ; preds = %22
  store i32 1, i32* %2, align 4, !dbg !44
  br label %27, !dbg !44

; <label>:26:                                     ; preds = %22
  store i32 0, i32* %2, align 4, !dbg !46
  br label %27, !dbg !46

; <label>:27:                                     ; preds = %26, %25
  %28 = load i32, i32* %2, align 4, !dbg !48
  ret i32 %28, !dbg !48
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !49 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %3, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %5, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %5, align 4, !dbg !59
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !60
  %7 = load i32, i32* %2, align 4, !dbg !61
  %8 = call i32 @_Z11check_primei(i32 %7), !dbg !62
  store i32 %8, i32* %3, align 4, !dbg !63
  %9 = load i32, i32* %3, align 4, !dbg !64
  %10 = icmp eq i32 %9, 0, !dbg !66
  br i1 %10, label %11, label %14, !dbg !67

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !68
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %12), !dbg !70
  br label %35, !dbg !71

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %2, align 4, !dbg !72
  %16 = add nsw i32 %15, 1, !dbg !75
  store i32 %16, i32* %4, align 4, !dbg !76
  br label %17, !dbg !77

; <label>:17:                                     ; preds = %29, %14
  %18 = load i32, i32* %4, align 4, !dbg !78
  %19 = load i32, i32* %2, align 4, !dbg !80
  %20 = add nsw i32 %19, 20, !dbg !81
  %21 = icmp sle i32 %18, %20, !dbg !82
  br i1 %21, label %22, label %32, !dbg !83

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %4, align 4, !dbg !84
  %24 = call i32 @_Z11check_primei(i32 %23), !dbg !86
  store i32 %24, i32* %3, align 4, !dbg !87
  %25 = load i32, i32* %3, align 4, !dbg !88
  %26 = icmp eq i32 %25, 0, !dbg !90
  br i1 %26, label %27, label %28, !dbg !91

; <label>:27:                                     ; preds = %22
  br label %32, !dbg !92

; <label>:28:                                     ; preds = %22
  br label %29, !dbg !94

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %4, align 4, !dbg !95
  %31 = add nsw i32 %30, 1, !dbg !95
  store i32 %31, i32* %4, align 4, !dbg !95
  br label %17, !dbg !96, !llvm.loop !97

; <label>:32:                                     ; preds = %27, %17
  %33 = load i32, i32* %4, align 4, !dbg !99
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %33), !dbg !100
  br label %35

; <label>:35:                                     ; preds = %32, %11
  ret i32 0, !dbg !101
}

declare i32 @scanf(i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/278270_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 11, scope: !7)
!17 = !DILocation(line: 6, column: 10, scope: !18)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!19 = !DILocation(line: 6, column: 9, scope: !18)
!20 = !DILocation(line: 6, column: 14, scope: !21)
!21 = distinct !DILexicalBlock(scope: !18, file: !1, line: 6, column: 5)
!22 = !DILocation(line: 6, column: 17, scope: !21)
!23 = !DILocation(line: 6, column: 15, scope: !21)
!24 = !DILocation(line: 6, column: 5, scope: !18)
!25 = !DILocation(line: 8, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 8, column: 12)
!27 = distinct !DILexicalBlock(scope: !21, file: !1, line: 7, column: 5)
!28 = !DILocation(line: 8, column: 17, scope: !26)
!29 = !DILocation(line: 8, column: 16, scope: !26)
!30 = !DILocation(line: 8, column: 19, scope: !26)
!31 = !DILocation(line: 8, column: 12, scope: !27)
!32 = !DILocation(line: 10, column: 18, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 9)
!34 = !DILocation(line: 11, column: 9, scope: !33)
!35 = !DILocation(line: 12, column: 5, scope: !27)
!36 = !DILocation(line: 6, column: 23, scope: !21)
!37 = !DILocation(line: 6, column: 5, scope: !21)
!38 = distinct !{!38, !24, !39}
!39 = !DILocation(line: 12, column: 5, scope: !18)
!40 = !DILocation(line: 13, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 8)
!42 = !DILocation(line: 13, column: 13, scope: !41)
!43 = !DILocation(line: 13, column: 8, scope: !7)
!44 = !DILocation(line: 15, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 5)
!46 = !DILocation(line: 19, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 18, column: 5)
!48 = !DILocation(line: 21, column: 1, scope: !7)
!49 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !50, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!10}
!52 = !DILocalVariable(name: "num", scope: !49, file: !1, line: 28, type: !10)
!53 = !DILocation(line: 28, column: 9, scope: !49)
!54 = !DILocalVariable(name: "check", scope: !49, file: !1, line: 28, type: !10)
!55 = !DILocation(line: 28, column: 13, scope: !49)
!56 = !DILocalVariable(name: "i", scope: !49, file: !1, line: 28, type: !10)
!57 = !DILocation(line: 28, column: 19, scope: !49)
!58 = !DILocalVariable(name: "count", scope: !49, file: !1, line: 28, type: !10)
!59 = !DILocation(line: 28, column: 21, scope: !49)
!60 = !DILocation(line: 29, column: 5, scope: !49)
!61 = !DILocation(line: 30, column: 23, scope: !49)
!62 = !DILocation(line: 30, column: 11, scope: !49)
!63 = !DILocation(line: 30, column: 10, scope: !49)
!64 = !DILocation(line: 31, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !49, file: !1, line: 31, column: 8)
!66 = !DILocation(line: 31, column: 13, scope: !65)
!67 = !DILocation(line: 31, column: 8, scope: !49)
!68 = !DILocation(line: 33, column: 21, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 32, column: 5)
!70 = !DILocation(line: 33, column: 9, scope: !69)
!71 = !DILocation(line: 34, column: 5, scope: !69)
!72 = !DILocation(line: 37, column: 15, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 37, column: 9)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 36, column: 5)
!75 = !DILocation(line: 37, column: 18, scope: !73)
!76 = !DILocation(line: 37, column: 14, scope: !73)
!77 = !DILocation(line: 37, column: 13, scope: !73)
!78 = !DILocation(line: 37, column: 22, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 37, column: 9)
!80 = !DILocation(line: 37, column: 25, scope: !79)
!81 = !DILocation(line: 37, column: 28, scope: !79)
!82 = !DILocation(line: 37, column: 23, scope: !79)
!83 = !DILocation(line: 37, column: 9, scope: !73)
!84 = !DILocation(line: 39, column: 31, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 38, column: 9)
!86 = !DILocation(line: 39, column: 19, scope: !85)
!87 = !DILocation(line: 39, column: 18, scope: !85)
!88 = !DILocation(line: 40, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 40, column: 16)
!90 = !DILocation(line: 40, column: 21, scope: !89)
!91 = !DILocation(line: 40, column: 16, scope: !85)
!92 = !DILocation(line: 42, column: 17, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 41, column: 13)
!94 = !DILocation(line: 44, column: 9, scope: !85)
!95 = !DILocation(line: 37, column: 34, scope: !79)
!96 = !DILocation(line: 37, column: 9, scope: !79)
!97 = distinct !{!97, !83, !98}
!98 = !DILocation(line: 44, column: 9, scope: !73)
!99 = !DILocation(line: 45, column: 21, scope: !74)
!100 = !DILocation(line: 45, column: 9, scope: !74)
!101 = !DILocation(line: 51, column: 5, scope: !49)
