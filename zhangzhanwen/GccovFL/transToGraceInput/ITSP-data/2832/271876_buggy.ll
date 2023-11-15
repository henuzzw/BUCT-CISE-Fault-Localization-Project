; ModuleID = 'gcov/../WA_c/271876_buggy.c'
source_filename = "gcov/../WA_c/271876_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Acute Triangle\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Right Triangle\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Obtuse Triangle\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid Triangle\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %4, align 4, !dbg !19
  store i32 %6, i32* %5, align 4, !dbg !20
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !21
  %8 = load i32, i32* %2, align 4, !dbg !22
  %9 = load i32, i32* %4, align 4, !dbg !24
  %10 = icmp sge i32 %8, %9, !dbg !25
  br i1 %10, label %11, label %19, !dbg !26

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !27
  %13 = load i32, i32* %3, align 4, !dbg !28
  %14 = icmp sge i32 %12, %13, !dbg !29
  br i1 %14, label %15, label %19, !dbg !30

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %2, align 4, !dbg !31
  store i32 %16, i32* %4, align 4, !dbg !33
  %17 = load i32, i32* %3, align 4, !dbg !34
  store i32 %17, i32* %2, align 4, !dbg !35
  %18 = load i32, i32* %5, align 4, !dbg !36
  store i32 %18, i32* %3, align 4, !dbg !37
  br label %32, !dbg !38

; <label>:19:                                     ; preds = %11, %0
  %20 = load i32, i32* %3, align 4, !dbg !39
  %21 = load i32, i32* %4, align 4, !dbg !41
  %22 = icmp sge i32 %20, %21, !dbg !42
  br i1 %22, label %23, label %31, !dbg !43

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4, !dbg !44
  %25 = load i32, i32* %2, align 4, !dbg !45
  %26 = icmp sge i32 %24, %25, !dbg !46
  br i1 %26, label %27, label %31, !dbg !47

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %3, align 4, !dbg !48
  store i32 %28, i32* %4, align 4, !dbg !50
  %29 = load i32, i32* %2, align 4, !dbg !51
  store i32 %29, i32* %3, align 4, !dbg !52
  %30 = load i32, i32* %5, align 4, !dbg !53
  store i32 %30, i32* %2, align 4, !dbg !54
  br label %31, !dbg !55

; <label>:31:                                     ; preds = %27, %23, %19
  br label %32

; <label>:32:                                     ; preds = %31, %15
  %33 = load i32, i32* %2, align 4, !dbg !56
  %34 = load i32, i32* %3, align 4, !dbg !58
  %35 = add nsw i32 %33, %34, !dbg !59
  %36 = load i32, i32* %4, align 4, !dbg !60
  %37 = icmp sgt i32 %35, %36, !dbg !61
  br i1 %37, label %38, label %82, !dbg !62

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %3, align 4, !dbg !63
  %40 = load i32, i32* %4, align 4, !dbg !64
  %41 = add nsw i32 %39, %40, !dbg !65
  %42 = load i32, i32* %2, align 4, !dbg !66
  %43 = icmp sgt i32 %41, %42, !dbg !67
  br i1 %43, label %44, label %82, !dbg !68

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %4, align 4, !dbg !69
  %46 = load i32, i32* %2, align 4, !dbg !70
  %47 = add nsw i32 %45, %46, !dbg !71
  %48 = load i32, i32* %3, align 4, !dbg !72
  %49 = icmp sgt i32 %47, %48, !dbg !73
  br i1 %49, label %50, label %82, !dbg !74

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %2, align 4, !dbg !75
  %52 = load i32, i32* %2, align 4, !dbg !78
  %53 = mul nsw i32 %51, %52, !dbg !79
  %54 = load i32, i32* %3, align 4, !dbg !80
  %55 = load i32, i32* %3, align 4, !dbg !81
  %56 = mul nsw i32 %54, %55, !dbg !82
  %57 = add nsw i32 %53, %56, !dbg !83
  %58 = load i32, i32* %4, align 4, !dbg !84
  %59 = load i32, i32* %4, align 4, !dbg !85
  %60 = mul nsw i32 %58, %59, !dbg !86
  %61 = icmp sgt i32 %57, %60, !dbg !87
  br i1 %61, label %62, label %64, !dbg !88

