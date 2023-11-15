; ModuleID = 'gcov/../WA_c/466091_buggy.c'
source_filename = "gcov/../WA_c/466091_buggy.c"
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
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 1, i32* %6, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %9, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %10, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %11, metadata !29, metadata !DIExpression()), !dbg !30
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !31
  store i32 0, i32* %5, align 4, !dbg !32
  br label %13, !dbg !34

; <label>:13:                                     ; preds = %50, %0
  %14 = load i32, i32* %5, align 4, !dbg !35
  %15 = load i32, i32* %2, align 4, !dbg !37
  %16 = icmp slt i32 %14, %15, !dbg !38
  br i1 %16, label %17, label %53, !dbg !39

; <label>:17:                                     ; preds = %13
  %18 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %3, i32* %4), !dbg !40
  %19 = load i32, i32* %3, align 4, !dbg !42
  %20 = load i32, i32* %4, align 4, !dbg !44
  %21 = icmp slt i32 %19, %20, !dbg !45
  br i1 %21, label %22, label %26, !dbg !46

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %3, align 4, !dbg !47
  store i32 %23, i32* %7, align 4, !dbg !49
  %24 = load i32, i32* %4, align 4, !dbg !50
  store i32 %24, i32* %3, align 4, !dbg !51
  %25 = load i32, i32* %7, align 4, !dbg !52
  store i32 %25, i32* %4, align 4, !dbg !53
  br label %26, !dbg !54

; <label>:26:                                     ; preds = %22, %17
  %27 = load i32, i32* %3, align 4, !dbg !55
  store i32 %27, i32* %10, align 4, !dbg !56
  %28 = load i32, i32* %4, align 4, !dbg !57
  store i32 %28, i32* %11, align 4, !dbg !58
  br label %29, !dbg !59

; <label>:29:                                     ; preds = %32, %26
  %30 = load i32, i32* %6, align 4, !dbg !60
  %31 = icmp ne i32 %30, 0, !dbg !63
  br i1 %31, label %32, label %38, !dbg !64

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %3, align 4, !dbg !65
  %34 = load i32, i32* %4, align 4, !dbg !67
  %35 = srem i32 %33, %34, !dbg !68
  store i32 %35, i32* %6, align 4, !dbg !69
  %36 = load i32, i32* %4, align 4, !dbg !70
  store i32 %36, i32* %3, align 4, !dbg !71
  %37 = load i32, i32* %6, align 4, !dbg !72
  store i32 %37, i32* %4, align 4, !dbg !73
  br label %29, !dbg !74, !llvm.loop !75

; <label>:38:                                     ; preds = %29
  store i32 1, i32* %6, align 4, !dbg !77
  %39 = load i32, i32* %10, align 4, !dbg !78
  %40 = load i32, i32* %3, align 4, !dbg !79
  %41 = sdiv i32 %39, %40, !dbg !80
  %42 = load i32, i32* %11, align 4, !dbg !81
  %43 = load i32, i32* %3, align 4, !dbg !82
  %44 = sdiv i32 %42, %43, !dbg !83
  %45 = add nsw i32 %41, %44, !dbg !84
  %46 = load i32, i32* %6, align 4, !dbg !85
  %47 = add nsw i32 %45, %46, !dbg !86
  store i32 %47, i32* %9, align 4, !dbg !87
  %48 = load i32, i32* %9, align 4, !dbg !88
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %48), !dbg !89
  br label %50, !dbg !90

; <label>:50:                                     ; preds = %38
  %51 = load i32, i32* %5, align 4, !dbg !91
  %52 = add nsw i32 %51, 1, !dbg !91
  store i32 %52, i32* %5, align 4, !dbg !91
  br label %13, !dbg !92, !llvm.loop !93

