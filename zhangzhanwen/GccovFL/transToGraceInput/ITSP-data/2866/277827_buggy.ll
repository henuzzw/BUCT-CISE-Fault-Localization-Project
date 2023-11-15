; ModuleID = 'gcov/../WA_c/277827_buggy.c'
source_filename = "gcov/../WA_c/277827_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 2, i32* %4, align 4, !dbg !15
  br label %5, !dbg !17

; <label>:5:                                      ; preds = %16, %1
  %6 = load i32, i32* %4, align 4, !dbg !18
  %7 = load i32, i32* %3, align 4, !dbg !20
  %8 = icmp slt i32 %6, %7, !dbg !21
  br i1 %8, label %9, label %19, !dbg !22

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !23
  %11 = load i32, i32* %4, align 4, !dbg !26
  %12 = srem i32 %10, %11, !dbg !27
  %13 = icmp ne i32 %12, 0, !dbg !28
  br i1 %13, label %14, label %15, !dbg !29

; <label>:14:                                     ; preds = %9
  br label %16, !dbg !30

; <label>:15:                                     ; preds = %9
  br label %19, !dbg !32

; <label>:16:                                     ; preds = %14
  %17 = load i32, i32* %4, align 4, !dbg !34
  %18 = add nsw i32 %17, 1, !dbg !34
  store i32 %18, i32* %4, align 4, !dbg !34
  br label %5, !dbg !35, !llvm.loop !36

; <label>:19:                                     ; preds = %15, %5
  %20 = load i32, i32* %4, align 4, !dbg !38
  %21 = sub nsw i32 %20, 1, !dbg !39
  store i32 %21, i32* %4, align 4, !dbg !40
  %22 = load i32, i32* %3, align 4, !dbg !41
  %23 = load i32, i32* %4, align 4, !dbg !43
  %24 = srem i32 %22, %23, !dbg !44
  %25 = icmp ne i32 %24, 0, !dbg !45
  br i1 %25, label %26, label %27, !dbg !46

; <label>:26:                                     ; preds = %19
  store i32 1, i32* %2, align 4, !dbg !47
  br label %28, !dbg !47

; <label>:27:                                     ; preds = %19
  store i32 0, i32* %2, align 4, !dbg !49
  br label %28, !dbg !49

; <label>:28:                                     ; preds = %27, %26
  %29 = load i32, i32* %2, align 4, !dbg !51
  ret i32 %29, !dbg !51
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z19check_sum_of_primesi(i32) #0 !dbg !52 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %4, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %5, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 2, i32* %4, align 4, !dbg !59
  br label %6, !dbg !61

; <label>:6:                                      ; preds = %23, %1
  %7 = load i32, i32* %4, align 4, !dbg !62
  %8 = load i32, i32* %3, align 4, !dbg !64
  %9 = icmp slt i32 %7, %8, !dbg !65
  br i1 %9, label %10, label %26, !dbg !66

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !67
  %12 = load i32, i32* %4, align 4, !dbg !69
  %13 = sub nsw i32 %11, %12, !dbg !70
  store i32 %13, i32* %5, align 4, !dbg !71
  %14 = load i32, i32* %4, align 4, !dbg !72
  %15 = call i32 @_Z11check_primei(i32 %14), !dbg !74
  %16 = icmp ne i32 %15, 0, !dbg !74
  br i1 %16, label %17, label %22, !dbg !75

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %5, align 4, !dbg !76
  %19 = call i32 @_Z11check_primei(i32 %18), !dbg !77
  %20 = icmp ne i32 %19, 0, !dbg !77
  br i1 %20, label %21, label %22, !dbg !78

; <label>:21:                                     ; preds = %17
  store i32 1, i32* %2, align 4, !dbg !79
  br label %27, !dbg !79

; <label>:22:                                     ; preds = %17, %10
  br label %23, !dbg !81

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %4, align 4, !dbg !83
  %25 = add nsw i32 %24, 1, !dbg !83
  store i32 %25, i32* %4, align 4, !dbg !83
  br label %6, !dbg !84, !llvm.loop !85

; <label>:26:                                     ; preds = %6
  store i32 0, i32* %2, align 4, !dbg !87
  br label %27, !dbg !87

; <label>:27:                                     ; preds = %26, %21
  %28 = load i32, i32* %2, align 4, !dbg !88
  ret i32 %28, !dbg !88
}

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !89 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !92, metadata !DIExpression()), !dbg !93
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !94
  %4 = load i32, i32* %2, align 4, !dbg !95
  %5 = call i32 @_Z19check_sum_of_primesi(i32 %4), !dbg !97
  %6 = icmp ne i32 %5, 0, !dbg !97
  br i1 %6, label %7, label %9, !dbg !98

; <label>:7:                                      ; preds = %0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !99
  br label %11, !dbg !101

; <label>:9:                                      ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !102
  br label %11

