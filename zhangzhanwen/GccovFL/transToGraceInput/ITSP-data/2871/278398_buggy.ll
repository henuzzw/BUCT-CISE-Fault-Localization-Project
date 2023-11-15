; ModuleID = 'gcov/../WA_c/278398_buggy.c'
source_filename = "gcov/../WA_c/278398_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !21
  %8 = load i32, i32* %3, align 4, !dbg !22
  store i32 %8, i32* %5, align 4, !dbg !24
  br label %9, !dbg !25

; <label>:9:                                      ; preds = %42, %0
  %10 = load i32, i32* %5, align 4, !dbg !26
  %11 = icmp sge i32 %10, 1, !dbg !28
  br i1 %11, label %12, label %45, !dbg !29

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !30
  store i32 %13, i32* %6, align 4, !dbg !33
  br label %14, !dbg !34

; <label>:14:                                     ; preds = %37, %12
  %15 = load i32, i32* %6, align 4, !dbg !35
  %16 = icmp sge i32 %15, 1, !dbg !37
  br i1 %16, label %17, label %40, !dbg !38

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %5, align 4, !dbg !39
  %19 = icmp eq i32 %18, 1, !dbg !42
  br i1 %19, label %31, label %20, !dbg !43

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %6, align 4, !dbg !44
  %22 = icmp eq i32 %21, 1, !dbg !45
  br i1 %22, label %31, label %23, !dbg !46

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %5, align 4, !dbg !47
  %25 = load i32, i32* %3, align 4, !dbg !48
  %26 = icmp eq i32 %24, %25, !dbg !49
  br i1 %26, label %31, label %27, !dbg !50

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %6, align 4, !dbg !51
  %29 = load i32, i32* %4, align 4, !dbg !52
  %30 = icmp eq i32 %28, %29, !dbg !53
  br i1 %30, label %31, label %34, !dbg !54

; <label>:31:                                     ; preds = %27, %23, %20, %17
  %32 = load i32, i32* %2, align 4, !dbg !55
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %32), !dbg !57
  br label %36, !dbg !58

; <label>:34:                                     ; preds = %27
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !59
  br label %36

; <label>:36:                                     ; preds = %34, %31
  br label %37, !dbg !61

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %6, align 4, !dbg !62
  %39 = add nsw i32 %38, -1, !dbg !62
  store i32 %39, i32* %6, align 4, !dbg !62
  br label %14, !dbg !63, !llvm.loop !64

; <label>:40:                                     ; preds = %14
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !66
  br label %42, !dbg !67

; <label>:42:                                     ; preds = %40
  %43 = load i32, i32* %5, align 4, !dbg !68
  %44 = add nsw i32 %43, -1, !dbg !68
  store i32 %44, i32* %5, align 4, !dbg !68
  br label %9, !dbg !69, !llvm.loop !70

; <label>:45:                                     ; preds = %9
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
!1 = !DIFile(filename: "gcov/../WA_c/278398_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 11, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 7, column: 10, scope: !23)
!25 = !DILocation(line: 7, column: 9, scope: !23)
!26 = !DILocation(line: 7, column: 14, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 5)
!28 = !DILocation(line: 7, column: 15, scope: !27)
!29 = !DILocation(line: 7, column: 5, scope: !23)
!30 = !DILocation(line: 9, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 9)
!32 = distinct !DILexicalBlock(scope: !27, file: !1, line: 8, column: 5)
!33 = !DILocation(line: 9, column: 14, scope: !31)
!34 = !DILocation(line: 9, column: 13, scope: !31)
!35 = !DILocation(line: 9, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 9, column: 9)
!37 = !DILocation(line: 9, column: 19, scope: !36)
!38 = !DILocation(line: 9, column: 9, scope: !31)
!39 = !DILocation(line: 11, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 16)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 10, column: 9)
!42 = !DILocation(line: 11, column: 17, scope: !40)
!43 = !DILocation(line: 11, column: 21, scope: !40)
!44 = !DILocation(line: 11, column: 24, scope: !40)
!45 = !DILocation(line: 11, column: 25, scope: !40)
!46 = !DILocation(line: 11, column: 29, scope: !40)
!47 = !DILocation(line: 11, column: 32, scope: !40)
!48 = !DILocation(line: 11, column: 35, scope: !40)
!49 = !DILocation(line: 11, column: 33, scope: !40)
!50 = !DILocation(line: 11, column: 37, scope: !40)
!51 = !DILocation(line: 11, column: 40, scope: !40)
!52 = !DILocation(line: 11, column: 43, scope: !40)
!53 = !DILocation(line: 11, column: 41, scope: !40)
!54 = !DILocation(line: 11, column: 16, scope: !41)
!55 = !DILocation(line: 13, column: 29, scope: !56)
!56 = distinct !DILexicalBlock(scope: !40, file: !1, line: 12, column: 13)
!57 = !DILocation(line: 13, column: 17, scope: !56)
!58 = !DILocation(line: 14, column: 13, scope: !56)
!59 = !DILocation(line: 17, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !40, file: !1, line: 16, column: 13)
!61 = !DILocation(line: 19, column: 9, scope: !41)
!62 = !DILocation(line: 9, column: 25, scope: !36)
!63 = !DILocation(line: 9, column: 9, scope: !36)
!64 = distinct !{!64, !38, !65}
!65 = !DILocation(line: 19, column: 9, scope: !31)
!66 = !DILocation(line: 20, column: 9, scope: !32)
!67 = !DILocation(line: 21, column: 5, scope: !32)
!68 = !DILocation(line: 7, column: 21, scope: !27)
!69 = !DILocation(line: 7, column: 5, scope: !27)
!70 = distinct !{!70, !29, !71}
!71 = !DILocation(line: 21, column: 5, scope: !23)
!72 = !DILocation(line: 22, column: 5, scope: !7)
