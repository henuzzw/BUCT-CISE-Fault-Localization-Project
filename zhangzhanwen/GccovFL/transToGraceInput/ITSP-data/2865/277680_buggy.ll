; ModuleID = 'gcov/../WA_c/277680_buggy.c'
source_filename = "gcov/../WA_c/277680_buggy.c"
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
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !21
  store i32 1, i32* %6, align 4, !dbg !22
  br label %8, !dbg !24

; <label>:8:                                      ; preds = %37, %0
  %9 = load i32, i32* %6, align 4, !dbg !25
  %10 = load i32, i32* %4, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %40, !dbg !29

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %5, align 4, !dbg !30
  br label %13, !dbg !33

; <label>:13:                                     ; preds = %32, %12
  %14 = load i32, i32* %5, align 4, !dbg !34
  %15 = load i32, i32* %4, align 4, !dbg !36
  %16 = icmp sle i32 %14, %15, !dbg !37
  br i1 %16, label %17, label %35, !dbg !38

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4, !dbg !39
  %19 = load i32, i32* %6, align 4, !dbg !42
  %20 = add nsw i32 %18, %19, !dbg !43
  %21 = icmp eq i32 %20, 6, !dbg !44
  br i1 %21, label %22, label %24, !dbg !45

; <label>:22:                                     ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !46
  br label %31, !dbg !48

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %4, align 4, !dbg !49
  %26 = add nsw i32 %25, 1, !dbg !51
  %27 = load i32, i32* %5, align 4, !dbg !52
  %28 = sub nsw i32 %26, %27, !dbg !53
  store i32 %28, i32* %2, align 4, !dbg !54
  %29 = load i32, i32* %2, align 4, !dbg !55
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %29), !dbg !56
  br label %31

; <label>:31:                                     ; preds = %24, %22
  br label %32, !dbg !57

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %5, align 4, !dbg !58
  %34 = add nsw i32 %33, 1, !dbg !59
  store i32 %34, i32* %5, align 4, !dbg !60
  br label %13, !dbg !61, !llvm.loop !62

; <label>:35:                                     ; preds = %13
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !64
  br label %37, !dbg !65

; <label>:37:                                     ; preds = %35
  %38 = load i32, i32* %6, align 4, !dbg !66
  %39 = add nsw i32 %38, 1, !dbg !67
  store i32 %39, i32* %6, align 4, !dbg !68
  br label %8, !dbg !69, !llvm.loop !70

; <label>:40:                                     ; preds = %8
  ret i32 0, !dbg !72
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
!1 = !DIFile(filename: "gcov/../WA_c/277680_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2865")
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
!13 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 17, scope: !7)
!21 = !DILocation(line: 6, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 10, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 7, column: 9, scope: !23)
!25 = !DILocation(line: 7, column: 14, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 7, column: 17, scope: !26)
!28 = !DILocation(line: 7, column: 15, scope: !26)
!29 = !DILocation(line: 7, column: 5, scope: !23)
!30 = !DILocation(line: 9, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 9)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!33 = !DILocation(line: 9, column: 13, scope: !31)
!34 = !DILocation(line: 9, column: 18, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 9, column: 9)
!36 = !DILocation(line: 9, column: 21, scope: !35)
!37 = !DILocation(line: 9, column: 19, scope: !35)
!38 = !DILocation(line: 9, column: 9, scope: !31)
!39 = !DILocation(line: 11, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 16)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 9)
!42 = !DILocation(line: 11, column: 18, scope: !40)
!43 = !DILocation(line: 11, column: 17, scope: !40)
!44 = !DILocation(line: 11, column: 19, scope: !40)
!45 = !DILocation(line: 11, column: 16, scope: !41)
!46 = !DILocation(line: 13, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !40, file: !1, line: 12, column: 13)
!48 = !DILocation(line: 14, column: 13, scope: !47)
!49 = !DILocation(line: 17, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !1, line: 16, column: 13)
!51 = !DILocation(line: 17, column: 20, scope: !50)
!52 = !DILocation(line: 17, column: 23, scope: !50)
!53 = !DILocation(line: 17, column: 22, scope: !50)
!54 = !DILocation(line: 17, column: 18, scope: !50)
!55 = !DILocation(line: 18, column: 29, scope: !50)
!56 = !DILocation(line: 18, column: 17, scope: !50)
!57 = !DILocation(line: 20, column: 9, scope: !41)
!58 = !DILocation(line: 9, column: 26, scope: !35)
!59 = !DILocation(line: 9, column: 27, scope: !35)
!60 = !DILocation(line: 9, column: 25, scope: !35)
!61 = !DILocation(line: 9, column: 9, scope: !35)
!62 = distinct !{!62, !38, !63}
!63 = !DILocation(line: 20, column: 9, scope: !31)
!64 = !DILocation(line: 21, column: 9, scope: !32)
!65 = !DILocation(line: 22, column: 5, scope: !32)
!66 = !DILocation(line: 7, column: 22, scope: !26)
!67 = !DILocation(line: 7, column: 23, scope: !26)
!68 = !DILocation(line: 7, column: 21, scope: !26)
!69 = !DILocation(line: 7, column: 5, scope: !26)
!70 = distinct !{!70, !29, !71}
!71 = !DILocation(line: 22, column: 5, scope: !23)
!72 = !DILocation(line: 24, column: 5, scope: !7)
