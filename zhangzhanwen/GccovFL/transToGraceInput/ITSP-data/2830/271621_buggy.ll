; ModuleID = 'gcov/../WA_c/271621_buggy.c'
source_filename = "gcov/../WA_c/271621_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"The second largest number is %d\00", align 1

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
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4, i32* %5), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  %14 = load i32, i32* %2, align 4, !dbg !22
  %15 = load i32, i32* %3, align 4, !dbg !24
  %16 = icmp slt i32 %14, %15, !dbg !25
  br i1 %16, label %17, label %21, !dbg !26

; <label>:17:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %7, metadata !27, metadata !DIExpression()), !dbg !29
  %18 = load i32, i32* %2, align 4, !dbg !30
  store i32 %18, i32* %7, align 4, !dbg !29
  %19 = load i32, i32* %3, align 4, !dbg !31
  store i32 %19, i32* %2, align 4, !dbg !32
  %20 = load i32, i32* %7, align 4, !dbg !33
  store i32 %20, i32* %3, align 4, !dbg !34
  br label %21, !dbg !35

; <label>:21:                                     ; preds = %17, %0
  %22 = load i32, i32* %4, align 4, !dbg !36
  %23 = load i32, i32* %5, align 4, !dbg !38
  %24 = icmp slt i32 %22, %23, !dbg !39
  br i1 %24, label %25, label %29, !dbg !40

; <label>:25:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i32* %8, metadata !41, metadata !DIExpression()), !dbg !43
  %26 = load i32, i32* %4, align 4, !dbg !44
  store i32 %26, i32* %8, align 4, !dbg !43
  %27 = load i32, i32* %5, align 4, !dbg !45
  store i32 %27, i32* %4, align 4, !dbg !46
  %28 = load i32, i32* %8, align 4, !dbg !47
  store i32 %28, i32* %5, align 4, !dbg !48
  br label %29, !dbg !49

; <label>:29:                                     ; preds = %25, %21
  %30 = load i32, i32* %3, align 4, !dbg !50
  %31 = load i32, i32* %4, align 4, !dbg !52
  %32 = icmp slt i32 %30, %31, !dbg !53
  br i1 %32, label %33, label %37, !dbg !54

; <label>:33:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata i32* %9, metadata !55, metadata !DIExpression()), !dbg !57
  %34 = load i32, i32* %3, align 4, !dbg !58
  store i32 %34, i32* %9, align 4, !dbg !57
  %35 = load i32, i32* %4, align 4, !dbg !59
  store i32 %35, i32* %3, align 4, !dbg !60
  %36 = load i32, i32* %9, align 4, !dbg !61
  store i32 %36, i32* %4, align 4, !dbg !62
  br label %37, !dbg !63

; <label>:37:                                     ; preds = %33, %29
  %38 = load i32, i32* %2, align 4, !dbg !64
  %39 = load i32, i32* %3, align 4, !dbg !66
  %40 = icmp slt i32 %38, %39, !dbg !67
  br i1 %40, label %41, label %45, !dbg !68

; <label>:41:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %10, metadata !69, metadata !DIExpression()), !dbg !71
  %42 = load i32, i32* %2, align 4, !dbg !72
  store i32 %42, i32* %10, align 4, !dbg !71
  %43 = load i32, i32* %3, align 4, !dbg !73
  store i32 %43, i32* %2, align 4, !dbg !74
  %44 = load i32, i32* %2, align 4, !dbg !75
  store i32 %44, i32* %3, align 4, !dbg !76
  br label %45, !dbg !77

; <label>:45:                                     ; preds = %41, %37
  %46 = load i32, i32* %3, align 4, !dbg !78
  %47 = load i32, i32* %4, align 4, !dbg !80
  %48 = icmp slt i32 %46, %47, !dbg !81
  br i1 %48, label %49, label %53, !dbg !82

; <label>:49:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i32* %11, metadata !83, metadata !DIExpression()), !dbg !85
  %50 = load i32, i32* %3, align 4, !dbg !86
  store i32 %50, i32* %11, align 4, !dbg !85
  %51 = load i32, i32* %4, align 4, !dbg !87
  store i32 %51, i32* %3, align 4, !dbg !88
  %52 = load i32, i32* %11, align 4, !dbg !89
  store i32 %52, i32* %4, align 4, !dbg !90
  br label %53, !dbg !91

; <label>:53:                                     ; preds = %49, %45
  %54 = load i32, i32* %4, align 4, !dbg !92
  %55 = load i32, i32* %5, align 4, !dbg !94
  %56 = icmp slt i32 %54, %55, !dbg !95
  br i1 %56, label %57, label %61, !dbg !96

; <label>:57:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %12, metadata !97, metadata !DIExpression()), !dbg !99
  %58 = load i32, i32* %4, align 4, !dbg !100
  store i32 %58, i32* %12, align 4, !dbg !99
  %59 = load i32, i32* %5, align 4, !dbg !101
  store i32 %59, i32* %4, align 4, !dbg !102
  %60 = load i32, i32* %4, align 4, !dbg !103
  store i32 %60, i32* %5, align 4, !dbg !104
  br label %61, !dbg !105

