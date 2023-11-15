; ModuleID = 'gcov/../WA_c/277798_buggy.c'
source_filename = "gcov/../WA_c/277798_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %5, align 4, !dbg !18
  store i32 1, i32* %3, align 4, !dbg !19
  br label %6, !dbg !21

; <label>:6:                                      ; preds = %19, %1
  %7 = load i32, i32* %3, align 4, !dbg !22
  %8 = load i32, i32* %2, align 4, !dbg !24
  %9 = icmp sle i32 %7, %8, !dbg !25
  br i1 %9, label %10, label %22, !dbg !26

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %2, align 4, !dbg !27
  %12 = load i32, i32* %3, align 4, !dbg !30
  %13 = srem i32 %11, %12, !dbg !31
  %14 = icmp eq i32 %13, 0, !dbg !32
  br i1 %14, label %15, label %18, !dbg !33

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4, !dbg !34
  %17 = add nsw i32 %16, 1, !dbg !34
  store i32 %17, i32* %5, align 4, !dbg !34
  br label %18, !dbg !36

; <label>:18:                                     ; preds = %15, %10
  br label %19, !dbg !37

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %3, align 4, !dbg !38
  %21 = add nsw i32 %20, 1, !dbg !38
  store i32 %21, i32* %3, align 4, !dbg !38
  br label %6, !dbg !39, !llvm.loop !40

; <label>:22:                                     ; preds = %6
  %23 = load i32, i32* %5, align 4, !dbg !42
  %24 = icmp eq i32 %23, 2, !dbg !44
  br i1 %24, label %25, label %26, !dbg !45

; <label>:25:                                     ; preds = %22
  store i32 1, i32* %4, align 4, !dbg !46
  br label %27, !dbg !48

; <label>:26:                                     ; preds = %22
  store i32 0, i32* %4, align 4, !dbg !49
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i32, i32* %4, align 4, !dbg !51
  ret i32 %28, !dbg !52
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !53 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %3, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %3, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %4, metadata !60, metadata !DIExpression()), !dbg !61
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !62
  store i32 2, i32* %4, align 4, !dbg !63
  br label %6, !dbg !65

; <label>:6:                                      ; preds = %24, %0
  %7 = load i32, i32* %4, align 4, !dbg !66
  %8 = load i32, i32* %2, align 4, !dbg !68
  %9 = sub nsw i32 %8, 2, !dbg !69
  %10 = icmp sle i32 %7, %9, !dbg !70
  br i1 %10, label %11, label %27, !dbg !71

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %4, align 4, !dbg !72
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !75
  %14 = icmp eq i32 %13, 1, !dbg !76
  br i1 %14, label %15, label %23, !dbg !77

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %2, align 4, !dbg !78
  %17 = load i32, i32* %4, align 4, !dbg !81
  %18 = sub nsw i32 %16, %17, !dbg !82
  %19 = call i32 @_Z11check_primei(i32 %18), !dbg !83
  %20 = icmp eq i32 %19, 1, !dbg !84
  br i1 %20, label %21, label %22, !dbg !85

; <label>:21:                                     ; preds = %15
  store i32 1, i32* %3, align 4, !dbg !86
  br label %22, !dbg !88

; <label>:22:                                     ; preds = %21, %15
  br label %23, !dbg !89

; <label>:23:                                     ; preds = %22, %11
  br label %24, !dbg !90

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4, !dbg !91
  %26 = add nsw i32 %25, 1, !dbg !91
  store i32 %26, i32* %4, align 4, !dbg !91
  br label %6, !dbg !92, !llvm.loop !93

; <label>:27:                                     ; preds = %6
  %28 = load i32, i32* %3, align 4, !dbg !95
  %29 = icmp ne i32 %28, 0, !dbg !95
  br i1 %29, label %30, label %32, !dbg !97

; <label>:30:                                     ; preds = %27
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !98
  br label %34, !dbg !100

; <label>:32:                                     ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !101
  br label %34

