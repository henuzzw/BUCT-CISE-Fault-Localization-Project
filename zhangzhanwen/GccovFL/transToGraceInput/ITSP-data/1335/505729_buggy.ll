; ModuleID = 'gcov/../WA_c/505729_buggy.c'
source_filename = "gcov/../WA_c/505729_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %9, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %10, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %11, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 6, i32* %6, align 4, !dbg !31
  store i32 8, i32* %7, align 4, !dbg !32
  store i32 5, i32* %8, align 4, !dbg !33
  %12 = load i32, i32* %6, align 4, !dbg !34
  %13 = load i32, i32* %7, align 4, !dbg !35
  %14 = add nsw i32 %12, %13, !dbg !36
  store i32 %14, i32* %9, align 4, !dbg !37
  %15 = load i32, i32* %7, align 4, !dbg !38
  %16 = load i32, i32* %8, align 4, !dbg !39
  %17 = mul nsw i32 %15, %16, !dbg !40
  store i32 %17, i32* %11, align 4, !dbg !41
  store i32 14, i32* %9, align 4, !dbg !42
  store i32 40, i32* %11, align 4, !dbg !43
  %18 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !44
  %19 = load i32, i32* %2, align 4, !dbg !45
  store i32 %19, i32* %5, align 4, !dbg !46
  %20 = load i32, i32* %2, align 4, !dbg !47
  %21 = icmp eq i32 %20, 1, !dbg !49
  br i1 %21, label %22, label %24, !dbg !50

; <label>:22:                                     ; preds = %0
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !51
  br label %52, !dbg !51

; <label>:24:                                     ; preds = %0
  store i32 1, i32* %3, align 4, !dbg !52
  br label %25, !dbg !55

; <label>:25:                                     ; preds = %44, %24
  %26 = load i32, i32* %5, align 4, !dbg !56
  %27 = load i32, i32* %2, align 4, !dbg !60
  %28 = icmp sgt i32 %26, %27, !dbg !61
  br i1 %28, label %29, label %35, !dbg !62

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %5, align 4, !dbg !63
  %31 = load i32, i32* %2, align 4, !dbg !64
  %32 = sub nsw i32 %30, %31, !dbg !65
  %33 = mul nsw i32 2, %32, !dbg !66
  %34 = sub nsw i32 %33, 1, !dbg !67
  store i32 %34, i32* %5, align 4, !dbg !68
  br label %38, !dbg !69

; <label>:35:                                     ; preds = %25
  %36 = load i32, i32* %5, align 4, !dbg !70
  %37 = mul nsw i32 %36, 2, !dbg !71
  store i32 %37, i32* %5, align 4, !dbg !72
  br label %38

; <label>:38:                                     ; preds = %35, %29
  %39 = load i32, i32* %5, align 4, !dbg !73
  %40 = load i32, i32* %2, align 4, !dbg !75
  %41 = icmp eq i32 %39, %40, !dbg !76
  br i1 %41, label %42, label %43, !dbg !77

; <label>:42:                                     ; preds = %38
  br label %47, !dbg !78

; <label>:43:                                     ; preds = %38
  br label %44, !dbg !79

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %3, align 4, !dbg !80
  %46 = add nsw i32 %45, 1, !dbg !80
  store i32 %46, i32* %3, align 4, !dbg !80
  br label %25, !dbg !81, !llvm.loop !82

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %3, align 4, !dbg !85
  %49 = add nsw i32 %48, -1, !dbg !85
  store i32 %49, i32* %3, align 4, !dbg !85
  %50 = load i32, i32* %3, align 4, !dbg !86
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %50), !dbg !87
  br label %52

