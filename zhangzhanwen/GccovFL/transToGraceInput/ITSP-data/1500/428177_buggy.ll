; ModuleID = 'gcov/../WA_c/428177_buggy.c'
source_filename = "gcov/../WA_c/428177_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 1, i32* %7, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 1, i32* %8, align 4, !dbg !24
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !25
  br label %10, !dbg !26

; <label>:10:                                     ; preds = %41, %0
  %11 = load i32, i32* %7, align 4, !dbg !28
  %12 = load i32, i32* %2, align 4, !dbg !30
  %13 = icmp slt i32 %11, %12, !dbg !31
  br i1 %13, label %14, label %44, !dbg !32

; <label>:14:                                     ; preds = %10
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %6), !dbg !33
  store i32 0, i32* %5, align 4, !dbg !35
  store i32 1, i32* %4, align 4, !dbg !37
  br label %16, !dbg !38

; <label>:16:                                     ; preds = %31, %14
  %17 = load i32, i32* %4, align 4, !dbg !39
  %18 = load i32, i32* %6, align 4, !dbg !41
  %19 = icmp sle i32 %17, %18, !dbg !42
  br i1 %19, label %20, label %34, !dbg !43

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %4, align 4, !dbg !44
  %22 = load i32, i32* %4, align 4, !dbg !45
  %23 = add nsw i32 %22, 1, !dbg !46
  %24 = mul nsw i32 %21, %23, !dbg !47
  %25 = load i32, i32* %4, align 4, !dbg !48
  %26 = add nsw i32 %25, 2, !dbg !49
  %27 = mul nsw i32 %24, %26, !dbg !50
  %28 = sdiv i32 %27, 2, !dbg !51
  %29 = load i32, i32* %5, align 4, !dbg !52
  %30 = add nsw i32 %29, %28, !dbg !52
  store i32 %30, i32* %5, align 4, !dbg !52
  br label %31, !dbg !53

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %4, align 4, !dbg !54
  %33 = add nsw i32 %32, 1, !dbg !54
  store i32 %33, i32* %4, align 4, !dbg !54
  br label %16, !dbg !55, !llvm.loop !56

; <label>:34:                                     ; preds = %16
  %35 = load i32, i32* %8, align 4, !dbg !58
  %36 = load i32, i32* %6, align 4, !dbg !59
  %37 = load i32, i32* %5, align 4, !dbg !60
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %35, i32 %36, i32 %37), !dbg !61
  %39 = load i32, i32* %8, align 4, !dbg !62
  %40 = add nsw i32 %39, 1, !dbg !62
  store i32 %40, i32* %8, align 4, !dbg !62
  br label %41, !dbg !63

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %7, align 4, !dbg !64
  %43 = add nsw i32 %42, 1, !dbg !64
  store i32 %43, i32* %7, align 4, !dbg !64
  br label %10, !dbg !65, !llvm.loop !66

; <label>:44:                                     ; preds = %10
  ret i32 0, !dbg !68
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
!1 = !DIFile(filename: "gcov/../WA_c/428177_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1500")
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
!13 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 3, type: !10)
!14 = !DILocation(line: 3, column: 8, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 10, scope: !7)
!17 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 3, type: !10)
!18 = !DILocation(line: 3, column: 12, scope: !7)
!19 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 3, type: !10)
!20 = !DILocation(line: 3, column: 16, scope: !7)
!21 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 3, type: !10)
!22 = !DILocation(line: 3, column: 18, scope: !7)
!23 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 3, type: !10)
!24 = !DILocation(line: 3, column: 22, scope: !7)
!25 = !DILocation(line: 4, column: 2, scope: !7)
!26 = !DILocation(line: 5, column: 6, scope: !27)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 2)
!28 = !DILocation(line: 5, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !27, file: !1, line: 5, column: 2)
!30 = !DILocation(line: 5, column: 11, scope: !29)
!31 = !DILocation(line: 5, column: 10, scope: !29)
!32 = !DILocation(line: 5, column: 2, scope: !27)
!33 = !DILocation(line: 6, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 5, column: 19)
!35 = !DILocation(line: 7, column: 10, scope: !36)
!36 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 3)
!37 = !DILocation(line: 7, column: 14, scope: !36)
!38 = !DILocation(line: 7, column: 7, scope: !36)
!39 = !DILocation(line: 7, column: 18, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 7, column: 3)
!41 = !DILocation(line: 7, column: 21, scope: !40)
!42 = !DILocation(line: 7, column: 19, scope: !40)
!43 = !DILocation(line: 7, column: 3, scope: !36)
!44 = !DILocation(line: 8, column: 9, scope: !40)
!45 = !DILocation(line: 8, column: 12, scope: !40)
!46 = !DILocation(line: 8, column: 13, scope: !40)
!47 = !DILocation(line: 8, column: 10, scope: !40)
!48 = !DILocation(line: 8, column: 18, scope: !40)
!49 = !DILocation(line: 8, column: 19, scope: !40)
!50 = !DILocation(line: 8, column: 16, scope: !40)
!51 = !DILocation(line: 8, column: 22, scope: !40)
!52 = !DILocation(line: 8, column: 7, scope: !40)
!53 = !DILocation(line: 8, column: 4, scope: !40)
!54 = !DILocation(line: 7, column: 25, scope: !40)
!55 = !DILocation(line: 7, column: 3, scope: !40)
!56 = distinct !{!56, !43, !57}
!57 = !DILocation(line: 8, column: 23, scope: !36)
!58 = !DILocation(line: 10, column: 23, scope: !34)
!59 = !DILocation(line: 10, column: 25, scope: !34)
!60 = !DILocation(line: 10, column: 27, scope: !34)
!61 = !DILocation(line: 10, column: 3, scope: !34)
!62 = !DILocation(line: 11, column: 4, scope: !34)
!63 = !DILocation(line: 12, column: 2, scope: !34)
!64 = !DILocation(line: 5, column: 15, scope: !29)
!65 = !DILocation(line: 5, column: 2, scope: !29)
!66 = distinct !{!66, !32, !67}
!67 = !DILocation(line: 12, column: 2, scope: !27)
!68 = !DILocation(line: 13, column: 2, scope: !7)
