; ModuleID = 'gcov/../WA_c/278396_buggy.c'
source_filename = "gcov/../WA_c/278396_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !17
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !18
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %6, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 1, i32* %6, align 4, !dbg !24
  br label %10, !dbg !26

; <label>:10:                                     ; preds = %41, %0
  %11 = load i32, i32* %6, align 4, !dbg !27
  %12 = load i32, i32* %4, align 4, !dbg !29
  %13 = icmp sle i32 %11, %12, !dbg !30
  br i1 %13, label %14, label %44, !dbg !31

; <label>:14:                                     ; preds = %10
  store i32 1, i32* %5, align 4, !dbg !32
  br label %15, !dbg !35

; <label>:15:                                     ; preds = %37, %14
  %16 = load i32, i32* %5, align 4, !dbg !36
  %17 = load i32, i32* %3, align 4, !dbg !38
  %18 = icmp sle i32 %16, %17, !dbg !39
  br i1 %18, label %19, label %40, !dbg !40

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %5, align 4, !dbg !41
  %21 = icmp eq i32 %20, 1, !dbg !44
  br i1 %21, label %22, label %25, !dbg !45

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %2, align 4, !dbg !46
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %23), !dbg !48
  br label %36, !dbg !49

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %5, align 4, !dbg !50
  %27 = load i32, i32* %3, align 4, !dbg !52
  %28 = icmp eq i32 %26, %27, !dbg !53
  br i1 %28, label %29, label %33, !dbg !54

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %2, align 4, !dbg !55
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %30), !dbg !57
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !58
  br label %35, !dbg !59

; <label>:33:                                     ; preds = %25
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !60
  br label %35

; <label>:35:                                     ; preds = %33, %29
  br label %36

; <label>:36:                                     ; preds = %35, %22
  br label %37, !dbg !62

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %5, align 4, !dbg !63
  %39 = add nsw i32 %38, 1, !dbg !63
  store i32 %39, i32* %5, align 4, !dbg !63
  br label %15, !dbg !64, !llvm.loop !65

; <label>:40:                                     ; preds = %15
  br label %41, !dbg !67

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %6, align 4, !dbg !68
  %43 = add nsw i32 %42, 1, !dbg !68
  store i32 %43, i32* %6, align 4, !dbg !68
  br label %10, !dbg !69, !llvm.loop !70

; <label>:44:                                     ; preds = %10
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
!1 = !DIFile(filename: "gcov/../WA_c/278396_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 7, type: !10)
!16 = !DILocation(line: 7, column: 9, scope: !7)
!17 = !DILocation(line: 8, column: 5, scope: !7)
!18 = !DILocation(line: 9, column: 5, scope: !7)
!19 = !DILocation(line: 10, column: 5, scope: !7)
!20 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 11, type: !10)
!21 = !DILocation(line: 11, column: 9, scope: !7)
!22 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 12, type: !10)
!23 = !DILocation(line: 12, column: 9, scope: !7)
!24 = !DILocation(line: 13, column: 10, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 5)
!26 = !DILocation(line: 13, column: 9, scope: !25)
!27 = !DILocation(line: 13, column: 14, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 13, column: 5)
!29 = !DILocation(line: 13, column: 17, scope: !28)
!30 = !DILocation(line: 13, column: 15, scope: !28)
!31 = !DILocation(line: 13, column: 5, scope: !25)
!32 = !DILocation(line: 15, column: 14, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 15, column: 9)
!34 = distinct !DILexicalBlock(scope: !28, file: !1, line: 14, column: 5)
!35 = !DILocation(line: 15, column: 13, scope: !33)
!36 = !DILocation(line: 15, column: 18, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 15, column: 9)
!38 = !DILocation(line: 15, column: 21, scope: !37)
!39 = !DILocation(line: 15, column: 19, scope: !37)
!40 = !DILocation(line: 15, column: 9, scope: !33)
!41 = !DILocation(line: 17, column: 16, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 17, column: 16)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 16, column: 9)
!44 = !DILocation(line: 17, column: 17, scope: !42)
!45 = !DILocation(line: 17, column: 16, scope: !43)
!46 = !DILocation(line: 19, column: 29, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 18, column: 13)
!48 = !DILocation(line: 19, column: 17, scope: !47)
!49 = !DILocation(line: 20, column: 13, scope: !47)
!50 = !DILocation(line: 21, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 21, column: 21)
!52 = !DILocation(line: 21, column: 24, scope: !51)
!53 = !DILocation(line: 21, column: 22, scope: !51)
!54 = !DILocation(line: 21, column: 21, scope: !42)
!55 = !DILocation(line: 23, column: 29, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 22, column: 13)
!57 = !DILocation(line: 23, column: 17, scope: !56)
!58 = !DILocation(line: 24, column: 17, scope: !56)
!59 = !DILocation(line: 25, column: 13, scope: !56)
!60 = !DILocation(line: 28, column: 17, scope: !61)
!61 = distinct !DILexicalBlock(scope: !51, file: !1, line: 27, column: 13)
!62 = !DILocation(line: 30, column: 9, scope: !43)
!63 = !DILocation(line: 15, column: 25, scope: !37)
!64 = !DILocation(line: 15, column: 9, scope: !37)
!65 = distinct !{!65, !40, !66}
!66 = !DILocation(line: 30, column: 9, scope: !33)
!67 = !DILocation(line: 31, column: 5, scope: !34)
!68 = !DILocation(line: 13, column: 21, scope: !28)
!69 = !DILocation(line: 13, column: 5, scope: !28)
!70 = distinct !{!70, !31, !71}
!71 = !DILocation(line: 31, column: 5, scope: !25)
!72 = !DILocation(line: 32, column: 5, scope: !7)
