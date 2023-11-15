; ModuleID = 'gcov/../WA_c/271574_buggy.c'
source_filename = "gcov/../WA_c/271574_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4, i32* %5), !dbg !21
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = load i32, i32* %2, align 4, !dbg !24
  %10 = icmp slt i32 %8, %9, !dbg !25
  br i1 %10, label %11, label %15, !dbg !26

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !27
  store i32 %12, i32* %6, align 4, !dbg !29
  %13 = load i32, i32* %3, align 4, !dbg !30
  store i32 %13, i32* %2, align 4, !dbg !31
  %14 = load i32, i32* %6, align 4, !dbg !32
  store i32 %14, i32* %3, align 4, !dbg !33
  br label %15, !dbg !34

; <label>:15:                                     ; preds = %11, %0
  %16 = load i32, i32* %4, align 4, !dbg !35
  %17 = load i32, i32* %3, align 4, !dbg !37
  %18 = icmp slt i32 %16, %17, !dbg !38
  br i1 %18, label %19, label %31, !dbg !39

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4, !dbg !40
  store i32 %20, i32* %6, align 4, !dbg !42
  %21 = load i32, i32* %3, align 4, !dbg !43
  store i32 %21, i32* %4, align 4, !dbg !44
  %22 = load i32, i32* %6, align 4, !dbg !45
  store i32 %22, i32* %3, align 4, !dbg !46
  %23 = load i32, i32* %3, align 4, !dbg !47
  %24 = load i32, i32* %2, align 4, !dbg !49
  %25 = icmp slt i32 %23, %24, !dbg !50
  br i1 %25, label %26, label %30, !dbg !51

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %2, align 4, !dbg !52
  store i32 %27, i32* %6, align 4, !dbg !54
  %28 = load i32, i32* %3, align 4, !dbg !55
  store i32 %28, i32* %2, align 4, !dbg !56
  %29 = load i32, i32* %6, align 4, !dbg !57
  store i32 %29, i32* %3, align 4, !dbg !58
  br label %30, !dbg !59

; <label>:30:                                     ; preds = %26, %19
  br label %31, !dbg !60

; <label>:31:                                     ; preds = %30, %15
  %32 = load i32, i32* %5, align 4, !dbg !61
  %33 = load i32, i32* %4, align 4, !dbg !63
  %34 = icmp slt i32 %32, %33, !dbg !64
  br i1 %34, label %35, label %55, !dbg !65

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %5, align 4, !dbg !66
  store i32 %36, i32* %6, align 4, !dbg !68
  %37 = load i32, i32* %4, align 4, !dbg !69
  store i32 %37, i32* %5, align 4, !dbg !70
  %38 = load i32, i32* %6, align 4, !dbg !71
  store i32 %38, i32* %4, align 4, !dbg !72
  %39 = load i32, i32* %4, align 4, !dbg !73
  %40 = load i32, i32* %3, align 4, !dbg !75
  %41 = icmp slt i32 %39, %40, !dbg !76
  br i1 %41, label %42, label %54, !dbg !77

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %4, align 4, !dbg !78
  store i32 %43, i32* %6, align 4, !dbg !80
  %44 = load i32, i32* %3, align 4, !dbg !81
  store i32 %44, i32* %4, align 4, !dbg !82
  %45 = load i32, i32* %6, align 4, !dbg !83
  store i32 %45, i32* %3, align 4, !dbg !84
  %46 = load i32, i32* %3, align 4, !dbg !85
  %47 = load i32, i32* %2, align 4, !dbg !87
  %48 = icmp slt i32 %46, %47, !dbg !88
  br i1 %48, label %49, label %53, !dbg !89

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %2, align 4, !dbg !90
  store i32 %50, i32* %6, align 4, !dbg !92
  %51 = load i32, i32* %3, align 4, !dbg !93
  store i32 %51, i32* %2, align 4, !dbg !94
  %52 = load i32, i32* %6, align 4, !dbg !95
  store i32 %52, i32* %3, align 4, !dbg !96
  br label %53, !dbg !97

; <label>:53:                                     ; preds = %49, %42
  br label %54, !dbg !98

; <label>:54:                                     ; preds = %53, %35
  br label %55, !dbg !99

