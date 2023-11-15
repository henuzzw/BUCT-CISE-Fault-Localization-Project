; ModuleID = 'gcov/../WA_c/271671_buggy.c'
source_filename = "gcov/../WA_c/271671_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Reverse of %d is %d\00", align 1

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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %4, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !19
  %7 = load i32, i32* %2, align 4, !dbg !20
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %7), !dbg !21
  br label %9, !dbg !22

; <label>:9:                                      ; preds = %12, %0
  %10 = load i32, i32* %2, align 4, !dbg !23
  %11 = icmp ne i32 %10, 0, !dbg !23
  br i1 %11, label %12, label %21, !dbg !22

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %2, align 4, !dbg !24
  %14 = srem i32 %13, 10, !dbg !26
  store i32 %14, i32* %3, align 4, !dbg !27
  %15 = load i32, i32* %4, align 4, !dbg !28
  %16 = mul nsw i32 %15, 10, !dbg !29
  %17 = load i32, i32* %3, align 4, !dbg !30
  %18 = add nsw i32 %16, %17, !dbg !31
  store i32 %18, i32* %4, align 4, !dbg !32
  %19 = load i32, i32* %2, align 4, !dbg !33
  %20 = sdiv i32 %19, 10, !dbg !34
  store i32 %20, i32* %2, align 4, !dbg !35
  br label %9, !dbg !22, !llvm.loop !36

; <label>:21:                                     ; preds = %9
  %22 = load i32, i32* %5, align 4, !dbg !38
  %23 = load i32, i32* %4, align 4, !dbg !39
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %22, i32 %23), !dbg !40
  ret i32 0, !dbg !41
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
!1 = !DIFile(filename: "gcov/../WA_c/271671_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2831")
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
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "e", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 17, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 7, column: 18, scope: !7)
!21 = !DILocation(line: 7, column: 5, scope: !7)
!22 = !DILocation(line: 8, column: 5, scope: !7)
!23 = !DILocation(line: 8, column: 11, scope: !7)
!24 = !DILocation(line: 10, column: 11, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 5)
!26 = !DILocation(line: 10, column: 12, scope: !25)
!27 = !DILocation(line: 10, column: 10, scope: !25)
!28 = !DILocation(line: 11, column: 11, scope: !25)
!29 = !DILocation(line: 11, column: 12, scope: !25)
!30 = !DILocation(line: 11, column: 16, scope: !25)
!31 = !DILocation(line: 11, column: 15, scope: !25)
!32 = !DILocation(line: 11, column: 10, scope: !25)
!33 = !DILocation(line: 12, column: 11, scope: !25)
!34 = !DILocation(line: 12, column: 12, scope: !25)
!35 = !DILocation(line: 12, column: 10, scope: !25)
!36 = distinct !{!36, !22, !37}
!37 = !DILocation(line: 13, column: 5, scope: !7)
!38 = !DILocation(line: 14, column: 34, scope: !7)
!39 = !DILocation(line: 14, column: 36, scope: !7)
!40 = !DILocation(line: 14, column: 5, scope: !7)
!41 = !DILocation(line: 15, column: 5, scope: !7)
