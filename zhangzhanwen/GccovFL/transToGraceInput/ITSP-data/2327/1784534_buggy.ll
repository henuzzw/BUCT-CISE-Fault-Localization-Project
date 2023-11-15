; ModuleID = 'gcov/../WA_c/1784534_buggy.c'
source_filename = "gcov/../WA_c/1784534_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Y\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"N\0A\00", align 1

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
  br label %7, !dbg !21

; <label>:7:                                      ; preds = %49, %0
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !22
  %9 = xor i32 %8, -1, !dbg !23
  %10 = icmp ne i32 %9, 0, !dbg !23
  br i1 %10, label %11, label %50, !dbg !21

; <label>:11:                                     ; preds = %7
  store i32 0, i32* %5, align 4, !dbg !24
  %12 = load i32, i32* %5, align 4, !dbg !26
  %13 = add nsw i32 %12, 1, !dbg !26
  store i32 %13, i32* %5, align 4, !dbg !26
  %14 = load i32, i32* %2, align 4, !dbg !27
  store i32 %14, i32* %6, align 4, !dbg !28
  store i32 0, i32* %3, align 4, !dbg !29
  br label %15, !dbg !31

; <label>:15:                                     ; preds = %38, %11
  %16 = load i32, i32* %3, align 4, !dbg !32
  %17 = icmp slt i32 %16, 7, !dbg !34
  br i1 %17, label %18, label %41, !dbg !35

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4, !dbg !36
  %20 = srem i32 %19, 10, !dbg !38
  store i32 %20, i32* %4, align 4, !dbg !39
  %21 = load i32, i32* %2, align 4, !dbg !40
  %22 = sdiv i32 %21, 10, !dbg !41
  store i32 %22, i32* %2, align 4, !dbg !42
  %23 = load i32, i32* %4, align 4, !dbg !43
  %24 = load i32, i32* %4, align 4, !dbg !44
  %25 = mul nsw i32 %23, %24, !dbg !45
  %26 = load i32, i32* %4, align 4, !dbg !46
  %27 = mul nsw i32 %25, %26, !dbg !47
  %28 = load i32, i32* %4, align 4, !dbg !48
  %29 = mul nsw i32 %27, %28, !dbg !49
  %30 = load i32, i32* %4, align 4, !dbg !50
  %31 = mul nsw i32 %29, %30, !dbg !51
  %32 = load i32, i32* %4, align 4, !dbg !52
  %33 = mul nsw i32 %31, %32, !dbg !53
  %34 = load i32, i32* %4, align 4, !dbg !54
  %35 = mul nsw i32 %33, %34, !dbg !55
  %36 = load i32, i32* %5, align 4, !dbg !56
  %37 = add nsw i32 %36, %35, !dbg !56
  store i32 %37, i32* %5, align 4, !dbg !56
  br label %38, !dbg !57

; <label>:38:                                     ; preds = %18
  %39 = load i32, i32* %3, align 4, !dbg !58
  %40 = add nsw i32 %39, 1, !dbg !58
  store i32 %40, i32* %3, align 4, !dbg !58
  br label %15, !dbg !59, !llvm.loop !60

; <label>:41:                                     ; preds = %15
  %42 = load i32, i32* %5, align 4, !dbg !62
  %43 = load i32, i32* %6, align 4, !dbg !64
  %44 = icmp eq i32 %42, %43, !dbg !65
  br i1 %44, label %45, label %47, !dbg !66

; <label>:45:                                     ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !67
  br label %49, !dbg !67

; <label>:47:                                     ; preds = %41
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !68
  br label %49

; <label>:49:                                     ; preds = %47, %45
  br label %7, !dbg !21, !llvm.loop !69

; <label>:50:                                     ; preds = %7
  ret i32 0, !dbg !71
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
!1 = !DIFile(filename: "gcov/../WA_c/1784534_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 9, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 12, scope: !7)
!15 = !DILocalVariable(name: "z", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 15, scope: !7)
!17 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 6, type: !10)
!18 = !DILocation(line: 6, column: 18, scope: !7)
!19 = !DILocalVariable(name: "B", scope: !7, file: !1, line: 6, type: !10)
!20 = !DILocation(line: 6, column: 23, scope: !7)
!21 = !DILocation(line: 7, column: 5, scope: !7)
!22 = !DILocation(line: 7, column: 12, scope: !7)
!23 = !DILocation(line: 7, column: 11, scope: !7)
!24 = !DILocation(line: 9, column: 13, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!26 = !DILocation(line: 10, column: 12, scope: !25)
!27 = !DILocation(line: 11, column: 13, scope: !25)
!28 = !DILocation(line: 11, column: 11, scope: !25)
!29 = !DILocation(line: 12, column: 15, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 9)
!31 = !DILocation(line: 12, column: 13, scope: !30)
!32 = !DILocation(line: 12, column: 20, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 9)
!34 = !DILocation(line: 12, column: 22, scope: !33)
!35 = !DILocation(line: 12, column: 9, scope: !30)
!36 = !DILocation(line: 14, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 13, column: 9)
!38 = !DILocation(line: 14, column: 19, scope: !37)
!39 = !DILocation(line: 14, column: 15, scope: !37)
!40 = !DILocation(line: 15, column: 17, scope: !37)
!41 = !DILocation(line: 15, column: 19, scope: !37)
!42 = !DILocation(line: 15, column: 15, scope: !37)
!43 = !DILocation(line: 16, column: 20, scope: !37)
!44 = !DILocation(line: 16, column: 24, scope: !37)
!45 = !DILocation(line: 16, column: 22, scope: !37)
!46 = !DILocation(line: 16, column: 28, scope: !37)
!47 = !DILocation(line: 16, column: 26, scope: !37)
!48 = !DILocation(line: 16, column: 32, scope: !37)
!49 = !DILocation(line: 16, column: 30, scope: !37)
!50 = !DILocation(line: 16, column: 36, scope: !37)
!51 = !DILocation(line: 16, column: 34, scope: !37)
!52 = !DILocation(line: 16, column: 40, scope: !37)
!53 = !DILocation(line: 16, column: 38, scope: !37)
!54 = !DILocation(line: 16, column: 44, scope: !37)
!55 = !DILocation(line: 16, column: 42, scope: !37)
!56 = !DILocation(line: 16, column: 17, scope: !37)
!57 = !DILocation(line: 17, column: 9, scope: !37)
!58 = !DILocation(line: 12, column: 28, scope: !33)
!59 = !DILocation(line: 12, column: 9, scope: !33)
!60 = distinct !{!60, !35, !61}
!61 = !DILocation(line: 17, column: 9, scope: !30)
!62 = !DILocation(line: 18, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !25, file: !1, line: 18, column: 12)
!64 = !DILocation(line: 18, column: 19, scope: !63)
!65 = !DILocation(line: 18, column: 16, scope: !63)
!66 = !DILocation(line: 18, column: 12, scope: !25)
!67 = !DILocation(line: 18, column: 22, scope: !63)
!68 = !DILocation(line: 19, column: 14, scope: !63)
!69 = distinct !{!69, !21, !70}
!70 = !DILocation(line: 20, column: 5, scope: !7)
!71 = !DILocation(line: 21, column: 5, scope: !7)
