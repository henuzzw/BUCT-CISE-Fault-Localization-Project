; ModuleID = 'gcov/../WA_c/277692_buggy.c'
source_filename = "gcov/../WA_c/277692_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 1, i32* %3, align 4, !dbg !16
  br label %6, !dbg !17

; <label>:6:                                      ; preds = %29, %0
  %7 = load i32, i32* %3, align 4, !dbg !18
  %8 = load i32, i32* %2, align 4, !dbg !20
  %9 = icmp sle i32 %7, %8, !dbg !21
  br i1 %9, label %10, label %32, !dbg !22

; <label>:10:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !26
  store i32 5, i32* %4, align 4, !dbg !26
  br label %11, !dbg !27

; <label>:11:                                     ; preds = %24, %10
  %12 = load i32, i32* %4, align 4, !dbg !28
  %13 = icmp sge i32 %12, 1, !dbg !30
  br i1 %13, label %14, label %27, !dbg !31

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %4, align 4, !dbg !32
  %16 = load i32, i32* %3, align 4, !dbg !35
  %17 = icmp eq i32 %15, %16, !dbg !36
  br i1 %17, label %18, label %20, !dbg !37

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !38
  br label %23, !dbg !40

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4, !dbg !41
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %21), !dbg !43
  br label %23

; <label>:23:                                     ; preds = %20, %18
  br label %24, !dbg !44

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4, !dbg !45
  %26 = add nsw i32 %25, -1, !dbg !45
  store i32 %26, i32* %4, align 4, !dbg !45
  br label %11, !dbg !46, !llvm.loop !47

; <label>:27:                                     ; preds = %11
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !49
  br label %29, !dbg !50

; <label>:29:                                     ; preds = %27
  %30 = load i32, i32* %3, align 4, !dbg !51
  %31 = add nsw i32 %30, 1, !dbg !51
  store i32 %31, i32* %3, align 4, !dbg !51
  br label %6, !dbg !52, !llvm.loop !53

; <label>:32:                                     ; preds = %6
  ret i32 0, !dbg !55
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
!1 = !DIFile(filename: "gcov/../WA_c/277692_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2865")
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
!13 = !DILocation(line: 6, column: 5, scope: !7)
!14 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 7, type: !10)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!16 = !DILocation(line: 7, column: 14, scope: !15)
!17 = !DILocation(line: 7, column: 10, scope: !15)
!18 = !DILocation(line: 7, column: 19, scope: !19)
!19 = distinct !DILexicalBlock(scope: !15, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 7, column: 22, scope: !19)
!21 = !DILocation(line: 7, column: 20, scope: !19)
!22 = !DILocation(line: 7, column: 5, scope: !15)
!23 = !DILocalVariable(name: "k", scope: !24, file: !1, line: 9, type: !10)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!26 = !DILocation(line: 9, column: 18, scope: !24)
!27 = !DILocation(line: 9, column: 14, scope: !24)
!28 = !DILocation(line: 9, column: 23, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 9)
!30 = !DILocation(line: 9, column: 24, scope: !29)
!31 = !DILocation(line: 9, column: 9, scope: !24)
!32 = !DILocation(line: 11, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 17)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 10, column: 9)
!35 = !DILocation(line: 11, column: 20, scope: !33)
!36 = !DILocation(line: 11, column: 18, scope: !33)
!37 = !DILocation(line: 11, column: 17, scope: !34)
!38 = !DILocation(line: 13, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 13)
!40 = !DILocation(line: 14, column: 13, scope: !39)
!41 = !DILocation(line: 17, column: 29, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 16, column: 13)
!43 = !DILocation(line: 17, column: 17, scope: !42)
!44 = !DILocation(line: 19, column: 9, scope: !34)
!45 = !DILocation(line: 9, column: 30, scope: !29)
!46 = !DILocation(line: 9, column: 9, scope: !29)
!47 = distinct !{!47, !31, !48}
!48 = !DILocation(line: 19, column: 9, scope: !24)
!49 = !DILocation(line: 20, column: 9, scope: !25)
!50 = !DILocation(line: 21, column: 5, scope: !25)
!51 = !DILocation(line: 7, column: 26, scope: !19)
!52 = !DILocation(line: 7, column: 5, scope: !19)
!53 = distinct !{!53, !22, !54}
!54 = !DILocation(line: 21, column: 5, scope: !15)
!55 = !DILocation(line: 23, column: 5, scope: !7)
