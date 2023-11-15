; ModuleID = 'gcov/../WA_c/271987_buggy.c'
source_filename = "gcov/../WA_c/271987_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Number of possible triangles is %d\00", align 1

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
  store i32 0, i32* %6, align 4, !dbg !20
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !21
  store i32 1, i32* %3, align 4, !dbg !22
  br label %8, !dbg !24

; <label>:8:                                      ; preds = %13, %0
  %9 = load i32, i32* %3, align 4, !dbg !25
  %10 = load i32, i32* %2, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %16, !dbg !29

; <label>:12:                                     ; preds = %8
  br label %13, !dbg !29

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %3, align 4, !dbg !30
  %15 = add nsw i32 %14, 1, !dbg !30
  store i32 %15, i32* %3, align 4, !dbg !30
  br label %8, !dbg !31, !llvm.loop !32

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %3, align 4, !dbg !34
  store i32 %17, i32* %4, align 4, !dbg !37
  br label %18, !dbg !38

; <label>:18:                                     ; preds = %23, %16
  %19 = load i32, i32* %4, align 4, !dbg !39
  %20 = load i32, i32* %2, align 4, !dbg !41
  %21 = icmp sle i32 %19, %20, !dbg !42
  br i1 %21, label %22, label %26, !dbg !43

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !43

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %4, align 4, !dbg !44
  %25 = add nsw i32 %24, 1, !dbg !45
  store i32 %25, i32* %4, align 4, !dbg !46
  br label %18, !dbg !47, !llvm.loop !48

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %4, align 4, !dbg !50
  store i32 %27, i32* %5, align 4, !dbg !53
  br label %28, !dbg !54

; <label>:28:                                     ; preds = %33, %26
  %29 = load i32, i32* %5, align 4, !dbg !55
  %30 = load i32, i32* %2, align 4, !dbg !57
  %31 = icmp sle i32 %29, %30, !dbg !58
  br i1 %31, label %32, label %36, !dbg !59

; <label>:32:                                     ; preds = %28
  br label %33, !dbg !59

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %5, align 4, !dbg !60
  %35 = add nsw i32 %34, 1, !dbg !61
  store i32 %35, i32* %5, align 4, !dbg !62
  br label %28, !dbg !63, !llvm.loop !64

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %3, align 4, !dbg !66
  %38 = load i32, i32* %4, align 4, !dbg !69
  %39 = add nsw i32 %37, %38, !dbg !70
  %40 = load i32, i32* %5, align 4, !dbg !71
  %41 = icmp sgt i32 %39, %40, !dbg !72
  br i1 %41, label %42, label %57, !dbg !73

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %4, align 4, !dbg !74
  %44 = load i32, i32* %5, align 4, !dbg !75
  %45 = add nsw i32 %43, %44, !dbg !76
  %46 = load i32, i32* %3, align 4, !dbg !77
  %47 = icmp sgt i32 %45, %46, !dbg !78
  br i1 %47, label %48, label %57, !dbg !79

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %3, align 4, !dbg !80
  %50 = load i32, i32* %5, align 4, !dbg !81
  %51 = add nsw i32 %49, %50, !dbg !82
  %52 = load i32, i32* %4, align 4, !dbg !83
  %53 = icmp sgt i32 %51, %52, !dbg !84
  br i1 %53, label %54, label %57, !dbg !85

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %6, align 4, !dbg !86
  %56 = add nsw i32 %55, 1, !dbg !88
  store i32 %56, i32* %6, align 4, !dbg !89
  br label %57, !dbg !90