; <label>:34:                                     ; preds = %32, %30
  ret i32 0, !dbg !103
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
!1 = !DIFile(filename: "gcov/../WA_c/277798_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 5, type: !8, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 7, type: !10)
!14 = !DILocation(line: 7, column: 9, scope: !7)
!15 = !DILocalVariable(name: "prime_or_not", scope: !7, file: !1, line: 8, type: !10)
!16 = !DILocation(line: 8, column: 9, scope: !7)
!17 = !DILocalVariable(name: "no_of_factors", scope: !7, file: !1, line: 9, type: !10)
!18 = !DILocation(line: 9, column: 9, scope: !7)
!19 = !DILocation(line: 11, column: 10, scope: !20)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 5)
!21 = !DILocation(line: 11, column: 9, scope: !20)
!22 = !DILocation(line: 11, column: 14, scope: !23)
!23 = distinct !DILexicalBlock(scope: !20, file: !1, line: 11, column: 5)
!24 = !DILocation(line: 11, column: 17, scope: !23)
!25 = !DILocation(line: 11, column: 15, scope: !23)
!26 = !DILocation(line: 11, column: 5, scope: !20)
!27 = !DILocation(line: 13, column: 12, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 12)
!29 = distinct !DILexicalBlock(scope: !23, file: !1, line: 12, column: 5)
!30 = !DILocation(line: 13, column: 16, scope: !28)
!31 = !DILocation(line: 13, column: 15, scope: !28)
!32 = !DILocation(line: 13, column: 17, scope: !28)
!33 = !DILocation(line: 13, column: 12, scope: !29)
!34 = !DILocation(line: 15, column: 26, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 14, column: 9)
!36 = !DILocation(line: 16, column: 9, scope: !35)
!37 = !DILocation(line: 17, column: 5, scope: !29)
!38 = !DILocation(line: 11, column: 23, scope: !23)
!39 = !DILocation(line: 11, column: 5, scope: !23)
!40 = distinct !{!40, !26, !41}
!41 = !DILocation(line: 17, column: 5, scope: !20)
!42 = !DILocation(line: 19, column: 8, scope: !43)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 8)
!44 = !DILocation(line: 19, column: 21, scope: !43)
!45 = !DILocation(line: 19, column: 8, scope: !7)
!46 = !DILocation(line: 21, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 20, column: 5)
!48 = !DILocation(line: 22, column: 5, scope: !47)
!49 = !DILocation(line: 25, column: 21, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 24, column: 5)
!51 = !DILocation(line: 28, column: 12, scope: !7)
!52 = !DILocation(line: 28, column: 5, scope: !7)
!53 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 32, type: !54, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{!10}
!56 = !DILocalVariable(name: "N", scope: !53, file: !1, line: 34, type: !10)
!57 = !DILocation(line: 34, column: 9, scope: !53)
!58 = !DILocalVariable(name: "no_is_prime", scope: !53, file: !1, line: 35, type: !10)
!59 = !DILocation(line: 35, column: 9, scope: !53)
!60 = !DILocalVariable(name: "i", scope: !53, file: !1, line: 36, type: !10)
!61 = !DILocation(line: 36, column: 9, scope: !53)
!62 = !DILocation(line: 38, column: 5, scope: !53)
!63 = !DILocation(line: 40, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !53, file: !1, line: 40, column: 5)
!65 = !DILocation(line: 40, column: 9, scope: !64)
!66 = !DILocation(line: 40, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 40, column: 5)
!68 = !DILocation(line: 40, column: 17, scope: !67)
!69 = !DILocation(line: 40, column: 18, scope: !67)
!70 = !DILocation(line: 40, column: 15, scope: !67)
!71 = !DILocation(line: 40, column: 5, scope: !64)
!72 = !DILocation(line: 42, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 42, column: 12)
!74 = distinct !DILexicalBlock(scope: !67, file: !1, line: 41, column: 5)
!75 = !DILocation(line: 42, column: 12, scope: !73)
!76 = !DILocation(line: 42, column: 26, scope: !73)
!77 = !DILocation(line: 42, column: 12, scope: !74)
!78 = !DILocation(line: 44, column: 28, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 44, column: 16)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 43, column: 9)
!81 = !DILocation(line: 44, column: 30, scope: !79)
!82 = !DILocation(line: 44, column: 29, scope: !79)
!83 = !DILocation(line: 44, column: 16, scope: !79)
!84 = !DILocation(line: 44, column: 32, scope: !79)
!85 = !DILocation(line: 44, column: 16, scope: !80)
!86 = !DILocation(line: 46, column: 28, scope: !87)
!87 = distinct !DILexicalBlock(scope: !79, file: !1, line: 45, column: 13)
!88 = !DILocation(line: 47, column: 13, scope: !87)
!89 = !DILocation(line: 48, column: 9, scope: !80)
!90 = !DILocation(line: 49, column: 5, scope: !74)
!91 = !DILocation(line: 40, column: 23, scope: !67)
!92 = !DILocation(line: 40, column: 5, scope: !67)
!93 = distinct !{!93, !71, !94}
!94 = !DILocation(line: 49, column: 5, scope: !64)
!95 = !DILocation(line: 51, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !53, file: !1, line: 51, column: 8)
!97 = !DILocation(line: 51, column: 8, scope: !53)
!98 = !DILocation(line: 53, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 52, column: 5)
!100 = !DILocation(line: 54, column: 5, scope: !99)
!101 = !DILocation(line: 57, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !1, line: 56, column: 5)
!103 = !DILocation(line: 60, column: 5, scope: !53)