; <label>:55:                                     ; preds = %54, %31
  %56 = load i32, i32* %4, align 4, !dbg !100
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %56), !dbg !101
  ret i32 0, !dbg !102
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
!1 = !DIFile(filename: "gcov/../WA_c/271574_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2830")
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
!19 = !DILocalVariable(name: "temp", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 8, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!24 = !DILocation(line: 7, column: 10, scope: !23)
!25 = !DILocation(line: 7, column: 9, scope: !23)
!26 = !DILocation(line: 7, column: 8, scope: !7)
!27 = !DILocation(line: 9, column: 14, scope: !28)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 5)
!29 = !DILocation(line: 9, column: 13, scope: !28)
!30 = !DILocation(line: 10, column: 11, scope: !28)
!31 = !DILocation(line: 10, column: 10, scope: !28)
!32 = !DILocation(line: 11, column: 11, scope: !28)
!33 = !DILocation(line: 11, column: 10, scope: !28)
!34 = !DILocation(line: 12, column: 5, scope: !28)
!35 = !DILocation(line: 13, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 8)
!37 = !DILocation(line: 13, column: 10, scope: !36)
!38 = !DILocation(line: 13, column: 9, scope: !36)
!39 = !DILocation(line: 13, column: 8, scope: !7)
!40 = !DILocation(line: 15, column: 14, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 14, column: 5)
!42 = !DILocation(line: 15, column: 13, scope: !41)
!43 = !DILocation(line: 16, column: 11, scope: !41)
!44 = !DILocation(line: 16, column: 10, scope: !41)
!45 = !DILocation(line: 17, column: 11, scope: !41)
!46 = !DILocation(line: 17, column: 10, scope: !41)
!47 = !DILocation(line: 18, column: 12, scope: !48)
!48 = distinct !DILexicalBlock(scope: !41, file: !1, line: 18, column: 12)
!49 = !DILocation(line: 18, column: 14, scope: !48)
!50 = !DILocation(line: 18, column: 13, scope: !48)
!51 = !DILocation(line: 18, column: 12, scope: !41)
!52 = !DILocation(line: 20, column: 18, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 19, column: 9)
!54 = !DILocation(line: 20, column: 17, scope: !53)
!55 = !DILocation(line: 21, column: 15, scope: !53)
!56 = !DILocation(line: 21, column: 14, scope: !53)
!57 = !DILocation(line: 22, column: 15, scope: !53)
!58 = !DILocation(line: 22, column: 14, scope: !53)
!59 = !DILocation(line: 23, column: 9, scope: !53)
!60 = !DILocation(line: 24, column: 5, scope: !41)
!61 = !DILocation(line: 25, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 8)
!63 = !DILocation(line: 25, column: 10, scope: !62)
!64 = !DILocation(line: 25, column: 9, scope: !62)
!65 = !DILocation(line: 25, column: 8, scope: !7)
!66 = !DILocation(line: 27, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 26, column: 5)
!68 = !DILocation(line: 27, column: 13, scope: !67)
!69 = !DILocation(line: 28, column: 11, scope: !67)
!70 = !DILocation(line: 28, column: 10, scope: !67)
!71 = !DILocation(line: 29, column: 11, scope: !67)
!72 = !DILocation(line: 29, column: 10, scope: !67)
!73 = !DILocation(line: 30, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !67, file: !1, line: 30, column: 12)
!75 = !DILocation(line: 30, column: 14, scope: !74)
!76 = !DILocation(line: 30, column: 13, scope: !74)
!77 = !DILocation(line: 30, column: 12, scope: !67)
!78 = !DILocation(line: 32, column: 18, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 31, column: 9)
!80 = !DILocation(line: 32, column: 17, scope: !79)
!81 = !DILocation(line: 33, column: 15, scope: !79)
!82 = !DILocation(line: 33, column: 14, scope: !79)
!83 = !DILocation(line: 34, column: 15, scope: !79)
!84 = !DILocation(line: 34, column: 14, scope: !79)
!85 = !DILocation(line: 35, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !79, file: !1, line: 35, column: 16)
!87 = !DILocation(line: 35, column: 18, scope: !86)
!88 = !DILocation(line: 35, column: 17, scope: !86)
!89 = !DILocation(line: 35, column: 16, scope: !79)
!90 = !DILocation(line: 37, column: 22, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 36, column: 13)
!92 = !DILocation(line: 37, column: 21, scope: !91)
!93 = !DILocation(line: 38, column: 19, scope: !91)
!94 = !DILocation(line: 38, column: 18, scope: !91)
!95 = !DILocation(line: 39, column: 19, scope: !91)
!96 = !DILocation(line: 39, column: 18, scope: !91)
!97 = !DILocation(line: 40, column: 13, scope: !91)
!98 = !DILocation(line: 41, column: 9, scope: !79)
!99 = !DILocation(line: 42, column: 5, scope: !67)
!100 = !DILocation(line: 43, column: 17, scope: !7)
!101 = !DILocation(line: 43, column: 5, scope: !7)
!102 = !DILocation(line: 44, column: 5, scope: !7)
