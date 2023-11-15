; ModuleID = 'gcov/../WA_c/277796_buggy.c'
source_filename = "gcov/../WA_c/277796_buggy.c"
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
  store i32 0, i32* %4, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !DIExpression()), !dbg !17
  store i32 2, i32* %5, align 4, !dbg !17
  br label %6, !dbg !18

; <label>:6:                                      ; preds = %19, %1
  %7 = load i32, i32* %5, align 4, !dbg !19
  %8 = load i32, i32* %3, align 4, !dbg !21
  %9 = icmp sle i32 %7, %8, !dbg !22
  br i1 %9, label %10, label %22, !dbg !23

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !24
  %12 = load i32, i32* %5, align 4, !dbg !27
  %13 = srem i32 %11, %12, !dbg !28
  %14 = icmp eq i32 %13, 0, !dbg !29
  br i1 %14, label %15, label %18, !dbg !30

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %4, align 4, !dbg !31
  %17 = add nsw i32 %16, 1, !dbg !31
  store i32 %17, i32* %4, align 4, !dbg !31
  br label %18, !dbg !33

; <label>:18:                                     ; preds = %15, %10
  br label %19, !dbg !34

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %5, align 4, !dbg !35
  %21 = add nsw i32 %20, 1, !dbg !35
  store i32 %21, i32* %5, align 4, !dbg !35
  br label %6, !dbg !36, !llvm.loop !37

; <label>:22:                                     ; preds = %6
  %23 = load i32, i32* %4, align 4, !dbg !39
  %24 = icmp eq i32 %23, 1, !dbg !41
  br i1 %24, label %25, label %27, !dbg !42

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %3, align 4, !dbg !43
  store i32 %26, i32* %2, align 4, !dbg !45
  br label %28, !dbg !45

; <label>:27:                                     ; preds = %22
  store i32 1, i32* %2, align 4, !dbg !46
  br label %28, !dbg !46

; <label>:28:                                     ; preds = %27, %25
  %29 = load i32, i32* %2, align 4, !dbg !47
  ret i32 %29, !dbg !47
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !48 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %3, metadata !53, metadata !DIExpression()), !dbg !54
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !58
  store i32 2, i32* %4, align 4, !dbg !58
  br label %6, !dbg !59

; <label>:6:                                      ; preds = %27, %0
  %7 = load i32, i32* %4, align 4, !dbg !60
  %8 = load i32, i32* %2, align 4, !dbg !62
  %9 = sub nsw i32 %8, 2, !dbg !63
  %10 = sdiv i32 %9, 2, !dbg !64
  %11 = icmp sle i32 %7, %10, !dbg !65
  br i1 %11, label %12, label %30, !dbg !66

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %4, align 4, !dbg !67
  %14 = call i32 @_Z11check_primei(i32 %13), !dbg !70
  %15 = icmp ne i32 %14, 1, !dbg !71
  br i1 %15, label %16, label %24, !dbg !72

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %2, align 4, !dbg !73
  %18 = load i32, i32* %4, align 4, !dbg !74
  %19 = sub nsw i32 %17, %18, !dbg !75
  %20 = call i32 @_Z11check_primei(i32 %19), !dbg !76
  %21 = icmp ne i32 %20, 1, !dbg !77
  br i1 %21, label %22, label %24, !dbg !78

; <label>:22:                                     ; preds = %16
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !79
  br label %26, !dbg !81

; <label>:24:                                     ; preds = %16, %12
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !82
  br label %26

; <label>:26:                                     ; preds = %24, %22
  br label %27, !dbg !84

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %4, align 4, !dbg !85
  %29 = add nsw i32 %28, 1, !dbg !85
  store i32 %29, i32* %4, align 4, !dbg !85
  br label %6, !dbg !86, !llvm.loop !87

