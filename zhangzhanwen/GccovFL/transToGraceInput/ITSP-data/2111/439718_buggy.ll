; ModuleID = 'gcov/../WA_c/439718_buggy.c'
source_filename = "gcov/../WA_c/439718_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  br label %8, !dbg !21

; <label>:8:                                      ; preds = %44, %0
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !22
  %10 = icmp ne i32 %9, -1, !dbg !23
  br i1 %10, label %11, label %47, !dbg !21

; <label>:11:                                     ; preds = %8
  store i32 0, i32* %6, align 4, !dbg !24
  %12 = load i32, i32* %2, align 4, !dbg !26
  store i32 %12, i32* %4, align 4, !dbg !27
  store i32 0, i32* %3, align 4, !dbg !28
  br label %13, !dbg !30

; <label>:13:                                     ; preds = %20, %11
  %14 = load i32, i32* %4, align 4, !dbg !31
  %15 = icmp eq i32 %14, 0, !dbg !35
  br i1 %15, label %16, label %17, !dbg !36

; <label>:16:                                     ; preds = %13
  br label %23, !dbg !37

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %4, align 4, !dbg !38
  %19 = sdiv i32 %18, 2, !dbg !39
  store i32 %19, i32* %4, align 4, !dbg !40
  br label %20, !dbg !41

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %3, align 4, !dbg !42
  %22 = add nsw i32 %21, 1, !dbg !42
  store i32 %22, i32* %3, align 4, !dbg !42
  br label %13, !dbg !43, !llvm.loop !44

; <label>:23:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %7, metadata !47, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %7, align 4, !dbg !49
  br label %24, !dbg !50

; <label>:24:                                     ; preds = %41, %23
  %25 = load i32, i32* %7, align 4, !dbg !51
  %26 = load i32, i32* %3, align 4, !dbg !53
  %27 = icmp slt i32 %25, %26, !dbg !54
  br i1 %27, label %28, label %44, !dbg !55

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %2, align 4, !dbg !56
  %30 = srem i32 %29, 2, !dbg !58
  store i32 %30, i32* %5, align 4, !dbg !59
  %31 = load i32, i32* %2, align 4, !dbg !60
  %32 = sdiv i32 %31, 2, !dbg !61
  store i32 %32, i32* %2, align 4, !dbg !62
  %33 = load i32, i32* %6, align 4, !dbg !63
  %34 = add nsw i32 %33, 1, !dbg !63
  store i32 %34, i32* %6, align 4, !dbg !63
  %35 = load i32, i32* %5, align 4, !dbg !64
  %36 = icmp eq i32 %35, 1, !dbg !66
  br i1 %36, label %37, label %40, !dbg !67

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %6, align 4, !dbg !68
  %39 = add nsw i32 %38, 1, !dbg !68
  store i32 %39, i32* %6, align 4, !dbg !68
  br label %40, !dbg !69

; <label>:40:                                     ; preds = %37, %28
  br label %41, !dbg !70

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %7, align 4, !dbg !71
  %43 = add nsw i32 %42, 1, !dbg !71
  store i32 %43, i32* %7, align 4, !dbg !71
  br label %24, !dbg !72, !llvm.loop !73

; <label>:44:                                     ; preds = %24
  %45 = load i32, i32* %6, align 4, !dbg !75
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %45), !dbg !76
  br label %8, !dbg !21, !llvm.loop !77

; <label>:47:                                     ; preds = %8
  %48 = load i32, i32* %1, align 4, !dbg !79
  ret i32 %48, !dbg !79
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
!1 = !DIFile(filename: "gcov/../WA_c/439718_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 21, scope: !7)
!21 = !DILocation(line: 5, column: 5, scope: !7)
!22 = !DILocation(line: 5, column: 11, scope: !7)
!23 = !DILocation(line: 5, column: 27, scope: !7)
!24 = !DILocation(line: 7, column: 11, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!26 = !DILocation(line: 8, column: 13, scope: !25)
!27 = !DILocation(line: 8, column: 11, scope: !25)
!28 = !DILocation(line: 9, column: 15, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!30 = !DILocation(line: 9, column: 13, scope: !29)
!31 = !DILocation(line: 12, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 16)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 9)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 9)
!35 = !DILocation(line: 12, column: 18, scope: !32)
!36 = !DILocation(line: 12, column: 16, scope: !33)
!37 = !DILocation(line: 12, column: 24, scope: !32)
!38 = !DILocation(line: 13, column: 17, scope: !33)
!39 = !DILocation(line: 13, column: 19, scope: !33)
!40 = !DILocation(line: 13, column: 15, scope: !33)
!41 = !DILocation(line: 14, column: 9, scope: !33)
!42 = !DILocation(line: 9, column: 22, scope: !34)
!43 = !DILocation(line: 9, column: 9, scope: !34)
!44 = distinct !{!44, !45, !46}
!45 = !DILocation(line: 9, column: 9, scope: !29)
!46 = !DILocation(line: 14, column: 9, scope: !29)
!47 = !DILocalVariable(name: "i", scope: !48, file: !1, line: 15, type: !10)
!48 = distinct !DILexicalBlock(scope: !25, file: !1, line: 15, column: 9)
!49 = !DILocation(line: 15, column: 17, scope: !48)
!50 = !DILocation(line: 15, column: 13, scope: !48)
!51 = !DILocation(line: 15, column: 24, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 15, column: 9)
!53 = !DILocation(line: 15, column: 28, scope: !52)
!54 = !DILocation(line: 15, column: 26, scope: !52)
!55 = !DILocation(line: 15, column: 9, scope: !48)
!56 = !DILocation(line: 17, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 16, column: 9)
!58 = !DILocation(line: 17, column: 19, scope: !57)
!59 = !DILocation(line: 17, column: 15, scope: !57)
!60 = !DILocation(line: 18, column: 17, scope: !57)
!61 = !DILocation(line: 18, column: 19, scope: !57)
!62 = !DILocation(line: 18, column: 15, scope: !57)
!63 = !DILocation(line: 19, column: 14, scope: !57)
!64 = !DILocation(line: 20, column: 16, scope: !65)
!65 = distinct !DILexicalBlock(scope: !57, file: !1, line: 20, column: 16)
!66 = !DILocation(line: 20, column: 18, scope: !65)
!67 = !DILocation(line: 20, column: 16, scope: !57)
!68 = !DILocation(line: 20, column: 25, scope: !65)
!69 = !DILocation(line: 20, column: 24, scope: !65)
!70 = !DILocation(line: 21, column: 9, scope: !57)
!71 = !DILocation(line: 15, column: 32, scope: !52)
!72 = !DILocation(line: 15, column: 9, scope: !52)
!73 = distinct !{!73, !55, !74}
!74 = !DILocation(line: 21, column: 9, scope: !48)
!75 = !DILocation(line: 22, column: 24, scope: !25)
!76 = !DILocation(line: 22, column: 9, scope: !25)
!77 = distinct !{!77, !21, !78}
!78 = !DILocation(line: 23, column: 5, scope: !7)
!79 = !DILocation(line: 24, column: 1, scope: !7)
