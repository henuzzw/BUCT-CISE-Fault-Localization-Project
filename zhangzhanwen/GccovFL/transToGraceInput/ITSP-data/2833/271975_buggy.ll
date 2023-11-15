; ModuleID = 'gcov/../WA_c/271975_buggy.c'
source_filename = "gcov/../WA_c/271975_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Number of possible triangles is %d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !21
  store i32 0, i32* %6, align 4, !dbg !22
  store i32 1, i32* %3, align 4, !dbg !23
  store i32 1, i32* %4, align 4, !dbg !24
  store i32 1, i32* %5, align 4, !dbg !25
  br label %8, !dbg !26

; <label>:8:                                      ; preds = %38, %0
  %9 = load i32, i32* %3, align 4, !dbg !27
  %10 = load i32, i32* %2, align 4, !dbg !28
  %11 = icmp sle i32 %9, %10, !dbg !29
  br i1 %11, label %12, label %41, !dbg !26

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !30
  br label %13, !dbg !32

; <label>:13:                                     ; preds = %35, %12
  %14 = load i32, i32* %4, align 4, !dbg !33
  %15 = load i32, i32* %3, align 4, !dbg !34
  %16 = icmp sle i32 %14, %15, !dbg !35
  br i1 %16, label %17, label %38, !dbg !32

; <label>:17:                                     ; preds = %13
  store i32 1, i32* %5, align 4, !dbg !36
  br label %18, !dbg !38

; <label>:18:                                     ; preds = %30, %17
  %19 = load i32, i32* %5, align 4, !dbg !39
  %20 = load i32, i32* %4, align 4, !dbg !40
  %21 = icmp sle i32 %19, %20, !dbg !41
  br i1 %21, label %22, label %28, !dbg !42

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %3, align 4, !dbg !43
  %24 = load i32, i32* %5, align 4, !dbg !44
  %25 = load i32, i32* %4, align 4, !dbg !45
  %26 = add nsw i32 %24, %25, !dbg !46
  %27 = icmp slt i32 %23, %26, !dbg !47
  br label %28

; <label>:28:                                     ; preds = %22, %18
  %29 = phi i1 [ false, %18 ], [ %27, %22 ]
  br i1 %29, label %30, label %35, !dbg !38

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %6, align 4, !dbg !48
  %32 = add nsw i32 %31, 1, !dbg !50
  store i32 %32, i32* %6, align 4, !dbg !51
  %33 = load i32, i32* %5, align 4, !dbg !52
  %34 = add nsw i32 %33, 1, !dbg !53
  store i32 %34, i32* %5, align 4, !dbg !54
  br label %18, !dbg !38, !llvm.loop !55

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %4, align 4, !dbg !57
  %37 = add nsw i32 %36, 1, !dbg !58
  store i32 %37, i32* %4, align 4, !dbg !59
  br label %13, !dbg !32, !llvm.loop !60

; <label>:38:                                     ; preds = %13
  %39 = load i32, i32* %3, align 4, !dbg !62
  %40 = add nsw i32 %39, 1, !dbg !63
  store i32 %40, i32* %3, align 4, !dbg !64
  br label %8, !dbg !26, !llvm.loop !65

; <label>:41:                                     ; preds = %8
  %42 = load i32, i32* %6, align 4, !dbg !67
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %42), !dbg !68
  ret i32 0, !dbg !69
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
!1 = !DIFile(filename: "gcov/../WA_c/271975_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 6, scope: !7)
!23 = !DILocation(line: 8, column: 6, scope: !7)
!24 = !DILocation(line: 9, column: 6, scope: !7)
!25 = !DILocation(line: 10, column: 6, scope: !7)
!26 = !DILocation(line: 11, column: 5, scope: !7)
!27 = !DILocation(line: 11, column: 11, scope: !7)
!28 = !DILocation(line: 11, column: 14, scope: !7)
!29 = !DILocation(line: 11, column: 12, scope: !7)
!30 = !DILocation(line: 13, column: 10, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 5)
!32 = !DILocation(line: 14, column: 9, scope: !31)
!33 = !DILocation(line: 14, column: 15, scope: !31)
!34 = !DILocation(line: 14, column: 18, scope: !31)
!35 = !DILocation(line: 14, column: 16, scope: !31)
!36 = !DILocation(line: 16, column: 14, scope: !37)
!37 = distinct !DILexicalBlock(scope: !31, file: !1, line: 15, column: 9)
!38 = !DILocation(line: 17, column: 13, scope: !37)
!39 = !DILocation(line: 17, column: 19, scope: !37)
!40 = !DILocation(line: 17, column: 22, scope: !37)
!41 = !DILocation(line: 17, column: 20, scope: !37)
!42 = !DILocation(line: 17, column: 23, scope: !37)
!43 = !DILocation(line: 17, column: 25, scope: !37)
!44 = !DILocation(line: 17, column: 27, scope: !37)
!45 = !DILocation(line: 17, column: 29, scope: !37)
!46 = !DILocation(line: 17, column: 28, scope: !37)
!47 = !DILocation(line: 17, column: 26, scope: !37)
!48 = !DILocation(line: 19, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !37, file: !1, line: 18, column: 13)
!50 = !DILocation(line: 19, column: 20, scope: !49)
!51 = !DILocation(line: 19, column: 18, scope: !49)
!52 = !DILocation(line: 21, column: 19, scope: !49)
!53 = !DILocation(line: 21, column: 20, scope: !49)
!54 = !DILocation(line: 21, column: 18, scope: !49)
!55 = distinct !{!55, !38, !56}
!56 = !DILocation(line: 22, column: 13, scope: !37)
!57 = !DILocation(line: 23, column: 15, scope: !37)
!58 = !DILocation(line: 23, column: 16, scope: !37)
!59 = !DILocation(line: 23, column: 14, scope: !37)
!60 = distinct !{!60, !32, !61}
!61 = !DILocation(line: 24, column: 9, scope: !31)
!62 = !DILocation(line: 25, column: 11, scope: !31)
!63 = !DILocation(line: 25, column: 12, scope: !31)
!64 = !DILocation(line: 25, column: 10, scope: !31)
!65 = distinct !{!65, !26, !66}
!66 = !DILocation(line: 27, column: 5, scope: !7)
!67 = !DILocation(line: 30, column: 49, scope: !7)
!68 = !DILocation(line: 30, column: 5, scope: !7)
!69 = !DILocation(line: 32, column: 5, scope: !7)
