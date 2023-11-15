; ModuleID = 'gcov/../WA_c/440020_buggy.c'
source_filename = "gcov/../WA_c/440020_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i8* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  br label %7, !dbg !22

; <label>:7:                                      ; preds = %47, %0
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !23
  %9 = icmp ne i32 %8, -1, !dbg !24
  br i1 %9, label %10, label %48, !dbg !22

; <label>:10:                                     ; preds = %7
  %11 = load i8, i8* %2, align 1, !dbg !25
  %12 = sext i8 %11 to i32, !dbg !25
  %13 = sub nsw i32 %12, 65, !dbg !27
  store i32 %13, i32* %4, align 4, !dbg !28
  store i32 0, i32* %5, align 4, !dbg !29
  br label %14, !dbg !31

; <label>:14:                                     ; preds = %44, %10
  %15 = load i32, i32* %5, align 4, !dbg !32
  %16 = load i32, i32* %4, align 4, !dbg !34
  %17 = icmp slt i32 %15, %16, !dbg !35
  br i1 %17, label %18, label %47, !dbg !36

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %2, align 1, !dbg !37
  store i8 %19, i8* %3, align 1, !dbg !39
  store i32 0, i32* %6, align 4, !dbg !40
  br label %20, !dbg !42

; <label>:20:                                     ; preds = %32, %18
  %21 = load i32, i32* %6, align 4, !dbg !43
  %22 = load i32, i32* %5, align 4, !dbg !45
  %23 = icmp sle i32 %21, %22, !dbg !46
  br i1 %23, label %24, label %35, !dbg !47

; <label>:24:                                     ; preds = %20
  %25 = load i8, i8* %3, align 1, !dbg !48
  %26 = sext i8 %25 to i32, !dbg !48
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %26), !dbg !50
  %28 = load i8, i8* %3, align 1, !dbg !51
  %29 = sext i8 %28 to i32, !dbg !51
  %30 = sub nsw i32 %29, 1, !dbg !52
  %31 = trunc i32 %30 to i8, !dbg !51
  store i8 %31, i8* %3, align 1, !dbg !53
  br label %32, !dbg !54

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %6, align 4, !dbg !55
  %34 = add nsw i32 %33, 1, !dbg !55
  store i32 %34, i32* %6, align 4, !dbg !55
  br label %20, !dbg !56, !llvm.loop !57

; <label>:35:                                     ; preds = %20
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !59
  %37 = load i32, i32* %5, align 4, !dbg !60
  %38 = load i32, i32* %4, align 4, !dbg !62
  %39 = sub nsw i32 %38, 1, !dbg !63
  %40 = icmp eq i32 %37, %39, !dbg !64
  br i1 %40, label %41, label %43, !dbg !65

; <label>:41:                                     ; preds = %35
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !66
  br label %43, !dbg !66

; <label>:43:                                     ; preds = %41, %35
  br label %44, !dbg !67

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %5, align 4, !dbg !68
  %46 = add nsw i32 %45, 1, !dbg !68
  store i32 %46, i32* %5, align 4, !dbg !68
  br label %14, !dbg !69, !llvm.loop !70

; <label>:47:                                     ; preds = %14
  br label %7, !dbg !22, !llvm.loop !72

; <label>:48:                                     ; preds = %7
  ret i32 0, !dbg !74
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
!1 = !DIFile(filename: "gcov/../WA_c/440020_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 4, column: 10, scope: !7)
!14 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 4, type: !12)
!15 = !DILocation(line: 4, column: 13, scope: !7)
!16 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 9, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !10)
!19 = !DILocation(line: 6, column: 9, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 6, type: !10)
!21 = !DILocation(line: 6, column: 12, scope: !7)
!22 = !DILocation(line: 7, column: 5, scope: !7)
!23 = !DILocation(line: 7, column: 11, scope: !7)
!24 = !DILocation(line: 7, column: 27, scope: !7)
!25 = !DILocation(line: 9, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!27 = !DILocation(line: 9, column: 15, scope: !26)
!28 = !DILocation(line: 9, column: 11, scope: !26)
!29 = !DILocation(line: 10, column: 15, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 9)
!31 = !DILocation(line: 10, column: 13, scope: !30)
!32 = !DILocation(line: 10, column: 20, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 9)
!34 = !DILocation(line: 10, column: 24, scope: !33)
!35 = !DILocation(line: 10, column: 22, scope: !33)
!36 = !DILocation(line: 10, column: 9, scope: !30)
!37 = !DILocation(line: 12, column: 17, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 9)
!39 = !DILocation(line: 12, column: 15, scope: !38)
!40 = !DILocation(line: 13, column: 19, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 13)
!42 = !DILocation(line: 13, column: 17, scope: !41)
!43 = !DILocation(line: 13, column: 24, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 13)
!45 = !DILocation(line: 13, column: 29, scope: !44)
!46 = !DILocation(line: 13, column: 26, scope: !44)
!47 = !DILocation(line: 13, column: 13, scope: !41)
!48 = !DILocation(line: 15, column: 30, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 14, column: 13)
!50 = !DILocation(line: 15, column: 17, scope: !49)
!51 = !DILocation(line: 16, column: 21, scope: !49)
!52 = !DILocation(line: 16, column: 23, scope: !49)
!53 = !DILocation(line: 16, column: 19, scope: !49)
!54 = !DILocation(line: 17, column: 13, scope: !49)
!55 = !DILocation(line: 13, column: 33, scope: !44)
!56 = !DILocation(line: 13, column: 13, scope: !44)
!57 = distinct !{!57, !47, !58}
!58 = !DILocation(line: 17, column: 13, scope: !41)
!59 = !DILocation(line: 18, column: 13, scope: !38)
!60 = !DILocation(line: 19, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !38, file: !1, line: 19, column: 16)
!62 = !DILocation(line: 19, column: 21, scope: !61)
!63 = !DILocation(line: 19, column: 23, scope: !61)
!64 = !DILocation(line: 19, column: 18, scope: !61)
!65 = !DILocation(line: 19, column: 16, scope: !38)
!66 = !DILocation(line: 19, column: 28, scope: !61)
!67 = !DILocation(line: 20, column: 9, scope: !38)
!68 = !DILocation(line: 10, column: 28, scope: !33)
!69 = !DILocation(line: 10, column: 9, scope: !33)
!70 = distinct !{!70, !36, !71}
!71 = !DILocation(line: 20, column: 9, scope: !30)
!72 = distinct !{!72, !22, !73}
!73 = !DILocation(line: 21, column: 5, scope: !7)
!74 = !DILocation(line: 22, column: 5, scope: !7)
