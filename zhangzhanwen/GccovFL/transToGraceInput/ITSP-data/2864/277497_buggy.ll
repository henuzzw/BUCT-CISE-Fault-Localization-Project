; ModuleID = 'gcov/../WA_c/277497_buggy.c'
source_filename = "gcov/../WA_c/277497_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1

; Function Attrs: noinline optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !15
  store i32 2, i32* %4, align 4, !dbg !16
  br label %6, !dbg !18

; <label>:6:                                      ; preds = %18, %1
  %7 = load i32, i32* %4, align 4, !dbg !19
  %8 = load i32, i32* %3, align 4, !dbg !21
  %9 = sub nsw i32 %8, 1, !dbg !22
  %10 = icmp sle i32 %7, %9, !dbg !23
  br i1 %10, label %11, label %21, !dbg !24

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %3, align 4, !dbg !25
  %13 = load i32, i32* %4, align 4, !dbg !28
  %14 = srem i32 %12, %13, !dbg !29
  %15 = icmp eq i32 %14, 0, !dbg !30
  br i1 %15, label %16, label %17, !dbg !31

; <label>:16:                                     ; preds = %11
  store i32 0, i32* %2, align 4, !dbg !32
  br label %22, !dbg !32

; <label>:17:                                     ; preds = %11
  br label %18, !dbg !34

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %4, align 4, !dbg !35
  %20 = add nsw i32 %19, 1, !dbg !35
  store i32 %20, i32* %4, align 4, !dbg !35
  br label %6, !dbg !36, !llvm.loop !37

; <label>:21:                                     ; preds = %6
  store i32 1, i32* %2, align 4, !dbg !39
  br label %22, !dbg !39

; <label>:22:                                     ; preds = %21, %16
  %23 = load i32, i32* %2, align 4, !dbg !40
  ret i32 %23, !dbg !40
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #3 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %4, metadata !48, metadata !DIExpression()), !dbg !49
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32* %3, i32* %4), !dbg !50
  %6 = load i32, i32* %3, align 4, !dbg !51
  store i32 %6, i32* %2, align 4, !dbg !53
  br label %7, !dbg !54

; <label>:7:                                      ; preds = %19, %0
  %8 = load i32, i32* %2, align 4, !dbg !55
  %9 = load i32, i32* %4, align 4, !dbg !57
  %10 = icmp sle i32 %8, %9, !dbg !58
  br i1 %10, label %11, label %22, !dbg !59

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 4, !dbg !60
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !62
  %14 = icmp ne i32 %13, 0, !dbg !62
  br i1 %14, label %15, label %18, !dbg !63

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %2, align 4, !dbg !64
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %16), !dbg !66
  br label %18, !dbg !67

; <label>:18:                                     ; preds = %15, %11
  br label %19, !dbg !68

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %2, align 4, !dbg !69
  %21 = add nsw i32 %20, 1, !dbg !69
  store i32 %21, i32* %2, align 4, !dbg !69
  br label %7, !dbg !70, !llvm.loop !71

; <label>:22:                                     ; preds = %7
  ret i32 0, !dbg !73
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/277497_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
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
!15 = !DILocation(line: 6, column: 5, scope: !7)
!16 = !DILocation(line: 8, column: 10, scope: !17)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!18 = !DILocation(line: 8, column: 9, scope: !17)
!19 = !DILocation(line: 8, column: 14, scope: !20)
!20 = distinct !DILexicalBlock(scope: !17, file: !1, line: 8, column: 5)
!21 = !DILocation(line: 8, column: 17, scope: !20)
!22 = !DILocation(line: 8, column: 20, scope: !20)
!23 = !DILocation(line: 8, column: 15, scope: !20)
!24 = !DILocation(line: 8, column: 5, scope: !17)
!25 = !DILocation(line: 11, column: 12, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 12)
!27 = distinct !DILexicalBlock(scope: !20, file: !1, line: 10, column: 5)
!28 = !DILocation(line: 11, column: 16, scope: !26)
!29 = !DILocation(line: 11, column: 15, scope: !26)
!30 = !DILocation(line: 11, column: 17, scope: !26)
!31 = !DILocation(line: 11, column: 12, scope: !27)
!32 = !DILocation(line: 13, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 12, column: 9)
!34 = !DILocation(line: 17, column: 5, scope: !27)
!35 = !DILocation(line: 8, column: 25, scope: !20)
!36 = !DILocation(line: 8, column: 5, scope: !20)
!37 = distinct !{!37, !24, !38}
!38 = !DILocation(line: 17, column: 5, scope: !17)
!39 = !DILocation(line: 19, column: 5, scope: !7)
!40 = !DILocation(line: 20, column: 1, scope: !7)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !42, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!10}
!44 = !DILocalVariable(name: "i", scope: !41, file: !1, line: 24, type: !10)
!45 = !DILocation(line: 24, column: 9, scope: !41)
!46 = !DILocalVariable(name: "n1", scope: !41, file: !1, line: 24, type: !10)
!47 = !DILocation(line: 24, column: 11, scope: !41)
!48 = !DILocalVariable(name: "n2", scope: !41, file: !1, line: 24, type: !10)
!49 = !DILocation(line: 24, column: 14, scope: !41)
!50 = !DILocation(line: 25, column: 5, scope: !41)
!51 = !DILocation(line: 26, column: 11, scope: !52)
!52 = distinct !DILexicalBlock(scope: !41, file: !1, line: 26, column: 5)
!53 = !DILocation(line: 26, column: 10, scope: !52)
!54 = !DILocation(line: 26, column: 9, scope: !52)
!55 = !DILocation(line: 26, column: 15, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 26, column: 5)
!57 = !DILocation(line: 26, column: 18, scope: !56)
!58 = !DILocation(line: 26, column: 16, scope: !56)
!59 = !DILocation(line: 26, column: 5, scope: !52)
!60 = !DILocation(line: 28, column: 24, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 28, column: 12)
!62 = !DILocation(line: 28, column: 12, scope: !61)
!63 = !DILocation(line: 28, column: 12, scope: !56)
!64 = !DILocation(line: 30, column: 26, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 29, column: 9)
!66 = !DILocation(line: 30, column: 13, scope: !65)
!67 = !DILocation(line: 31, column: 9, scope: !65)
!68 = !DILocation(line: 28, column: 25, scope: !61)
!69 = !DILocation(line: 26, column: 23, scope: !56)
!70 = !DILocation(line: 26, column: 5, scope: !56)
!71 = distinct !{!71, !59, !72}
!72 = !DILocation(line: 31, column: 9, scope: !52)
!73 = !DILocation(line: 34, column: 5, scope: !41)
