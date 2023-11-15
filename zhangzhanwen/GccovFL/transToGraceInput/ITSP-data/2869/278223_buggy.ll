; ModuleID = 'gcov/../WA_c/278223_buggy.c'
source_filename = "gcov/../WA_c/278223_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %2, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 1, i32* %3, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !19
  store i32 0, i32* %2, align 4, !dbg !20
  br label %7, !dbg !22

; <label>:7:                                      ; preds = %37, %0
  %8 = load i32, i32* %2, align 4, !dbg !23
  %9 = load i32, i32* %3, align 4, !dbg !25
  %10 = icmp slt i32 %8, %9, !dbg !26
  br i1 %10, label %11, label %40, !dbg !27

; <label>:11:                                     ; preds = %7
  store i32 1, i32* %4, align 4, !dbg !28
  br label %12, !dbg !31

; <label>:12:                                     ; preds = %20, %11
  %13 = load i32, i32* %4, align 4, !dbg !32
  %14 = icmp sgt i32 %13, 0, !dbg !34
  br i1 %14, label %15, label %23, !dbg !35

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4, !dbg !36
  %17 = load i32, i32* %4, align 4, !dbg !38
  %18 = sub nsw i32 %16, %17, !dbg !39
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %18), !dbg !40
  br label %20, !dbg !41

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %4, align 4, !dbg !42
  %22 = add nsw i32 %21, -1, !dbg !42
  store i32 %22, i32* %4, align 4, !dbg !42
  br label %12, !dbg !43, !llvm.loop !44

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %2, align 4, !dbg !46
  store i32 %24, i32* %5, align 4, !dbg !48
  br label %25, !dbg !49

; <label>:25:                                     ; preds = %32, %23
  %26 = load i32, i32* %5, align 4, !dbg !50
  %27 = load i32, i32* %3, align 4, !dbg !52
  %28 = icmp slt i32 %26, %27, !dbg !53
  br i1 %28, label %29, label %35, !dbg !54

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %3, align 4, !dbg !55
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %30), !dbg !57
  br label %32, !dbg !58

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %5, align 4, !dbg !59
  %34 = add nsw i32 %33, 1, !dbg !59
  store i32 %34, i32* %5, align 4, !dbg !59
  br label %25, !dbg !60, !llvm.loop !61

; <label>:35:                                     ; preds = %25
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !63
  br label %37, !dbg !64

; <label>:37:                                     ; preds = %35
  %38 = load i32, i32* %2, align 4, !dbg !65
  %39 = add nsw i32 %38, 1, !dbg !65
  store i32 %39, i32* %2, align 4, !dbg !65
  br label %7, !dbg !66, !llvm.loop !67

; <label>:40:                                     ; preds = %7
  %41 = load i32, i32* %1, align 4, !dbg !69
  ret i32 %41, !dbg !69
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
!1 = !DIFile(filename: "gcov/../WA_c/278223_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2869")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 7, column: 10, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!22 = !DILocation(line: 7, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 7, column: 5)
!25 = !DILocation(line: 7, column: 16, scope: !24)
!26 = !DILocation(line: 7, column: 15, scope: !24)
!27 = !DILocation(line: 7, column: 5, scope: !21)
!28 = !DILocation(line: 9, column: 14, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 9)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 5)
!31 = !DILocation(line: 9, column: 13, scope: !29)
!32 = !DILocation(line: 9, column: 18, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 9)
!34 = !DILocation(line: 9, column: 19, scope: !33)
!35 = !DILocation(line: 9, column: 9, scope: !29)
!36 = !DILocation(line: 11, column: 25, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 9)
!38 = !DILocation(line: 11, column: 27, scope: !37)
!39 = !DILocation(line: 11, column: 26, scope: !37)
!40 = !DILocation(line: 11, column: 13, scope: !37)
!41 = !DILocation(line: 12, column: 9, scope: !37)
!42 = !DILocation(line: 9, column: 24, scope: !33)
!43 = !DILocation(line: 9, column: 9, scope: !33)
!44 = distinct !{!44, !35, !45}
!45 = !DILocation(line: 12, column: 9, scope: !29)
!46 = !DILocation(line: 13, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 9)
!48 = !DILocation(line: 13, column: 14, scope: !47)
!49 = !DILocation(line: 13, column: 13, scope: !47)
!50 = !DILocation(line: 13, column: 18, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 13, column: 9)
!52 = !DILocation(line: 13, column: 20, scope: !51)
!53 = !DILocation(line: 13, column: 19, scope: !51)
!54 = !DILocation(line: 13, column: 9, scope: !47)
!55 = !DILocation(line: 15, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 14, column: 9)
!57 = !DILocation(line: 15, column: 13, scope: !56)
!58 = !DILocation(line: 16, column: 9, scope: !56)
!59 = !DILocation(line: 13, column: 24, scope: !51)
!60 = !DILocation(line: 13, column: 9, scope: !51)
!61 = distinct !{!61, !54, !62}
!62 = !DILocation(line: 16, column: 9, scope: !47)
!63 = !DILocation(line: 17, column: 9, scope: !30)
!64 = !DILocation(line: 18, column: 5, scope: !30)
!65 = !DILocation(line: 7, column: 20, scope: !24)
!66 = !DILocation(line: 7, column: 5, scope: !24)
!67 = distinct !{!67, !27, !68}
!68 = !DILocation(line: 18, column: 5, scope: !21)
!69 = !DILocation(line: 19, column: 1, scope: !7)
