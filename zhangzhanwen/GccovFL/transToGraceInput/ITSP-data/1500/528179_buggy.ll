; ModuleID = 'gcov/../WA_c/528179_buggy.c'
source_filename = "gcov/../WA_c/528179_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1

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
  store i32 1, i32* %5, align 4, !dbg !18
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !19
  br label %9, !dbg !20

; <label>:9:                                      ; preds = %33, %0
  %10 = load i32, i32* %2, align 4, !dbg !21
  %11 = add nsw i32 %10, -1, !dbg !21
  store i32 %11, i32* %2, align 4, !dbg !21
  %12 = icmp ne i32 %10, 0, !dbg !22
  br i1 %12, label %13, label %41, !dbg !20

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %6, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %7, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, i32* %7, align 4, !dbg !27
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %6), !dbg !28
  store i32 1, i32* %4, align 4, !dbg !29
  br label %15, !dbg !31

; <label>:15:                                     ; preds = %30, %13
  %16 = load i32, i32* %4, align 4, !dbg !32
  %17 = load i32, i32* %6, align 4, !dbg !34
  %18 = icmp sle i32 %16, %17, !dbg !35
  br i1 %18, label %19, label %33, !dbg !36

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4, !dbg !37
  %21 = load i32, i32* %4, align 4, !dbg !38
  %22 = add nsw i32 %21, 1, !dbg !39
  %23 = mul nsw i32 %20, %22, !dbg !40
  %24 = load i32, i32* %4, align 4, !dbg !41
  %25 = add nsw i32 %24, 2, !dbg !42
  %26 = mul nsw i32 %23, %25, !dbg !43
  %27 = sdiv i32 %26, 2, !dbg !44
  %28 = load i32, i32* %7, align 4, !dbg !45
  %29 = add nsw i32 %28, %27, !dbg !45
  store i32 %29, i32* %7, align 4, !dbg !45
  br label %30, !dbg !46

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* %4, align 4, !dbg !47
  %32 = add nsw i32 %31, 1, !dbg !47
  store i32 %32, i32* %4, align 4, !dbg !47
  br label %15, !dbg !48, !llvm.loop !49

; <label>:33:                                     ; preds = %15
  %34 = load i32, i32* %7, align 4, !dbg !51
  %35 = add nsw i32 %34, -1, !dbg !51
  store i32 %35, i32* %7, align 4, !dbg !51
  %36 = load i32, i32* %5, align 4, !dbg !52
  %37 = add nsw i32 %36, 1, !dbg !52
  store i32 %37, i32* %5, align 4, !dbg !52
  %38 = load i32, i32* %6, align 4, !dbg !53
  %39 = load i32, i32* %7, align 4, !dbg !54
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %36, i32 %38, i32 %39), !dbg !55
  br label %9, !dbg !20, !llvm.loop !56

; <label>:41:                                     ; preds = %9
  %42 = load i32, i32* %1, align 4, !dbg !58
  ret i32 %42, !dbg !58
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
!1 = !DIFile(filename: "gcov/../WA_c/528179_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1500")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 6, scope: !7)
!13 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 3, type: !10)
!14 = !DILocation(line: 3, column: 8, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 10, scope: !7)
!17 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 3, type: !10)
!18 = !DILocation(line: 3, column: 12, scope: !7)
!19 = !DILocation(line: 4, column: 2, scope: !7)
!20 = !DILocation(line: 5, column: 2, scope: !7)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocation(line: 5, column: 8, scope: !7)
!23 = !DILocalVariable(name: "x", scope: !24, file: !1, line: 6, type: !10)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 13)
!25 = !DILocation(line: 6, column: 7, scope: !24)
!26 = !DILocalVariable(name: "sum", scope: !24, file: !1, line: 6, type: !10)
!27 = !DILocation(line: 6, column: 9, scope: !24)
!28 = !DILocation(line: 7, column: 3, scope: !24)
!29 = !DILocation(line: 8, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 3)
!31 = !DILocation(line: 8, column: 7, scope: !30)
!32 = !DILocation(line: 8, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 8, column: 3)
!34 = !DILocation(line: 8, column: 15, scope: !33)
!35 = !DILocation(line: 8, column: 13, scope: !33)
!36 = !DILocation(line: 8, column: 3, scope: !30)
!37 = !DILocation(line: 9, column: 9, scope: !33)
!38 = !DILocation(line: 9, column: 12, scope: !33)
!39 = !DILocation(line: 9, column: 13, scope: !33)
!40 = !DILocation(line: 9, column: 10, scope: !33)
!41 = !DILocation(line: 9, column: 18, scope: !33)
!42 = !DILocation(line: 9, column: 19, scope: !33)
!43 = !DILocation(line: 9, column: 16, scope: !33)
!44 = !DILocation(line: 9, column: 22, scope: !33)
!45 = !DILocation(line: 9, column: 7, scope: !33)
!46 = !DILocation(line: 9, column: 4, scope: !33)
!47 = !DILocation(line: 8, column: 19, scope: !33)
!48 = !DILocation(line: 8, column: 3, scope: !33)
!49 = distinct !{!49, !36, !50}
!50 = !DILocation(line: 9, column: 23, scope: !30)
!51 = !DILocation(line: 10, column: 6, scope: !24)
!52 = !DILocation(line: 11, column: 22, scope: !24)
!53 = !DILocation(line: 11, column: 25, scope: !24)
!54 = !DILocation(line: 11, column: 27, scope: !24)
!55 = !DILocation(line: 11, column: 3, scope: !24)
!56 = distinct !{!56, !20, !57}
!57 = !DILocation(line: 12, column: 2, scope: !7)
!58 = !DILocation(line: 13, column: 1, scope: !7)