; <label>:11:                                     ; preds = %9, %7
  ret i32 0, !dbg !104
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
!1 = !DIFile(filename: "gcov/../WA_c/277827_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
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
!15 = !DILocation(line: 6, column: 11, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!17 = !DILocation(line: 6, column: 10, scope: !16)
!18 = !DILocation(line: 6, column: 15, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 6, column: 17, scope: !19)
!21 = !DILocation(line: 6, column: 16, scope: !19)
!22 = !DILocation(line: 6, column: 5, scope: !16)
!23 = !DILocation(line: 9, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 13)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 9, column: 17, scope: !24)
!27 = !DILocation(line: 9, column: 16, scope: !24)
!28 = !DILocation(line: 9, column: 18, scope: !24)
!29 = !DILocation(line: 9, column: 13, scope: !25)
!30 = !DILocation(line: 11, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 9)
!32 = !DILocation(line: 15, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !1, line: 14, column: 9)
!34 = !DILocation(line: 6, column: 23, scope: !19)
!35 = !DILocation(line: 6, column: 5, scope: !19)
!36 = distinct !{!36, !22, !37}
!37 = !DILocation(line: 17, column: 5, scope: !16)
!38 = !DILocation(line: 18, column: 7, scope: !7)
!39 = !DILocation(line: 18, column: 8, scope: !7)
!40 = !DILocation(line: 18, column: 6, scope: !7)
!41 = !DILocation(line: 19, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 9)
!43 = !DILocation(line: 19, column: 13, scope: !42)
!44 = !DILocation(line: 19, column: 12, scope: !42)
!45 = !DILocation(line: 19, column: 14, scope: !42)
!46 = !DILocation(line: 19, column: 9, scope: !7)
!47 = !DILocation(line: 21, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 20, column: 5)
!49 = !DILocation(line: 25, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !1, line: 24, column: 5)
!51 = !DILocation(line: 27, column: 1, scope: !7)
!52 = distinct !DISubprogram(name: "check_sum_of_primes", linkageName: "_Z19check_sum_of_primesi", scope: !1, file: !1, line: 29, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!53 = !DILocalVariable(name: "a", arg: 1, scope: !52, file: !1, line: 29, type: !10)
!54 = !DILocation(line: 29, column: 30, scope: !52)
!55 = !DILocalVariable(name: "m", scope: !52, file: !1, line: 32, type: !10)
!56 = !DILocation(line: 32, column: 9, scope: !52)
!57 = !DILocalVariable(name: "n", scope: !52, file: !1, line: 33, type: !10)
!58 = !DILocation(line: 33, column: 9, scope: !52)
!59 = !DILocation(line: 34, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !52, file: !1, line: 34, column: 5)
!61 = !DILocation(line: 34, column: 10, scope: !60)
!62 = !DILocation(line: 34, column: 15, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 34, column: 5)
!64 = !DILocation(line: 34, column: 17, scope: !63)
!65 = !DILocation(line: 34, column: 16, scope: !63)
!66 = !DILocation(line: 34, column: 5, scope: !60)
!67 = !DILocation(line: 36, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 35, column: 5)
!69 = !DILocation(line: 36, column: 13, scope: !68)
!70 = !DILocation(line: 36, column: 12, scope: !68)
!71 = !DILocation(line: 36, column: 10, scope: !68)
!72 = !DILocation(line: 37, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 37, column: 12)
!74 = !DILocation(line: 37, column: 12, scope: !73)
!75 = !DILocation(line: 37, column: 26, scope: !73)
!76 = !DILocation(line: 37, column: 40, scope: !73)
!77 = !DILocation(line: 37, column: 28, scope: !73)
!78 = !DILocation(line: 37, column: 12, scope: !68)
!79 = !DILocation(line: 39, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 38, column: 9)
!81 = !DILocation(line: 43, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !1, line: 42, column: 9)
!83 = !DILocation(line: 34, column: 21, scope: !63)
!84 = !DILocation(line: 34, column: 5, scope: !63)
!85 = distinct !{!85, !66, !86}
!86 = !DILocation(line: 45, column: 5, scope: !60)
!87 = !DILocation(line: 46, column: 5, scope: !52)
!88 = !DILocation(line: 47, column: 1, scope: !52)
!89 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !90, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!90 = !DISubroutineType(types: !91)
!91 = !{!10}
!92 = !DILocalVariable(name: "p", scope: !89, file: !1, line: 53, type: !10)
!93 = !DILocation(line: 53, column: 9, scope: !89)
!94 = !DILocation(line: 54, column: 5, scope: !89)
!95 = !DILocation(line: 56, column: 29, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 56, column: 9)
!97 = !DILocation(line: 56, column: 9, scope: !96)
!98 = !DILocation(line: 56, column: 9, scope: !89)
!99 = !DILocation(line: 59, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 57, column: 5)
!101 = !DILocation(line: 60, column: 5, scope: !100)
!102 = !DILocation(line: 64, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 62, column: 5)
!104 = !DILocation(line: 68, column: 5, scope: !89)