; <label>:62:                                     ; preds = %50
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !89
  br label %81, !dbg !91

; <label>:64:                                     ; preds = %50
  %65 = load i32, i32* %2, align 4, !dbg !92
  %66 = load i32, i32* %2, align 4, !dbg !94
  %67 = mul nsw i32 %65, %66, !dbg !95
  %68 = load i32, i32* %3, align 4, !dbg !96
  %69 = load i32, i32* %3, align 4, !dbg !97
  %70 = mul nsw i32 %68, %69, !dbg !98
  %71 = add nsw i32 %67, %70, !dbg !99
  %72 = load i32, i32* %4, align 4, !dbg !100
  %73 = load i32, i32* %4, align 4, !dbg !101
  %74 = mul nsw i32 %72, %73, !dbg !102
  %75 = icmp eq i32 %71, %74, !dbg !103
  br i1 %75, label %76, label %78, !dbg !104

; <label>:76:                                     ; preds = %64
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !105
  br label %80, !dbg !107

; <label>:78:                                     ; preds = %64
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !108
  br label %80

; <label>:80:                                     ; preds = %78, %76
  br label %81

; <label>:81:                                     ; preds = %80, %62
  br label %84, !dbg !110

; <label>:82:                                     ; preds = %44, %38, %32
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !111
  br label %84

