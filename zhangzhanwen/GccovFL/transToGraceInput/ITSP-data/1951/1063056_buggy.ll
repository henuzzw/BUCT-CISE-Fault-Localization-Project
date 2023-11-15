; ModuleID = 'gcov/../WA_c/1063056_buggy.c'
source_filename = "gcov/../WA_c/1063056_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define i32 @_Z3funiii(i32, i32, i32) #0 !dbg !7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !15, metadata !DIExpression()), !dbg !16
  %8 = load i32, i32* %5, align 4, !dbg !17
  %9 = icmp sge i32 %8, 3, !dbg !19
  br i1 %9, label %10, label %25, !dbg !20

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %5, align 4, !dbg !21
  %12 = sdiv i32 %11, 3, !dbg !23
  store i32 %12, i32* %6, align 4, !dbg !24
  %13 = load i32, i32* %6, align 4, !dbg !25
  %14 = load i32, i32* %7, align 4, !dbg !26
  %15 = add nsw i32 %13, %14, !dbg !27
  %16 = add nsw i32 %15, 1, !dbg !28
  store i32 %16, i32* %7, align 4, !dbg !29
  %17 = load i32, i32* %6, align 4, !dbg !30
  %18 = load i32, i32* %5, align 4, !dbg !31
  %19 = srem i32 %18, 3, !dbg !32
  %20 = add nsw i32 %17, %19, !dbg !33
  store i32 %20, i32* %5, align 4, !dbg !34
  %21 = load i32, i32* %5, align 4, !dbg !35
  %22 = load i32, i32* %6, align 4, !dbg !36
  %23 = load i32, i32* %7, align 4, !dbg !37
  %24 = call i32 @_Z3funiii(i32 %21, i32 %22, i32 %23), !dbg !38
  store i32 %24, i32* %4, align 4, !dbg !39
  br label %33, !dbg !39

; <label>:25:                                     ; preds = %3
  %26 = load i32, i32* %5, align 4, !dbg !40
  %27 = icmp eq i32 %26, 2, !dbg !42
  br i1 %27, label %28, label %31, !dbg !43

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %7, align 4, !dbg !44
  %30 = add nsw i32 %29, 1, !dbg !46
  store i32 %30, i32* %7, align 4, !dbg !47
  store i32 %30, i32* %4, align 4, !dbg !48
  br label %33, !dbg !48

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %7, align 4, !dbg !49
  store i32 %32, i32* %4, align 4, !dbg !51
  br label %33, !dbg !51

; <label>:33:                                     ; preds = %31, %28, %10
  %34 = load i32, i32* %4, align 4, !dbg !52
  ret i32 %34, !dbg !52
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !53 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !56, metadata !DIExpression()), !dbg !57
  br label %6, !dbg !58

; <label>:6:                                      ; preds = %32, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !59
  %8 = icmp ne i32 %7, -1, !dbg !60
  br i1 %8, label %9, label %34, !dbg !58

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !61, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %3, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %4, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 1, i32* %4, align 4, !dbg !65
  %10 = load i32, i32* %2, align 4, !dbg !66
  %11 = icmp eq i32 %10, 0, !dbg !68
  br i1 %11, label %12, label %13, !dbg !69

; <label>:12:                                     ; preds = %9
  br label %34, !dbg !70

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %2, align 4, !dbg !72
  %15 = icmp eq i32 %14, 1, !dbg !74
  br i1 %15, label %16, label %18, !dbg !75

; <label>:16:                                     ; preds = %13
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !76
  br label %31, !dbg !78

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %2, align 4, !dbg !79
  %20 = icmp eq i32 %19, 2, !dbg !81
  br i1 %20, label %21, label %23, !dbg !82

; <label>:21:                                     ; preds = %18
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !83
  br label %30, !dbg !85

; <label>:23:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %5, metadata !86, metadata !DIExpression()), !dbg !88
  %24 = load i32, i32* %2, align 4, !dbg !89
  %25 = load i32, i32* %3, align 4, !dbg !90
  %26 = load i32, i32* %4, align 4, !dbg !91
  %27 = call i32 @_Z3funiii(i32 %24, i32 %25, i32 %26), !dbg !92
  store i32 %27, i32* %5, align 4, !dbg !88
  %28 = load i32, i32* %5, align 4, !dbg !93
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %28), !dbg !94
  br label %30

; <label>:30:                                     ; preds = %23, %21
  br label %31

; <label>:31:                                     ; preds = %30, %16
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !95
  br label %6, !dbg !58, !llvm.loop !96

; <label>:34:                                     ; preds = %12, %6
  %35 = load i32, i32* %1, align 4, !dbg !98
  ret i32 %35, !dbg !98
}

