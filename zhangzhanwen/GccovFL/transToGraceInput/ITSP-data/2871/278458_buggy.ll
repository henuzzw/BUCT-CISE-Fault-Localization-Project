; ModuleID = 'gcov/../WA_c/278458_buggy.c'
source_filename = "gcov/../WA_c/278458_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %4, i32* %5, i32* %6), !dbg !21
  store i32 1, i32* %2, align 4, !dbg !22
  br label %8, !dbg !24

; <label>:8:                                      ; preds = %52, %0
  %9 = load i32, i32* %2, align 4, !dbg !25
  %10 = load i32, i32* %6, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %55, !dbg !29

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !30
  %14 = icmp eq i32 %13, 1, !dbg !33
  br i1 %14, label %19, label %15, !dbg !34

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %2, align 4, !dbg !35
  %17 = load i32, i32* %6, align 4, !dbg !36
  %18 = icmp eq i32 %16, %17, !dbg !37
  br i1 %18, label %19, label %31, !dbg !38

; <label>:19:                                     ; preds = %15, %12
  store i32 1, i32* %3, align 4, !dbg !39
  br label %20, !dbg !42

; <label>:20:                                     ; preds = %27, %19
  %21 = load i32, i32* %3, align 4, !dbg !43
  %22 = load i32, i32* %5, align 4, !dbg !45
  %23 = icmp sle i32 %21, %22, !dbg !46
  br i1 %23, label %24, label %30, !dbg !47

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %4, align 4, !dbg !48
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %25), !dbg !50
  br label %27, !dbg !51

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %3, align 4, !dbg !52
  %29 = add nsw i32 %28, 1, !dbg !52
  store i32 %29, i32* %3, align 4, !dbg !52
  br label %20, !dbg !53, !llvm.loop !54

; <label>:30:                                     ; preds = %20
  br label %50, !dbg !56

; <label>:31:                                     ; preds = %15
  store i32 1, i32* %3, align 4, !dbg !57
  br label %32, !dbg !60

; <label>:32:                                     ; preds = %46, %31
  %33 = load i32, i32* %3, align 4, !dbg !61
  %34 = load i32, i32* %5, align 4, !dbg !63
  %35 = icmp sle i32 %33, %34, !dbg !64
  br i1 %35, label %36, label %49, !dbg !65

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %3, align 4, !dbg !66
  %38 = srem i32 %37, 2, !dbg !68
  %39 = icmp eq i32 %38, 0, !dbg !69
  br i1 %39, label %40, label %42, !dbg !70

; <label>:40:                                     ; preds = %36
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !71
  br label %45, !dbg !73

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %4, align 4, !dbg !74
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %43), !dbg !76
  br label %45

; <label>:45:                                     ; preds = %42, %40
  br label %46, !dbg !77

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %3, align 4, !dbg !78
  %48 = add nsw i32 %47, 1, !dbg !78
  store i32 %48, i32* %3, align 4, !dbg !78
  br label %32, !dbg !79, !llvm.loop !80

; <label>:49:                                     ; preds = %32
  br label %50

; <label>:50:                                     ; preds = %49, %30
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !82
  br label %52, !dbg !83

; <label>:52:                                     ; preds = %50
  %53 = load i32, i32* %2, align 4, !dbg !84
  %54 = add nsw i32 %53, 1, !dbg !84
  store i32 %54, i32* %2, align 4, !dbg !84
  br label %8, !dbg !85, !llvm.loop !86

; <label>:55:                                     ; preds = %8
  ret i32 0, !dbg !88
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
!1 = !DIFile(filename: "gcov/../WA_c/278458_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 10, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 7, column: 9, scope: !23)
!25 = !DILocation(line: 7, column: 14, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 7, column: 17, scope: !26)
!28 = !DILocation(line: 7, column: 15, scope: !26)
!29 = !DILocation(line: 7, column: 5, scope: !23)
!30 = !DILocation(line: 9, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 12)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!33 = !DILocation(line: 9, column: 13, scope: !31)
!34 = !DILocation(line: 9, column: 16, scope: !31)
!35 = !DILocation(line: 9, column: 18, scope: !31)
!36 = !DILocation(line: 9, column: 21, scope: !31)
!37 = !DILocation(line: 9, column: 19, scope: !31)
!38 = !DILocation(line: 9, column: 12, scope: !32)
!39 = !DILocation(line: 11, column: 18, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 13)
!41 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 9)
!42 = !DILocation(line: 11, column: 17, scope: !40)
!43 = !DILocation(line: 11, column: 22, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 11, column: 13)
!45 = !DILocation(line: 11, column: 25, scope: !44)
!46 = !DILocation(line: 11, column: 23, scope: !44)
!47 = !DILocation(line: 11, column: 13, scope: !40)
!48 = !DILocation(line: 13, column: 29, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 13)
!50 = !DILocation(line: 13, column: 17, scope: !49)
!51 = !DILocation(line: 14, column: 13, scope: !49)
!52 = !DILocation(line: 11, column: 29, scope: !44)
!53 = !DILocation(line: 11, column: 13, scope: !44)
!54 = distinct !{!54, !47, !55}
!55 = !DILocation(line: 14, column: 13, scope: !40)
!56 = !DILocation(line: 15, column: 9, scope: !41)
!57 = !DILocation(line: 18, column: 18, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 18, column: 13)
!59 = distinct !DILexicalBlock(scope: !31, file: !1, line: 17, column: 9)
!60 = !DILocation(line: 18, column: 17, scope: !58)
!61 = !DILocation(line: 18, column: 22, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 18, column: 13)
!63 = !DILocation(line: 18, column: 25, scope: !62)
!64 = !DILocation(line: 18, column: 23, scope: !62)
!65 = !DILocation(line: 18, column: 13, scope: !58)
!66 = !DILocation(line: 19, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 19, column: 20)
!68 = !DILocation(line: 19, column: 21, scope: !67)
!69 = !DILocation(line: 19, column: 23, scope: !67)
!70 = !DILocation(line: 19, column: 20, scope: !62)
!71 = !DILocation(line: 21, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 20, column: 17)
!73 = !DILocation(line: 22, column: 17, scope: !72)
!74 = !DILocation(line: 25, column: 33, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 24, column: 17)
!76 = !DILocation(line: 25, column: 21, scope: !75)
!77 = !DILocation(line: 19, column: 25, scope: !67)
!78 = !DILocation(line: 18, column: 29, scope: !62)
!79 = !DILocation(line: 18, column: 13, scope: !62)
!80 = distinct !{!80, !65, !81}
!81 = !DILocation(line: 26, column: 17, scope: !58)
!82 = !DILocation(line: 28, column: 9, scope: !32)
!83 = !DILocation(line: 29, column: 5, scope: !32)
!84 = !DILocation(line: 7, column: 21, scope: !26)
!85 = !DILocation(line: 7, column: 5, scope: !26)
!86 = distinct !{!86, !29, !87}
!87 = !DILocation(line: 29, column: 5, scope: !23)
!88 = !DILocation(line: 30, column: 5, scope: !7)
