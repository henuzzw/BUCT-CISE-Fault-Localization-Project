; ModuleID = 'gcov/../WA_c/447872_buggy.c'
source_filename = "gcov/../WA_c/447872_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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

; <label>:7:                                      ; preds = %41, %0
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !23
  %9 = icmp ne i32 %8, -1, !dbg !24
  br i1 %9, label %10, label %43, !dbg !22

; <label>:10:                                     ; preds = %7
  %11 = load i8, i8* %2, align 1, !dbg !25
  %12 = sext i8 %11 to i32, !dbg !25
  %13 = sub nsw i32 %12, 65, !dbg !27
  %14 = add nsw i32 %13, 1, !dbg !28
  store i32 %14, i32* %5, align 4, !dbg !29
  store i32 1, i32* %4, align 4, !dbg !30
  br label %15, !dbg !32

; <label>:15:                                     ; preds = %38, %10
  %16 = load i32, i32* %4, align 4, !dbg !33
  %17 = load i32, i32* %5, align 4, !dbg !35
  %18 = icmp sle i32 %16, %17, !dbg !36
  br i1 %18, label %19, label %41, !dbg !37

; <label>:19:                                     ; preds = %15
  store i32 1, i32* %6, align 4, !dbg !38
  br label %20, !dbg !41

; <label>:20:                                     ; preds = %33, %19
  %21 = load i32, i32* %6, align 4, !dbg !42
  %22 = load i32, i32* %4, align 4, !dbg !44
  %23 = icmp sle i32 %21, %22, !dbg !45
  br i1 %23, label %24, label %36, !dbg !46

; <label>:24:                                     ; preds = %20
  %25 = load i8, i8* %2, align 1, !dbg !47
  %26 = sext i8 %25 to i32, !dbg !47
  %27 = load i32, i32* %6, align 4, !dbg !49
  %28 = sub nsw i32 %26, %27, !dbg !50
  %29 = trunc i32 %28 to i8, !dbg !47
  store i8 %29, i8* %3, align 1, !dbg !51
  %30 = load i8, i8* %3, align 1, !dbg !52
  %31 = sext i8 %30 to i32, !dbg !52
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %31), !dbg !53
  br label %33, !dbg !54

; <label>:33:                                     ; preds = %24
  %34 = load i32, i32* %6, align 4, !dbg !55
  %35 = add nsw i32 %34, 1, !dbg !55
  store i32 %35, i32* %6, align 4, !dbg !55
  br label %20, !dbg !56, !llvm.loop !57

; <label>:36:                                     ; preds = %20
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !59
  br label %38, !dbg !60

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %4, align 4, !dbg !61
  %40 = add nsw i32 %39, 1, !dbg !61
  store i32 %40, i32* %4, align 4, !dbg !61
  br label %15, !dbg !62, !llvm.loop !63

; <label>:41:                                     ; preds = %15
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !65
  br label %7, !dbg !22, !llvm.loop !66

; <label>:43:                                     ; preds = %7
  ret i32 0, !dbg !68
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
!1 = !DIFile(filename: "gcov/../WA_c/447872_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 4, column: 10, scope: !7)
!14 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 4, type: !12)
!15 = !DILocation(line: 4, column: 13, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 9, scope: !7)
!18 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!19 = !DILocation(line: 5, column: 12, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 15, scope: !7)
!22 = !DILocation(line: 6, column: 5, scope: !7)
!23 = !DILocation(line: 6, column: 11, scope: !7)
!24 = !DILocation(line: 6, column: 27, scope: !7)
!25 = !DILocation(line: 8, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 8, column: 15, scope: !26)
!28 = !DILocation(line: 8, column: 21, scope: !26)
!29 = !DILocation(line: 8, column: 11, scope: !26)
!30 = !DILocation(line: 9, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 9)
!32 = !DILocation(line: 9, column: 13, scope: !31)
!33 = !DILocation(line: 9, column: 20, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 9, column: 9)
!35 = !DILocation(line: 9, column: 25, scope: !34)
!36 = !DILocation(line: 9, column: 22, scope: !34)
!37 = !DILocation(line: 9, column: 9, scope: !31)
!38 = !DILocation(line: 11, column: 19, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 11, column: 13)
!40 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 9)
!41 = !DILocation(line: 11, column: 17, scope: !39)
!42 = !DILocation(line: 11, column: 24, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 11, column: 13)
!44 = !DILocation(line: 11, column: 29, scope: !43)
!45 = !DILocation(line: 11, column: 26, scope: !43)
!46 = !DILocation(line: 11, column: 13, scope: !39)
!47 = !DILocation(line: 13, column: 23, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 12, column: 13)
!49 = !DILocation(line: 13, column: 27, scope: !48)
!50 = !DILocation(line: 13, column: 25, scope: !48)
!51 = !DILocation(line: 13, column: 21, scope: !48)
!52 = !DILocation(line: 14, column: 30, scope: !48)
!53 = !DILocation(line: 14, column: 17, scope: !48)
!54 = !DILocation(line: 15, column: 13, scope: !48)
!55 = !DILocation(line: 11, column: 33, scope: !43)
!56 = !DILocation(line: 11, column: 13, scope: !43)
!57 = distinct !{!57, !46, !58}
!58 = !DILocation(line: 15, column: 13, scope: !39)
!59 = !DILocation(line: 16, column: 13, scope: !40)
!60 = !DILocation(line: 18, column: 9, scope: !40)
!61 = !DILocation(line: 9, column: 29, scope: !34)
!62 = !DILocation(line: 9, column: 9, scope: !34)
!63 = distinct !{!63, !37, !64}
!64 = !DILocation(line: 18, column: 9, scope: !31)
!65 = !DILocation(line: 19, column: 9, scope: !26)
!66 = distinct !{!66, !22, !67}
!67 = !DILocation(line: 20, column: 5, scope: !7)
!68 = !DILocation(line: 21, column: 5, scope: !7)
