; ModuleID = 'gcov/../WA_c/278457_buggy.c'
source_filename = "gcov/../WA_c/278457_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 1, i32* %5, align 4, !dbg !22
  br label %8, !dbg !24

; <label>:8:                                      ; preds = %45, %0
  %9 = load i32, i32* %5, align 4, !dbg !25
  %10 = load i32, i32* %4, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %48, !dbg !29

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %6, align 4, !dbg !30
  br label %13, !dbg !33

; <label>:13:                                     ; preds = %41, %12
  %14 = load i32, i32* %6, align 4, !dbg !34
  %15 = load i32, i32* %3, align 4, !dbg !36
  %16 = icmp sle i32 %14, %15, !dbg !37
  br i1 %16, label %17, label %44, !dbg !38

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %6, align 4, !dbg !39
  %19 = icmp eq i32 %18, 1, !dbg !42
  br i1 %19, label %24, label %20, !dbg !43

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %6, align 4, !dbg !44
  %22 = load i32, i32* %3, align 4, !dbg !45
  %23 = icmp eq i32 %21, %22, !dbg !46
  br i1 %23, label %24, label %27, !dbg !47

; <label>:24:                                     ; preds = %20, %17
  %25 = load i32, i32* %2, align 4, !dbg !48
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %25), !dbg !50
  br label %40, !dbg !51

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !52
  %29 = icmp eq i32 %28, 1, !dbg !55
  br i1 %29, label %34, label %30, !dbg !56

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %5, align 4, !dbg !57
  %32 = load i32, i32* %4, align 4, !dbg !58
  %33 = icmp eq i32 %31, %32, !dbg !59
  br i1 %33, label %34, label %37, !dbg !60

; <label>:34:                                     ; preds = %30, %27
  %35 = load i32, i32* %2, align 4, !dbg !61
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %35), !dbg !63
  br label %39, !dbg !64

; <label>:37:                                     ; preds = %30
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !65
  br label %39

; <label>:39:                                     ; preds = %37, %34
  br label %40

; <label>:40:                                     ; preds = %39, %24
  br label %41, !dbg !67

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %6, align 4, !dbg !68
  %43 = add nsw i32 %42, 1, !dbg !68
  store i32 %43, i32* %6, align 4, !dbg !68
  br label %13, !dbg !69, !llvm.loop !70

; <label>:44:                                     ; preds = %13
  br label %45, !dbg !72

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %5, align 4, !dbg !73
  %47 = add nsw i32 %46, 1, !dbg !73
  store i32 %47, i32* %5, align 4, !dbg !73
  br label %8, !dbg !74, !llvm.loop !75

; <label>:48:                                     ; preds = %8
  ret i32 0, !dbg !77
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
!1 = !DIFile(filename: "gcov/../WA_c/278457_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
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
!13 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 7, type: !10)
!19 = !DILocation(line: 7, column: 9, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 7, type: !10)
!21 = !DILocation(line: 7, column: 11, scope: !7)
!22 = !DILocation(line: 8, column: 11, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!24 = !DILocation(line: 8, column: 10, scope: !23)
!25 = !DILocation(line: 8, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 5)
!27 = !DILocation(line: 8, column: 18, scope: !26)
!28 = !DILocation(line: 8, column: 16, scope: !26)
!29 = !DILocation(line: 8, column: 5, scope: !23)
!30 = !DILocation(line: 10, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 5)
!33 = !DILocation(line: 10, column: 14, scope: !31)
!34 = !DILocation(line: 10, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 9)
!36 = !DILocation(line: 10, column: 22, scope: !35)
!37 = !DILocation(line: 10, column: 20, scope: !35)
!38 = !DILocation(line: 10, column: 9, scope: !31)
!39 = !DILocation(line: 12, column: 18, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 17)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 9)
!42 = !DILocation(line: 12, column: 19, scope: !40)
!43 = !DILocation(line: 12, column: 23, scope: !40)
!44 = !DILocation(line: 12, column: 26, scope: !40)
!45 = !DILocation(line: 12, column: 29, scope: !40)
!46 = !DILocation(line: 12, column: 27, scope: !40)
!47 = !DILocation(line: 12, column: 17, scope: !41)
!48 = !DILocation(line: 14, column: 29, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 13, column: 13)
!50 = !DILocation(line: 14, column: 17, scope: !49)
!51 = !DILocation(line: 15, column: 13, scope: !49)
!52 = !DILocation(line: 18, column: 22, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 18, column: 21)
!54 = distinct !DILexicalBlock(scope: !40, file: !1, line: 17, column: 13)
!55 = !DILocation(line: 18, column: 23, scope: !53)
!56 = !DILocation(line: 18, column: 27, scope: !53)
!57 = !DILocation(line: 18, column: 30, scope: !53)
!58 = !DILocation(line: 18, column: 33, scope: !53)
!59 = !DILocation(line: 18, column: 31, scope: !53)
!60 = !DILocation(line: 18, column: 21, scope: !54)
!61 = !DILocation(line: 20, column: 33, scope: !62)
!62 = distinct !DILexicalBlock(scope: !53, file: !1, line: 19, column: 17)
!63 = !DILocation(line: 20, column: 21, scope: !62)
!64 = !DILocation(line: 21, column: 17, scope: !62)
!65 = !DILocation(line: 24, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !53, file: !1, line: 23, column: 17)
!67 = !DILocation(line: 27, column: 9, scope: !41)
!68 = !DILocation(line: 10, column: 26, scope: !35)
!69 = !DILocation(line: 10, column: 9, scope: !35)
!70 = distinct !{!70, !38, !71}
!71 = !DILocation(line: 27, column: 9, scope: !31)
!72 = !DILocation(line: 29, column: 5, scope: !32)
!73 = !DILocation(line: 8, column: 22, scope: !26)
!74 = !DILocation(line: 8, column: 5, scope: !26)
!75 = distinct !{!75, !29, !76}
!76 = !DILocation(line: 29, column: 5, scope: !23)
!77 = !DILocation(line: 30, column: 5, scope: !7)