; <label>:53:                                     ; preds = %13
  %54 = load i32, i32* %1, align 4, !dbg !95
  ret i32 %54, !dbg !95
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
!1 = !DIFile(filename: "gcov/../WA_c/466091_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 21, scope: !7)
!21 = !DILocalVariable(name: "t", scope: !7, file: !1, line: 4, type: !10)
!22 = !DILocation(line: 4, column: 28, scope: !7)
!23 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 4, type: !10)
!24 = !DILocation(line: 4, column: 31, scope: !7)
!25 = !DILocalVariable(name: "o", scope: !7, file: !1, line: 4, type: !10)
!26 = !DILocation(line: 4, column: 34, scope: !7)
!27 = !DILocalVariable(name: "f", scope: !7, file: !1, line: 4, type: !10)
!28 = !DILocation(line: 4, column: 37, scope: !7)
!29 = !DILocalVariable(name: "g", scope: !7, file: !1, line: 4, type: !10)
!30 = !DILocation(line: 4, column: 40, scope: !7)
!31 = !DILocation(line: 5, column: 5, scope: !7)
!32 = !DILocation(line: 6, column: 11, scope: !33)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!34 = !DILocation(line: 6, column: 9, scope: !33)
!35 = !DILocation(line: 6, column: 16, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 6, column: 5)
!37 = !DILocation(line: 6, column: 20, scope: !36)
!38 = !DILocation(line: 6, column: 18, scope: !36)
!39 = !DILocation(line: 6, column: 5, scope: !33)
!40 = !DILocation(line: 8, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 7, column: 5)
!42 = !DILocation(line: 9, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !41, file: !1, line: 9, column: 12)
!44 = !DILocation(line: 9, column: 16, scope: !43)
!45 = !DILocation(line: 9, column: 14, scope: !43)
!46 = !DILocation(line: 9, column: 12, scope: !41)
!47 = !DILocation(line: 11, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 10, column: 9)
!49 = !DILocation(line: 11, column: 15, scope: !48)
!50 = !DILocation(line: 12, column: 17, scope: !48)
!51 = !DILocation(line: 12, column: 15, scope: !48)
!52 = !DILocation(line: 13, column: 17, scope: !48)
!53 = !DILocation(line: 13, column: 15, scope: !48)
!54 = !DILocation(line: 14, column: 9, scope: !48)
!55 = !DILocation(line: 15, column: 13, scope: !41)
!56 = !DILocation(line: 15, column: 11, scope: !41)
!57 = !DILocation(line: 16, column: 13, scope: !41)
!58 = !DILocation(line: 16, column: 11, scope: !41)
!59 = !DILocation(line: 17, column: 9, scope: !41)
!60 = !DILocation(line: 17, column: 15, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 17, column: 9)
!62 = distinct !DILexicalBlock(scope: !41, file: !1, line: 17, column: 9)
!63 = !DILocation(line: 17, column: 17, scope: !61)
!64 = !DILocation(line: 17, column: 9, scope: !62)
!65 = !DILocation(line: 19, column: 17, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !1, line: 18, column: 9)
!67 = !DILocation(line: 19, column: 21, scope: !66)
!68 = !DILocation(line: 19, column: 19, scope: !66)
!69 = !DILocation(line: 19, column: 15, scope: !66)
!70 = !DILocation(line: 20, column: 17, scope: !66)
!71 = !DILocation(line: 20, column: 15, scope: !66)
!72 = !DILocation(line: 21, column: 17, scope: !66)
!73 = !DILocation(line: 21, column: 15, scope: !66)
!74 = !DILocation(line: 17, column: 9, scope: !61)
!75 = distinct !{!75, !64, !76}
!76 = !DILocation(line: 22, column: 9, scope: !62)
!77 = !DILocation(line: 24, column: 11, scope: !41)
!78 = !DILocation(line: 25, column: 13, scope: !41)
!79 = !DILocation(line: 25, column: 17, scope: !41)
!80 = !DILocation(line: 25, column: 15, scope: !41)
!81 = !DILocation(line: 25, column: 21, scope: !41)
!82 = !DILocation(line: 25, column: 25, scope: !41)
!83 = !DILocation(line: 25, column: 23, scope: !41)
!84 = !DILocation(line: 25, column: 19, scope: !41)
!85 = !DILocation(line: 25, column: 29, scope: !41)
!86 = !DILocation(line: 25, column: 27, scope: !41)
!87 = !DILocation(line: 25, column: 11, scope: !41)
!88 = !DILocation(line: 26, column: 24, scope: !41)
!89 = !DILocation(line: 26, column: 9, scope: !41)
!90 = !DILocation(line: 27, column: 5, scope: !41)
!91 = !DILocation(line: 6, column: 24, scope: !36)
!92 = !DILocation(line: 6, column: 5, scope: !36)
!93 = distinct !{!93, !39, !94}
!94 = !DILocation(line: 27, column: 5, scope: !33)
!95 = !DILocation(line: 29, column: 1, scope: !7)
