; ModuleID = 'gcov/../WA_c/278050_buggy.c'
source_filename = "gcov/../WA_c/278050_buggy.c"
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
  %18 = load i32, i32* %4, align 4, !dbg !34
  %19 = add nsw i32 %18, 1, !dbg !34
  store i32 %19, i32* %4, align 4, !dbg !34
  br label %5, !dbg !35, !llvm.loop !36

; <label>:20:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !38
  br label %21, !dbg !38

; <label>:21:                                     ; preds = %20, %15
  %22 = load i32, i32* %2, align 4, !dbg !39
  ret i32 %22, !dbg !39
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %3, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %4, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %4, align 4, !dbg !48
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !49
  store i32 2, i32* %2, align 4, !dbg !50
  br label %6, !dbg !52

; <label>:6:                                      ; preds = %24, %0
  %7 = load i32, i32* %2, align 4, !dbg !53
  %8 = load i32, i32* %3, align 4, !dbg !55
  %9 = sub nsw i32 %8, 1, !dbg !56
  %10 = icmp sle i32 %7, %9, !dbg !57
  br i1 %10, label %11, label %27, !dbg !58

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %2, align 4, !dbg !59
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !62
  %14 = icmp eq i32 %13, 1, !dbg !63
  br i1 %14, label %15, label %23, !dbg !64

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %2, align 4, !dbg !65
  %17 = add nsw i32 %16, 2, !dbg !66
  %18 = call i32 @_Z11check_primei(i32 %17), !dbg !67
  %19 = icmp eq i32 %18, 1, !dbg !68
  br i1 %19, label %20, label %23, !dbg !69

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %4, align 4, !dbg !70
  %22 = add nsw i32 %21, 1, !dbg !70
  store i32 %22, i32* %4, align 4, !dbg !70
  br label %23, !dbg !72

; <label>:23:                                     ; preds = %20, %15, %11
  br label %24, !dbg !73

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %2, align 4, !dbg !74
  %26 = add nsw i32 %25, 1, !dbg !74
  store i32 %26, i32* %2, align 4, !dbg !74
  br label %6, !dbg !75, !llvm.loop !76

; <label>:27:                                     ; preds = %6
  %28 = load i32, i32* %4, align 4, !dbg !78
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %28), !dbg !79
  ret i32 0, !dbg !80
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
!1 = !DIFile(filename: "gcov/../WA_c/278050_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2868")
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
!20 = !DILocation(line: 6, column: 18, scope: !19)
!21 = !DILocation(line: 6, column: 21, scope: !19)
!22 = !DILocation(line: 6, column: 15, scope: !19)
!23 = !DILocation(line: 6, column: 5, scope: !16)
!24 = !DILocation(line: 8, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 12)
!26 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 8, column: 16, scope: !25)
!28 = !DILocation(line: 8, column: 15, scope: !25)
!29 = !DILocation(line: 8, column: 17, scope: !25)
!30 = !DILocation(line: 8, column: 12, scope: !26)
!31 = !DILocation(line: 11, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!33 = !DILocation(line: 15, column: 5, scope: !26)
!34 = !DILocation(line: 6, column: 27, scope: !19)
!35 = !DILocation(line: 6, column: 5, scope: !19)
!36 = distinct !{!36, !23, !37}
!37 = !DILocation(line: 15, column: 5, scope: !16)
!38 = !DILocation(line: 16, column: 5, scope: !7)
!39 = !DILocation(line: 17, column: 1, scope: !7)
!40 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !41, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{!10}
!43 = !DILocalVariable(name: "i", scope: !40, file: !1, line: 21, type: !10)
!44 = !DILocation(line: 21, column: 9, scope: !40)
!45 = !DILocalVariable(name: "N", scope: !40, file: !1, line: 21, type: !10)
!46 = !DILocation(line: 21, column: 11, scope: !40)
!47 = !DILocalVariable(name: "count", scope: !40, file: !1, line: 21, type: !10)
!48 = !DILocation(line: 21, column: 13, scope: !40)
!49 = !DILocation(line: 22, column: 5, scope: !40)
!50 = !DILocation(line: 24, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !40, file: !1, line: 24, column: 5)
!52 = !DILocation(line: 24, column: 9, scope: !51)
!53 = !DILocation(line: 24, column: 14, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 24, column: 5)
!55 = !DILocation(line: 24, column: 18, scope: !54)
!56 = !DILocation(line: 24, column: 19, scope: !54)
!57 = !DILocation(line: 24, column: 15, scope: !54)
!58 = !DILocation(line: 24, column: 5, scope: !51)
!59 = !DILocation(line: 26, column: 26, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 26, column: 13)
!61 = distinct !DILexicalBlock(scope: !54, file: !1, line: 25, column: 5)
!62 = !DILocation(line: 26, column: 14, scope: !60)
!63 = !DILocation(line: 26, column: 28, scope: !60)
!64 = !DILocation(line: 26, column: 32, scope: !60)
!65 = !DILocation(line: 26, column: 47, scope: !60)
!66 = !DILocation(line: 26, column: 48, scope: !60)
!67 = !DILocation(line: 26, column: 35, scope: !60)
!68 = !DILocation(line: 26, column: 51, scope: !60)
!69 = !DILocation(line: 26, column: 13, scope: !61)
!70 = !DILocation(line: 28, column: 18, scope: !71)
!71 = distinct !DILexicalBlock(scope: !60, file: !1, line: 27, column: 9)
!72 = !DILocation(line: 29, column: 9, scope: !71)
!73 = !DILocation(line: 30, column: 5, scope: !61)
!74 = !DILocation(line: 24, column: 25, scope: !54)
!75 = !DILocation(line: 24, column: 5, scope: !54)
!76 = distinct !{!76, !58, !77}
!77 = !DILocation(line: 30, column: 5, scope: !51)
!78 = !DILocation(line: 31, column: 17, scope: !40)
!79 = !DILocation(line: 31, column: 5, scope: !40)
!80 = !DILocation(line: 32, column: 5, scope: !40)
