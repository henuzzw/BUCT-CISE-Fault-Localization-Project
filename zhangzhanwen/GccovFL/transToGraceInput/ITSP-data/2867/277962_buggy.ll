; ModuleID = 'gcov/../WA_c/277962_buggy.c'
source_filename = "gcov/../WA_c/277962_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %2, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %4, align 4, !dbg !16
  %5 = load i32, i32* %3, align 4, !dbg !17
  %6 = icmp sge i32 %5, 0, !dbg !19
  br label %7, !dbg !17

; <label>:7:                                      ; preds = %16, %0
  %8 = load i32, i32* %2, align 4, !dbg !20
  %9 = load i32, i32* %3, align 4, !dbg !22
  %10 = icmp sle i32 %8, %9, !dbg !23
  br i1 %10, label %11, label %19, !dbg !24

; <label>:11:                                     ; preds = %7
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !25
  %13 = load i32, i32* %4, align 4, !dbg !27
  %14 = load i32, i32* %2, align 4, !dbg !28
  %15 = add nsw i32 %13, %14, !dbg !29
  store i32 %15, i32* %4, align 4, !dbg !30
  br label %16, !dbg !31

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %2, align 4, !dbg !32
  %18 = add nsw i32 %17, 1, !dbg !32
  store i32 %18, i32* %2, align 4, !dbg !32
  br label %7, !dbg !33, !llvm.loop !34

; <label>:19:                                     ; preds = %7
  %20 = load i32, i32* %4, align 4, !dbg !36
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %20), !dbg !37
  ret i32 0, !dbg !38
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
!1 = !DIFile(filename: "gcov/../WA_c/277962_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2867")
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
!13 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 13, scope: !7)
!15 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 15, scope: !7)
!17 = !DILocation(line: 6, column: 9, scope: !18)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!19 = !DILocation(line: 6, column: 10, scope: !18)
!20 = !DILocation(line: 6, column: 15, scope: !21)
!21 = distinct !DILexicalBlock(scope: !18, file: !1, line: 6, column: 5)
!22 = !DILocation(line: 6, column: 18, scope: !21)
!23 = !DILocation(line: 6, column: 16, scope: !21)
!24 = !DILocation(line: 6, column: 5, scope: !18)
!25 = !DILocation(line: 8, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 9, column: 15, scope: !26)
!28 = !DILocation(line: 9, column: 21, scope: !26)
!29 = !DILocation(line: 9, column: 19, scope: !26)
!30 = !DILocation(line: 9, column: 13, scope: !26)
!31 = !DILocation(line: 10, column: 5, scope: !26)
!32 = !DILocation(line: 6, column: 22, scope: !21)
!33 = !DILocation(line: 6, column: 5, scope: !21)
!34 = distinct !{!34, !24, !35}
!35 = !DILocation(line: 10, column: 5, scope: !18)
!36 = !DILocation(line: 11, column: 17, scope: !7)
!37 = !DILocation(line: 11, column: 5, scope: !7)
!38 = !DILocation(line: 13, column: 5, scope: !7)
