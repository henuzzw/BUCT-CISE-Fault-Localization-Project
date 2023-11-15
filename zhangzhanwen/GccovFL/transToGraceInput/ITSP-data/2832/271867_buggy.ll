; ModuleID = 'gcov/../WA_c/271867_buggy.c'
source_filename = "gcov/../WA_c/271867_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid Triangle\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Right Triangle\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Acute Triangle\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Obtuse Triangle\00", align 1

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
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  %9 = load i32, i32* %2, align 4, !dbg !18
  %10 = load i32, i32* %3, align 4, !dbg !20
  %11 = icmp sge i32 %9, %10, !dbg !21
  br i1 %11, label %12, label %16, !dbg !22

; <label>:12:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %5, metadata !23, metadata !DIExpression()), !dbg !25
  %13 = load i32, i32* %2, align 4, !dbg !26
  store i32 %13, i32* %5, align 4, !dbg !27
  %14 = load i32, i32* %3, align 4, !dbg !28
  store i32 %14, i32* %2, align 4, !dbg !29
  %15 = load i32, i32* %5, align 4, !dbg !30
  store i32 %15, i32* %3, align 4, !dbg !31
  br label %16, !dbg !32

; <label>:16:                                     ; preds = %12, %0
  %17 = load i32, i32* %4, align 4, !dbg !33
  %18 = load i32, i32* %3, align 4, !dbg !35
  %19 = icmp sle i32 %17, %18, !dbg !36
  br i1 %19, label %20, label %24, !dbg !37

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %6, metadata !38, metadata !DIExpression()), !dbg !40
  %21 = load i32, i32* %3, align 4, !dbg !41
  store i32 %21, i32* %6, align 4, !dbg !42
  %22 = load i32, i32* %4, align 4, !dbg !43
  store i32 %22, i32* %3, align 4, !dbg !44
  %23 = load i32, i32* %6, align 4, !dbg !45
  store i32 %23, i32* %4, align 4, !dbg !46
  br label %24, !dbg !47

; <label>:24:                                     ; preds = %20, %16
  call void @llvm.dbg.declare(metadata i32* %7, metadata !48, metadata !DIExpression()), !dbg !51
  %25 = load i32, i32* %4, align 4, !dbg !52
  store i32 %25, i32* %7, align 4, !dbg !53
  %26 = load i32, i32* %2, align 4, !dbg !54
  store i32 %26, i32* %4, align 4, !dbg !55
  %27 = load i32, i32* %7, align 4, !dbg !56
  store i32 %27, i32* %2, align 4, !dbg !57
  %28 = load i32, i32* %2, align 4, !dbg !58
  %29 = load i32, i32* %3, align 4, !dbg !60
  %30 = add nsw i32 %28, %29, !dbg !61
  %31 = load i32, i32* %4, align 4, !dbg !62
  %32 = icmp sle i32 %30, %31, !dbg !63
  br i1 %32, label %33, label %35, !dbg !64

; <label>:33:                                     ; preds = %24
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !65
  br label %67, !dbg !67

; <label>:35:                                     ; preds = %24
  %36 = load i32, i32* %2, align 4, !dbg !68
  %37 = load i32, i32* %2, align 4, !dbg !71
  %38 = mul nsw i32 %36, %37, !dbg !72
  %39 = load i32, i32* %3, align 4, !dbg !73
  %40 = load i32, i32* %3, align 4, !dbg !74
  %41 = mul nsw i32 %39, %40, !dbg !75
  %42 = add nsw i32 %38, %41, !dbg !76
  %43 = load i32, i32* %4, align 4, !dbg !77
  %44 = load i32, i32* %4, align 4, !dbg !78
  %45 = mul nsw i32 %43, %44, !dbg !79
  %46 = icmp eq i32 %42, %45, !dbg !80
  br i1 %46, label %47, label %49, !dbg !81

; <label>:47:                                     ; preds = %35
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !82
  br label %66, !dbg !84

; <label>:49:                                     ; preds = %35
  %50 = load i32, i32* %2, align 4, !dbg !85
  %51 = load i32, i32* %2, align 4, !dbg !87
  %52 = mul nsw i32 %50, %51, !dbg !88
  %53 = load i32, i32* %3, align 4, !dbg !89
  %54 = load i32, i32* %3, align 4, !dbg !90
  %55 = mul nsw i32 %53, %54, !dbg !91
  %56 = add nsw i32 %52, %55, !dbg !92
  %57 = load i32, i32* %4, align 4, !dbg !93
  %58 = load i32, i32* %4, align 4, !dbg !94
  %59 = mul nsw i32 %57, %58, !dbg !95
  %60 = icmp sgt i32 %56, %59, !dbg !96
  br i1 %60, label %61, label %63, !dbg !97

; <label>:61:                                     ; preds = %49
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !98
  br label %65, !dbg !100

; <label>:63:                                     ; preds = %49
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)), !dbg !101
  br label %65

; <label>:65:                                     ; preds = %63, %61
  br label %66

; <label>:66:                                     ; preds = %65, %47
  br label %67

