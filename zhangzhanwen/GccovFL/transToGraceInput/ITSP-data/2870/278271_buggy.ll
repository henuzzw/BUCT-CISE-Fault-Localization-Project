; ModuleID = 'gcov/../WA_c/278271_buggy.c'
source_filename = "gcov/../WA_c/278271_buggy.c"
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
  store i32 0, i32* %2, align 4, !dbg !32
  br label %21, !dbg !32

; <label>:16:                                     ; preds = %14
  %17 = load i32, i32* %4, align 4, !dbg !34
  %18 = add nsw i32 %17, 1, !dbg !34
  store i32 %18, i32* %4, align 4, !dbg !34
  br label %5, !dbg !35, !llvm.loop !36

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* %3, align 4, !dbg !38
  store i32 %20, i32* %2, align 4, !dbg !39
  br label %21, !dbg !39

; <label>:21:                                     ; preds = %19, %15
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
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !47
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !48
  %5 = load i32, i32* %2, align 4, !dbg !49
  store i32 %5, i32* %3, align 4, !dbg !51
  br label %6, !dbg !52

; <label>:6:                                      ; preds = %16, %0
  %7 = load i32, i32* %3, align 4, !dbg !53
  %8 = load i32, i32* %2, align 4, !dbg !55
  %9 = icmp sge i32 %7, %8, !dbg !56
  br i1 %9, label %10, label %19, !dbg !57

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !58
  %12 = call i32 @_Z11check_primei(i32 %11), !dbg !61
  %13 = icmp ne i32 %12, 0, !dbg !61
  br i1 %13, label %14, label %15, !dbg !62

; <label>:14:                                     ; preds = %10
  br label %19, !dbg !63

; <label>:15:                                     ; preds = %10
  br label %16, !dbg !65

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %3, align 4, !dbg !67
  %18 = add nsw i32 %17, 1, !dbg !67
  store i32 %18, i32* %3, align 4, !dbg !67
  br label %6, !dbg !68, !llvm.loop !69

; <label>:19:                                     ; preds = %14, %6
  %20 = load i32, i32* %3, align 4, !dbg !71
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %20), !dbg !72
  ret i32 0, !dbg !73
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
!1 = !DIFile(filename: "gcov/../WA_c/278271_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocation(line: 7, column: 10, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!17 = !DILocation(line: 7, column: 9, scope: !16)
!18 = !DILocation(line: 7, column: 14, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 7, column: 16, scope: !19)
!21 = !DILocation(line: 7, column: 15, scope: !19)
!22 = !DILocation(line: 7, column: 5, scope: !16)
!23 = !DILocation(line: 9, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 12)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!26 = !DILocation(line: 9, column: 16, scope: !24)
!27 = !DILocation(line: 9, column: 15, scope: !24)
!28 = !DILocation(line: 9, column: 17, scope: !24)
!29 = !DILocation(line: 9, column: 12, scope: !25)
!30 = !DILocation(line: 11, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 9)
!32 = !DILocation(line: 15, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !1, line: 14, column: 9)
!34 = !DILocation(line: 7, column: 22, scope: !19)
!35 = !DILocation(line: 7, column: 5, scope: !19)
!36 = distinct !{!36, !22, !37}
!37 = !DILocation(line: 17, column: 5, scope: !16)
!38 = !DILocation(line: 18, column: 12, scope: !7)
!39 = !DILocation(line: 18, column: 5, scope: !7)
!40 = !DILocation(line: 19, column: 1, scope: !7)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !42, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!10}
!44 = !DILocalVariable(name: "n", scope: !41, file: !1, line: 23, type: !10)
!45 = !DILocation(line: 23, column: 9, scope: !41)
!46 = !DILocalVariable(name: "x", scope: !41, file: !1, line: 23, type: !10)
!47 = !DILocation(line: 23, column: 11, scope: !41)
!48 = !DILocation(line: 24, column: 5, scope: !41)
!49 = !DILocation(line: 25, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !41, file: !1, line: 25, column: 5)
!51 = !DILocation(line: 25, column: 10, scope: !50)
!52 = !DILocation(line: 25, column: 9, scope: !50)
!53 = !DILocation(line: 25, column: 14, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 25, column: 5)
!55 = !DILocation(line: 25, column: 17, scope: !54)
!56 = !DILocation(line: 25, column: 15, scope: !54)
!57 = !DILocation(line: 25, column: 5, scope: !50)
!58 = !DILocation(line: 27, column: 25, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 27, column: 13)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 26, column: 5)
!61 = !DILocation(line: 27, column: 13, scope: !59)
!62 = !DILocation(line: 27, column: 13, scope: !60)
!63 = !DILocation(line: 29, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !59, file: !1, line: 28, column: 9)
!65 = !DILocation(line: 33, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 32, column: 9)
!67 = !DILocation(line: 25, column: 21, scope: !54)
!68 = !DILocation(line: 25, column: 5, scope: !54)
!69 = distinct !{!69, !57, !70}
!70 = !DILocation(line: 35, column: 5, scope: !50)
!71 = !DILocation(line: 36, column: 17, scope: !41)
!72 = !DILocation(line: 36, column: 5, scope: !41)
!73 = !DILocation(line: 37, column: 5, scope: !41)
