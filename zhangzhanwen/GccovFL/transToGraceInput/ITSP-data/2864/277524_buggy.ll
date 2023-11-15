; ModuleID = 'gcov/../WA_c/277524_buggy.c'
source_filename = "gcov/../WA_c/277524_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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
  %13 = icmp eq i32 %12, 0, !dbg !28
  br i1 %13, label %14, label %15, !dbg !29

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !30
  br label %20, !dbg !30

; <label>:15:                                     ; preds = %9
  br label %16, !dbg !32

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %4, align 4, !dbg !33
  %18 = add nsw i32 %17, 1, !dbg !33
  store i32 %18, i32* %4, align 4, !dbg !33
  br label %5, !dbg !34, !llvm.loop !35

; <label>:19:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !37
  br label %20, !dbg !37

; <label>:20:                                     ; preds = %19, %14
  %21 = load i32, i32* %2, align 4, !dbg !38
  ret i32 %21, !dbg !38
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !39 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %3, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %4, metadata !46, metadata !DIExpression()), !dbg !47
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3), !dbg !48
  %6 = load i32, i32* %2, align 4, !dbg !49
  %7 = icmp eq i32 %6, 1, !dbg !51
  br i1 %7, label %8, label %11, !dbg !52

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !53
  %10 = add nsw i32 %9, 1, !dbg !53
  store i32 %10, i32* %2, align 4, !dbg !53
  br label %11, !dbg !55

; <label>:11:                                     ; preds = %8, %0
  %12 = load i32, i32* %2, align 4, !dbg !56
  store i32 %12, i32* %4, align 4, !dbg !58
  br label %13, !dbg !59

; <label>:13:                                     ; preds = %25, %11
  %14 = load i32, i32* %4, align 4, !dbg !60
  %15 = load i32, i32* %3, align 4, !dbg !62
  %16 = icmp sle i32 %14, %15, !dbg !63
  br i1 %16, label %17, label %28, !dbg !64

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %4, align 4, !dbg !65
  %19 = call i32 @_Z11check_primei(i32 %18), !dbg !68
  %20 = icmp eq i32 %19, 1, !dbg !69
  br i1 %20, label %21, label %24, !dbg !70

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %4, align 4, !dbg !71
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %22), !dbg !73
  br label %24, !dbg !74

; <label>:24:                                     ; preds = %21, %17
  br label %25, !dbg !75

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %4, align 4, !dbg !76
  %27 = add nsw i32 %26, 1, !dbg !77
  store i32 %27, i32* %4, align 4, !dbg !78
  br label %13, !dbg !79, !llvm.loop !80

; <label>:28:                                     ; preds = %13
  ret i32 0, !dbg !82
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
!1 = !DIFile(filename: "gcov/../WA_c/277524_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
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
!15 = !DILocation(line: 6, column: 11, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!17 = !DILocation(line: 6, column: 10, scope: !16)
!18 = !DILocation(line: 6, column: 15, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 6, column: 17, scope: !19)
!21 = !DILocation(line: 6, column: 16, scope: !19)
!22 = !DILocation(line: 6, column: 5, scope: !16)
!23 = !DILocation(line: 8, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 12)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 8, column: 16, scope: !24)
!27 = !DILocation(line: 8, column: 15, scope: !24)
!28 = !DILocation(line: 8, column: 17, scope: !24)
!29 = !DILocation(line: 8, column: 12, scope: !25)
!30 = !DILocation(line: 10, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 9)
!32 = !DILocation(line: 12, column: 5, scope: !25)
!33 = !DILocation(line: 6, column: 23, scope: !19)
!34 = !DILocation(line: 6, column: 5, scope: !19)
!35 = distinct !{!35, !22, !36}
!36 = !DILocation(line: 12, column: 5, scope: !16)
!37 = !DILocation(line: 13, column: 5, scope: !7)
!38 = !DILocation(line: 14, column: 1, scope: !7)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !40, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!10}
!42 = !DILocalVariable(name: "n1", scope: !39, file: !1, line: 20, type: !10)
!43 = !DILocation(line: 20, column: 9, scope: !39)
!44 = !DILocalVariable(name: "n2", scope: !39, file: !1, line: 20, type: !10)
!45 = !DILocation(line: 20, column: 12, scope: !39)
!46 = !DILocalVariable(name: "j", scope: !39, file: !1, line: 20, type: !10)
!47 = !DILocation(line: 20, column: 15, scope: !39)
!48 = !DILocation(line: 21, column: 5, scope: !39)
!49 = !DILocation(line: 22, column: 8, scope: !50)
!50 = distinct !DILexicalBlock(scope: !39, file: !1, line: 22, column: 8)
!51 = !DILocation(line: 22, column: 10, scope: !50)
!52 = !DILocation(line: 22, column: 8, scope: !39)
!53 = !DILocation(line: 24, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 23, column: 5)
!55 = !DILocation(line: 25, column: 5, scope: !54)
!56 = !DILocation(line: 26, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 5)
!58 = !DILocation(line: 26, column: 11, scope: !57)
!59 = !DILocation(line: 26, column: 10, scope: !57)
!60 = !DILocation(line: 26, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 26, column: 5)
!62 = !DILocation(line: 26, column: 19, scope: !61)
!63 = !DILocation(line: 26, column: 17, scope: !61)
!64 = !DILocation(line: 26, column: 5, scope: !57)
!65 = !DILocation(line: 28, column: 24, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 28, column: 12)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 27, column: 5)
!68 = !DILocation(line: 28, column: 12, scope: !66)
!69 = !DILocation(line: 28, column: 26, scope: !66)
!70 = !DILocation(line: 28, column: 12, scope: !67)
!71 = !DILocation(line: 30, column: 26, scope: !72)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 29, column: 9)
!73 = !DILocation(line: 30, column: 13, scope: !72)
!74 = !DILocation(line: 31, column: 9, scope: !72)
!75 = !DILocation(line: 33, column: 5, scope: !67)
!76 = !DILocation(line: 26, column: 25, scope: !61)
!77 = !DILocation(line: 26, column: 26, scope: !61)
!78 = !DILocation(line: 26, column: 24, scope: !61)
!79 = !DILocation(line: 26, column: 5, scope: !61)
!80 = distinct !{!80, !64, !81}
!81 = !DILocation(line: 33, column: 5, scope: !57)
!82 = !DILocation(line: 45, column: 5, scope: !39)
