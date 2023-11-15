; ModuleID = 'gcov/../WA_c/264025_buggy.c'
source_filename = "gcov/../WA_c/264025_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !23
  store i32 1, i32* %4, align 4, !dbg !24
  br label %9, !dbg !26

; <label>:9:                                      ; preds = %38, %0
  %10 = load i32, i32* %4, align 4, !dbg !27
  %11 = load i32, i32* %2, align 4, !dbg !29
  %12 = icmp slt i32 %10, %11, !dbg !30
  br i1 %12, label %13, label %41, !dbg !31

; <label>:13:                                     ; preds = %9
  store i32 0, i32* %7, align 4, !dbg !32
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !34
  store i32 1, i32* %5, align 4, !dbg !35
  br label %15, !dbg !37

; <label>:15:                                     ; preds = %30, %13
  %16 = load i32, i32* %5, align 4, !dbg !38
  %17 = load i32, i32* %3, align 4, !dbg !40
  %18 = icmp sle i32 %16, %17, !dbg !41
  br i1 %18, label %19, label %33, !dbg !42

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %5, align 4, !dbg !43
  %21 = load i32, i32* %5, align 4, !dbg !44
  %22 = add nsw i32 %21, 1, !dbg !45
  %23 = mul nsw i32 %20, %22, !dbg !46
  %24 = load i32, i32* %5, align 4, !dbg !47
  %25 = add nsw i32 %24, 2, !dbg !48
  %26 = mul nsw i32 %23, %25, !dbg !49
  %27 = sdiv i32 %26, 2, !dbg !50
  %28 = load i32, i32* %7, align 4, !dbg !51
  %29 = add nsw i32 %27, %28, !dbg !52
  store i32 %29, i32* %7, align 4, !dbg !53
  br label %30, !dbg !54

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* %5, align 4, !dbg !55
  %32 = add nsw i32 %31, 1, !dbg !55
  store i32 %32, i32* %5, align 4, !dbg !55
  br label %15, !dbg !56, !llvm.loop !57

; <label>:33:                                     ; preds = %15
  %34 = load i32, i32* %4, align 4, !dbg !59
  %35 = load i32, i32* %3, align 4, !dbg !60
  %36 = load i32, i32* %7, align 4, !dbg !61
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %34, i32 %35, i32 %36), !dbg !62
  br label %38, !dbg !63

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %4, align 4, !dbg !64
  %40 = add nsw i32 %39, 1, !dbg !64
  store i32 %40, i32* %4, align 4, !dbg !64
  br label %9, !dbg !65, !llvm.loop !66

; <label>:41:                                     ; preds = %9
  ret i32 0, !dbg !68
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
!1 = !DIFile(filename: "gcov/../WA_c/264025_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1500")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 6, scope: !7)
!13 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 8, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 10, scope: !7)
!17 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 12, scope: !7)
!19 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 14, scope: !7)
!21 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 5, type: !10)
!22 = !DILocation(line: 5, column: 6, scope: !7)
!23 = !DILocation(line: 6, column: 2, scope: !7)
!24 = !DILocation(line: 7, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 2)
!26 = !DILocation(line: 7, column: 6, scope: !25)
!27 = !DILocation(line: 7, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 7, column: 2)
!29 = !DILocation(line: 7, column: 12, scope: !28)
!30 = !DILocation(line: 7, column: 11, scope: !28)
!31 = !DILocation(line: 7, column: 2, scope: !25)
!32 = !DILocation(line: 9, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !1, line: 8, column: 2)
!34 = !DILocation(line: 10, column: 3, scope: !33)
!35 = !DILocation(line: 11, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 3)
!37 = !DILocation(line: 11, column: 7, scope: !36)
!38 = !DILocation(line: 11, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 3)
!40 = !DILocation(line: 11, column: 15, scope: !39)
!41 = !DILocation(line: 11, column: 13, scope: !39)
!42 = !DILocation(line: 11, column: 3, scope: !36)
!43 = !DILocation(line: 12, column: 8, scope: !39)
!44 = !DILocation(line: 12, column: 11, scope: !39)
!45 = !DILocation(line: 12, column: 12, scope: !39)
!46 = !DILocation(line: 12, column: 9, scope: !39)
!47 = !DILocation(line: 12, column: 17, scope: !39)
!48 = !DILocation(line: 12, column: 18, scope: !39)
!49 = !DILocation(line: 12, column: 15, scope: !39)
!50 = !DILocation(line: 12, column: 21, scope: !39)
!51 = !DILocation(line: 12, column: 26, scope: !39)
!52 = !DILocation(line: 12, column: 24, scope: !39)
!53 = !DILocation(line: 12, column: 7, scope: !39)
!54 = !DILocation(line: 12, column: 3, scope: !39)
!55 = !DILocation(line: 11, column: 19, scope: !39)
!56 = !DILocation(line: 11, column: 3, scope: !39)
!57 = distinct !{!57, !42, !58}
!58 = !DILocation(line: 12, column: 26, scope: !36)
!59 = !DILocation(line: 13, column: 23, scope: !33)
!60 = !DILocation(line: 13, column: 25, scope: !33)
!61 = !DILocation(line: 13, column: 27, scope: !33)
!62 = !DILocation(line: 13, column: 3, scope: !33)
!63 = !DILocation(line: 14, column: 2, scope: !33)
!64 = !DILocation(line: 7, column: 15, scope: !28)
!65 = !DILocation(line: 7, column: 2, scope: !28)
!66 = distinct !{!66, !31, !67}
!67 = !DILocation(line: 14, column: 2, scope: !25)
!68 = !DILocation(line: 15, column: 2, scope: !7)
