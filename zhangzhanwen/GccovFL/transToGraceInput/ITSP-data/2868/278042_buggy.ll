; ModuleID = 'gcov/../WA_c/278042_buggy.c'
source_filename = "gcov/../WA_c/278042_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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
  store i32 0, i32* %4, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %5, align 4, !dbg !18
  store i32 2, i32* %3, align 4, !dbg !19
  br label %6, !dbg !21

; <label>:6:                                      ; preds = %20, %1
  %7 = load i32, i32* %3, align 4, !dbg !22
  %8 = load i32, i32* %2, align 4, !dbg !24
  %9 = icmp slt i32 %7, %8, !dbg !25
  br i1 %9, label %10, label %23, !dbg !26

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %2, align 4, !dbg !27
  %12 = load i32, i32* %3, align 4, !dbg !30
  %13 = srem i32 %11, %12, !dbg !31
  %14 = icmp eq i32 %13, 0, !dbg !32
  br i1 %14, label %15, label %16, !dbg !33

; <label>:15:                                     ; preds = %10
  br label %23, !dbg !34

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %4, align 4, !dbg !36
  %18 = add nsw i32 %17, 1, !dbg !38
  store i32 %18, i32* %4, align 4, !dbg !39
  br label %19

; <label>:19:                                     ; preds = %16
  br label %20, !dbg !40

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %3, align 4, !dbg !41
  %22 = add nsw i32 %21, 1, !dbg !41
  store i32 %22, i32* %3, align 4, !dbg !41
  br label %6, !dbg !42, !llvm.loop !43

; <label>:23:                                     ; preds = %15, %6
  %24 = load i32, i32* %4, align 4, !dbg !45
  %25 = load i32, i32* %2, align 4, !dbg !47
  %26 = sub nsw i32 %25, 2, !dbg !48
  %27 = icmp eq i32 %24, %26, !dbg !49
  br i1 %27, label %28, label %29, !dbg !50

; <label>:28:                                     ; preds = %23
  store i32 1, i32* %5, align 4, !dbg !51
  br label %29, !dbg !53

; <label>:29:                                     ; preds = %28, %23
  %30 = load i32, i32* %5, align 4, !dbg !54
  ret i32 %30, !dbg !55
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !56 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %3, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %4, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %6, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 0, i32* %6, align 4, !dbg !68
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !69
  store i32 2, i32* %3, align 4, !dbg !70
  br label %8, !dbg !72

; <label>:8:                                      ; preds = %33, %0
  %9 = load i32, i32* %3, align 4, !dbg !73
  %10 = load i32, i32* %2, align 4, !dbg !75
  %11 = icmp slt i32 %9, %10, !dbg !76
  br i1 %11, label %12, label %36, !dbg !77

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %3, align 4, !dbg !78
  %14 = call i32 @_Z11check_primei(i32 %13), !dbg !80
  store i32 %14, i32* %4, align 4, !dbg !81
  %15 = load i32, i32* %3, align 4, !dbg !82
  %16 = add nsw i32 %15, 2, !dbg !84
  %17 = load i32, i32* %2, align 4, !dbg !85
  %18 = icmp slt i32 %16, %17, !dbg !86
  br i1 %18, label %19, label %23, !dbg !87

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %3, align 4, !dbg !88
  %21 = add nsw i32 %20, 2, !dbg !90
  %22 = call i32 @_Z11check_primei(i32 %21), !dbg !91
  store i32 %22, i32* %5, align 4, !dbg !92
  br label %23, !dbg !93

; <label>:23:                                     ; preds = %19, %12
  %24 = load i32, i32* %4, align 4, !dbg !94
  %25 = icmp eq i32 %24, 1, !dbg !96
  br i1 %25, label %26, label %32, !dbg !97

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %5, align 4, !dbg !98
  %28 = icmp eq i32 %27, 1, !dbg !99
  br i1 %28, label %29, label %32, !dbg !100

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %6, align 4, !dbg !101
  %31 = add nsw i32 %30, 1, !dbg !103
  store i32 %31, i32* %6, align 4, !dbg !104
  br label %32, !dbg !105

; <label>:32:                                     ; preds = %29, %26, %23
  br label %33, !dbg !106

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %3, align 4, !dbg !107
  %35 = add nsw i32 %34, 1, !dbg !107
  store i32 %35, i32* %3, align 4, !dbg !107
  br label %8, !dbg !108, !llvm.loop !109

