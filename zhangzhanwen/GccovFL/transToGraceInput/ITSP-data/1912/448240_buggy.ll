; ModuleID = 'gcov/../WA_c/448240_buggy.c'
source_filename = "gcov/../WA_c/448240_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %3, align 4, !dbg !15
  br label %6, !dbg !16

; <label>:6:                                      ; preds = %37, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !17
  %8 = icmp ne i32 %7, -1, !dbg !18
  br i1 %8, label %9, label %39, !dbg !16

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %4, align 4, !dbg !21
  store i32 0, i32* %4, align 4, !dbg !22
  br label %10, !dbg !24

; <label>:10:                                     ; preds = %34, %9
  %11 = load i32, i32* %4, align 4, !dbg !25
  %12 = load i8, i8* %2, align 1, !dbg !27
  %13 = sext i8 %12 to i32, !dbg !27
  %14 = sub nsw i32 %13, 65, !dbg !28
  %15 = icmp sle i32 %11, %14, !dbg !29
  br i1 %15, label %16, label %37, !dbg !30

; <label>:16:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i32* %5, metadata !31, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %5, align 4, !dbg !33
  %17 = load i8, i8* %2, align 1, !dbg !34
  %18 = sext i8 %17 to i32, !dbg !34
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %18), !dbg !35
  br label %20, !dbg !36

; <label>:20:                                     ; preds = %24, %16
  %21 = load i32, i32* %5, align 4, !dbg !37
  %22 = load i32, i32* %4, align 4, !dbg !38
  %23 = icmp sle i32 %21, %22, !dbg !39
  br i1 %23, label %24, label %32, !dbg !36

; <label>:24:                                     ; preds = %20
  %25 = load i8, i8* %2, align 1, !dbg !40
  %26 = sext i8 %25 to i32, !dbg !40
  %27 = load i32, i32* %5, align 4, !dbg !42
  %28 = sub nsw i32 %26, %27, !dbg !43
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %28), !dbg !44
  %30 = load i32, i32* %5, align 4, !dbg !45
  %31 = add nsw i32 %30, 1, !dbg !46
  store i32 %31, i32* %5, align 4, !dbg !47
  br label %20, !dbg !36, !llvm.loop !48

; <label>:32:                                     ; preds = %20
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !50
  br label %34, !dbg !51

; <label>:34:                                     ; preds = %32
  %35 = load i32, i32* %4, align 4, !dbg !52
  %36 = add nsw i32 %35, 1, !dbg !52
  store i32 %36, i32* %4, align 4, !dbg !52
  br label %10, !dbg !53, !llvm.loop !54

; <label>:37:                                     ; preds = %10
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !56
  br label %6, !dbg !16, !llvm.loop !57

; <label>:39:                                     ; preds = %6
  ret i32 0, !dbg !59
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
!1 = !DIFile(filename: "gcov/../WA_c/448240_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 4, column: 10, scope: !7)
!14 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!15 = !DILocation(line: 5, column: 9, scope: !7)
!16 = !DILocation(line: 6, column: 5, scope: !7)
!17 = !DILocation(line: 6, column: 11, scope: !7)
!18 = !DILocation(line: 6, column: 27, scope: !7)
!19 = !DILocalVariable(name: "hang", scope: !20, file: !1, line: 8, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!21 = !DILocation(line: 8, column: 13, scope: !20)
!22 = !DILocation(line: 9, column: 18, scope: !23)
!23 = distinct !DILexicalBlock(scope: !20, file: !1, line: 9, column: 9)
!24 = !DILocation(line: 9, column: 13, scope: !23)
!25 = !DILocation(line: 9, column: 23, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 9)
!27 = !DILocation(line: 9, column: 31, scope: !26)
!28 = !DILocation(line: 9, column: 33, scope: !26)
!29 = !DILocation(line: 9, column: 28, scope: !26)
!30 = !DILocation(line: 9, column: 9, scope: !23)
!31 = !DILocalVariable(name: "q", scope: !32, file: !1, line: 11, type: !10)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 9)
!33 = !DILocation(line: 11, column: 17, scope: !32)
!34 = !DILocation(line: 12, column: 26, scope: !32)
!35 = !DILocation(line: 12, column: 13, scope: !32)
!36 = !DILocation(line: 13, column: 13, scope: !32)
!37 = !DILocation(line: 13, column: 19, scope: !32)
!38 = !DILocation(line: 13, column: 24, scope: !32)
!39 = !DILocation(line: 13, column: 21, scope: !32)
!40 = !DILocation(line: 15, column: 30, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 14, column: 13)
!42 = !DILocation(line: 15, column: 34, scope: !41)
!43 = !DILocation(line: 15, column: 32, scope: !41)
!44 = !DILocation(line: 15, column: 17, scope: !41)
!45 = !DILocation(line: 16, column: 21, scope: !41)
!46 = !DILocation(line: 16, column: 23, scope: !41)
!47 = !DILocation(line: 16, column: 19, scope: !41)
!48 = distinct !{!48, !36, !49}
!49 = !DILocation(line: 17, column: 13, scope: !32)
!50 = !DILocation(line: 18, column: 13, scope: !32)
!51 = !DILocation(line: 20, column: 9, scope: !32)
!52 = !DILocation(line: 9, column: 44, scope: !26)
!53 = !DILocation(line: 9, column: 9, scope: !26)
!54 = distinct !{!54, !30, !55}
!55 = !DILocation(line: 20, column: 9, scope: !23)
!56 = !DILocation(line: 21, column: 9, scope: !20)
!57 = distinct !{!57, !16, !58}
!58 = !DILocation(line: 22, column: 5, scope: !7)
!59 = !DILocation(line: 23, column: 5, scope: !7)
