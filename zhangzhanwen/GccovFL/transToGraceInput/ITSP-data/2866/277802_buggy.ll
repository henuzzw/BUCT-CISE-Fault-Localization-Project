; ModuleID = 'gcov/../WA_c/277802_buggy.c'
source_filename = "gcov/../WA_c/277802_buggy.c"
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
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 1, i32* %4, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !DIExpression()), !dbg !16
  %6 = load i32, i32* %3, align 4, !dbg !17
  %7 = load i32, i32* %4, align 4, !dbg !18
  %8 = srem i32 %6, %7, !dbg !19
  store i32 %8, i32* %5, align 4, !dbg !20
  br label %9, !dbg !21

; <label>:9:                                      ; preds = %24, %1
  %10 = load i32, i32* %4, align 4, !dbg !22
  %11 = load i32, i32* %3, align 4, !dbg !23
  %12 = sub nsw i32 %11, 1, !dbg !24
  %13 = icmp sle i32 %10, %12, !dbg !25
  br i1 %13, label %14, label %25, !dbg !21

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %3, align 4, !dbg !26
  %16 = load i32, i32* %4, align 4, !dbg !28
  %17 = srem i32 %15, %16, !dbg !29
  store i32 %17, i32* %5, align 4, !dbg !30
  %18 = load i32, i32* %5, align 4, !dbg !31
  %19 = icmp eq i32 %18, 0, !dbg !33
  br i1 %19, label %20, label %21, !dbg !34

; <label>:20:                                     ; preds = %14
  store i32 0, i32* %2, align 4, !dbg !35
  br label %26, !dbg !35

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %4, align 4, !dbg !37
  %23 = add nsw i32 %22, 1, !dbg !39
  store i32 %23, i32* %4, align 4, !dbg !40
  br label %24

; <label>:24:                                     ; preds = %21
  br label %9, !dbg !21, !llvm.loop !41

; <label>:25:                                     ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !43
  br label %26, !dbg !43

; <label>:26:                                     ; preds = %25, %20
  %27 = load i32, i32* %2, align 4, !dbg !44
  ret i32 %27, !dbg !44
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !45 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %3, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %4, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %5, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 2, i32* %5, align 4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %6, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %6, align 4, !dbg !57
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !58
  br label %8, !dbg !59

; <label>:8:                                      ; preds = %27, %0
  %9 = load i32, i32* %5, align 4, !dbg !60
  %10 = load i32, i32* %2, align 4, !dbg !61
  %11 = sub nsw i32 %10, 2, !dbg !62
  %12 = icmp sle i32 %9, %11, !dbg !63
  br i1 %12, label %13, label %30, !dbg !59

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %5, align 4, !dbg !64
  %15 = call i32 @_Z11check_primei(i32 %14), !dbg !66
  store i32 %15, i32* %3, align 4, !dbg !67
  %16 = load i32, i32* %2, align 4, !dbg !68
  %17 = load i32, i32* %5, align 4, !dbg !69
  %18 = sub nsw i32 %16, %17, !dbg !70
  %19 = call i32 @_Z11check_primei(i32 %18), !dbg !71
  store i32 %19, i32* %4, align 4, !dbg !72
  %20 = load i32, i32* %3, align 4, !dbg !73
  %21 = icmp eq i32 %20, 1, !dbg !75
  br i1 %21, label %22, label %27, !dbg !76

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %4, align 4, !dbg !77
  %24 = icmp eq i32 %23, 1, !dbg !78
  br i1 %24, label %25, label %27, !dbg !79

; <label>:25:                                     ; preds = %22
  store i32 1, i32* %6, align 4, !dbg !80
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !82
  br label %30, !dbg !83

; <label>:27:                                     ; preds = %22, %13
  %28 = load i32, i32* %5, align 4, !dbg !84
  %29 = add nsw i32 %28, 1, !dbg !85
  store i32 %29, i32* %5, align 4, !dbg !86
  br label %8, !dbg !59, !llvm.loop !87

; <label>:30:                                     ; preds = %25, %8
  %31 = load i32, i32* %6, align 4, !dbg !89
  %32 = icmp eq i32 %31, 0, !dbg !91
  br i1 %32, label %33, label %35, !dbg !92

; <label>:33:                                     ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !93
  br label %35, !dbg !95

