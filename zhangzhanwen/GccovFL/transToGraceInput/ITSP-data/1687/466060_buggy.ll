; ModuleID = 'gcov/../WA_c/466060_buggy.c'
source_filename = "gcov/../WA_c/466060_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !19
  store i32 0, i32* %3, align 4, !dbg !20
  br label %8, !dbg !22

; <label>:8:                                      ; preds = %41, %0
  %9 = load i32, i32* %3, align 4, !dbg !23
  %10 = load i32, i32* %2, align 4, !dbg !25
  %11 = icmp slt i32 %9, %10, !dbg !26
  br i1 %11, label %12, label %44, !dbg !27

; <label>:12:                                     ; preds = %8
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %4, i32* %5), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !31
  %14 = load i32, i32* %4, align 4, !dbg !32
  %15 = load i32, i32* %5, align 4, !dbg !33
  %16 = add nsw i32 %14, %15, !dbg !34
  store i32 %16, i32* %6, align 4, !dbg !35
  br label %17, !dbg !36

; <label>:17:                                     ; preds = %33, %12
  %18 = load i32, i32* %4, align 4, !dbg !37
  %19 = load i32, i32* %5, align 4, !dbg !38
  %20 = icmp ne i32 %18, %19, !dbg !39
  br i1 %20, label %21, label %34, !dbg !36

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %4, align 4, !dbg !40
  %23 = load i32, i32* %5, align 4, !dbg !43
  %24 = icmp sgt i32 %22, %23, !dbg !44
  br i1 %24, label %25, label %29, !dbg !45

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %4, align 4, !dbg !46
  %27 = load i32, i32* %5, align 4, !dbg !47
  %28 = sub nsw i32 %26, %27, !dbg !48
  store i32 %28, i32* %4, align 4, !dbg !49
  br label %33, !dbg !50

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %5, align 4, !dbg !51
  %31 = load i32, i32* %4, align 4, !dbg !52
  %32 = sub nsw i32 %30, %31, !dbg !53
  store i32 %32, i32* %5, align 4, !dbg !54
  br label %33

; <label>:33:                                     ; preds = %29, %25
  br label %17, !dbg !36, !llvm.loop !55

; <label>:34:                                     ; preds = %17
  %35 = load i32, i32* %5, align 4, !dbg !57
  %36 = add nsw i32 %35, 1, !dbg !58
  %37 = load i32, i32* %6, align 4, !dbg !59
  %38 = sdiv i32 %37, %36, !dbg !59
  store i32 %38, i32* %6, align 4, !dbg !59
  %39 = load i32, i32* %6, align 4, !dbg !60
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %39), !dbg !61
  br label %41, !dbg !62

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %3, align 4, !dbg !63
  %43 = add nsw i32 %42, 1, !dbg !63
  store i32 %43, i32* %3, align 4, !dbg !63
  br label %8, !dbg !64, !llvm.loop !65

; <label>:44:                                     ; preds = %8
  %45 = load i32, i32* %1, align 4, !dbg !67
  ret i32 %45, !dbg !67
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
!1 = !DIFile(filename: "gcov/../WA_c/466060_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 12, scope: !7)
!15 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 15, scope: !7)
!17 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 18, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 7, column: 11, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!22 = !DILocation(line: 7, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 16, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 7, column: 5)
!25 = !DILocation(line: 7, column: 20, scope: !24)
!26 = !DILocation(line: 7, column: 18, scope: !24)
!27 = !DILocation(line: 7, column: 5, scope: !21)
!28 = !DILocation(line: 9, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 5)
!30 = !DILocalVariable(name: "sum", scope: !29, file: !1, line: 10, type: !10)
!31 = !DILocation(line: 10, column: 13, scope: !29)
!32 = !DILocation(line: 11, column: 15, scope: !29)
!33 = !DILocation(line: 11, column: 19, scope: !29)
!34 = !DILocation(line: 11, column: 17, scope: !29)
!35 = !DILocation(line: 11, column: 13, scope: !29)
!36 = !DILocation(line: 12, column: 9, scope: !29)
!37 = !DILocation(line: 12, column: 15, scope: !29)
!38 = !DILocation(line: 12, column: 20, scope: !29)
!39 = !DILocation(line: 12, column: 17, scope: !29)
!40 = !DILocation(line: 14, column: 16, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 14, column: 16)
!42 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 9)
!43 = !DILocation(line: 14, column: 20, scope: !41)
!44 = !DILocation(line: 14, column: 18, scope: !41)
!45 = !DILocation(line: 14, column: 16, scope: !42)
!46 = !DILocation(line: 15, column: 21, scope: !41)
!47 = !DILocation(line: 15, column: 25, scope: !41)
!48 = !DILocation(line: 15, column: 23, scope: !41)
!49 = !DILocation(line: 15, column: 19, scope: !41)
!50 = !DILocation(line: 15, column: 17, scope: !41)
!51 = !DILocation(line: 17, column: 21, scope: !41)
!52 = !DILocation(line: 17, column: 25, scope: !41)
!53 = !DILocation(line: 17, column: 23, scope: !41)
!54 = !DILocation(line: 17, column: 19, scope: !41)
!55 = distinct !{!55, !36, !56}
!56 = !DILocation(line: 18, column: 9, scope: !29)
!57 = !DILocation(line: 19, column: 16, scope: !29)
!58 = !DILocation(line: 19, column: 17, scope: !29)
!59 = !DILocation(line: 19, column: 13, scope: !29)
!60 = !DILocation(line: 20, column: 24, scope: !29)
!61 = !DILocation(line: 20, column: 9, scope: !29)
!62 = !DILocation(line: 21, column: 5, scope: !29)
!63 = !DILocation(line: 7, column: 24, scope: !24)
!64 = !DILocation(line: 7, column: 5, scope: !24)
!65 = distinct !{!65, !27, !66}
!66 = !DILocation(line: 21, column: 5, scope: !21)
!67 = !DILocation(line: 22, column: 1, scope: !7)
