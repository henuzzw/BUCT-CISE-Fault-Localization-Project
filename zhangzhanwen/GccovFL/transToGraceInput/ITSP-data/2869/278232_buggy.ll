; ModuleID = 'gcov/../WA_c/278232_buggy.c'
source_filename = "gcov/../WA_c/278232_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %4, align 4, !dbg !19
  store i32 %6, i32* %5, align 4, !dbg !18
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !20
  %8 = load i32, i32* %4, align 4, !dbg !21
  store i32 %8, i32* %2, align 4, !dbg !23
  br label %9, !dbg !24

; <label>:9:                                      ; preds = %39, %0
  %10 = load i32, i32* %2, align 4, !dbg !25
  %11 = load i32, i32* %4, align 4, !dbg !27
  %12 = icmp sle i32 %10, %11, !dbg !28
  br i1 %12, label %13, label %42, !dbg !29

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4, !dbg !30
  store i32 %14, i32* %3, align 4, !dbg !33
  br label %15, !dbg !34

; <label>:15:                                     ; preds = %34, %13
  %16 = load i32, i32* %3, align 4, !dbg !35
  %17 = load i32, i32* %4, align 4, !dbg !37
  %18 = icmp sle i32 %16, %17, !dbg !38
  br i1 %18, label %19, label %37, !dbg !39

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %3, align 4, !dbg !40
  %21 = load i32, i32* %2, align 4, !dbg !43
  %22 = icmp slt i32 %20, %21, !dbg !44
  br i1 %22, label %23, label %30, !dbg !45

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !46
  %25 = load i32, i32* %2, align 4, !dbg !48
  %26 = sub nsw i32 %24, %25, !dbg !49
  %27 = load i32, i32* %3, align 4, !dbg !50
  %28 = add nsw i32 %26, %27, !dbg !51
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %28), !dbg !52
  br label %33, !dbg !53

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* %4, align 4, !dbg !54
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %31), !dbg !56
  br label %33

; <label>:33:                                     ; preds = %30, %23
  br label %34, !dbg !57

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %3, align 4, !dbg !58
  %36 = add nsw i32 %35, 1, !dbg !59
  store i32 %36, i32* %3, align 4, !dbg !60
  br label %15, !dbg !61, !llvm.loop !62

; <label>:37:                                     ; preds = %15
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !64
  br label %39, !dbg !65

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %2, align 4, !dbg !66
  %41 = add nsw i32 %40, 1, !dbg !67
  store i32 %41, i32* %2, align 4, !dbg !68
  br label %9, !dbg !69, !llvm.loop !70

; <label>:42:                                     ; preds = %9
  ret i32 0, !dbg !72
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/278232_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2869")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 7, type: !10)
!16 = !DILocation(line: 7, column: 9, scope: !7)
!17 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 8, type: !10)
!18 = !DILocation(line: 8, column: 9, scope: !7)
!19 = !DILocation(line: 8, column: 11, scope: !7)
!20 = !DILocation(line: 9, column: 5, scope: !7)
!21 = !DILocation(line: 12, column: 11, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 5)
!23 = !DILocation(line: 12, column: 10, scope: !22)
!24 = !DILocation(line: 12, column: 9, scope: !22)
!25 = !DILocation(line: 12, column: 14, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 12, column: 5)
!27 = !DILocation(line: 12, column: 17, scope: !26)
!28 = !DILocation(line: 12, column: 15, scope: !26)
!29 = !DILocation(line: 12, column: 5, scope: !22)
!30 = !DILocation(line: 14, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 14, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 13, column: 5)
!33 = !DILocation(line: 14, column: 14, scope: !31)
!34 = !DILocation(line: 14, column: 13, scope: !31)
!35 = !DILocation(line: 14, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 14, column: 9)
!37 = !DILocation(line: 14, column: 21, scope: !36)
!38 = !DILocation(line: 14, column: 19, scope: !36)
!39 = !DILocation(line: 14, column: 9, scope: !31)
!40 = !DILocation(line: 16, column: 16, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 16, column: 16)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 15, column: 9)
!43 = !DILocation(line: 16, column: 18, scope: !41)
!44 = !DILocation(line: 16, column: 17, scope: !41)
!45 = !DILocation(line: 16, column: 16, scope: !42)
!46 = !DILocation(line: 18, column: 29, scope: !47)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 17, column: 13)
!48 = !DILocation(line: 18, column: 31, scope: !47)
!49 = !DILocation(line: 18, column: 30, scope: !47)
!50 = !DILocation(line: 18, column: 33, scope: !47)
!51 = !DILocation(line: 18, column: 32, scope: !47)
!52 = !DILocation(line: 18, column: 17, scope: !47)
!53 = !DILocation(line: 19, column: 13, scope: !47)
!54 = !DILocation(line: 22, column: 29, scope: !55)
!55 = distinct !DILexicalBlock(scope: !41, file: !1, line: 21, column: 13)
!56 = !DILocation(line: 22, column: 17, scope: !55)
!57 = !DILocation(line: 25, column: 9, scope: !42)
!58 = !DILocation(line: 14, column: 26, scope: !36)
!59 = !DILocation(line: 14, column: 27, scope: !36)
!60 = !DILocation(line: 14, column: 25, scope: !36)
!61 = !DILocation(line: 14, column: 9, scope: !36)
!62 = distinct !{!62, !39, !63}
!63 = !DILocation(line: 25, column: 9, scope: !31)
!64 = !DILocation(line: 26, column: 9, scope: !32)
!65 = !DILocation(line: 27, column: 5, scope: !32)
!66 = !DILocation(line: 12, column: 22, scope: !26)
!67 = !DILocation(line: 12, column: 23, scope: !26)
!68 = !DILocation(line: 12, column: 21, scope: !26)
!69 = !DILocation(line: 12, column: 5, scope: !26)
!70 = distinct !{!70, !29, !71}
!71 = !DILocation(line: 27, column: 5, scope: !22)
!72 = !DILocation(line: 28, column: 5, scope: !7)
