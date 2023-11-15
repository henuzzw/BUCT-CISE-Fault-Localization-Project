; ModuleID = 'gcov/../WA_c/271543_buggy.c'
source_filename = "gcov/../WA_c/271543_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !23, metadata !DIExpression()), !dbg !24
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !25
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !26
  %11 = load i32, i32* %2, align 4, !dbg !27
  %12 = load i32, i32* %3, align 4, !dbg !29
  %13 = icmp sgt i32 %11, %12, !dbg !30
  br i1 %13, label %14, label %17, !dbg !31

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %2, align 4, !dbg !32
  store i32 %15, i32* %6, align 4, !dbg !34
  %16 = load i32, i32* %3, align 4, !dbg !35
  store i32 %16, i32* %7, align 4, !dbg !36
  br label %20, !dbg !37

; <label>:17:                                     ; preds = %0
  %18 = load i32, i32* %3, align 4, !dbg !38
  store i32 %18, i32* %6, align 4, !dbg !40
  %19 = load i32, i32* %2, align 4, !dbg !41
  store i32 %19, i32* %7, align 4, !dbg !42
  br label %20

; <label>:20:                                     ; preds = %17, %14
  %21 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !43
  %22 = load i32, i32* %4, align 4, !dbg !44
  %23 = load i32, i32* %7, align 4, !dbg !46
  %24 = icmp sgt i32 %22, %23, !dbg !47
  br i1 %24, label %25, label %37, !dbg !48

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %4, align 4, !dbg !49
  %27 = load i32, i32* %6, align 4, !dbg !52
  %28 = icmp sgt i32 %26, %27, !dbg !53
  br i1 %28, label %29, label %33, !dbg !54

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %7, align 4, !dbg !55
  store i32 %30, i32* %8, align 4, !dbg !57
  %31 = load i32, i32* %6, align 4, !dbg !58
  store i32 %31, i32* %7, align 4, !dbg !59
  %32 = load i32, i32* %4, align 4, !dbg !60
  store i32 %32, i32* %6, align 4, !dbg !61
  br label %36, !dbg !62

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %7, align 4, !dbg !63
  store i32 %34, i32* %8, align 4, !dbg !65
  %35 = load i32, i32* %4, align 4, !dbg !66
  store i32 %35, i32* %7, align 4, !dbg !67
  br label %36

; <label>:36:                                     ; preds = %33, %29
  br label %39, !dbg !68

; <label>:37:                                     ; preds = %20
  %38 = load i32, i32* %4, align 4, !dbg !69
  store i32 %38, i32* %8, align 4, !dbg !71
  br label %39

; <label>:39:                                     ; preds = %37, %36
  %40 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %5), !dbg !72
  %41 = load i32, i32* %5, align 4, !dbg !73
  %42 = load i32, i32* %7, align 4, !dbg !75
  %43 = icmp sgt i32 %41, %42, !dbg !76
  br i1 %43, label %44, label %53, !dbg !77

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %5, align 4, !dbg !78
  %46 = load i32, i32* %6, align 4, !dbg !81
  %47 = icmp sgt i32 %45, %46, !dbg !82
  br i1 %47, label %48, label %50, !dbg !83

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %6, align 4, !dbg !84
  store i32 %49, i32* %7, align 4, !dbg !86
  br label %52, !dbg !87

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %5, align 4, !dbg !88
  store i32 %51, i32* %7, align 4, !dbg !90
  br label %52

; <label>:52:                                     ; preds = %50, %48
  br label %53, !dbg !91

