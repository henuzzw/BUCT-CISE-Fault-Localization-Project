; ModuleID = 'gcov/../WA_c/505916_buggy.c'
source_filename = "gcov/../WA_c/505916_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

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
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !19
  %7 = load i32, i32* %2, align 4, !dbg !20
  %8 = add nsw i32 %7, 1, !dbg !21
  store i32 %8, i32* %5, align 4, !dbg !22
  %9 = load i32, i32* %2, align 4, !dbg !23
  %10 = icmp eq i32 %9, 1, !dbg !25
  br i1 %10, label %11, label %13, !dbg !26

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !27
  br label %40, !dbg !27

; <label>:13:                                     ; preds = %0
  store i32 1, i32* %3, align 4, !dbg !28
  br label %14, !dbg !31

; <label>:14:                                     ; preds = %34, %13
  %15 = load i32, i32* %5, align 4, !dbg !32
  %16 = load i32, i32* %2, align 4, !dbg !36
  %17 = icmp sgt i32 %15, %16, !dbg !37
  br i1 %17, label %18, label %24, !dbg !38

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %5, align 4, !dbg !39
  %20 = load i32, i32* %2, align 4, !dbg !40
  %21 = sub nsw i32 %19, %20, !dbg !41
  %22 = mul nsw i32 2, %21, !dbg !42
  %23 = sub nsw i32 %22, 1, !dbg !43
  store i32 %23, i32* %5, align 4, !dbg !44
  br label %27, !dbg !45

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %5, align 4, !dbg !46
  %26 = mul nsw i32 %25, 2, !dbg !47
  store i32 %26, i32* %5, align 4, !dbg !48
  br label %27

; <label>:27:                                     ; preds = %24, %18
  %28 = load i32, i32* %5, align 4, !dbg !49
  %29 = load i32, i32* %2, align 4, !dbg !51
  %30 = add nsw i32 %29, 1, !dbg !52
  %31 = icmp eq i32 %28, %30, !dbg !53
  br i1 %31, label %32, label %33, !dbg !54

; <label>:32:                                     ; preds = %27
  br label %37, !dbg !55

; <label>:33:                                     ; preds = %27
  br label %34, !dbg !56

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %3, align 4, !dbg !57
  %36 = add nsw i32 %35, 1, !dbg !57
  store i32 %36, i32* %3, align 4, !dbg !57
  br label %14, !dbg !58, !llvm.loop !59

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %3, align 4, !dbg !62
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %38), !dbg !63
  br label %40

; <label>:40:                                     ; preds = %37, %11
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
!1 = !DIFile(filename: "gcov/../WA_c/505916_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1335")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 6, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 3, type: !10)
!14 = !DILocation(line: 3, column: 8, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 10, scope: !7)
!17 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 3, type: !10)
!18 = !DILocation(line: 3, column: 12, scope: !7)
!19 = !DILocation(line: 4, column: 2, scope: !7)
!20 = !DILocation(line: 5, column: 4, scope: !7)
!21 = !DILocation(line: 5, column: 5, scope: !7)
!22 = !DILocation(line: 5, column: 3, scope: !7)
!23 = !DILocation(line: 6, column: 5, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!25 = !DILocation(line: 6, column: 6, scope: !24)
!26 = !DILocation(line: 6, column: 5, scope: !7)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = !DILocation(line: 10, column: 8, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 3)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 7)
!31 = !DILocation(line: 10, column: 7, scope: !29)
!32 = !DILocation(line: 11, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 7)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 18)
!35 = distinct !DILexicalBlock(scope: !29, file: !1, line: 10, column: 3)
!36 = !DILocation(line: 11, column: 9, scope: !33)
!37 = !DILocation(line: 11, column: 8, scope: !33)
!38 = !DILocation(line: 11, column: 7, scope: !34)
!39 = !DILocation(line: 12, column: 10, scope: !33)
!40 = !DILocation(line: 12, column: 12, scope: !33)
!41 = !DILocation(line: 12, column: 11, scope: !33)
!42 = !DILocation(line: 12, column: 8, scope: !33)
!43 = !DILocation(line: 12, column: 15, scope: !33)
!44 = !DILocation(line: 12, column: 6, scope: !33)
!45 = !DILocation(line: 12, column: 5, scope: !33)
!46 = !DILocation(line: 14, column: 7, scope: !33)
!47 = !DILocation(line: 14, column: 8, scope: !33)
!48 = !DILocation(line: 14, column: 6, scope: !33)
!49 = !DILocation(line: 15, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !34, file: !1, line: 15, column: 7)
!51 = !DILocation(line: 15, column: 10, scope: !50)
!52 = !DILocation(line: 15, column: 11, scope: !50)
!53 = !DILocation(line: 15, column: 8, scope: !50)
!54 = !DILocation(line: 15, column: 7, scope: !34)
!55 = !DILocation(line: 16, column: 5, scope: !50)
!56 = !DILocation(line: 17, column: 3, scope: !34)
!57 = !DILocation(line: 10, column: 14, scope: !35)
!58 = !DILocation(line: 10, column: 3, scope: !35)
!59 = distinct !{!59, !60, !61}
!60 = !DILocation(line: 10, column: 3, scope: !29)
!61 = !DILocation(line: 17, column: 3, scope: !29)
!62 = !DILocation(line: 18, column: 16, scope: !30)
!63 = !DILocation(line: 18, column: 3, scope: !30)
!64 = !DILocation(line: 20, column: 2, scope: !7)
