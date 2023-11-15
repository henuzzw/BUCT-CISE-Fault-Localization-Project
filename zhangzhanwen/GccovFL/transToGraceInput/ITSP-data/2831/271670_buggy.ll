; ModuleID = 'gcov/../WA_c/271670_buggy.c'
source_filename = "gcov/../WA_c/271670_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %3, align 4, !dbg !14
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !15
  br label %5, !dbg !16, !llvm.loop !17

; <label>:5:                                      ; preds = %14, %0
  %6 = load i32, i32* %3, align 4, !dbg !19
  %7 = mul nsw i32 %6, 10, !dbg !21
  store i32 %7, i32* %3, align 4, !dbg !22
  %8 = load i32, i32* %3, align 4, !dbg !23
  %9 = load i32, i32* %2, align 4, !dbg !24
  %10 = srem i32 %9, 10, !dbg !25
  %11 = add nsw i32 %8, %10, !dbg !26
  store i32 %11, i32* %3, align 4, !dbg !27
  %12 = load i32, i32* %2, align 4, !dbg !28
  %13 = sdiv i32 %12, 10, !dbg !29
  store i32 %13, i32* %2, align 4, !dbg !30
  br label %14, !dbg !31

; <label>:14:                                     ; preds = %5
  %15 = load i32, i32* %2, align 4, !dbg !32
  %16 = icmp ne i32 %15, 0, !dbg !33
  br i1 %16, label %5, label %17, !dbg !31, !llvm.loop !17

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %3, align 4, !dbg !34
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %18), !dbg !35
  ret i32 0, !dbg !36
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
!1 = !DIFile(filename: "gcov/../WA_c/271670_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2831")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 9, scope: !7)
!13 = !DILocalVariable(name: "revnum", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 13, scope: !7)
!15 = !DILocation(line: 7, column: 5, scope: !7)
!16 = !DILocation(line: 9, column: 5, scope: !7)
!17 = distinct !{!17, !16, !18}
!18 = !DILocation(line: 16, column: 17, scope: !7)
!19 = !DILocation(line: 11, column: 16, scope: !20)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 5)
!21 = !DILocation(line: 11, column: 22, scope: !20)
!22 = !DILocation(line: 11, column: 15, scope: !20)
!23 = !DILocation(line: 12, column: 16, scope: !20)
!24 = !DILocation(line: 12, column: 23, scope: !20)
!25 = !DILocation(line: 12, column: 26, scope: !20)
!26 = !DILocation(line: 12, column: 22, scope: !20)
!27 = !DILocation(line: 12, column: 15, scope: !20)
!28 = !DILocation(line: 13, column: 13, scope: !20)
!29 = !DILocation(line: 13, column: 16, scope: !20)
!30 = !DILocation(line: 13, column: 12, scope: !20)
!31 = !DILocation(line: 15, column: 5, scope: !20)
!32 = !DILocation(line: 16, column: 11, scope: !7)
!33 = !DILocation(line: 16, column: 14, scope: !7)
!34 = !DILocation(line: 17, column: 17, scope: !7)
!35 = !DILocation(line: 17, column: 5, scope: !7)
!36 = !DILocation(line: 18, column: 5, scope: !7)
