; ModuleID = 'gcov/../WA_c/271655_buggy.c'
source_filename = "gcov/../WA_c/271655_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Reverse of %d is %d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  %7 = load i32, i32* %2, align 4, !dbg !18
  store i32 %7, i32* %4, align 4, !dbg !17
  br label %8, !dbg !19

; <label>:8:                                      ; preds = %11, %0
  %9 = load i32, i32* %2, align 4, !dbg !20
  %10 = icmp sgt i32 %9, 0, !dbg !21
  br i1 %10, label %11, label %20, !dbg !19

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !24
  %12 = load i32, i32* %2, align 4, !dbg !25
  %13 = srem i32 %12, 10, !dbg !26
  store i32 %13, i32* %5, align 4, !dbg !24
  %14 = load i32, i32* %3, align 4, !dbg !27
  %15 = mul nsw i32 %14, 10, !dbg !28
  %16 = load i32, i32* %5, align 4, !dbg !29
  %17 = add nsw i32 %15, %16, !dbg !30
  store i32 %17, i32* %3, align 4, !dbg !31
  %18 = load i32, i32* %2, align 4, !dbg !32
  %19 = sdiv i32 %18, 10, !dbg !33
  store i32 %19, i32* %2, align 4, !dbg !34
  br label %8, !dbg !19, !llvm.loop !35

; <label>:20:                                     ; preds = %8
  %21 = load i32, i32* %4, align 4, !dbg !37
  %22 = load i32, i32* %3, align 4, !dbg !38
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 %21, i32 %22), !dbg !39
  ret i32 0, !dbg !40
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
!1 = !DIFile(filename: "gcov/../WA_c/271655_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2831")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocation(line: 6, column: 5, scope: !7)
!16 = !DILocalVariable(name: "f", scope: !7, file: !1, line: 7, type: !10)
!17 = !DILocation(line: 7, column: 9, scope: !7)
!18 = !DILocation(line: 7, column: 11, scope: !7)
!19 = !DILocation(line: 8, column: 5, scope: !7)
!20 = !DILocation(line: 8, column: 11, scope: !7)
!21 = !DILocation(line: 8, column: 12, scope: !7)
!22 = !DILocalVariable(name: "d", scope: !23, file: !1, line: 10, type: !10)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 5)
!24 = !DILocation(line: 10, column: 13, scope: !23)
!25 = !DILocation(line: 10, column: 15, scope: !23)
!26 = !DILocation(line: 10, column: 16, scope: !23)
!27 = !DILocation(line: 11, column: 11, scope: !23)
!28 = !DILocation(line: 11, column: 12, scope: !23)
!29 = !DILocation(line: 11, column: 16, scope: !23)
!30 = !DILocation(line: 11, column: 15, scope: !23)
!31 = !DILocation(line: 11, column: 10, scope: !23)
!32 = !DILocation(line: 12, column: 11, scope: !23)
!33 = !DILocation(line: 12, column: 12, scope: !23)
!34 = !DILocation(line: 12, column: 10, scope: !23)
!35 = distinct !{!35, !19, !36}
!36 = !DILocation(line: 13, column: 5, scope: !7)
!37 = !DILocation(line: 14, column: 34, scope: !7)
!38 = !DILocation(line: 14, column: 36, scope: !7)
!39 = !DILocation(line: 14, column: 5, scope: !7)
!40 = !DILocation(line: 15, column: 5, scope: !7)