; <label>:57:                                     ; preds = %54, %48, %42, %36
  %58 = load i32, i32* %6, align 4, !dbg !91
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %58), !dbg !92
  ret i32 0, !dbg !93
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
!1 = !DIFile(filename: "gcov/../WA_c/271987_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 6, type: !10)
!18 = !DILocation(line: 6, column: 13, scope: !7)
!19 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 7, type: !10)
!20 = !DILocation(line: 7, column: 9, scope: !7)
!21 = !DILocation(line: 8, column: 5, scope: !7)
!22 = !DILocation(line: 9, column: 11, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 5)
!24 = !DILocation(line: 9, column: 10, scope: !23)
!25 = !DILocation(line: 9, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 5)
!27 = !DILocation(line: 9, column: 18, scope: !26)
!28 = !DILocation(line: 9, column: 16, scope: !26)
!29 = !DILocation(line: 9, column: 5, scope: !23)
!30 = !DILocation(line: 9, column: 22, scope: !26)
!31 = !DILocation(line: 9, column: 5, scope: !26)
!32 = distinct !{!32, !29, !33}
!33 = !DILocation(line: 9, column: 25, scope: !23)
!34 = !DILocation(line: 11, column: 16, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 9)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 5)
!37 = !DILocation(line: 11, column: 15, scope: !35)
!38 = !DILocation(line: 11, column: 14, scope: !35)
!39 = !DILocation(line: 11, column: 19, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 9)
!41 = !DILocation(line: 11, column: 22, scope: !40)
!42 = !DILocation(line: 11, column: 20, scope: !40)
!43 = !DILocation(line: 11, column: 9, scope: !35)
!44 = !DILocation(line: 11, column: 27, scope: !40)
!45 = !DILocation(line: 11, column: 28, scope: !40)
!46 = !DILocation(line: 11, column: 26, scope: !40)
!47 = !DILocation(line: 11, column: 9, scope: !40)
!48 = distinct !{!48, !43, !49}
!49 = !DILocation(line: 11, column: 31, scope: !35)
!50 = !DILocation(line: 13, column: 20, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 13, column: 13)
!52 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 9)
!53 = !DILocation(line: 13, column: 19, scope: !51)
!54 = !DILocation(line: 13, column: 18, scope: !51)
!55 = !DILocation(line: 13, column: 23, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 13, column: 13)
!57 = !DILocation(line: 13, column: 26, scope: !56)
!58 = !DILocation(line: 13, column: 24, scope: !56)
!59 = !DILocation(line: 13, column: 13, scope: !51)
!60 = !DILocation(line: 13, column: 31, scope: !56)
!61 = !DILocation(line: 13, column: 32, scope: !56)
!62 = !DILocation(line: 13, column: 30, scope: !56)
!63 = !DILocation(line: 13, column: 13, scope: !56)
!64 = distinct !{!64, !59, !65}
!65 = !DILocation(line: 13, column: 35, scope: !51)
!66 = !DILocation(line: 15, column: 21, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 15, column: 21)
!68 = distinct !DILexicalBlock(scope: !52, file: !1, line: 14, column: 13)
!69 = !DILocation(line: 15, column: 23, scope: !67)
!70 = !DILocation(line: 15, column: 22, scope: !67)
!71 = !DILocation(line: 15, column: 25, scope: !67)
!72 = !DILocation(line: 15, column: 24, scope: !67)
!73 = !DILocation(line: 15, column: 27, scope: !67)
!74 = !DILocation(line: 15, column: 30, scope: !67)
!75 = !DILocation(line: 15, column: 32, scope: !67)
!76 = !DILocation(line: 15, column: 31, scope: !67)
!77 = !DILocation(line: 15, column: 34, scope: !67)
!78 = !DILocation(line: 15, column: 33, scope: !67)
!79 = !DILocation(line: 15, column: 36, scope: !67)
!80 = !DILocation(line: 15, column: 39, scope: !67)
!81 = !DILocation(line: 15, column: 41, scope: !67)
!82 = !DILocation(line: 15, column: 40, scope: !67)
!83 = !DILocation(line: 15, column: 43, scope: !67)
!84 = !DILocation(line: 15, column: 42, scope: !67)
!85 = !DILocation(line: 15, column: 21, scope: !68)
!86 = !DILocation(line: 17, column: 27, scope: !87)
!87 = distinct !DILexicalBlock(scope: !67, file: !1, line: 16, column: 17)
!88 = !DILocation(line: 17, column: 32, scope: !87)
!89 = !DILocation(line: 17, column: 26, scope: !87)
!90 = !DILocation(line: 18, column: 17, scope: !87)
!91 = !DILocation(line: 22, column: 50, scope: !7)
!92 = !DILocation(line: 22, column: 5, scope: !7)
!93 = !DILocation(line: 23, column: 5, scope: !7)
