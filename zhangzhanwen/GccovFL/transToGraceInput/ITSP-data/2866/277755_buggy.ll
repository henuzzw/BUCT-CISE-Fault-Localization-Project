; ModuleID = 'gcov/../WA_c/277755_buggy.c'
source_filename = "gcov/../WA_c/277755_buggy.c"
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
  store i32 2, i32* %4, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %5, align 4, !dbg !16
  br label %6, !dbg !17

; <label>:6:                                      ; preds = %18, %1
  %7 = load i32, i32* %4, align 4, !dbg !18
  %8 = load i32, i32* %3, align 4, !dbg !19
  %9 = icmp slt i32 %7, %8, !dbg !20
  br i1 %9, label %10, label %21, !dbg !17

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !21
  %12 = load i32, i32* %4, align 4, !dbg !24
  %13 = srem i32 %11, %12, !dbg !25
  %14 = icmp eq i32 %13, 0, !dbg !26
  br i1 %14, label %15, label %18, !dbg !27

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4, !dbg !28
  %17 = add nsw i32 %16, 1, !dbg !30
  store i32 %17, i32* %5, align 4, !dbg !31
  br label %18, !dbg !32

; <label>:18:                                     ; preds = %15, %10
  %19 = load i32, i32* %4, align 4, !dbg !33
  %20 = add nsw i32 %19, 1, !dbg !34
  store i32 %20, i32* %4, align 4, !dbg !35
  br label %6, !dbg !17, !llvm.loop !36

; <label>:21:                                     ; preds = %6
  %22 = load i32, i32* %5, align 4, !dbg !38
  %23 = icmp sgt i32 %22, 0, !dbg !40
  br i1 %23, label %24, label %25, !dbg !41

; <label>:24:                                     ; preds = %21
  store i32 0, i32* %2, align 4, !dbg !42
  br label %26, !dbg !42

; <label>:25:                                     ; preds = %21
  store i32 1, i32* %2, align 4, !dbg !44
  br label %26, !dbg !44

; <label>:26:                                     ; preds = %25, %24
  %27 = load i32, i32* %2, align 4, !dbg !46
  ret i32 %27, !dbg !46
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !47 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %3, metadata !52, metadata !DIExpression()), !dbg !53
  store i32 2, i32* %3, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %4, align 4, !dbg !55
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !56
  br label %6, !dbg !57

; <label>:6:                                      ; preds = %25, %0
  %7 = load i32, i32* %3, align 4, !dbg !59
  %8 = load i32, i32* %2, align 4, !dbg !61
  %9 = icmp slt i32 %7, %8, !dbg !62
  br i1 %9, label %10, label %28, !dbg !63

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !64
  %12 = call i32 @_Z11check_primei(i32 %11), !dbg !67
  %13 = icmp eq i32 %12, 1, !dbg !68
  br i1 %13, label %14, label %22, !dbg !69

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %2, align 4, !dbg !70
  %16 = load i32, i32* %3, align 4, !dbg !71
  %17 = sub nsw i32 %15, %16, !dbg !72
  %18 = call i32 @_Z11check_primei(i32 %17), !dbg !73
  %19 = icmp eq i32 %18, 1, !dbg !74
  br i1 %19, label %20, label %22, !dbg !75

; <label>:20:                                     ; preds = %14
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !76
  br label %28, !dbg !78

; <label>:22:                                     ; preds = %14, %10
  %23 = load i32, i32* %4, align 4, !dbg !79
  %24 = add nsw i32 %23, 1, !dbg !80
  store i32 %24, i32* %4, align 4, !dbg !81
  br label %25, !dbg !82

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %3, align 4, !dbg !83
  %27 = add nsw i32 %26, 1, !dbg !83
  store i32 %27, i32* %3, align 4, !dbg !83
  br label %6, !dbg !84, !llvm.loop !85

; <label>:28:                                     ; preds = %20, %6
  %29 = load i32, i32* %4, align 4, !dbg !87
  %30 = icmp sgt i32 %29, 0, !dbg !89
  br i1 %30, label %31, label %33, !dbg !90

; <label>:31:                                     ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !91
  br label %33, !dbg !93

