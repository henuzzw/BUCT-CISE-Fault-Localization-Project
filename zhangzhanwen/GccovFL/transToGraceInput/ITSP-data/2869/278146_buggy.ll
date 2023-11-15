; ModuleID = 'gcov/../WA_c/278146_buggy.c'
source_filename = "gcov/../WA_c/278146_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !17
  store i32 1, i32* %3, align 4, !dbg !18
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %34, %0
  %7 = load i32, i32* %3, align 4, !dbg !21
  %8 = load i32, i32* %2, align 4, !dbg !23
  %9 = icmp sle i32 %7, %8, !dbg !24
  br i1 %9, label %10, label %37, !dbg !25

; <label>:10:                                     ; preds = %6
  store i32 1, i32* %4, align 4, !dbg !26
  br label %11, !dbg !29

; <label>:11:                                     ; preds = %30, %10
  %12 = load i32, i32* %4, align 4, !dbg !30
  %13 = load i32, i32* %2, align 4, !dbg !32
  %14 = icmp sle i32 %12, %13, !dbg !33
  br i1 %14, label %15, label %33, !dbg !34

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !35
  %17 = load i32, i32* %4, align 4, !dbg !37
  %18 = icmp sgt i32 %16, %17, !dbg !38
  br i1 %18, label %19, label %26, !dbg !39

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %2, align 4, !dbg !40
  %21 = load i32, i32* %3, align 4, !dbg !42
  %22 = sub nsw i32 %20, %21, !dbg !43
  %23 = load i32, i32* %4, align 4, !dbg !44
  %24 = add nsw i32 %22, %23, !dbg !45
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %24), !dbg !46
  br label %29, !dbg !47

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %2, align 4, !dbg !48
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %27), !dbg !50
  br label %29

; <label>:29:                                     ; preds = %26, %19
  br label %30, !dbg !37

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %4, align 4, !dbg !51
  %32 = add nsw i32 %31, 1, !dbg !52
  store i32 %32, i32* %4, align 4, !dbg !53
  br label %11, !dbg !54, !llvm.loop !55

; <label>:33:                                     ; preds = %11
  br label %34, !dbg !57

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %3, align 4, !dbg !58
  %36 = add nsw i32 %35, 1, !dbg !59
  store i32 %36, i32* %3, align 4, !dbg !60
  br label %6, !dbg !61, !llvm.loop !62

; <label>:37:                                     ; preds = %6
  ret i32 0, !dbg !64
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
!1 = !DIFile(filename: "gcov/../WA_c/278146_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2869")
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
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocation(line: 7, column: 5, scope: !7)
!18 = !DILocation(line: 8, column: 11, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!20 = !DILocation(line: 8, column: 10, scope: !19)
!21 = !DILocation(line: 8, column: 15, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!23 = !DILocation(line: 8, column: 18, scope: !22)
!24 = !DILocation(line: 8, column: 16, scope: !22)
!25 = !DILocation(line: 8, column: 5, scope: !19)
!26 = !DILocation(line: 10, column: 15, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 9)
!28 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 5)
!29 = !DILocation(line: 10, column: 14, scope: !27)
!30 = !DILocation(line: 10, column: 19, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 9)
!32 = !DILocation(line: 10, column: 22, scope: !31)
!33 = !DILocation(line: 10, column: 20, scope: !31)
!34 = !DILocation(line: 10, column: 9, scope: !27)
!35 = !DILocation(line: 11, column: 17, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 11, column: 17)
!37 = !DILocation(line: 11, column: 19, scope: !36)
!38 = !DILocation(line: 11, column: 18, scope: !36)
!39 = !DILocation(line: 11, column: 17, scope: !31)
!40 = !DILocation(line: 13, column: 30, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 13)
!42 = !DILocation(line: 13, column: 32, scope: !41)
!43 = !DILocation(line: 13, column: 31, scope: !41)
!44 = !DILocation(line: 13, column: 34, scope: !41)
!45 = !DILocation(line: 13, column: 33, scope: !41)
!46 = !DILocation(line: 13, column: 17, scope: !41)
!47 = !DILocation(line: 14, column: 13, scope: !41)
!48 = !DILocation(line: 17, column: 32, scope: !49)
!49 = distinct !DILexicalBlock(scope: !36, file: !1, line: 16, column: 13)
!50 = !DILocation(line: 17, column: 17, scope: !49)
!51 = !DILocation(line: 10, column: 27, scope: !31)
!52 = !DILocation(line: 10, column: 28, scope: !31)
!53 = !DILocation(line: 10, column: 26, scope: !31)
!54 = !DILocation(line: 10, column: 9, scope: !31)
!55 = distinct !{!55, !34, !56}
!56 = !DILocation(line: 18, column: 13, scope: !27)
!57 = !DILocation(line: 20, column: 5, scope: !28)
!58 = !DILocation(line: 8, column: 23, scope: !22)
!59 = !DILocation(line: 8, column: 24, scope: !22)
!60 = !DILocation(line: 8, column: 22, scope: !22)
!61 = !DILocation(line: 8, column: 5, scope: !22)
!62 = distinct !{!62, !25, !63}
!63 = !DILocation(line: 20, column: 5, scope: !19)
!64 = !DILocation(line: 22, column: 5, scope: !7)
