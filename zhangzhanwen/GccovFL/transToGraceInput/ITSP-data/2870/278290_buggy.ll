; ModuleID = 'gcov/../WA_c/278290_buggy.c'
source_filename = "gcov/../WA_c/278290_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = global i32 0, align 4, !dbg !0
@n = global i32 0, align 4, !dbg !6
@y = global i32 0, align 4, !dbg !9
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !15 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 2, i32* @x, align 4, !dbg !20
  br label %4, !dbg !22

; <label>:4:                                      ; preds = %16, %1
  %5 = load i32, i32* @x, align 4, !dbg !23
  %6 = load i32, i32* %3, align 4, !dbg !25
  %7 = sdiv i32 %6, 2, !dbg !26
  %8 = icmp sle i32 %5, %7, !dbg !27
  br i1 %8, label %9, label %19, !dbg !28

; <label>:9:                                      ; preds = %4
  %10 = load i32, i32* %3, align 4, !dbg !29
  %11 = load i32, i32* @x, align 4, !dbg !32
  %12 = srem i32 %10, %11, !dbg !33
  %13 = icmp eq i32 %12, 0, !dbg !34
  br i1 %13, label %14, label %15, !dbg !35

; <label>:14:                                     ; preds = %9
  store i32 10, i32* %2, align 4, !dbg !36
  br label %20, !dbg !36

; <label>:15:                                     ; preds = %9
  br label %16, !dbg !38

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* @x, align 4, !dbg !39
  %18 = add nsw i32 %17, 1, !dbg !39
  store i32 %18, i32* @x, align 4, !dbg !39
  br label %4, !dbg !40, !llvm.loop !41

; <label>:19:                                     ; preds = %4
  store i32 2, i32* %2, align 4, !dbg !43
  br label %20, !dbg !43

; <label>:20:                                     ; preds = %19, %14
  %21 = load i32, i32* %2, align 4, !dbg !44
  ret i32 %21, !dbg !44
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !45 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* @n), !dbg !48
  %3 = load i32, i32* @n, align 4, !dbg !49
  store i32 %3, i32* @y, align 4, !dbg !51
  br label %4, !dbg !52

; <label>:4:                                      ; preds = %22, %0
  %5 = load i32, i32* @y, align 4, !dbg !53
  %6 = load i32, i32* @n, align 4, !dbg !55
  %7 = icmp sge i32 %5, %6, !dbg !56
  br i1 %7, label %8, label %25, !dbg !57

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @y, align 4, !dbg !58
  %10 = icmp eq i32 %9, 1, !dbg !61
  br i1 %10, label %11, label %14, !dbg !62

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* @y, align 4, !dbg !63
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %12), !dbg !65
  br label %25, !dbg !66

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* @y, align 4, !dbg !67
  %16 = call i32 @_Z11check_primei(i32 %15), !dbg !69
  %17 = icmp eq i32 %16, 2, !dbg !70
  br i1 %17, label %18, label %21, !dbg !71

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* @y, align 4, !dbg !72
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %19), !dbg !74
  br label %25, !dbg !75

; <label>:21:                                     ; preds = %14
  br label %22, !dbg !76

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* @y, align 4, !dbg !77
  %24 = add nsw i32 %23, 1, !dbg !77
  store i32 %24, i32* @y, align 4, !dbg !77
  br label %4, !dbg !78, !llvm.loop !79

; <label>:25:                                     ; preds = %18, %11, %4
  ret i32 0, !dbg !81
}

declare i32 @scanf(i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 2, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "gcov/../WA_c/278290_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
!4 = !{}
!5 = !{!0, !6, !9}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 2, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 2, type: !8, isLocal: false, isDefinition: true)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!15 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !3, file: !3, line: 5, type: !16, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{!8, !8}
!18 = !DILocalVariable(name: "n", arg: 1, scope: !15, file: !3, line: 5, type: !8)
!19 = !DILocation(line: 5, column: 21, scope: !15)
!20 = !DILocation(line: 7, column: 10, scope: !21)
!21 = distinct !DILexicalBlock(scope: !15, file: !3, line: 7, column: 5)
!22 = !DILocation(line: 7, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !3, line: 7, column: 5)
!25 = !DILocation(line: 7, column: 17, scope: !24)
!26 = !DILocation(line: 7, column: 18, scope: !24)
!27 = !DILocation(line: 7, column: 15, scope: !24)
!28 = !DILocation(line: 7, column: 5, scope: !21)
!29 = !DILocation(line: 9, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 9, column: 12)
!31 = distinct !DILexicalBlock(scope: !24, file: !3, line: 8, column: 5)
!32 = !DILocation(line: 9, column: 14, scope: !30)
!33 = !DILocation(line: 9, column: 13, scope: !30)
!34 = !DILocation(line: 9, column: 15, scope: !30)
!35 = !DILocation(line: 9, column: 12, scope: !31)
!36 = !DILocation(line: 11, column: 13, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !3, line: 10, column: 9)
!38 = !DILocation(line: 13, column: 5, scope: !31)
!39 = !DILocation(line: 7, column: 23, scope: !24)
!40 = !DILocation(line: 7, column: 5, scope: !24)
!41 = distinct !{!41, !28, !42}
!42 = !DILocation(line: 13, column: 5, scope: !21)
!43 = !DILocation(line: 14, column: 5, scope: !15)
!44 = !DILocation(line: 15, column: 1, scope: !15)
!45 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 16, type: !46, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!46 = !DISubroutineType(types: !47)
!47 = !{!8}
!48 = !DILocation(line: 18, column: 5, scope: !45)
!49 = !DILocation(line: 19, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !3, line: 19, column: 5)
!51 = !DILocation(line: 19, column: 10, scope: !50)
!52 = !DILocation(line: 19, column: 9, scope: !50)
!53 = !DILocation(line: 19, column: 14, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !3, line: 19, column: 5)
!55 = !DILocation(line: 19, column: 17, scope: !54)
!56 = !DILocation(line: 19, column: 15, scope: !54)
!57 = !DILocation(line: 19, column: 5, scope: !50)
!58 = !DILocation(line: 21, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 21, column: 13)
!60 = distinct !DILexicalBlock(scope: !54, file: !3, line: 20, column: 5)
!61 = !DILocation(line: 21, column: 14, scope: !59)
!62 = !DILocation(line: 21, column: 13, scope: !60)
!63 = !DILocation(line: 23, column: 25, scope: !64)
!64 = distinct !DILexicalBlock(scope: !59, file: !3, line: 22, column: 9)
!65 = !DILocation(line: 23, column: 13, scope: !64)
!66 = !DILocation(line: 24, column: 13, scope: !64)
!67 = !DILocation(line: 26, column: 24, scope: !68)
!68 = distinct !DILexicalBlock(scope: !60, file: !3, line: 26, column: 12)
!69 = !DILocation(line: 26, column: 12, scope: !68)
!70 = !DILocation(line: 26, column: 26, scope: !68)
!71 = !DILocation(line: 26, column: 12, scope: !60)
!72 = !DILocation(line: 28, column: 25, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 27, column: 9)
!74 = !DILocation(line: 28, column: 13, scope: !73)
!75 = !DILocation(line: 29, column: 13, scope: !73)
!76 = !DILocation(line: 32, column: 5, scope: !60)
!77 = !DILocation(line: 19, column: 21, scope: !54)
!78 = !DILocation(line: 19, column: 5, scope: !54)
!79 = distinct !{!79, !57, !80}
!80 = !DILocation(line: 32, column: 5, scope: !50)
!81 = !DILocation(line: 38, column: 5, scope: !45)
