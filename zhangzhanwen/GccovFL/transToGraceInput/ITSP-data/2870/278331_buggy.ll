; ModuleID = 'gcov/../WA_c/278331_buggy.c'
source_filename = "gcov/../WA_c/278331_buggy.c"
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
  %8 = sdiv i32 %7, 2, !dbg !21
  %9 = icmp sle i32 %6, %8, !dbg !22
  br i1 %9, label %10, label %20, !dbg !23

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %3, align 4, !dbg !24
  %12 = load i32, i32* %4, align 4, !dbg !27
  %13 = srem i32 %11, %12, !dbg !28
  %14 = icmp eq i32 %13, 0, !dbg !29
  br i1 %14, label %15, label %16, !dbg !30

; <label>:15:                                     ; preds = %10
  store i32 1, i32* %2, align 4, !dbg !31
  br label %21, !dbg !31

; <label>:16:                                     ; preds = %10
  br label %17, !dbg !33

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %4, align 4, !dbg !34
  %19 = add nsw i32 %18, 1, !dbg !34
  store i32 %19, i32* %4, align 4, !dbg !34
  br label %5, !dbg !35, !llvm.loop !36

; <label>:20:                                     ; preds = %5
  store i32 0, i32* %2, align 4, !dbg !38
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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !49
  %6 = load i32, i32* %2, align 4, !dbg !50
  store i32 %6, i32* %4, align 4, !dbg !52
  br label %7, !dbg !53

; <label>:7:                                      ; preds = %19, %0
  %8 = load i32, i32* %4, align 4, !dbg !54
  %9 = load i32, i32* %2, align 4, !dbg !56
  %10 = mul nsw i32 %9, 2, !dbg !57
  %11 = icmp sle i32 %8, %10, !dbg !58
  br i1 %11, label %12, label %22, !dbg !59

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %4, align 4, !dbg !60
  %14 = call i32 @_Z11check_primei(i32 %13), !dbg !62
  store i32 %14, i32* %3, align 4, !dbg !63
  %15 = load i32, i32* %3, align 4, !dbg !64
  %16 = icmp eq i32 %15, 0, !dbg !66
  br i1 %16, label %17, label %18, !dbg !67

; <label>:17:                                     ; preds = %12
  br label %22, !dbg !68

; <label>:18:                                     ; preds = %12
  br label %19, !dbg !70

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4, !dbg !71
  %21 = add nsw i32 %20, 1, !dbg !71
  store i32 %21, i32* %4, align 4, !dbg !71
  br label %7, !dbg !72, !llvm.loop !73

; <label>:22:                                     ; preds = %17, %7
  %23 = load i32, i32* %4, align 4, !dbg !75
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %23), !dbg !76
  ret i32 0, !dbg !77
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
!1 = !DIFile(filename: "gcov/../WA_c/278331_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
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
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
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
!24 = !DILocation(line: 8, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 12)
!26 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 8, column: 16, scope: !25)
!28 = !DILocation(line: 8, column: 15, scope: !25)
!29 = !DILocation(line: 8, column: 17, scope: !25)
!30 = !DILocation(line: 8, column: 12, scope: !26)
!31 = !DILocation(line: 10, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!33 = !DILocation(line: 12, column: 5, scope: !26)
!34 = !DILocation(line: 6, column: 25, scope: !19)
!35 = !DILocation(line: 6, column: 5, scope: !19)
!36 = distinct !{!36, !23, !37}
!37 = !DILocation(line: 12, column: 5, scope: !16)
!38 = !DILocation(line: 13, column: 5, scope: !7)
!39 = !DILocation(line: 14, column: 1, scope: !7)
!40 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !41, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{!10}
!43 = !DILocalVariable(name: "N", scope: !40, file: !1, line: 18, type: !10)
!44 = !DILocation(line: 18, column: 9, scope: !40)
!45 = !DILocalVariable(name: "c", scope: !40, file: !1, line: 18, type: !10)
!46 = !DILocation(line: 18, column: 11, scope: !40)
!47 = !DILocalVariable(name: "p", scope: !40, file: !1, line: 18, type: !10)
!48 = !DILocation(line: 18, column: 13, scope: !40)
!49 = !DILocation(line: 19, column: 5, scope: !40)
!50 = !DILocation(line: 20, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !40, file: !1, line: 20, column: 5)
!52 = !DILocation(line: 20, column: 10, scope: !51)
!53 = !DILocation(line: 20, column: 9, scope: !51)
!54 = !DILocation(line: 20, column: 14, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 20, column: 5)
!56 = !DILocation(line: 20, column: 17, scope: !55)
!57 = !DILocation(line: 20, column: 18, scope: !55)
!58 = !DILocation(line: 20, column: 15, scope: !55)
!59 = !DILocation(line: 20, column: 5, scope: !51)
!60 = !DILocation(line: 22, column: 23, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 21, column: 5)
!62 = !DILocation(line: 22, column: 11, scope: !61)
!63 = !DILocation(line: 22, column: 10, scope: !61)
!64 = !DILocation(line: 23, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 23, column: 12)
!66 = !DILocation(line: 23, column: 13, scope: !65)
!67 = !DILocation(line: 23, column: 12, scope: !61)
!68 = !DILocation(line: 25, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 24, column: 9)
!70 = !DILocation(line: 27, column: 5, scope: !61)
!71 = !DILocation(line: 20, column: 23, scope: !55)
!72 = !DILocation(line: 20, column: 5, scope: !55)
!73 = distinct !{!73, !59, !74}
!74 = !DILocation(line: 27, column: 5, scope: !51)
!75 = !DILocation(line: 28, column: 17, scope: !40)
!76 = !DILocation(line: 28, column: 5, scope: !40)
!77 = !DILocation(line: 29, column: 5, scope: !40)
