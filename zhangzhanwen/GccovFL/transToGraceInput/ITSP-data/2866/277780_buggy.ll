; ModuleID = 'gcov/../WA_c/277780_buggy.c'
source_filename = "gcov/../WA_c/277780_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1

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
  store i32 0, i32* %4, align 4, !dbg !47
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !48
  store i32 2, i32* %2, align 4, !dbg !49
  br label %6, !dbg !51

; <label>:6:                                      ; preds = %23, %0
  %7 = load i32, i32* %2, align 4, !dbg !52
  %8 = load i32, i32* %3, align 4, !dbg !54
  %9 = icmp slt i32 %7, %8, !dbg !55
  br i1 %9, label %10, label %26, !dbg !56

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %2, align 4, !dbg !57
  %12 = call i32 @_Z11check_primei(i32 %11), !dbg !60
  %13 = icmp ne i32 %12, 0, !dbg !60
  br i1 %13, label %14, label %22, !dbg !61

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 4, !dbg !62
  %16 = load i32, i32* %2, align 4, !dbg !63
  %17 = sub nsw i32 %15, %16, !dbg !64
  %18 = call i32 @_Z11check_primei(i32 %17), !dbg !65
  %19 = icmp ne i32 %18, 0, !dbg !65
  br i1 %19, label %20, label %22, !dbg !66

; <label>:20:                                     ; preds = %14
  store i32 1, i32* %4, align 4, !dbg !67
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !69
  br label %26, !dbg !70

; <label>:22:                                     ; preds = %14, %10
  br label %23, !dbg !71

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %2, align 4, !dbg !72
  %25 = add nsw i32 %24, 1, !dbg !72
  store i32 %25, i32* %2, align 4, !dbg !72
  br label %6, !dbg !73, !llvm.loop !74

; <label>:26:                                     ; preds = %20, %6
  %27 = load i32, i32* %4, align 4, !dbg !76
  %28 = icmp eq i32 %27, 0, !dbg !78
  br i1 %28, label %29, label %31, !dbg !79

; <label>:29:                                     ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !80
  br label %31, !dbg !82

; <label>:31:                                     ; preds = %29, %26
  %32 = load i32, i32* %1, align 4, !dbg !83
  ret i32 %32, !dbg !83
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
!1 = !DIFile(filename: "gcov/../WA_c/277780_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
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
!20 = !DILocation(line: 6, column: 16, scope: !19)
!21 = !DILocation(line: 6, column: 15, scope: !19)
!22 = !DILocation(line: 6, column: 5, scope: !16)
!23 = !DILocation(line: 8, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 12)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 8, column: 17, scope: !24)
!27 = !DILocation(line: 8, column: 16, scope: !24)
!28 = !DILocation(line: 8, column: 19, scope: !24)
!29 = !DILocation(line: 8, column: 12, scope: !25)
!30 = !DILocation(line: 11, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 9)
!32 = !DILocation(line: 14, column: 5, scope: !25)
!33 = !DILocation(line: 6, column: 22, scope: !19)
!34 = !DILocation(line: 6, column: 5, scope: !19)
!35 = distinct !{!35, !22, !36}
!36 = !DILocation(line: 14, column: 5, scope: !16)
!37 = !DILocation(line: 15, column: 5, scope: !7)
!38 = !DILocation(line: 17, column: 1, scope: !7)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !40, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!10}
!42 = !DILocalVariable(name: "i", scope: !39, file: !1, line: 21, type: !10)
!43 = !DILocation(line: 21, column: 9, scope: !39)
!44 = !DILocalVariable(name: "n", scope: !39, file: !1, line: 21, type: !10)
!45 = !DILocation(line: 21, column: 11, scope: !39)
!46 = !DILocalVariable(name: "flag", scope: !39, file: !1, line: 21, type: !10)
!47 = !DILocation(line: 21, column: 13, scope: !39)
!48 = !DILocation(line: 22, column: 5, scope: !39)
!49 = !DILocation(line: 23, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !39, file: !1, line: 23, column: 5)
!51 = !DILocation(line: 23, column: 9, scope: !50)
!52 = !DILocation(line: 23, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 23, column: 5)
!54 = !DILocation(line: 23, column: 16, scope: !53)
!55 = !DILocation(line: 23, column: 15, scope: !53)
!56 = !DILocation(line: 23, column: 5, scope: !50)
!57 = !DILocation(line: 25, column: 24, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 25, column: 12)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 24, column: 5)
!60 = !DILocation(line: 25, column: 12, scope: !58)
!61 = !DILocation(line: 25, column: 27, scope: !58)
!62 = !DILocation(line: 25, column: 42, scope: !58)
!63 = !DILocation(line: 25, column: 44, scope: !58)
!64 = !DILocation(line: 25, column: 43, scope: !58)
!65 = !DILocation(line: 25, column: 30, scope: !58)
!66 = !DILocation(line: 25, column: 12, scope: !59)
!67 = !DILocation(line: 27, column: 17, scope: !68)
!68 = distinct !DILexicalBlock(scope: !58, file: !1, line: 26, column: 9)
!69 = !DILocation(line: 28, column: 13, scope: !68)
!70 = !DILocation(line: 29, column: 13, scope: !68)
!71 = !DILocation(line: 32, column: 5, scope: !59)
!72 = !DILocation(line: 23, column: 20, scope: !53)
!73 = !DILocation(line: 23, column: 5, scope: !53)
!74 = distinct !{!74, !56, !75}
!75 = !DILocation(line: 32, column: 5, scope: !50)
!76 = !DILocation(line: 33, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !39, file: !1, line: 33, column: 8)
!78 = !DILocation(line: 33, column: 12, scope: !77)
!79 = !DILocation(line: 33, column: 8, scope: !39)
!80 = !DILocation(line: 35, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 34, column: 5)
!82 = !DILocation(line: 36, column: 5, scope: !81)
!83 = !DILocation(line: 39, column: 1, scope: !39)