; <label>:53:                                     ; preds = %52, %39
  %54 = load i32, i32* %7, align 4, !dbg !92
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %54), !dbg !93
  ret i32 0, !dbg !94
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
!1 = !DIFile(filename: "gcov/../WA_c/271543_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2830")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 9, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 11, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 13, scope: !7)
!17 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 6, type: !10)
!18 = !DILocation(line: 6, column: 15, scope: !7)
!19 = !DILocalVariable(name: "large1", scope: !7, file: !1, line: 7, type: !10)
!20 = !DILocation(line: 7, column: 9, scope: !7)
!21 = !DILocalVariable(name: "large2", scope: !7, file: !1, line: 7, type: !10)
!22 = !DILocation(line: 7, column: 16, scope: !7)
!23 = !DILocalVariable(name: "large3", scope: !7, file: !1, line: 7, type: !10)
!24 = !DILocation(line: 7, column: 23, scope: !7)
!25 = !DILocation(line: 8, column: 5, scope: !7)
!26 = !DILocation(line: 9, column: 5, scope: !7)
!27 = !DILocation(line: 10, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 8)
!29 = !DILocation(line: 10, column: 10, scope: !28)
!30 = !DILocation(line: 10, column: 9, scope: !28)
!31 = !DILocation(line: 10, column: 8, scope: !7)
!32 = !DILocation(line: 12, column: 16, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !1, line: 11, column: 5)
!34 = !DILocation(line: 12, column: 15, scope: !33)
!35 = !DILocation(line: 13, column: 16, scope: !33)
!36 = !DILocation(line: 13, column: 15, scope: !33)
!37 = !DILocation(line: 14, column: 5, scope: !33)
!38 = !DILocation(line: 17, column: 16, scope: !39)
!39 = distinct !DILexicalBlock(scope: !28, file: !1, line: 16, column: 5)
!40 = !DILocation(line: 17, column: 15, scope: !39)
!41 = !DILocation(line: 18, column: 16, scope: !39)
!42 = !DILocation(line: 18, column: 15, scope: !39)
!43 = !DILocation(line: 20, column: 5, scope: !7)
!44 = !DILocation(line: 21, column: 8, scope: !45)
!45 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 8)
!46 = !DILocation(line: 21, column: 10, scope: !45)
!47 = !DILocation(line: 21, column: 9, scope: !45)
!48 = !DILocation(line: 21, column: 8, scope: !7)
!49 = !DILocation(line: 23, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 23, column: 12)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 22, column: 5)
!52 = !DILocation(line: 23, column: 14, scope: !50)
!53 = !DILocation(line: 23, column: 13, scope: !50)
!54 = !DILocation(line: 23, column: 12, scope: !51)
!55 = !DILocation(line: 25, column: 20, scope: !56)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 24, column: 9)
!57 = !DILocation(line: 25, column: 19, scope: !56)
!58 = !DILocation(line: 26, column: 20, scope: !56)
!59 = !DILocation(line: 26, column: 19, scope: !56)
!60 = !DILocation(line: 27, column: 20, scope: !56)
!61 = !DILocation(line: 27, column: 19, scope: !56)
!62 = !DILocation(line: 28, column: 9, scope: !56)
!63 = !DILocation(line: 31, column: 20, scope: !64)
!64 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 9)
!65 = !DILocation(line: 31, column: 19, scope: !64)
!66 = !DILocation(line: 32, column: 20, scope: !64)
!67 = !DILocation(line: 32, column: 19, scope: !64)
!68 = !DILocation(line: 34, column: 5, scope: !51)
!69 = !DILocation(line: 37, column: 16, scope: !70)
!70 = distinct !DILexicalBlock(scope: !45, file: !1, line: 36, column: 5)
!71 = !DILocation(line: 37, column: 15, scope: !70)
!72 = !DILocation(line: 39, column: 5, scope: !7)
!73 = !DILocation(line: 40, column: 8, scope: !74)
!74 = distinct !DILexicalBlock(scope: !7, file: !1, line: 40, column: 8)
!75 = !DILocation(line: 40, column: 10, scope: !74)
!76 = !DILocation(line: 40, column: 9, scope: !74)
!77 = !DILocation(line: 40, column: 8, scope: !7)
!78 = !DILocation(line: 42, column: 12, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 42, column: 12)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 41, column: 5)
!81 = !DILocation(line: 42, column: 14, scope: !79)
!82 = !DILocation(line: 42, column: 13, scope: !79)
!83 = !DILocation(line: 42, column: 12, scope: !80)
!84 = !DILocation(line: 44, column: 20, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 43, column: 9)
!86 = !DILocation(line: 44, column: 19, scope: !85)
!87 = !DILocation(line: 45, column: 9, scope: !85)
!88 = !DILocation(line: 48, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !79, file: !1, line: 47, column: 9)
!90 = !DILocation(line: 48, column: 19, scope: !89)
!91 = !DILocation(line: 50, column: 5, scope: !80)
!92 = !DILocation(line: 51, column: 17, scope: !7)
!93 = !DILocation(line: 51, column: 5, scope: !7)
!94 = !DILocation(line: 53, column: 5, scope: !7)