; <label>:67:                                     ; preds = %66, %33
  ret i32 0, !dbg !103
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
!1 = !DIFile(filename: "gcov/../WA_c/271867_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocation(line: 7, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!20 = !DILocation(line: 7, column: 11, scope: !19)
!21 = !DILocation(line: 7, column: 9, scope: !19)
!22 = !DILocation(line: 7, column: 8, scope: !7)
!23 = !DILocalVariable(name: "x", scope: !24, file: !1, line: 9, type: !10)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!25 = !DILocation(line: 9, column: 13, scope: !24)
!26 = !DILocation(line: 10, column: 11, scope: !24)
!27 = !DILocation(line: 10, column: 10, scope: !24)
!28 = !DILocation(line: 11, column: 11, scope: !24)
!29 = !DILocation(line: 11, column: 10, scope: !24)
!30 = !DILocation(line: 12, column: 11, scope: !24)
!31 = !DILocation(line: 12, column: 10, scope: !24)
!32 = !DILocation(line: 13, column: 5, scope: !24)
!33 = !DILocation(line: 14, column: 8, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 8)
!35 = !DILocation(line: 14, column: 11, scope: !34)
!36 = !DILocation(line: 14, column: 9, scope: !34)
!37 = !DILocation(line: 14, column: 8, scope: !7)
!38 = !DILocalVariable(name: "y", scope: !39, file: !1, line: 16, type: !10)
!39 = distinct !DILexicalBlock(scope: !34, file: !1, line: 15, column: 5)
!40 = !DILocation(line: 16, column: 13, scope: !39)
!41 = !DILocation(line: 17, column: 11, scope: !39)
!42 = !DILocation(line: 17, column: 10, scope: !39)
!43 = !DILocation(line: 18, column: 11, scope: !39)
!44 = !DILocation(line: 18, column: 10, scope: !39)
!45 = !DILocation(line: 19, column: 11, scope: !39)
!46 = !DILocation(line: 19, column: 10, scope: !39)
!47 = !DILocation(line: 20, column: 5, scope: !39)
!48 = !DILocalVariable(name: "z", scope: !49, file: !1, line: 23, type: !10)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 22, column: 5)
!50 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 8)
!51 = !DILocation(line: 23, column: 13, scope: !49)
!52 = !DILocation(line: 24, column: 11, scope: !49)
!53 = !DILocation(line: 24, column: 10, scope: !49)
!54 = !DILocation(line: 25, column: 11, scope: !49)
!55 = !DILocation(line: 25, column: 10, scope: !49)
!56 = !DILocation(line: 26, column: 11, scope: !49)
!57 = !DILocation(line: 26, column: 10, scope: !49)
!58 = !DILocation(line: 28, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 8)
!60 = !DILocation(line: 28, column: 10, scope: !59)
!61 = !DILocation(line: 28, column: 9, scope: !59)
!62 = !DILocation(line: 28, column: 13, scope: !59)
!63 = !DILocation(line: 28, column: 11, scope: !59)
!64 = !DILocation(line: 28, column: 8, scope: !7)
!65 = !DILocation(line: 30, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 29, column: 5)
!67 = !DILocation(line: 31, column: 5, scope: !66)
!68 = !DILocation(line: 34, column: 12, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 34, column: 12)
!70 = distinct !DILexicalBlock(scope: !59, file: !1, line: 33, column: 5)
!71 = !DILocation(line: 34, column: 14, scope: !69)
!72 = !DILocation(line: 34, column: 13, scope: !69)
!73 = !DILocation(line: 34, column: 16, scope: !69)
!74 = !DILocation(line: 34, column: 18, scope: !69)
!75 = !DILocation(line: 34, column: 17, scope: !69)
!76 = !DILocation(line: 34, column: 15, scope: !69)
!77 = !DILocation(line: 34, column: 21, scope: !69)
!78 = !DILocation(line: 34, column: 23, scope: !69)
!79 = !DILocation(line: 34, column: 22, scope: !69)
!80 = !DILocation(line: 34, column: 19, scope: !69)
!81 = !DILocation(line: 34, column: 12, scope: !70)
!82 = !DILocation(line: 36, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !69, file: !1, line: 35, column: 9)
!84 = !DILocation(line: 37, column: 9, scope: !83)
!85 = !DILocation(line: 38, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !69, file: !1, line: 38, column: 17)
!87 = !DILocation(line: 38, column: 19, scope: !86)
!88 = !DILocation(line: 38, column: 18, scope: !86)
!89 = !DILocation(line: 38, column: 21, scope: !86)
!90 = !DILocation(line: 38, column: 23, scope: !86)
!91 = !DILocation(line: 38, column: 22, scope: !86)
!92 = !DILocation(line: 38, column: 20, scope: !86)
!93 = !DILocation(line: 38, column: 25, scope: !86)
!94 = !DILocation(line: 38, column: 27, scope: !86)
!95 = !DILocation(line: 38, column: 26, scope: !86)
!96 = !DILocation(line: 38, column: 24, scope: !86)
!97 = !DILocation(line: 38, column: 17, scope: !69)
!98 = !DILocation(line: 40, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !86, file: !1, line: 39, column: 9)
!100 = !DILocation(line: 41, column: 9, scope: !99)
!101 = !DILocation(line: 44, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !86, file: !1, line: 43, column: 9)
!103 = !DILocation(line: 50, column: 5, scope: !7)
