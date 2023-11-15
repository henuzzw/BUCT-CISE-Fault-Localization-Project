; ModuleID = 'gcov/../WA_c/277943_buggy.c'
source_filename = "gcov/../WA_c/277943_buggy.c"
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
  store i32 0, i32* %3, align 4, !dbg !14
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 1, i32* %4, align 4, !dbg !18
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %18, %0
  %7 = load i32, i32* %4, align 4, !dbg !21
  %8 = load i32, i32* %2, align 4, !dbg !23
  %9 = icmp slt i32 %7, %8, !dbg !24
  br i1 %9, label %10, label %21, !dbg !25

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !26
  %12 = load i32, i32* %4, align 4, !dbg !28
  %13 = load i32, i32* %4, align 4, !dbg !29
  %14 = add nsw i32 %13, 1, !dbg !30
  %15 = mul nsw i32 %12, %14, !dbg !31
  %16 = sdiv i32 %15, 2, !dbg !32
  %17 = add nsw i32 %11, %16, !dbg !33
  store i32 %17, i32* %3, align 4, !dbg !34
  br label %18, !dbg !35

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %4, align 4, !dbg !36
  %20 = add nsw i32 %19, 1, !dbg !36
  store i32 %20, i32* %4, align 4, !dbg !36
  br label %6, !dbg !37, !llvm.loop !38

; <label>:21:                                     ; preds = %6
  %22 = load i32, i32* %3, align 4, !dbg !40
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
!1 = !DIFile(filename: "gcov/../WA_c/277943_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2867")
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
!13 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocation(line: 6, column: 5, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 7, type: !10)
!17 = !DILocation(line: 7, column: 9, scope: !7)
!18 = !DILocation(line: 8, column: 11, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!20 = !DILocation(line: 8, column: 10, scope: !19)
!21 = !DILocation(line: 8, column: 15, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!23 = !DILocation(line: 8, column: 17, scope: !22)
!24 = !DILocation(line: 8, column: 16, scope: !22)
!25 = !DILocation(line: 8, column: 5, scope: !19)
!26 = !DILocation(line: 10, column: 13, scope: !27)
!27 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 5)
!28 = !DILocation(line: 10, column: 19, scope: !27)
!29 = !DILocation(line: 10, column: 22, scope: !27)
!30 = !DILocation(line: 10, column: 23, scope: !27)
!31 = !DILocation(line: 10, column: 20, scope: !27)
!32 = !DILocation(line: 10, column: 27, scope: !27)
!33 = !DILocation(line: 10, column: 16, scope: !27)
!34 = !DILocation(line: 10, column: 12, scope: !27)
!35 = !DILocation(line: 11, column: 5, scope: !27)
!36 = !DILocation(line: 8, column: 21, scope: !22)
!37 = !DILocation(line: 8, column: 5, scope: !22)
!38 = distinct !{!38, !25, !39}
!39 = !DILocation(line: 11, column: 5, scope: !19)
!40 = !DILocation(line: 12, column: 18, scope: !7)
!41 = !DILocation(line: 12, column: 5, scope: !7)
!42 = !DILocation(line: 13, column: 5, scope: !7)