; <label>:61:                                     ; preds = %57, %53
  %62 = load i32, i32* %3, align 4, !dbg !106
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %62), !dbg !107
  ret i32 0, !dbg !108
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
!1 = !DIFile(filename: "gcov/../WA_c/271621_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2830")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocalVariable(name: "second", scope: !7, file: !1, line: 7, type: !10)
!21 = !DILocation(line: 7, column: 9, scope: !7)
!22 = !DILocation(line: 8, column: 8, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!24 = !DILocation(line: 8, column: 10, scope: !23)
!25 = !DILocation(line: 8, column: 9, scope: !23)
!26 = !DILocation(line: 8, column: 8, scope: !7)
!27 = !DILocalVariable(name: "s", scope: !28, file: !1, line: 10, type: !10)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 5)
!29 = !DILocation(line: 10, column: 13, scope: !28)
!30 = !DILocation(line: 10, column: 15, scope: !28)
!31 = !DILocation(line: 11, column: 11, scope: !28)
!32 = !DILocation(line: 11, column: 10, scope: !28)
!33 = !DILocation(line: 12, column: 11, scope: !28)
!34 = !DILocation(line: 12, column: 10, scope: !28)
!35 = !DILocation(line: 13, column: 5, scope: !28)
!36 = !DILocation(line: 14, column: 8, scope: !37)
!37 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 8)
!38 = !DILocation(line: 14, column: 10, scope: !37)
!39 = !DILocation(line: 14, column: 9, scope: !37)
!40 = !DILocation(line: 14, column: 8, scope: !7)
!41 = !DILocalVariable(name: "s", scope: !42, file: !1, line: 16, type: !10)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 15, column: 5)
!43 = !DILocation(line: 16, column: 13, scope: !42)
!44 = !DILocation(line: 16, column: 15, scope: !42)
!45 = !DILocation(line: 17, column: 11, scope: !42)
!46 = !DILocation(line: 17, column: 10, scope: !42)
!47 = !DILocation(line: 18, column: 11, scope: !42)
!48 = !DILocation(line: 18, column: 10, scope: !42)
!49 = !DILocation(line: 19, column: 5, scope: !42)
!50 = !DILocation(line: 20, column: 8, scope: !51)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 8)
!52 = !DILocation(line: 20, column: 10, scope: !51)
!53 = !DILocation(line: 20, column: 9, scope: !51)
!54 = !DILocation(line: 20, column: 8, scope: !7)
!55 = !DILocalVariable(name: "s", scope: !56, file: !1, line: 22, type: !10)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 21, column: 5)
!57 = !DILocation(line: 22, column: 13, scope: !56)
!58 = !DILocation(line: 22, column: 15, scope: !56)
!59 = !DILocation(line: 23, column: 11, scope: !56)
!60 = !DILocation(line: 23, column: 10, scope: !56)
!61 = !DILocation(line: 24, column: 11, scope: !56)
!62 = !DILocation(line: 24, column: 10, scope: !56)
!63 = !DILocation(line: 25, column: 5, scope: !56)
!64 = !DILocation(line: 26, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 8)
!66 = !DILocation(line: 26, column: 10, scope: !65)
!67 = !DILocation(line: 26, column: 9, scope: !65)
!68 = !DILocation(line: 26, column: 8, scope: !7)
!69 = !DILocalVariable(name: "s", scope: !70, file: !1, line: 28, type: !10)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 27, column: 5)
!71 = !DILocation(line: 28, column: 13, scope: !70)
!72 = !DILocation(line: 28, column: 15, scope: !70)
!73 = !DILocation(line: 29, column: 11, scope: !70)
!74 = !DILocation(line: 29, column: 10, scope: !70)
!75 = !DILocation(line: 30, column: 11, scope: !70)
!76 = !DILocation(line: 30, column: 10, scope: !70)
!77 = !DILocation(line: 31, column: 5, scope: !70)
!78 = !DILocation(line: 32, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 8)
!80 = !DILocation(line: 32, column: 10, scope: !79)
!81 = !DILocation(line: 32, column: 9, scope: !79)
!82 = !DILocation(line: 32, column: 8, scope: !7)
!83 = !DILocalVariable(name: "s", scope: !84, file: !1, line: 34, type: !10)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 33, column: 5)
!85 = !DILocation(line: 34, column: 13, scope: !84)
!86 = !DILocation(line: 34, column: 15, scope: !84)
!87 = !DILocation(line: 35, column: 11, scope: !84)
!88 = !DILocation(line: 35, column: 10, scope: !84)
!89 = !DILocation(line: 36, column: 11, scope: !84)
!90 = !DILocation(line: 36, column: 10, scope: !84)
!91 = !DILocation(line: 37, column: 5, scope: !84)
!92 = !DILocation(line: 38, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !7, file: !1, line: 38, column: 8)
!94 = !DILocation(line: 38, column: 10, scope: !93)
!95 = !DILocation(line: 38, column: 9, scope: !93)
!96 = !DILocation(line: 38, column: 8, scope: !7)
!97 = !DILocalVariable(name: "s", scope: !98, file: !1, line: 40, type: !10)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 39, column: 5)
!99 = !DILocation(line: 40, column: 13, scope: !98)
!100 = !DILocation(line: 40, column: 15, scope: !98)
!101 = !DILocation(line: 41, column: 11, scope: !98)
!102 = !DILocation(line: 41, column: 10, scope: !98)
!103 = !DILocation(line: 42, column: 11, scope: !98)
!104 = !DILocation(line: 42, column: 10, scope: !98)
!105 = !DILocation(line: 43, column: 5, scope: !98)
!106 = !DILocation(line: 44, column: 46, scope: !7)
!107 = !DILocation(line: 44, column: 5, scope: !7)
!108 = !DILocation(line: 45, column: 5, scope: !7)
