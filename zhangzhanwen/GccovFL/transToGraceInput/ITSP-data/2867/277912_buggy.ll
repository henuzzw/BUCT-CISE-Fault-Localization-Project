; ModuleID = 'gcov/../WA_c/277912_buggy.c'
source_filename = "gcov/../WA_c/277912_buggy.c"
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %4, align 4, !dbg !16
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !17
  store i32 0, i32* %2, align 4, !dbg !18
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %11, %0
  %7 = load i32, i32* %2, align 4, !dbg !21
  %8 = load i32, i32* %3, align 4, !dbg !23
  %9 = icmp sle i32 %7, %8, !dbg !24
  br i1 %9, label %10, label %14, !dbg !25

; <label>:10:                                     ; preds = %6
  br label %11, !dbg !25

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %2, align 4, !dbg !26
  %13 = add nsw i32 %12, 1, !dbg !27
  store i32 %13, i32* %2, align 4, !dbg !28
  br label %6, !dbg !29, !llvm.loop !30

; <label>:14:                                     ; preds = %6
  %15 = load i32, i32* %4, align 4, !dbg !32
  %16 = load i32, i32* %2, align 4, !dbg !33
  %17 = load i32, i32* %2, align 4, !dbg !34
  %18 = add nsw i32 %17, 1, !dbg !35
  %19 = mul nsw i32 %16, %18, !dbg !36
  %20 = sdiv i32 %19, 2, !dbg !37
  %21 = add nsw i32 %15, %20, !dbg !38
  store i32 %21, i32* %4, align 4, !dbg !39
  %22 = load i32, i32* %4, align 4, !dbg !40
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %22), !dbg !41
  ret i32 0, !dbg !42
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
!1 = !DIFile(filename: "gcov/../WA_c/277912_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2867")
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
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "T", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 7, column: 5, scope: !7)
!18 = !DILocation(line: 9, column: 11, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 5)
!20 = !DILocation(line: 9, column: 10, scope: !19)
!21 = !DILocation(line: 9, column: 15, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 9, column: 5)
!23 = !DILocation(line: 9, column: 18, scope: !22)
!24 = !DILocation(line: 9, column: 16, scope: !22)
!25 = !DILocation(line: 9, column: 5, scope: !19)
!26 = !DILocation(line: 9, column: 23, scope: !22)
!27 = !DILocation(line: 9, column: 24, scope: !22)
!28 = !DILocation(line: 9, column: 22, scope: !22)
!29 = !DILocation(line: 9, column: 5, scope: !22)
!30 = distinct !{!30, !25, !31}
!31 = !DILocation(line: 9, column: 27, scope: !19)
!32 = !DILocation(line: 11, column: 7, scope: !7)
!33 = !DILocation(line: 11, column: 10, scope: !7)
!34 = !DILocation(line: 11, column: 13, scope: !7)
!35 = !DILocation(line: 11, column: 14, scope: !7)
!36 = !DILocation(line: 11, column: 11, scope: !7)
!37 = !DILocation(line: 11, column: 17, scope: !7)
!38 = !DILocation(line: 11, column: 8, scope: !7)
!39 = !DILocation(line: 11, column: 6, scope: !7)
!40 = !DILocation(line: 13, column: 17, scope: !7)
!41 = !DILocation(line: 13, column: 5, scope: !7)
!42 = !DILocation(line: 15, column: 5, scope: !7)