; <label>:84:                                     ; preds = %82, %81
  ret i32 0, !dbg !113
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
!1 = !DIFile(filename: "gcov/../WA_c/271876_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2832")
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
!17 = !DILocalVariable(name: "temp", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 10, scope: !7)
!20 = !DILocation(line: 6, column: 9, scope: !7)
!21 = !DILocation(line: 7, column: 5, scope: !7)
!22 = !DILocation(line: 8, column: 8, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!24 = !DILocation(line: 8, column: 11, scope: !23)
!25 = !DILocation(line: 8, column: 9, scope: !23)
!26 = !DILocation(line: 8, column: 12, scope: !23)
!27 = !DILocation(line: 8, column: 14, scope: !23)
!28 = !DILocation(line: 8, column: 17, scope: !23)
!29 = !DILocation(line: 8, column: 15, scope: !23)
!30 = !DILocation(line: 8, column: 8, scope: !7)
!31 = !DILocation(line: 10, column: 11, scope: !32)
!32 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 5)
!33 = !DILocation(line: 10, column: 10, scope: !32)
!34 = !DILocation(line: 11, column: 11, scope: !32)
!35 = !DILocation(line: 11, column: 10, scope: !32)
!36 = !DILocation(line: 12, column: 11, scope: !32)
!37 = !DILocation(line: 12, column: 10, scope: !32)
!38 = !DILocation(line: 13, column: 5, scope: !32)
!39 = !DILocation(line: 14, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !23, file: !1, line: 14, column: 14)
!41 = !DILocation(line: 14, column: 17, scope: !40)
!42 = !DILocation(line: 14, column: 15, scope: !40)
!43 = !DILocation(line: 14, column: 18, scope: !40)
!44 = !DILocation(line: 14, column: 20, scope: !40)
!45 = !DILocation(line: 14, column: 23, scope: !40)
!46 = !DILocation(line: 14, column: 21, scope: !40)
!47 = !DILocation(line: 14, column: 14, scope: !23)
!48 = !DILocation(line: 16, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 15, column: 5)
!50 = !DILocation(line: 16, column: 10, scope: !49)
!51 = !DILocation(line: 17, column: 11, scope: !49)
!52 = !DILocation(line: 17, column: 10, scope: !49)
!53 = !DILocation(line: 18, column: 11, scope: !49)
!54 = !DILocation(line: 18, column: 10, scope: !49)
!55 = !DILocation(line: 19, column: 5, scope: !49)
!56 = !DILocation(line: 21, column: 10, scope: !57)
!57 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 8)
!58 = !DILocation(line: 21, column: 12, scope: !57)
!59 = !DILocation(line: 21, column: 11, scope: !57)
!60 = !DILocation(line: 21, column: 15, scope: !57)
!61 = !DILocation(line: 21, column: 14, scope: !57)
!62 = !DILocation(line: 21, column: 17, scope: !57)
!63 = !DILocation(line: 21, column: 21, scope: !57)
!64 = !DILocation(line: 21, column: 23, scope: !57)
!65 = !DILocation(line: 21, column: 22, scope: !57)
!66 = !DILocation(line: 21, column: 26, scope: !57)
!67 = !DILocation(line: 21, column: 25, scope: !57)
!68 = !DILocation(line: 21, column: 28, scope: !57)
!69 = !DILocation(line: 21, column: 32, scope: !57)
!70 = !DILocation(line: 21, column: 34, scope: !57)
!71 = !DILocation(line: 21, column: 33, scope: !57)
!72 = !DILocation(line: 21, column: 37, scope: !57)
!73 = !DILocation(line: 21, column: 36, scope: !57)
!74 = !DILocation(line: 21, column: 8, scope: !7)
!75 = !DILocation(line: 23, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 23, column: 12)
!77 = distinct !DILexicalBlock(scope: !57, file: !1, line: 22, column: 5)
!78 = !DILocation(line: 23, column: 15, scope: !76)
!79 = !DILocation(line: 23, column: 14, scope: !76)
!80 = !DILocation(line: 23, column: 19, scope: !76)
!81 = !DILocation(line: 23, column: 21, scope: !76)
!82 = !DILocation(line: 23, column: 20, scope: !76)
!83 = !DILocation(line: 23, column: 17, scope: !76)
!84 = !DILocation(line: 23, column: 27, scope: !76)
!85 = !DILocation(line: 23, column: 29, scope: !76)
!86 = !DILocation(line: 23, column: 28, scope: !76)
!87 = !DILocation(line: 23, column: 24, scope: !76)
!88 = !DILocation(line: 23, column: 12, scope: !77)
!89 = !DILocation(line: 25, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !76, file: !1, line: 24, column: 9)
!91 = !DILocation(line: 26, column: 9, scope: !90)
!92 = !DILocation(line: 27, column: 18, scope: !93)
!93 = distinct !DILexicalBlock(scope: !76, file: !1, line: 27, column: 17)
!94 = !DILocation(line: 27, column: 20, scope: !93)
!95 = !DILocation(line: 27, column: 19, scope: !93)
!96 = !DILocation(line: 27, column: 22, scope: !93)
!97 = !DILocation(line: 27, column: 24, scope: !93)
!98 = !DILocation(line: 27, column: 23, scope: !93)
!99 = !DILocation(line: 27, column: 21, scope: !93)
!100 = !DILocation(line: 27, column: 29, scope: !93)
!101 = !DILocation(line: 27, column: 31, scope: !93)
!102 = !DILocation(line: 27, column: 30, scope: !93)
!103 = !DILocation(line: 27, column: 26, scope: !93)
!104 = !DILocation(line: 27, column: 17, scope: !76)
!105 = !DILocation(line: 29, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !93, file: !1, line: 28, column: 9)
!107 = !DILocation(line: 30, column: 9, scope: !106)
!108 = !DILocation(line: 33, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !93, file: !1, line: 32, column: 9)
!110 = !DILocation(line: 35, column: 5, scope: !77)
!111 = !DILocation(line: 38, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !57, file: !1, line: 37, column: 5)
!113 = !DILocation(line: 40, column: 5, scope: !7)