; <label>:52:                                     ; preds = %47, %22
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
!1 = !DIFile(filename: "gcov/../WA_c/505729_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1335")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 9, scope: !7)
!21 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!22 = !DILocation(line: 5, column: 12, scope: !7)
!23 = !DILocalVariable(name: "e", scope: !7, file: !1, line: 5, type: !10)
!24 = !DILocation(line: 5, column: 15, scope: !7)
!25 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !10)
!26 = !DILocation(line: 5, column: 18, scope: !7)
!27 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !10)
!28 = !DILocation(line: 5, column: 21, scope: !7)
!29 = !DILocalVariable(name: "z", scope: !7, file: !1, line: 5, type: !10)
!30 = !DILocation(line: 5, column: 24, scope: !7)
!31 = !DILocation(line: 6, column: 7, scope: !7)
!32 = !DILocation(line: 7, column: 7, scope: !7)
!33 = !DILocation(line: 8, column: 7, scope: !7)
!34 = !DILocation(line: 9, column: 9, scope: !7)
!35 = !DILocation(line: 9, column: 13, scope: !7)
!36 = !DILocation(line: 9, column: 11, scope: !7)
!37 = !DILocation(line: 9, column: 7, scope: !7)
!38 = !DILocation(line: 10, column: 9, scope: !7)
!39 = !DILocation(line: 10, column: 13, scope: !7)
!40 = !DILocation(line: 10, column: 11, scope: !7)
!41 = !DILocation(line: 10, column: 7, scope: !7)
!42 = !DILocation(line: 11, column: 7, scope: !7)
!43 = !DILocation(line: 12, column: 7, scope: !7)
!44 = !DILocation(line: 13, column: 5, scope: !7)
!45 = !DILocation(line: 14, column: 9, scope: !7)
!46 = !DILocation(line: 14, column: 7, scope: !7)
!47 = !DILocation(line: 15, column: 8, scope: !48)
!48 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 8)
!49 = !DILocation(line: 15, column: 10, scope: !48)
!50 = !DILocation(line: 15, column: 8, scope: !7)
!51 = !DILocation(line: 16, column: 9, scope: !48)
!52 = !DILocation(line: 20, column: 15, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 20, column: 9)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 18, column: 5)
!55 = !DILocation(line: 20, column: 13, scope: !53)
!56 = !DILocation(line: 22, column: 16, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 22, column: 16)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 21, column: 9)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 20, column: 9)
!60 = !DILocation(line: 22, column: 20, scope: !57)
!61 = !DILocation(line: 22, column: 18, scope: !57)
!62 = !DILocation(line: 22, column: 16, scope: !58)
!63 = !DILocation(line: 23, column: 26, scope: !57)
!64 = !DILocation(line: 23, column: 30, scope: !57)
!65 = !DILocation(line: 23, column: 28, scope: !57)
!66 = !DILocation(line: 23, column: 23, scope: !57)
!67 = !DILocation(line: 23, column: 33, scope: !57)
!68 = !DILocation(line: 23, column: 19, scope: !57)
!69 = !DILocation(line: 23, column: 17, scope: !57)
!70 = !DILocation(line: 25, column: 21, scope: !57)
!71 = !DILocation(line: 25, column: 23, scope: !57)
!72 = !DILocation(line: 25, column: 19, scope: !57)
!73 = !DILocation(line: 26, column: 16, scope: !74)
!74 = distinct !DILexicalBlock(scope: !58, file: !1, line: 26, column: 16)
!75 = !DILocation(line: 26, column: 21, scope: !74)
!76 = !DILocation(line: 26, column: 18, scope: !74)
!77 = !DILocation(line: 26, column: 16, scope: !58)
!78 = !DILocation(line: 27, column: 17, scope: !74)
!79 = !DILocation(line: 28, column: 9, scope: !58)
!80 = !DILocation(line: 20, column: 22, scope: !59)
!81 = !DILocation(line: 20, column: 9, scope: !59)
!82 = distinct !{!82, !83, !84}
!83 = !DILocation(line: 20, column: 9, scope: !53)
!84 = !DILocation(line: 28, column: 9, scope: !53)
!85 = !DILocation(line: 29, column: 10, scope: !54)
!86 = !DILocation(line: 30, column: 24, scope: !54)
!87 = !DILocation(line: 30, column: 9, scope: !54)
!88 = !DILocation(line: 32, column: 5, scope: !7)
