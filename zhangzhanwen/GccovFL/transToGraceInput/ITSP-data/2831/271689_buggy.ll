; ModuleID = 'gcov/../WA_c/271689_buggy.c'
source_filename = "gcov/../WA_c/271689_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Revrse of %d is \00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  %6 = load i32, i32* %2, align 4, !dbg !14
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %6), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !18
  %8 = load i32, i32* %2, align 4, !dbg !19
  store i32 %8, i32* %3, align 4, !dbg !18
  br label %9, !dbg !20

; <label>:9:                                      ; preds = %17, %0
  %10 = load i32, i32* %3, align 4, !dbg !21
  %11 = icmp ne i32 %10, 0, !dbg !23
  br i1 %11, label %12, label %20, !dbg !24

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !27
  %13 = load i32, i32* %3, align 4, !dbg !28
  %14 = srem i32 %13, 10, !dbg !29
  store i32 %14, i32* %4, align 4, !dbg !27
  %15 = load i32, i32* %4, align 4, !dbg !30
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %15), !dbg !31
  br label %17, !dbg !32

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %3, align 4, !dbg !33
  %19 = sdiv i32 %18, 10, !dbg !34
  store i32 %19, i32* %3, align 4, !dbg !35
  br label %9, !dbg !36, !llvm.loop !37

; <label>:20:                                     ; preds = %9
  ret i32 0, !dbg !39
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
!1 = !DIFile(filename: "gcov/../WA_c/271689_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2831")
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
!13 = !DILocation(line: 6, column: 5, scope: !7)
!14 = !DILocation(line: 7, column: 31, scope: !7)
!15 = !DILocation(line: 7, column: 5, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 8, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!18 = !DILocation(line: 8, column: 13, scope: !17)
!19 = !DILocation(line: 8, column: 15, scope: !17)
!20 = !DILocation(line: 8, column: 9, scope: !17)
!21 = !DILocation(line: 8, column: 18, scope: !22)
!22 = distinct !DILexicalBlock(scope: !17, file: !1, line: 8, column: 5)
!23 = !DILocation(line: 8, column: 19, scope: !22)
!24 = !DILocation(line: 8, column: 5, scope: !17)
!25 = !DILocalVariable(name: "rem", scope: !26, file: !1, line: 10, type: !10)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 5)
!27 = !DILocation(line: 10, column: 13, scope: !26)
!28 = !DILocation(line: 10, column: 17, scope: !26)
!29 = !DILocation(line: 10, column: 18, scope: !26)
!30 = !DILocation(line: 11, column: 21, scope: !26)
!31 = !DILocation(line: 11, column: 9, scope: !26)
!32 = !DILocation(line: 12, column: 5, scope: !26)
!33 = !DILocation(line: 8, column: 26, scope: !22)
!34 = !DILocation(line: 8, column: 27, scope: !22)
!35 = !DILocation(line: 8, column: 25, scope: !22)
!36 = !DILocation(line: 8, column: 5, scope: !22)
!37 = distinct !{!37, !24, !38}
!38 = !DILocation(line: 12, column: 5, scope: !17)
!39 = !DILocation(line: 14, column: 5, scope: !7)