; <label>:36:                                     ; preds = %8
  %37 = load i32, i32* %6, align 4, !dbg !111
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %37), !dbg !112
  ret i32 0, !dbg !113
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
!1 = !DIFile(filename: "gcov/../WA_c/278042_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2868")
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
!15 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 11, scope: !7)
!17 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 10, scope: !20)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!21 = !DILocation(line: 6, column: 9, scope: !20)
!22 = !DILocation(line: 6, column: 14, scope: !23)
!23 = distinct !DILexicalBlock(scope: !20, file: !1, line: 6, column: 5)
!24 = !DILocation(line: 6, column: 16, scope: !23)
!25 = !DILocation(line: 6, column: 15, scope: !23)
!26 = !DILocation(line: 6, column: 5, scope: !20)
!27 = !DILocation(line: 8, column: 12, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 12)
!29 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 5)
!30 = !DILocation(line: 8, column: 16, scope: !28)
!31 = !DILocation(line: 8, column: 15, scope: !28)
!32 = !DILocation(line: 8, column: 17, scope: !28)
!33 = !DILocation(line: 8, column: 12, scope: !29)
!34 = !DILocation(line: 10, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 9, column: 9)
!36 = !DILocation(line: 14, column: 15, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !1, line: 13, column: 9)
!38 = !DILocation(line: 14, column: 16, scope: !37)
!39 = !DILocation(line: 14, column: 14, scope: !37)
!40 = !DILocation(line: 16, column: 5, scope: !29)
!41 = !DILocation(line: 6, column: 22, scope: !23)
!42 = !DILocation(line: 6, column: 5, scope: !23)
!43 = distinct !{!43, !26, !44}
!44 = !DILocation(line: 16, column: 5, scope: !20)
!45 = !DILocation(line: 17, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !7, file: !1, line: 17, column: 8)
!47 = !DILocation(line: 17, column: 11, scope: !46)
!48 = !DILocation(line: 17, column: 14, scope: !46)
!49 = !DILocation(line: 17, column: 9, scope: !46)
!50 = !DILocation(line: 17, column: 8, scope: !7)
!51 = !DILocation(line: 19, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 18, column: 5)
!53 = !DILocation(line: 20, column: 5, scope: !52)
!54 = !DILocation(line: 21, column: 12, scope: !7)
!55 = !DILocation(line: 21, column: 5, scope: !7)
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !57, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{!10}
!59 = !DILocalVariable(name: "a", scope: !56, file: !1, line: 27, type: !10)
!60 = !DILocation(line: 27, column: 9, scope: !56)
!61 = !DILocalVariable(name: "b", scope: !56, file: !1, line: 27, type: !10)
!62 = !DILocation(line: 27, column: 11, scope: !56)
!63 = !DILocalVariable(name: "i", scope: !56, file: !1, line: 27, type: !10)
!64 = !DILocation(line: 27, column: 13, scope: !56)
!65 = !DILocalVariable(name: "j", scope: !56, file: !1, line: 27, type: !10)
!66 = !DILocation(line: 27, column: 15, scope: !56)
!67 = !DILocalVariable(name: "k", scope: !56, file: !1, line: 27, type: !10)
!68 = !DILocation(line: 27, column: 17, scope: !56)
!69 = !DILocation(line: 28, column: 5, scope: !56)
!70 = !DILocation(line: 29, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !56, file: !1, line: 29, column: 5)
!72 = !DILocation(line: 29, column: 9, scope: !71)
!73 = !DILocation(line: 29, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 29, column: 5)
!75 = !DILocation(line: 29, column: 16, scope: !74)
!76 = !DILocation(line: 29, column: 15, scope: !74)
!77 = !DILocation(line: 29, column: 5, scope: !71)
!78 = !DILocation(line: 31, column: 23, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 30, column: 5)
!80 = !DILocation(line: 31, column: 11, scope: !79)
!81 = !DILocation(line: 31, column: 10, scope: !79)
!82 = !DILocation(line: 32, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 32, column: 12)
!84 = !DILocation(line: 32, column: 13, scope: !83)
!85 = !DILocation(line: 32, column: 16, scope: !83)
!86 = !DILocation(line: 32, column: 15, scope: !83)
!87 = !DILocation(line: 32, column: 12, scope: !79)
!88 = !DILocation(line: 34, column: 27, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 33, column: 9)
!90 = !DILocation(line: 34, column: 28, scope: !89)
!91 = !DILocation(line: 34, column: 15, scope: !89)
!92 = !DILocation(line: 34, column: 14, scope: !89)
!93 = !DILocation(line: 35, column: 9, scope: !89)
!94 = !DILocation(line: 36, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !79, file: !1, line: 36, column: 12)
!96 = !DILocation(line: 36, column: 13, scope: !95)
!97 = !DILocation(line: 36, column: 16, scope: !95)
!98 = !DILocation(line: 36, column: 18, scope: !95)
!99 = !DILocation(line: 36, column: 19, scope: !95)
!100 = !DILocation(line: 36, column: 12, scope: !79)
!101 = !DILocation(line: 38, column: 15, scope: !102)
!102 = distinct !DILexicalBlock(scope: !95, file: !1, line: 37, column: 9)
!103 = !DILocation(line: 38, column: 16, scope: !102)
!104 = !DILocation(line: 38, column: 14, scope: !102)
!105 = !DILocation(line: 39, column: 9, scope: !102)
!106 = !DILocation(line: 41, column: 5, scope: !79)
!107 = !DILocation(line: 29, column: 20, scope: !74)
!108 = !DILocation(line: 29, column: 5, scope: !74)
!109 = distinct !{!109, !77, !110}
!110 = !DILocation(line: 41, column: 5, scope: !71)
!111 = !DILocation(line: 42, column: 17, scope: !56)
!112 = !DILocation(line: 42, column: 5, scope: !56)
!113 = !DILocation(line: 43, column: 5, scope: !56)
