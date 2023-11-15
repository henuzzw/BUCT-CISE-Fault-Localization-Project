; ModuleID = 'gcov/../WA_c/271056_buggy.c'
source_filename = "gcov/../WA_c/271056_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Leap Year\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Not Leap Year\00", align 1

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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %2, align 4, !dbg !19
  %7 = srem i32 %6, 4, !dbg !20
  store i32 %7, i32* %3, align 4, !dbg !21
  %8 = load i32, i32* %2, align 4, !dbg !22
  %9 = srem i32 %8, 100, !dbg !23
  store i32 %9, i32* %4, align 4, !dbg !24
  %10 = load i32, i32* %2, align 4, !dbg !25
  %11 = srem i32 %10, 400, !dbg !26
  store i32 %11, i32* %5, align 4, !dbg !27
  %12 = load i32, i32* %3, align 4, !dbg !28
  %13 = icmp eq i32 %12, 0, !dbg !30
  br i1 %13, label %14, label %28, !dbg !31

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %4, align 4, !dbg !32
  %16 = icmp eq i32 %15, 0, !dbg !35
  br i1 %16, label %17, label %25, !dbg !36

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %5, align 4, !dbg !37
  %19 = icmp eq i32 %18, 0, !dbg !40
  br i1 %19, label %20, label %22, !dbg !41

; <label>:20:                                     ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !42
  br label %24, !dbg !44

; <label>:22:                                     ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !45
  br label %24

; <label>:24:                                     ; preds = %22, %20
  br label %27, !dbg !47

; <label>:25:                                     ; preds = %14
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !48
  br label %27

; <label>:27:                                     ; preds = %25, %24
  br label %30, !dbg !50

; <label>:28:                                     ; preds = %0
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !51
  br label %30

; <label>:30:                                     ; preds = %28, %27
  ret i32 0, !dbg !53
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/271056_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2824")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 9, scope: !7)
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 7, type: !10)
!14 = !DILocation(line: 7, column: 9, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 7, type: !10)
!16 = !DILocation(line: 7, column: 11, scope: !7)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 7, type: !10)
!18 = !DILocation(line: 7, column: 13, scope: !7)
!19 = !DILocation(line: 8, column: 7, scope: !7)
!20 = !DILocation(line: 8, column: 8, scope: !7)
!21 = !DILocation(line: 8, column: 6, scope: !7)
!22 = !DILocation(line: 9, column: 7, scope: !7)
!23 = !DILocation(line: 9, column: 8, scope: !7)
!24 = !DILocation(line: 9, column: 6, scope: !7)
!25 = !DILocation(line: 10, column: 7, scope: !7)
!26 = !DILocation(line: 10, column: 8, scope: !7)
!27 = !DILocation(line: 10, column: 6, scope: !7)
!28 = !DILocation(line: 12, column: 8, scope: !29)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 8)
!30 = !DILocation(line: 12, column: 9, scope: !29)
!31 = !DILocation(line: 12, column: 8, scope: !7)
!32 = !DILocation(line: 14, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 12)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 5)
!35 = !DILocation(line: 14, column: 13, scope: !33)
!36 = !DILocation(line: 14, column: 12, scope: !34)
!37 = !DILocation(line: 16, column: 16, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 16, column: 16)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 15, column: 9)
!40 = !DILocation(line: 16, column: 17, scope: !38)
!41 = !DILocation(line: 16, column: 16, scope: !39)
!42 = !DILocation(line: 18, column: 17, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 17, column: 13)
!44 = !DILocation(line: 19, column: 13, scope: !43)
!45 = !DILocation(line: 22, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !38, file: !1, line: 21, column: 13)
!47 = !DILocation(line: 24, column: 9, scope: !39)
!48 = !DILocation(line: 27, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !33, file: !1, line: 26, column: 9)
!50 = !DILocation(line: 29, column: 5, scope: !34)
!51 = !DILocation(line: 32, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !29, file: !1, line: 31, column: 5)
!53 = !DILocation(line: 36, column: 5, scope: !7)
