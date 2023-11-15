; ModuleID = 'gcov/../WA_c/278279_buggy.c'
source_filename = "gcov/../WA_c/278279_buggy.c"
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
  %6 = load i32, i32* %3, align 4, !dbg !13
  %7 = icmp eq i32 %6, 0, !dbg !15
  br i1 %7, label %8, label %9, !dbg !16

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !17
  br label %26, !dbg !17

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %5, align 4, !dbg !22
  store i32 2, i32* %4, align 4, !dbg !23
  br label %10, !dbg !25

; <label>:10:                                     ; preds = %21, %9
  %11 = load i32, i32* %4, align 4, !dbg !26
  %12 = load i32, i32* %3, align 4, !dbg !28
  %13 = icmp slt i32 %11, %12, !dbg !29
  br i1 %13, label %14, label %24, !dbg !30

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 4, !dbg !31
  %16 = load i32, i32* %4, align 4, !dbg !34
  %17 = srem i32 %15, %16, !dbg !35
  %18 = icmp eq i32 %17, 0, !dbg !36
  br i1 %18, label %19, label %20, !dbg !37

; <label>:19:                                     ; preds = %14
  store i32 0, i32* %2, align 4, !dbg !38
  br label %26, !dbg !38

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !40

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %4, align 4, !dbg !41
  %23 = add nsw i32 %22, 1, !dbg !41
  store i32 %23, i32* %4, align 4, !dbg !41
  br label %10, !dbg !42, !llvm.loop !43

; <label>:24:                                     ; preds = %10
  %25 = load i32, i32* %3, align 4, !dbg !45
  store i32 %25, i32* %2, align 4, !dbg !46
  br label %26, !dbg !46

; <label>:26:                                     ; preds = %24, %19, %8
  %27 = load i32, i32* %2, align 4, !dbg !47
  ret i32 %27, !dbg !47
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !48 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %3, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %4, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %5, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %6, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %6, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %7, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %8, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %8, align 4, !dbg !64
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !65
  %10 = load i32, i32* %4, align 4, !dbg !66
  %11 = call i32 @_Z11check_primei(i32 %10), !dbg !67
  store i32 %11, i32* %2, align 4, !dbg !68
  %12 = load i32, i32* %2, align 4, !dbg !69
  %13 = icmp eq i32 %12, 0, !dbg !71
  br i1 %13, label %14, label %31, !dbg !72

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %4, align 4, !dbg !73
  %16 = add nsw i32 %15, 1, !dbg !76
  store i32 %16, i32* %5, align 4, !dbg !77
  br label %17, !dbg !78

; <label>:17:                                     ; preds = %27, %14
  br i1 true, label %18, label %30, !dbg !79

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %5, align 4, !dbg !80
  %20 = call i32 @_Z11check_primei(i32 %19), !dbg !83
  store i32 %20, i32* %3, align 4, !dbg !84
  %21 = load i32, i32* %3, align 4, !dbg !85
  %22 = icmp ne i32 %21, 0, !dbg !87
  br i1 %22, label %23, label %26, !dbg !88

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %3, align 4, !dbg !89
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %24), !dbg !91
  br label %30, !dbg !92

; <label>:26:                                     ; preds = %18
  br label %27, !dbg !93

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %5, align 4, !dbg !94
  %29 = add nsw i32 %28, 1, !dbg !94
  store i32 %29, i32* %5, align 4, !dbg !94
  br label %17, !dbg !95, !llvm.loop !96

; <label>:30:                                     ; preds = %23, %17
  br label %34, !dbg !98

; <label>:31:                                     ; preds = %0
  %32 = load i32, i32* %2, align 4, !dbg !99
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %32), !dbg !101
  br label %34