; <label>:33:                                     ; preds = %31, %28
  ret i32 0, !dbg !94
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
!1 = !DIFile(filename: "gcov/../WA_c/277755_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !1, line: 2, type: !10)
!12 = !DILocation(line: 2, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 9, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 13, scope: !7)
!17 = !DILocation(line: 5, column: 5, scope: !7)
!18 = !DILocation(line: 5, column: 11, scope: !7)
!19 = !DILocation(line: 5, column: 13, scope: !7)
!20 = !DILocation(line: 5, column: 12, scope: !7)
!21 = !DILocation(line: 7, column: 12, scope: !22)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 12)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!24 = !DILocation(line: 7, column: 14, scope: !22)
!25 = !DILocation(line: 7, column: 13, scope: !22)
!26 = !DILocation(line: 7, column: 15, scope: !22)
!27 = !DILocation(line: 7, column: 12, scope: !23)
!28 = !DILocation(line: 9, column: 15, scope: !29)
!29 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!30 = !DILocation(line: 9, column: 16, scope: !29)
!31 = !DILocation(line: 9, column: 14, scope: !29)
!32 = !DILocation(line: 10, column: 9, scope: !29)
!33 = !DILocation(line: 11, column: 11, scope: !23)
!34 = !DILocation(line: 11, column: 12, scope: !23)
!35 = !DILocation(line: 11, column: 10, scope: !23)
!36 = distinct !{!36, !17, !37}
!37 = !DILocation(line: 12, column: 5, scope: !7)
!38 = !DILocation(line: 13, column: 8, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 8)
!40 = !DILocation(line: 13, column: 9, scope: !39)
!41 = !DILocation(line: 13, column: 8, scope: !7)
!42 = !DILocation(line: 15, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 14, column: 5)
!44 = !DILocation(line: 19, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 18, column: 5)
!46 = !DILocation(line: 21, column: 1, scope: !7)
!47 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !48, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{!10}
!50 = !DILocalVariable(name: "p", scope: !47, file: !1, line: 25, type: !10)
!51 = !DILocation(line: 25, column: 9, scope: !47)
!52 = !DILocalVariable(name: "i", scope: !47, file: !1, line: 25, type: !10)
!53 = !DILocation(line: 25, column: 11, scope: !47)
!54 = !DILocalVariable(name: "flag", scope: !47, file: !1, line: 25, type: !10)
!55 = !DILocation(line: 25, column: 15, scope: !47)
!56 = !DILocation(line: 26, column: 5, scope: !47)
!57 = !DILocation(line: 27, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !47, file: !1, line: 27, column: 5)
!59 = !DILocation(line: 27, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !58, file: !1, line: 27, column: 5)
!61 = !DILocation(line: 27, column: 14, scope: !60)
!62 = !DILocation(line: 27, column: 13, scope: !60)
!63 = !DILocation(line: 27, column: 5, scope: !58)
!64 = !DILocation(line: 29, column: 25, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 29, column: 12)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 28, column: 5)
!67 = !DILocation(line: 29, column: 13, scope: !65)
!68 = !DILocation(line: 29, column: 27, scope: !65)
!69 = !DILocation(line: 29, column: 31, scope: !65)
!70 = !DILocation(line: 29, column: 46, scope: !65)
!71 = !DILocation(line: 29, column: 48, scope: !65)
!72 = !DILocation(line: 29, column: 47, scope: !65)
!73 = !DILocation(line: 29, column: 34, scope: !65)
!74 = !DILocation(line: 29, column: 50, scope: !65)
!75 = !DILocation(line: 29, column: 12, scope: !66)
!76 = !DILocation(line: 31, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !65, file: !1, line: 30, column: 9)
!78 = !DILocation(line: 32, column: 13, scope: !77)
!79 = !DILocation(line: 35, column: 15, scope: !66)
!80 = !DILocation(line: 35, column: 19, scope: !66)
!81 = !DILocation(line: 35, column: 14, scope: !66)
!82 = !DILocation(line: 36, column: 5, scope: !66)
!83 = !DILocation(line: 27, column: 18, scope: !60)
!84 = !DILocation(line: 27, column: 5, scope: !60)
!85 = distinct !{!85, !63, !86}
!86 = !DILocation(line: 36, column: 5, scope: !58)
!87 = !DILocation(line: 38, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !47, file: !1, line: 38, column: 8)
!89 = !DILocation(line: 38, column: 12, scope: !88)
!90 = !DILocation(line: 38, column: 8, scope: !47)
!91 = !DILocation(line: 40, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 39, column: 5)
!93 = !DILocation(line: 41, column: 5, scope: !92)
!94 = !DILocation(line: 43, column: 5, scope: !47)
