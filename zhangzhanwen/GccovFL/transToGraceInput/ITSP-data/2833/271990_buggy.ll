; ModuleID = 'gcov/../WA_c/271990_buggy.c'
source_filename = "gcov/../WA_c/271990_buggy.c"
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

; <label>:8:                                      ; preds = %33, %0
  %9 = load i32, i32* %3, align 4, !dbg !25
  %10 = load i32, i32* %2, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %38, !dbg !29

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !30
  br label %13, !dbg !33

; <label>:13:                                     ; preds = %29, %12
  %14 = load i32, i32* %4, align 4, !dbg !34
  %15 = load i32, i32* %3, align 4, !dbg !36
  %16 = icmp sle i32 %14, %15, !dbg !37
  br i1 %16, label %17, label %32, !dbg !38

; <label>:17:                                     ; preds = %13
  store i32 1, i32* %5, align 4, !dbg !39
  br label %18, !dbg !42

; <label>:18:                                     ; preds = %25, %17
  %19 = load i32, i32* %5, align 4, !dbg !43
  %20 = load i32, i32* %3, align 4, !dbg !45
  %21 = load i32, i32* %4, align 4, !dbg !46
  %22 = add nsw i32 %20, %21, !dbg !47
  %23 = icmp slt i32 %19, %22, !dbg !48
  br i1 %23, label %24, label %28, !dbg !49

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !49

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %5, align 4, !dbg !50
  %27 = add nsw i32 %26, 1, !dbg !51
  store i32 %27, i32* %5, align 4, !dbg !52
  br label %18, !dbg !53, !llvm.loop !54

; <label>:28:                                     ; preds = %18
  br label %29, !dbg !56

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %4, align 4, !dbg !57
  %31 = add nsw i32 %30, 1, !dbg !58
  store i32 %31, i32* %4, align 4, !dbg !59
  br label %13, !dbg !60, !llvm.loop !61

; <label>:32:                                     ; preds = %13
  br label %33, !dbg !63

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %3, align 4, !dbg !64
  %35 = add nsw i32 %34, 1, !dbg !65
  store i32 %35, i32* %3, align 4, !dbg !66
  %36 = load i32, i32* %6, align 4, !dbg !67
  %37 = add nsw i32 %36, 1, !dbg !68
  store i32 %37, i32* %6, align 4, !dbg !69
  br label %8, !dbg !70, !llvm.loop !71

; <label>:38:                                     ; preds = %8
  %39 = load i32, i32* %6, align 4, !dbg !73
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %39), !dbg !74
  ret i32 0, !dbg !75
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
!1 = !DIFile(filename: "gcov/../WA_c/271990_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
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
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 6, type: !10)
!18 = !DILocation(line: 6, column: 13, scope: !7)
!19 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 6, type: !10)
!20 = !DILocation(line: 6, column: 15, scope: !7)
!21 = !DILocation(line: 7, column: 5, scope: !7)
!22 = !DILocation(line: 8, column: 10, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!24 = !DILocation(line: 8, column: 9, scope: !23)
!25 = !DILocation(line: 8, column: 14, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 5)
!27 = !DILocation(line: 8, column: 17, scope: !26)
!28 = !DILocation(line: 8, column: 15, scope: !26)
!29 = !DILocation(line: 8, column: 5, scope: !23)
!30 = !DILocation(line: 10, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 5)
!33 = !DILocation(line: 10, column: 13, scope: !31)
!34 = !DILocation(line: 10, column: 18, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 9)
!36 = !DILocation(line: 10, column: 21, scope: !35)
!37 = !DILocation(line: 10, column: 19, scope: !35)
!38 = !DILocation(line: 10, column: 9, scope: !31)
!39 = !DILocation(line: 13, column: 18, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 13)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 12, column: 9)
!42 = !DILocation(line: 13, column: 17, scope: !40)
!43 = !DILocation(line: 13, column: 22, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 13, column: 13)
!45 = !DILocation(line: 13, column: 24, scope: !44)
!46 = !DILocation(line: 13, column: 26, scope: !44)
!47 = !DILocation(line: 13, column: 25, scope: !44)
!48 = !DILocation(line: 13, column: 23, scope: !44)
!49 = !DILocation(line: 13, column: 13, scope: !40)
!50 = !DILocation(line: 13, column: 31, scope: !44)
!51 = !DILocation(line: 13, column: 32, scope: !44)
!52 = !DILocation(line: 13, column: 30, scope: !44)
!53 = !DILocation(line: 13, column: 13, scope: !44)
!54 = distinct !{!54, !49, !55}
!55 = !DILocation(line: 13, column: 35, scope: !40)
!56 = !DILocation(line: 15, column: 9, scope: !41)
!57 = !DILocation(line: 10, column: 26, scope: !35)
!58 = !DILocation(line: 10, column: 27, scope: !35)
!59 = !DILocation(line: 10, column: 25, scope: !35)
!60 = !DILocation(line: 10, column: 9, scope: !35)
!61 = distinct !{!61, !38, !62}
!62 = !DILocation(line: 15, column: 9, scope: !31)
!63 = !DILocation(line: 17, column: 5, scope: !32)
!64 = !DILocation(line: 8, column: 22, scope: !26)
!65 = !DILocation(line: 8, column: 23, scope: !26)
!66 = !DILocation(line: 8, column: 21, scope: !26)
!67 = !DILocation(line: 8, column: 32, scope: !26)
!68 = !DILocation(line: 8, column: 37, scope: !26)
!69 = !DILocation(line: 8, column: 31, scope: !26)
!70 = !DILocation(line: 8, column: 5, scope: !26)
!71 = distinct !{!71, !29, !72}
!72 = !DILocation(line: 17, column: 5, scope: !23)
!73 = !DILocation(line: 18, column: 49, scope: !7)
!74 = !DILocation(line: 18, column: 5, scope: !7)
!75 = !DILocation(line: 19, column: 5, scope: !7)
