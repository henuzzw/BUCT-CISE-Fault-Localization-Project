; ModuleID = 'gcov/../WA_c/278417_buggy.c'
source_filename = "gcov/../WA_c/278417_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !21
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !22
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !23
  store i32 0, i32* %5, align 4, !dbg !24
  br label %10, !dbg !26

; <label>:10:                                     ; preds = %28, %0
  %11 = load i32, i32* %5, align 4, !dbg !27
  %12 = load i32, i32* %4, align 4, !dbg !29
  %13 = icmp sle i32 %11, %12, !dbg !30
  %14 = load i32, i32* %5, align 4, !dbg !31
  %15 = add nsw i32 %14, 1, !dbg !31
  store i32 %15, i32* %5, align 4, !dbg !31
  %16 = icmp ne i32 %14, 0, !dbg !27
  br i1 %16, label %17, label %29, !dbg !32

; <label>:17:                                     ; preds = %10
  store i32 0, i32* %6, align 4, !dbg !33
  br label %18, !dbg !36

; <label>:18:                                     ; preds = %25, %17
  %19 = load i32, i32* %6, align 4, !dbg !37
  %20 = load i32, i32* %3, align 4, !dbg !39
  %21 = icmp sle i32 %19, %20, !dbg !40
  %22 = load i32, i32* %6, align 4, !dbg !41
  %23 = add nsw i32 %22, 1, !dbg !41
  store i32 %23, i32* %6, align 4, !dbg !41
  %24 = icmp ne i32 %22, 0, !dbg !37
  br i1 %24, label %25, label %28, !dbg !42

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %2, align 4, !dbg !43
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %26), !dbg !45
  br label %18, !dbg !46, !llvm.loop !47

; <label>:28:                                     ; preds = %18
  br label %10, !dbg !49, !llvm.loop !50

; <label>:29:                                     ; preds = %10
  ret i32 0, !dbg !52
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
!1 = !DIFile(filename: "gcov/../WA_c/278417_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2871")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 5, scope: !7)
!23 = !DILocation(line: 8, column: 5, scope: !7)
!24 = !DILocation(line: 10, column: 11, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 5)
!26 = !DILocation(line: 10, column: 10, scope: !25)
!27 = !DILocation(line: 10, column: 15, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 5)
!29 = !DILocation(line: 10, column: 18, scope: !28)
!30 = !DILocation(line: 10, column: 16, scope: !28)
!31 = !DILocation(line: 10, column: 21, scope: !28)
!32 = !DILocation(line: 10, column: 5, scope: !25)
!33 = !DILocation(line: 12, column: 14, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 12, column: 9)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 11, column: 5)
!36 = !DILocation(line: 12, column: 13, scope: !34)
!37 = !DILocation(line: 12, column: 18, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 12, column: 9)
!39 = !DILocation(line: 12, column: 21, scope: !38)
!40 = !DILocation(line: 12, column: 19, scope: !38)
!41 = !DILocation(line: 12, column: 24, scope: !38)
!42 = !DILocation(line: 12, column: 9, scope: !34)
!43 = !DILocation(line: 14, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 9)
!45 = !DILocation(line: 14, column: 13, scope: !44)
!46 = !DILocation(line: 12, column: 9, scope: !38)
!47 = distinct !{!47, !42, !48}
!48 = !DILocation(line: 15, column: 9, scope: !34)
!49 = !DILocation(line: 10, column: 5, scope: !28)
!50 = distinct !{!50, !32, !51}
!51 = !DILocation(line: 17, column: 5, scope: !25)
!52 = !DILocation(line: 19, column: 5, scope: !7)