; <label>:35:                                     ; preds = %33, %30
  ret i32 0, !dbg !96
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
!1 = !DIFile(filename: "gcov/../WA_c/277802_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
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
!15 = !DILocalVariable(name: "div", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 9, scope: !7)
!18 = !DILocation(line: 6, column: 13, scope: !7)
!19 = !DILocation(line: 6, column: 12, scope: !7)
!20 = !DILocation(line: 6, column: 8, scope: !7)
!21 = !DILocation(line: 7, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 11, scope: !7)
!23 = !DILocation(line: 7, column: 14, scope: !7)
!24 = !DILocation(line: 7, column: 17, scope: !7)
!25 = !DILocation(line: 7, column: 12, scope: !7)
!26 = !DILocation(line: 9, column: 13, scope: !27)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!28 = !DILocation(line: 9, column: 17, scope: !27)
!29 = !DILocation(line: 9, column: 16, scope: !27)
!30 = !DILocation(line: 9, column: 12, scope: !27)
!31 = !DILocation(line: 11, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 12)
!33 = !DILocation(line: 11, column: 15, scope: !32)
!34 = !DILocation(line: 11, column: 12, scope: !27)
!35 = !DILocation(line: 13, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 9)
!37 = !DILocation(line: 17, column: 15, scope: !38)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 16, column: 9)
!39 = !DILocation(line: 17, column: 16, scope: !38)
!40 = !DILocation(line: 17, column: 14, scope: !38)
!41 = distinct !{!41, !21, !42}
!42 = !DILocation(line: 19, column: 5, scope: !7)
!43 = !DILocation(line: 20, column: 5, scope: !7)
!44 = !DILocation(line: 21, column: 1, scope: !7)
!45 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 24, type: !46, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!10}
!48 = !DILocalVariable(name: "n", scope: !45, file: !1, line: 26, type: !10)
!49 = !DILocation(line: 26, column: 9, scope: !45)
!50 = !DILocalVariable(name: "check1", scope: !45, file: !1, line: 26, type: !10)
!51 = !DILocation(line: 26, column: 11, scope: !45)
!52 = !DILocalVariable(name: "check2", scope: !45, file: !1, line: 26, type: !10)
!53 = !DILocation(line: 26, column: 18, scope: !45)
!54 = !DILocalVariable(name: "x", scope: !45, file: !1, line: 26, type: !10)
!55 = !DILocation(line: 26, column: 25, scope: !45)
!56 = !DILocalVariable(name: "y", scope: !45, file: !1, line: 26, type: !10)
!57 = !DILocation(line: 26, column: 29, scope: !45)
!58 = !DILocation(line: 27, column: 5, scope: !45)
!59 = !DILocation(line: 30, column: 5, scope: !45)
!60 = !DILocation(line: 30, column: 11, scope: !45)
!61 = !DILocation(line: 30, column: 14, scope: !45)
!62 = !DILocation(line: 30, column: 15, scope: !45)
!63 = !DILocation(line: 30, column: 12, scope: !45)
!64 = !DILocation(line: 32, column: 28, scope: !65)
!65 = distinct !DILexicalBlock(scope: !45, file: !1, line: 31, column: 5)
!66 = !DILocation(line: 32, column: 16, scope: !65)
!67 = !DILocation(line: 32, column: 15, scope: !65)
!68 = !DILocation(line: 33, column: 28, scope: !65)
!69 = !DILocation(line: 33, column: 30, scope: !65)
!70 = !DILocation(line: 33, column: 29, scope: !65)
!71 = !DILocation(line: 33, column: 16, scope: !65)
!72 = !DILocation(line: 33, column: 15, scope: !65)
!73 = !DILocation(line: 34, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 34, column: 12)
!75 = !DILocation(line: 34, column: 18, scope: !74)
!76 = !DILocation(line: 34, column: 21, scope: !74)
!77 = !DILocation(line: 34, column: 23, scope: !74)
!78 = !DILocation(line: 34, column: 29, scope: !74)
!79 = !DILocation(line: 34, column: 12, scope: !65)
!80 = !DILocation(line: 36, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !1, line: 35, column: 9)
!82 = !DILocation(line: 37, column: 13, scope: !81)
!83 = !DILocation(line: 38, column: 13, scope: !81)
!84 = !DILocation(line: 40, column: 11, scope: !65)
!85 = !DILocation(line: 40, column: 12, scope: !65)
!86 = !DILocation(line: 40, column: 10, scope: !65)
!87 = distinct !{!87, !59, !88}
!88 = !DILocation(line: 41, column: 5, scope: !45)
!89 = !DILocation(line: 42, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 8)
!91 = !DILocation(line: 42, column: 9, scope: !90)
!92 = !DILocation(line: 42, column: 8, scope: !45)
!93 = !DILocation(line: 44, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 43, column: 5)
!95 = !DILocation(line: 45, column: 5, scope: !94)
!96 = !DILocation(line: 50, column: 5, scope: !45)
