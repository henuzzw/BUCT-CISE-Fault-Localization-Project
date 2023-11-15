; ModuleID = 'gcov/../WA_c/277711_buggy.c'
source_filename = "gcov/../WA_c/277711_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1

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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !17
  store i32 1, i32* %2, align 4, !dbg !18
  store i32 5, i32* %3, align 4, !dbg !19
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %37, %0
  %7 = load i32, i32* %2, align 4, !dbg !21
  %8 = load i32, i32* %4, align 4, !dbg !22
  %9 = icmp sle i32 %7, %8, !dbg !23
  br i1 %9, label %10, label %40, !dbg !20

; <label>:10:                                     ; preds = %6
  br label %11, !dbg !24

; <label>:11:                                     ; preds = %20, %10
  %12 = load i32, i32* %3, align 4, !dbg !26
  %13 = icmp sgt i32 %12, 0, !dbg !27
  br i1 %13, label %14, label %18, !dbg !28

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !29
  %16 = load i32, i32* %2, align 4, !dbg !30
  %17 = icmp sgt i32 %15, %16, !dbg !31
  br label %18

; <label>:18:                                     ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %25, !dbg !24

; <label>:20:                                     ; preds = %18
  %21 = load i32, i32* %3, align 4, !dbg !32
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %21), !dbg !34
  %23 = load i32, i32* %3, align 4, !dbg !35
  %24 = sub nsw i32 %23, 1, !dbg !36
  store i32 %24, i32* %3, align 4, !dbg !37
  br label %11, !dbg !24, !llvm.loop !38

; <label>:25:                                     ; preds = %18
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !40
  %27 = load i32, i32* %2, align 4, !dbg !41
  %28 = sub nsw i32 %27, 1, !dbg !42
  store i32 %28, i32* %3, align 4, !dbg !43
  br label %29, !dbg !44

; <label>:29:                                     ; preds = %32, %25
  %30 = load i32, i32* %3, align 4, !dbg !45
  %31 = icmp sgt i32 %30, 0, !dbg !46
  br i1 %31, label %32, label %37, !dbg !44

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %3, align 4, !dbg !47
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %33), !dbg !49
  %35 = load i32, i32* %3, align 4, !dbg !50
  %36 = sub nsw i32 %35, 1, !dbg !51
  store i32 %36, i32* %3, align 4, !dbg !52
  br label %29, !dbg !44, !llvm.loop !53

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %2, align 4, !dbg !55
  %39 = add nsw i32 %38, 1, !dbg !56
  store i32 %39, i32* %2, align 4, !dbg !57
  store i32 5, i32* %3, align 4, !dbg !58
  br label %6, !dbg !20, !llvm.loop !59

; <label>:40:                                     ; preds = %6
  ret i32 0, !dbg !61
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
!1 = !DIFile(filename: "gcov/../WA_c/277711_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2865")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 9, scope: !7)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 11, scope: !7)
!15 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 13, scope: !7)
!17 = !DILocation(line: 8, column: 5, scope: !7)
!18 = !DILocation(line: 10, column: 6, scope: !7)
!19 = !DILocation(line: 12, column: 6, scope: !7)
!20 = !DILocation(line: 14, column: 5, scope: !7)
!21 = !DILocation(line: 14, column: 11, scope: !7)
!22 = !DILocation(line: 14, column: 14, scope: !7)
!23 = !DILocation(line: 14, column: 12, scope: !7)
!24 = !DILocation(line: 16, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 5)
!26 = !DILocation(line: 16, column: 15, scope: !25)
!27 = !DILocation(line: 16, column: 16, scope: !25)
!28 = !DILocation(line: 16, column: 18, scope: !25)
!29 = !DILocation(line: 16, column: 20, scope: !25)
!30 = !DILocation(line: 16, column: 22, scope: !25)
!31 = !DILocation(line: 16, column: 21, scope: !25)
!32 = !DILocation(line: 18, column: 25, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 17, column: 9)
!34 = !DILocation(line: 18, column: 13, scope: !33)
!35 = !DILocation(line: 20, column: 15, scope: !33)
!36 = !DILocation(line: 20, column: 16, scope: !33)
!37 = !DILocation(line: 20, column: 14, scope: !33)
!38 = distinct !{!38, !24, !39}
!39 = !DILocation(line: 21, column: 9, scope: !25)
!40 = !DILocation(line: 22, column: 9, scope: !25)
!41 = !DILocation(line: 24, column: 11, scope: !25)
!42 = !DILocation(line: 24, column: 12, scope: !25)
!43 = !DILocation(line: 24, column: 10, scope: !25)
!44 = !DILocation(line: 26, column: 9, scope: !25)
!45 = !DILocation(line: 26, column: 15, scope: !25)
!46 = !DILocation(line: 26, column: 16, scope: !25)
!47 = !DILocation(line: 28, column: 25, scope: !48)
!48 = distinct !DILexicalBlock(scope: !25, file: !1, line: 27, column: 9)
!49 = !DILocation(line: 28, column: 13, scope: !48)
!50 = !DILocation(line: 30, column: 15, scope: !48)
!51 = !DILocation(line: 30, column: 16, scope: !48)
!52 = !DILocation(line: 30, column: 14, scope: !48)
!53 = distinct !{!53, !44, !54}
!54 = !DILocation(line: 31, column: 9, scope: !25)
!55 = !DILocation(line: 32, column: 11, scope: !25)
!56 = !DILocation(line: 32, column: 12, scope: !25)
!57 = !DILocation(line: 32, column: 10, scope: !25)
!58 = !DILocation(line: 34, column: 10, scope: !25)
!59 = distinct !{!59, !20, !60}
!60 = !DILocation(line: 36, column: 5, scope: !7)
!61 = !DILocation(line: 37, column: 5, scope: !7)
