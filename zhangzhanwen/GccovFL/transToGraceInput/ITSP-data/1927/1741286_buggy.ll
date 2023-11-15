; ModuleID = 'gcov/../WA_c/1741286_buggy.c'
source_filename = "gcov/../WA_c/1741286_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %7, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %8, metadata !24, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %8, align 4, !dbg !26
  br label %10, !dbg !27

; <label>:10:                                     ; preds = %42, %0
  %11 = load i32, i32* %8, align 4, !dbg !28
  %12 = load i32, i32* %2, align 4, !dbg !30
  %13 = icmp slt i32 %11, %12, !dbg !31
  br i1 %13, label %14, label %45, !dbg !32

; <label>:14:                                     ; preds = %10
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32* %3, i32* %4), !dbg !33
  %16 = load i32, i32* %3, align 4, !dbg !35
  %17 = load i32, i32* %4, align 4, !dbg !37
  %18 = icmp slt i32 %16, %17, !dbg !38
  br i1 %18, label %19, label %23, !dbg !39

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %3, align 4, !dbg !40
  store i32 %20, i32* %7, align 4, !dbg !42
  %21 = load i32, i32* %4, align 4, !dbg !43
  store i32 %21, i32* %3, align 4, !dbg !44
  %22 = load i32, i32* %7, align 4, !dbg !45
  store i32 %22, i32* %4, align 4, !dbg !46
  br label %23, !dbg !47

; <label>:23:                                     ; preds = %19, %14
  %24 = load i32, i32* %4, align 4, !dbg !48
  store i32 %24, i32* %6, align 4, !dbg !49
  br label %25, !dbg !50

; <label>:25:                                     ; preds = %30, %23
  %26 = load i32, i32* %3, align 4, !dbg !51
  %27 = load i32, i32* %4, align 4, !dbg !52
  %28 = srem i32 %26, %27, !dbg !53
  %29 = icmp ne i32 %28, 0, !dbg !54
  br i1 %29, label %30, label %37, !dbg !50

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %3, align 4, !dbg !55
  %32 = load i32, i32* %4, align 4, !dbg !57
  %33 = srem i32 %31, %32, !dbg !58
  store i32 %33, i32* %5, align 4, !dbg !59
  %34 = load i32, i32* %5, align 4, !dbg !60
  store i32 %34, i32* %6, align 4, !dbg !61
  %35 = load i32, i32* %4, align 4, !dbg !62
  store i32 %35, i32* %3, align 4, !dbg !63
  %36 = load i32, i32* %5, align 4, !dbg !64
  store i32 %36, i32* %4, align 4, !dbg !65
  br label %25, !dbg !50, !llvm.loop !66

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %6, align 4, !dbg !68
  %39 = sub nsw i32 %38, 2, !dbg !68
  store i32 %39, i32* %6, align 4, !dbg !68
  %40 = load i32, i32* %6, align 4, !dbg !69
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %40), !dbg !70
  br label %42, !dbg !71

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %8, align 4, !dbg !72
  %44 = add nsw i32 %43, 1, !dbg !72
  store i32 %44, i32* %8, align 4, !dbg !72
  br label %10, !dbg !73, !llvm.loop !74

; <label>:45:                                     ; preds = %10
  %46 = load i32, i32* %1, align 4, !dbg !76
  ret i32 %46, !dbg !76
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
!1 = !DIFile(filename: "gcov/../WA_c/1741286_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
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
!13 = !DILocation(line: 6, column: 5, scope: !7)
!14 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 7, type: !10)
!15 = !DILocation(line: 7, column: 9, scope: !7)
!16 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 7, type: !10)
!17 = !DILocation(line: 7, column: 12, scope: !7)
!18 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 8, type: !10)
!19 = !DILocation(line: 8, column: 9, scope: !7)
!20 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 8, type: !10)
!21 = !DILocation(line: 8, column: 12, scope: !7)
!22 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 9, type: !10)
!23 = !DILocation(line: 9, column: 9, scope: !7)
!24 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 10, type: !10)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 5)
!26 = !DILocation(line: 10, column: 13, scope: !25)
!27 = !DILocation(line: 10, column: 9, scope: !25)
!28 = !DILocation(line: 10, column: 20, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 5)
!30 = !DILocation(line: 10, column: 24, scope: !29)
!31 = !DILocation(line: 10, column: 22, scope: !29)
!32 = !DILocation(line: 10, column: 5, scope: !25)
!33 = !DILocation(line: 12, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 5)
!35 = !DILocation(line: 13, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !34, file: !1, line: 13, column: 12)
!37 = !DILocation(line: 13, column: 16, scope: !36)
!38 = !DILocation(line: 13, column: 14, scope: !36)
!39 = !DILocation(line: 13, column: 12, scope: !34)
!40 = !DILocation(line: 15, column: 17, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 14, column: 9)
!42 = !DILocation(line: 15, column: 15, scope: !41)
!43 = !DILocation(line: 16, column: 17, scope: !41)
!44 = !DILocation(line: 16, column: 15, scope: !41)
!45 = !DILocation(line: 17, column: 17, scope: !41)
!46 = !DILocation(line: 17, column: 15, scope: !41)
!47 = !DILocation(line: 18, column: 9, scope: !41)
!48 = !DILocation(line: 19, column: 13, scope: !34)
!49 = !DILocation(line: 19, column: 11, scope: !34)
!50 = !DILocation(line: 20, column: 9, scope: !34)
!51 = !DILocation(line: 20, column: 15, scope: !34)
!52 = !DILocation(line: 20, column: 19, scope: !34)
!53 = !DILocation(line: 20, column: 17, scope: !34)
!54 = !DILocation(line: 20, column: 21, scope: !34)
!55 = !DILocation(line: 22, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !34, file: !1, line: 21, column: 9)
!57 = !DILocation(line: 22, column: 21, scope: !56)
!58 = !DILocation(line: 22, column: 19, scope: !56)
!59 = !DILocation(line: 22, column: 15, scope: !56)
!60 = !DILocation(line: 23, column: 17, scope: !56)
!61 = !DILocation(line: 23, column: 15, scope: !56)
!62 = !DILocation(line: 24, column: 17, scope: !56)
!63 = !DILocation(line: 24, column: 15, scope: !56)
!64 = !DILocation(line: 25, column: 17, scope: !56)
!65 = !DILocation(line: 25, column: 15, scope: !56)
!66 = distinct !{!66, !50, !67}
!67 = !DILocation(line: 26, column: 9, scope: !34)
!68 = !DILocation(line: 27, column: 11, scope: !34)
!69 = !DILocation(line: 28, column: 24, scope: !34)
!70 = !DILocation(line: 28, column: 9, scope: !34)
!71 = !DILocation(line: 29, column: 5, scope: !34)
!72 = !DILocation(line: 10, column: 28, scope: !29)
!73 = !DILocation(line: 10, column: 5, scope: !29)
!74 = distinct !{!74, !32, !75}
!75 = !DILocation(line: 29, column: 5, scope: !25)
!76 = !DILocation(line: 30, column: 1, scope: !7)