declare i32 @scanf(i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/1063056_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1951")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "fun", linkageName: "_Z3funiii", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !1, line: 2, type: !10)
!12 = !DILocation(line: 2, column: 14, scope: !7)
!13 = !DILocalVariable(name: "s", arg: 2, scope: !7, file: !1, line: 2, type: !10)
!14 = !DILocation(line: 2, column: 21, scope: !7)
!15 = !DILocalVariable(name: "t", arg: 3, scope: !7, file: !1, line: 2, type: !10)
!16 = !DILocation(line: 2, column: 28, scope: !7)
!17 = !DILocation(line: 4, column: 8, scope: !18)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 4, column: 8)
!19 = !DILocation(line: 4, column: 10, scope: !18)
!20 = !DILocation(line: 4, column: 8, scope: !7)
!21 = !DILocation(line: 6, column: 13, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !1, line: 5, column: 5)
!23 = !DILocation(line: 6, column: 15, scope: !22)
!24 = !DILocation(line: 6, column: 11, scope: !22)
!25 = !DILocation(line: 7, column: 13, scope: !22)
!26 = !DILocation(line: 7, column: 17, scope: !22)
!27 = !DILocation(line: 7, column: 15, scope: !22)
!28 = !DILocation(line: 7, column: 19, scope: !22)
!29 = !DILocation(line: 7, column: 11, scope: !22)
!30 = !DILocation(line: 8, column: 13, scope: !22)
!31 = !DILocation(line: 8, column: 17, scope: !22)
!32 = !DILocation(line: 8, column: 19, scope: !22)
!33 = !DILocation(line: 8, column: 15, scope: !22)
!34 = !DILocation(line: 8, column: 11, scope: !22)
!35 = !DILocation(line: 9, column: 20, scope: !22)
!36 = !DILocation(line: 9, column: 23, scope: !22)
!37 = !DILocation(line: 9, column: 26, scope: !22)
!38 = !DILocation(line: 9, column: 16, scope: !22)
!39 = !DILocation(line: 9, column: 9, scope: !22)
!40 = !DILocation(line: 11, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !18, file: !1, line: 11, column: 13)
!42 = !DILocation(line: 11, column: 15, scope: !41)
!43 = !DILocation(line: 11, column: 13, scope: !18)
!44 = !DILocation(line: 13, column: 20, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 5)
!46 = !DILocation(line: 13, column: 22, scope: !45)
!47 = !DILocation(line: 13, column: 18, scope: !45)
!48 = !DILocation(line: 13, column: 9, scope: !45)
!49 = !DILocation(line: 17, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !41, file: !1, line: 16, column: 5)
!51 = !DILocation(line: 17, column: 9, scope: !50)
!52 = !DILocation(line: 19, column: 1, scope: !7)
!53 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !54, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{!10}
!56 = !DILocalVariable(name: "n", scope: !53, file: !1, line: 22, type: !10)
!57 = !DILocation(line: 22, column: 9, scope: !53)
!58 = !DILocation(line: 23, column: 5, scope: !53)
!59 = !DILocation(line: 23, column: 11, scope: !53)
!60 = !DILocation(line: 23, column: 27, scope: !53)
!61 = !DILocalVariable(name: "s", scope: !62, file: !1, line: 25, type: !10)
!62 = distinct !DILexicalBlock(scope: !53, file: !1, line: 24, column: 5)
!63 = !DILocation(line: 25, column: 13, scope: !62)
!64 = !DILocalVariable(name: "t", scope: !62, file: !1, line: 26, type: !10)
!65 = !DILocation(line: 26, column: 13, scope: !62)
!66 = !DILocation(line: 27, column: 12, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 27, column: 12)
!68 = !DILocation(line: 27, column: 14, scope: !67)
!69 = !DILocation(line: 27, column: 12, scope: !62)
!70 = !DILocation(line: 29, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 28, column: 9)
!72 = !DILocation(line: 31, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 31, column: 17)
!74 = !DILocation(line: 31, column: 19, scope: !73)
!75 = !DILocation(line: 31, column: 17, scope: !67)
!76 = !DILocation(line: 33, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 32, column: 9)
!78 = !DILocation(line: 34, column: 9, scope: !77)
!79 = !DILocation(line: 35, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 35, column: 17)
!81 = !DILocation(line: 35, column: 19, scope: !80)
!82 = !DILocation(line: 35, column: 17, scope: !73)
!83 = !DILocation(line: 37, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 36, column: 9)
!85 = !DILocation(line: 38, column: 9, scope: !84)
!86 = !DILocalVariable(name: "o", scope: !87, file: !1, line: 41, type: !10)
!87 = distinct !DILexicalBlock(scope: !80, file: !1, line: 40, column: 9)
!88 = !DILocation(line: 41, column: 17, scope: !87)
!89 = !DILocation(line: 41, column: 25, scope: !87)
!90 = !DILocation(line: 41, column: 28, scope: !87)
!91 = !DILocation(line: 41, column: 31, scope: !87)
!92 = !DILocation(line: 41, column: 21, scope: !87)
!93 = !DILocation(line: 42, column: 26, scope: !87)
!94 = !DILocation(line: 42, column: 13, scope: !87)
!95 = !DILocation(line: 44, column: 9, scope: !62)
!96 = distinct !{!96, !58, !97}
!97 = !DILocation(line: 45, column: 5, scope: !53)
!98 = !DILocation(line: 47, column: 1, scope: !53)