; <label>:30:                                     ; preds = %6
  ret i32 0, !dbg !89
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
!1 = !DIFile(filename: "gcov/../WA_c/277796_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
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
!13 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 6, type: !10)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!17 = !DILocation(line: 6, column: 13, scope: !16)
!18 = !DILocation(line: 6, column: 9, scope: !16)
!19 = !DILocation(line: 6, column: 18, scope: !20)
!20 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 5)
!21 = !DILocation(line: 6, column: 21, scope: !20)
!22 = !DILocation(line: 6, column: 19, scope: !20)
!23 = !DILocation(line: 6, column: 5, scope: !16)
!24 = !DILocation(line: 8, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 12)
!26 = distinct !DILexicalBlock(scope: !20, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 8, column: 16, scope: !25)
!28 = !DILocation(line: 8, column: 15, scope: !25)
!29 = !DILocation(line: 8, column: 17, scope: !25)
!30 = !DILocation(line: 8, column: 12, scope: !26)
!31 = !DILocation(line: 10, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!33 = !DILocation(line: 11, column: 9, scope: !32)
!34 = !DILocation(line: 12, column: 5, scope: !26)
!35 = !DILocation(line: 6, column: 27, scope: !20)
!36 = !DILocation(line: 6, column: 5, scope: !20)
!37 = distinct !{!37, !23, !38}
!38 = !DILocation(line: 12, column: 5, scope: !16)
!39 = !DILocation(line: 13, column: 8, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 8)
!41 = !DILocation(line: 13, column: 9, scope: !40)
!42 = !DILocation(line: 13, column: 8, scope: !7)
!43 = !DILocation(line: 15, column: 16, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 14, column: 5)
!45 = !DILocation(line: 15, column: 9, scope: !44)
!46 = !DILocation(line: 17, column: 5, scope: !7)
!47 = !DILocation(line: 18, column: 1, scope: !7)
!48 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !49, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !DILocalVariable(name: "N", scope: !48, file: !1, line: 22, type: !10)
!52 = !DILocation(line: 22, column: 9, scope: !48)
!53 = !DILocalVariable(name: "j", scope: !48, file: !1, line: 22, type: !10)
!54 = !DILocation(line: 22, column: 11, scope: !48)
!55 = !DILocation(line: 23, column: 5, scope: !48)
!56 = !DILocalVariable(name: "i", scope: !57, file: !1, line: 24, type: !10)
!57 = distinct !DILexicalBlock(scope: !48, file: !1, line: 24, column: 5)
!58 = !DILocation(line: 24, column: 13, scope: !57)
!59 = !DILocation(line: 24, column: 9, scope: !57)
!60 = !DILocation(line: 24, column: 18, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 24, column: 5)
!62 = !DILocation(line: 24, column: 23, scope: !61)
!63 = !DILocation(line: 24, column: 24, scope: !61)
!64 = !DILocation(line: 24, column: 27, scope: !61)
!65 = !DILocation(line: 24, column: 19, scope: !61)
!66 = !DILocation(line: 24, column: 5, scope: !57)
!67 = !DILocation(line: 26, column: 25, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 26, column: 12)
!69 = distinct !DILexicalBlock(scope: !61, file: !1, line: 25, column: 5)
!70 = !DILocation(line: 26, column: 13, scope: !68)
!71 = !DILocation(line: 26, column: 27, scope: !68)
!72 = !DILocation(line: 26, column: 31, scope: !68)
!73 = !DILocation(line: 26, column: 46, scope: !68)
!74 = !DILocation(line: 26, column: 48, scope: !68)
!75 = !DILocation(line: 26, column: 47, scope: !68)
!76 = !DILocation(line: 26, column: 34, scope: !68)
!77 = !DILocation(line: 26, column: 50, scope: !68)
!78 = !DILocation(line: 26, column: 12, scope: !69)
!79 = !DILocation(line: 28, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !68, file: !1, line: 27, column: 9)
!81 = !DILocation(line: 29, column: 9, scope: !80)
!82 = !DILocation(line: 32, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !68, file: !1, line: 31, column: 9)
!84 = !DILocation(line: 34, column: 5, scope: !69)
!85 = !DILocation(line: 24, column: 33, scope: !61)
!86 = !DILocation(line: 24, column: 5, scope: !61)
!87 = distinct !{!87, !66, !88}
!88 = !DILocation(line: 34, column: 5, scope: !57)
!89 = !DILocation(line: 35, column: 5, scope: !48)