; <label>:34:                                     ; preds = %31, %30
  ret i32 0, !dbg !102
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
!1 = !DIFile(filename: "gcov/../WA_c/278279_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
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
!13 = !DILocation(line: 5, column: 8, scope: !14)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 8)
!15 = !DILocation(line: 5, column: 11, scope: !14)
!16 = !DILocation(line: 5, column: 8, scope: !7)
!17 = !DILocation(line: 7, column: 9, scope: !18)
!18 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 5)
!19 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 9, type: !10)
!20 = !DILocation(line: 9, column: 9, scope: !7)
!21 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 9, type: !10)
!22 = !DILocation(line: 9, column: 11, scope: !7)
!23 = !DILocation(line: 10, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 5)
!25 = !DILocation(line: 10, column: 9, scope: !24)
!26 = !DILocation(line: 10, column: 14, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 5)
!28 = !DILocation(line: 10, column: 16, scope: !27)
!29 = !DILocation(line: 10, column: 15, scope: !27)
!30 = !DILocation(line: 10, column: 5, scope: !24)
!31 = !DILocation(line: 12, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 12)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 5)
!34 = !DILocation(line: 12, column: 16, scope: !32)
!35 = !DILocation(line: 12, column: 15, scope: !32)
!36 = !DILocation(line: 12, column: 17, scope: !32)
!37 = !DILocation(line: 12, column: 12, scope: !33)
!38 = !DILocation(line: 14, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !32, file: !1, line: 13, column: 9)
!40 = !DILocation(line: 16, column: 5, scope: !33)
!41 = !DILocation(line: 10, column: 22, scope: !27)
!42 = !DILocation(line: 10, column: 5, scope: !27)
!43 = distinct !{!43, !30, !44}
!44 = !DILocation(line: 16, column: 5, scope: !24)
!45 = !DILocation(line: 17, column: 12, scope: !7)
!46 = !DILocation(line: 17, column: 5, scope: !7)
!47 = !DILocation(line: 18, column: 1, scope: !7)
!48 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !49, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !DILocalVariable(name: "a", scope: !48, file: !1, line: 23, type: !10)
!52 = !DILocation(line: 23, column: 9, scope: !48)
!53 = !DILocalVariable(name: "b", scope: !48, file: !1, line: 23, type: !10)
!54 = !DILocation(line: 23, column: 11, scope: !48)
!55 = !DILocalVariable(name: "n", scope: !48, file: !1, line: 23, type: !10)
!56 = !DILocation(line: 23, column: 13, scope: !48)
!57 = !DILocalVariable(name: "i", scope: !48, file: !1, line: 23, type: !10)
!58 = !DILocation(line: 23, column: 15, scope: !48)
!59 = !DILocalVariable(name: "c", scope: !48, file: !1, line: 23, type: !10)
!60 = !DILocation(line: 23, column: 17, scope: !48)
!61 = !DILocalVariable(name: "d", scope: !48, file: !1, line: 23, type: !10)
!62 = !DILocation(line: 23, column: 21, scope: !48)
!63 = !DILocalVariable(name: "x", scope: !48, file: !1, line: 23, type: !10)
!64 = !DILocation(line: 23, column: 23, scope: !48)
!65 = !DILocation(line: 24, column: 5, scope: !48)
!66 = !DILocation(line: 25, column: 19, scope: !48)
!67 = !DILocation(line: 25, column: 7, scope: !48)
!68 = !DILocation(line: 25, column: 6, scope: !48)
!69 = !DILocation(line: 26, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !48, file: !1, line: 26, column: 8)
!71 = !DILocation(line: 26, column: 9, scope: !70)
!72 = !DILocation(line: 26, column: 8, scope: !48)
!73 = !DILocation(line: 28, column: 15, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 28, column: 9)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 27, column: 5)
!76 = !DILocation(line: 28, column: 16, scope: !74)
!77 = !DILocation(line: 28, column: 14, scope: !74)
!78 = !DILocation(line: 28, column: 13, scope: !74)
!79 = !DILocation(line: 28, column: 9, scope: !74)
!80 = !DILocation(line: 30, column: 27, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 29, column: 9)
!82 = distinct !DILexicalBlock(scope: !74, file: !1, line: 28, column: 9)
!83 = !DILocation(line: 30, column: 15, scope: !81)
!84 = !DILocation(line: 30, column: 14, scope: !81)
!85 = !DILocation(line: 31, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 31, column: 16)
!87 = !DILocation(line: 31, column: 17, scope: !86)
!88 = !DILocation(line: 31, column: 16, scope: !81)
!89 = !DILocation(line: 33, column: 29, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 32, column: 13)
!91 = !DILocation(line: 33, column: 17, scope: !90)
!92 = !DILocation(line: 34, column: 17, scope: !90)
!93 = !DILocation(line: 36, column: 9, scope: !81)
!94 = !DILocation(line: 28, column: 24, scope: !82)
!95 = !DILocation(line: 28, column: 9, scope: !82)
!96 = distinct !{!96, !79, !97}
!97 = !DILocation(line: 36, column: 9, scope: !74)
!98 = !DILocation(line: 37, column: 5, scope: !75)
!99 = !DILocation(line: 40, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !70, file: !1, line: 39, column: 5)
!101 = !DILocation(line: 40, column: 9, scope: !100)
!102 = !DILocation(line: 42, column: 5, scope: !48)
