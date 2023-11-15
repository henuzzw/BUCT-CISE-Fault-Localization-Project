; ModuleID = 'gcov/../WA_c/443988_buggy.c'
source_filename = "gcov/../WA_c/443988_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  br label %6, !dbg !14

; <label>:6:                                      ; preds = %43, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !15
  %8 = icmp ne i32 %7, -1, !dbg !16
  br i1 %8, label %9, label %44, !dbg !14

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !19
  %10 = load i8, i8* %2, align 1, !dbg !20
  %11 = sext i8 %10 to i32, !dbg !20
  %12 = sub nsw i32 %11, 65, !dbg !21
  store i32 %12, i32* %3, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !24
  store i32 1, i32* %4, align 4, !dbg !24
  br label %13, !dbg !25

; <label>:13:                                     ; preds = %40, %9
  %14 = load i32, i32* %4, align 4, !dbg !26
  %15 = load i32, i32* %3, align 4, !dbg !28
  %16 = icmp sle i32 %14, %15, !dbg !29
  br i1 %16, label %17, label %43, !dbg !30

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %5, metadata !31, metadata !DIExpression()), !dbg !34
  store i32 1, i32* %5, align 4, !dbg !34
  br label %18, !dbg !35

; <label>:18:                                     ; preds = %29, %17
  %19 = load i32, i32* %5, align 4, !dbg !36
  %20 = load i32, i32* %4, align 4, !dbg !38
  %21 = icmp sle i32 %19, %20, !dbg !39
  br i1 %21, label %22, label %32, !dbg !40

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %2, align 1, !dbg !41
  %24 = sext i8 %23 to i32, !dbg !41
  %25 = load i32, i32* %5, align 4, !dbg !42
  %26 = sub nsw i32 %24, %25, !dbg !43
  %27 = add nsw i32 %26, 1, !dbg !44
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %27), !dbg !45
  br label %29, !dbg !45

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %5, align 4, !dbg !46
  %31 = add nsw i32 %30, 1, !dbg !46
  store i32 %31, i32* %5, align 4, !dbg !46
  br label %18, !dbg !47, !llvm.loop !48

; <label>:32:                                     ; preds = %18
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !50
  %34 = load i32, i32* %4, align 4, !dbg !51
  %35 = load i32, i32* %3, align 4, !dbg !53
  %36 = icmp eq i32 %34, %35, !dbg !54
  br i1 %36, label %37, label %39, !dbg !55

; <label>:37:                                     ; preds = %32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !56
  br label %39, !dbg !56

; <label>:39:                                     ; preds = %37, %32
  br label %40, !dbg !57

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %4, align 4, !dbg !58
  %42 = add nsw i32 %41, 1, !dbg !58
  store i32 %42, i32* %4, align 4, !dbg !58
  br label %13, !dbg !59, !llvm.loop !60

; <label>:43:                                     ; preds = %13
  br label %6, !dbg !14, !llvm.loop !62

; <label>:44:                                     ; preds = %6
  ret i32 0, !dbg !64
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
!1 = !DIFile(filename: "gcov/../WA_c/443988_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 5, column: 10, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = !DILocation(line: 6, column: 11, scope: !7)
!16 = !DILocation(line: 6, column: 27, scope: !7)
!17 = !DILocalVariable(name: "n", scope: !18, file: !1, line: 8, type: !10)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!19 = !DILocation(line: 8, column: 13, scope: !18)
!20 = !DILocation(line: 8, column: 17, scope: !18)
!21 = !DILocation(line: 8, column: 19, scope: !18)
!22 = !DILocalVariable(name: "i", scope: !23, file: !1, line: 9, type: !10)
!23 = distinct !DILexicalBlock(scope: !18, file: !1, line: 9, column: 9)
!24 = !DILocation(line: 9, column: 17, scope: !23)
!25 = !DILocation(line: 9, column: 13, scope: !23)
!26 = !DILocation(line: 9, column: 24, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 9)
!28 = !DILocation(line: 9, column: 29, scope: !27)
!29 = !DILocation(line: 9, column: 26, scope: !27)
!30 = !DILocation(line: 9, column: 9, scope: !23)
!31 = !DILocalVariable(name: "j", scope: !32, file: !1, line: 11, type: !10)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 13)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 9)
!34 = !DILocation(line: 11, column: 21, scope: !32)
!35 = !DILocation(line: 11, column: 17, scope: !32)
!36 = !DILocation(line: 11, column: 28, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 13)
!38 = !DILocation(line: 11, column: 33, scope: !37)
!39 = !DILocation(line: 11, column: 30, scope: !37)
!40 = !DILocation(line: 11, column: 13, scope: !32)
!41 = !DILocation(line: 12, column: 30, scope: !37)
!42 = !DILocation(line: 12, column: 34, scope: !37)
!43 = !DILocation(line: 12, column: 32, scope: !37)
!44 = !DILocation(line: 12, column: 36, scope: !37)
!45 = !DILocation(line: 12, column: 17, scope: !37)
!46 = !DILocation(line: 11, column: 37, scope: !37)
!47 = !DILocation(line: 11, column: 13, scope: !37)
!48 = distinct !{!48, !40, !49}
!49 = !DILocation(line: 12, column: 39, scope: !32)
!50 = !DILocation(line: 13, column: 13, scope: !33)
!51 = !DILocation(line: 14, column: 16, scope: !52)
!52 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 16)
!53 = !DILocation(line: 14, column: 21, scope: !52)
!54 = !DILocation(line: 14, column: 18, scope: !52)
!55 = !DILocation(line: 14, column: 16, scope: !33)
!56 = !DILocation(line: 15, column: 17, scope: !52)
!57 = !DILocation(line: 16, column: 9, scope: !33)
!58 = !DILocation(line: 9, column: 33, scope: !27)
!59 = !DILocation(line: 9, column: 9, scope: !27)
!60 = distinct !{!60, !30, !61}
!61 = !DILocation(line: 16, column: 9, scope: !23)
!62 = distinct !{!62, !14, !63}
!63 = !DILocation(line: 17, column: 5, scope: !7)
!64 = !DILocation(line: 18, column: 5, scope: !7)
