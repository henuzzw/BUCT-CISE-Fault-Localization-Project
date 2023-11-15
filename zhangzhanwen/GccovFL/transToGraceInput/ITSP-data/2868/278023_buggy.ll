; ModuleID = 'gcov/../WA_c/278023_buggy.c'
source_filename = "gcov/../WA_c/278023_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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

; <label>:5:                                      ; preds = %17, %1
  %6 = load i32, i32* %4, align 4, !dbg !18
  %7 = load i32, i32* %3, align 4, !dbg !20
  %8 = sub nsw i32 %7, 1, !dbg !21
  %9 = icmp sle i32 %6, %8, !dbg !22
  br i1 %9, label %10, label %20, !dbg !23

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %3, align 4, !dbg !24
  %12 = load i32, i32* %4, align 4, !dbg !27
  %13 = srem i32 %11, %12, !dbg !28
  %14 = icmp eq i32 %13, 0, !dbg !29
  br i1 %14, label %15, label %16, !dbg !30

; <label>:15:                                     ; preds = %10
  store i32 0, i32* %2, align 4, !dbg !31
  br label %21, !dbg !31

; <label>:16:                                     ; preds = %10
  br label %17, !dbg !33

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %4, align 4, !dbg !35
  %19 = add nsw i32 %18, 1, !dbg !35
  store i32 %19, i32* %4, align 4, !dbg !35
  br label %5, !dbg !36, !llvm.loop !37

; <label>:20:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !39
  br label %21, !dbg !39

; <label>:21:                                     ; preds = %20, %15
  %22 = load i32, i32* %2, align 4, !dbg !40
  ret i32 %22, !dbg !40
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %3, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %3, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %4, align 4, !dbg !50
  store i32 0, i32* %4, align 4, !dbg !51
  br label %6, !dbg !53

; <label>:6:                                      ; preds = %24, %0
  %7 = load i32, i32* %4, align 4, !dbg !54
  %8 = load i32, i32* %2, align 4, !dbg !56
  %9 = sub nsw i32 %8, 2, !dbg !57
  %10 = icmp sle i32 %7, %9, !dbg !58
  br i1 %10, label %11, label %27, !dbg !59

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %4, align 4, !dbg !60
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !63
  %14 = icmp ne i32 %13, 0, !dbg !64
  br i1 %14, label %15, label %23, !dbg !65

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !66
  %17 = add nsw i32 %16, 2, !dbg !67
  %18 = call i32 @_Z11check_primei(i32 %17), !dbg !68
  %19 = icmp eq i32 %18, 1, !dbg !69
  br i1 %19, label %20, label %23, !dbg !70

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %3, align 4, !dbg !71
  %22 = add nsw i32 %21, 1, !dbg !71
  store i32 %22, i32* %3, align 4, !dbg !71
  br label %23, !dbg !73

; <label>:23:                                     ; preds = %20, %15, %11
  br label %24, !dbg !74

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4, !dbg !75
  %26 = add nsw i32 %25, 1, !dbg !75
  store i32 %26, i32* %4, align 4, !dbg !75
  br label %6, !dbg !76, !llvm.loop !77

; <label>:27:                                     ; preds = %6
  %28 = load i32, i32* %3, align 4, !dbg !79
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %28), !dbg !80
  ret i32 0, !dbg !81
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
!1 = !DIFile(filename: "gcov/../WA_c/278023_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2868")
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
!15 = !DILocation(line: 6, column: 10, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!17 = !DILocation(line: 6, column: 9, scope: !16)
!18 = !DILocation(line: 6, column: 14, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 6, column: 17, scope: !19)
!21 = !DILocation(line: 6, column: 20, scope: !19)
!22 = !DILocation(line: 6, column: 15, scope: !19)
!23 = !DILocation(line: 6, column: 5, scope: !16)
!24 = !DILocation(line: 8, column: 13, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 13)
!26 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 8, column: 17, scope: !25)
!28 = !DILocation(line: 8, column: 16, scope: !25)
!29 = !DILocation(line: 8, column: 18, scope: !25)
!30 = !DILocation(line: 8, column: 13, scope: !26)
!31 = !DILocation(line: 10, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!33 = !DILocation(line: 14, column: 13, scope: !34)
!34 = distinct !DILexicalBlock(scope: !25, file: !1, line: 13, column: 9)
!35 = !DILocation(line: 6, column: 25, scope: !19)
!36 = !DILocation(line: 6, column: 5, scope: !19)
!37 = distinct !{!37, !23, !38}
!38 = !DILocation(line: 16, column: 5, scope: !16)
!39 = !DILocation(line: 17, column: 5, scope: !7)
!40 = !DILocation(line: 18, column: 1, scope: !7)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !42, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!10}
!44 = !DILocalVariable(name: "n", scope: !41, file: !1, line: 21, type: !10)
!45 = !DILocation(line: 21, column: 9, scope: !41)
!46 = !DILocation(line: 22, column: 5, scope: !41)
!47 = !DILocalVariable(name: "count", scope: !41, file: !1, line: 23, type: !10)
!48 = !DILocation(line: 23, column: 9, scope: !41)
!49 = !DILocalVariable(name: "i", scope: !41, file: !1, line: 24, type: !10)
!50 = !DILocation(line: 24, column: 9, scope: !41)
!51 = !DILocation(line: 25, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !41, file: !1, line: 25, column: 5)
!53 = !DILocation(line: 25, column: 9, scope: !52)
!54 = !DILocation(line: 25, column: 14, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 25, column: 5)
!56 = !DILocation(line: 25, column: 17, scope: !55)
!57 = !DILocation(line: 25, column: 18, scope: !55)
!58 = !DILocation(line: 25, column: 15, scope: !55)
!59 = !DILocation(line: 25, column: 5, scope: !52)
!60 = !DILocation(line: 27, column: 26, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 27, column: 13)
!62 = distinct !DILexicalBlock(scope: !55, file: !1, line: 26, column: 5)
!63 = !DILocation(line: 27, column: 14, scope: !61)
!64 = !DILocation(line: 27, column: 13, scope: !61)
!65 = !DILocation(line: 27, column: 29, scope: !61)
!66 = !DILocation(line: 27, column: 44, scope: !61)
!67 = !DILocation(line: 27, column: 45, scope: !61)
!68 = !DILocation(line: 27, column: 32, scope: !61)
!69 = !DILocation(line: 27, column: 49, scope: !61)
!70 = !DILocation(line: 27, column: 13, scope: !62)
!71 = !DILocation(line: 29, column: 18, scope: !72)
!72 = distinct !DILexicalBlock(scope: !61, file: !1, line: 28, column: 9)
!73 = !DILocation(line: 30, column: 9, scope: !72)
!74 = !DILocation(line: 32, column: 5, scope: !62)
!75 = !DILocation(line: 25, column: 23, scope: !55)
!76 = !DILocation(line: 25, column: 5, scope: !55)
!77 = distinct !{!77, !59, !78}
!78 = !DILocation(line: 32, column: 5, scope: !52)
!79 = !DILocation(line: 33, column: 17, scope: !41)
!80 = !DILocation(line: 33, column: 5, scope: !41)
!81 = !DILocation(line: 34, column: 5, scope: !41)
