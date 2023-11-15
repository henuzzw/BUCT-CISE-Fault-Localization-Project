; ModuleID = 'gcov/../WA_c/264115_buggy.c'
source_filename = "gcov/../WA_c/264115_buggy.c"
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
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %2, align 4, !dbg !12
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  %7 = call i32 @getchar(), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 1, i32* %3, align 4, !dbg !16
  br label %8, !dbg !17

; <label>:8:                                      ; preds = %11, %0
  %9 = load i32, i32* %2, align 4, !dbg !18
  %10 = icmp sgt i32 %9, 0, !dbg !19
  br i1 %10, label %11, label %26, !dbg !17

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %4, align 4, !dbg !22
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4), !dbg !23
  %13 = call i32 @getchar(), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !26
  %14 = load i32, i32* %4, align 4, !dbg !27
  %15 = call i32 @_ZL6getSumi(i32 %14), !dbg !28
  store i32 %15, i32* %5, align 4, !dbg !26
  %16 = load i32, i32* %3, align 4, !dbg !29
  %17 = load i32, i32* %4, align 4, !dbg !30
  %18 = load i32, i32* %5, align 4, !dbg !31
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %16, i32 %17, i32 %18), !dbg !32
  %20 = load i32, i32* %3, align 4, !dbg !33
  %21 = add nsw i32 %20, 1, !dbg !33
  store i32 %21, i32* %3, align 4, !dbg !33
  %22 = load i32, i32* %2, align 4, !dbg !34
  %23 = add nsw i32 %22, -1, !dbg !34
  store i32 %23, i32* %2, align 4, !dbg !34
  %24 = load i32, i32* %3, align 4, !dbg !35
  %25 = add nsw i32 %24, 1, !dbg !35
  store i32 %25, i32* %3, align 4, !dbg !35
  br label %8, !dbg !17, !llvm.loop !36

; <label>:26:                                     ; preds = %8
  ret i32 0, !dbg !38
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZL6getSumi(i32) #3 !dbg !39 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %3, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 1, i32* %3, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %4, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %4, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %5, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 1, i32* %5, align 4, !dbg !49
  br label %6, !dbg !50

; <label>:6:                                      ; preds = %20, %1
  %7 = load i32, i32* %3, align 4, !dbg !51
  %8 = load i32, i32* %2, align 4, !dbg !54
  %9 = icmp sle i32 %7, %8, !dbg !55
  br i1 %9, label %10, label %23, !dbg !56

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !57
  %12 = add nsw i32 %11, 1, !dbg !59
  %13 = load i32, i32* %5, align 4, !dbg !60
  %14 = add nsw i32 %13, %12, !dbg !60
  store i32 %14, i32* %5, align 4, !dbg !60
  %15 = load i32, i32* %3, align 4, !dbg !61
  %16 = load i32, i32* %5, align 4, !dbg !62
  %17 = mul nsw i32 %15, %16, !dbg !63
  %18 = load i32, i32* %4, align 4, !dbg !64
  %19 = add nsw i32 %18, %17, !dbg !64
  store i32 %19, i32* %4, align 4, !dbg !64
  br label %20, !dbg !65

; <label>:20:                                     ; preds = %10
  %21 = load i32, i32* %3, align 4, !dbg !66
  %22 = add nsw i32 %21, 1, !dbg !66
  store i32 %22, i32* %3, align 4, !dbg !66
  br label %6, !dbg !67, !llvm.loop !68

; <label>:23:                                     ; preds = %6
  %24 = load i32, i32* %4, align 4, !dbg !70
  ret i32 %24, !dbg !71
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/264115_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1500")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !8, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "readLen", scope: !7, file: !1, line: 7, type: !10)
!12 = !DILocation(line: 7, column: 9, scope: !7)
!13 = !DILocation(line: 8, column: 5, scope: !7)
!14 = !DILocation(line: 9, column: 5, scope: !7)
!15 = !DILocalVariable(name: "index", scope: !7, file: !1, line: 11, type: !10)
!16 = !DILocation(line: 11, column: 9, scope: !7)
!17 = !DILocation(line: 12, column: 5, scope: !7)
!18 = !DILocation(line: 12, column: 11, scope: !7)
!19 = !DILocation(line: 12, column: 19, scope: !7)
!20 = !DILocalVariable(name: "num", scope: !21, file: !1, line: 14, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 5)
!22 = !DILocation(line: 14, column: 13, scope: !21)
!23 = !DILocation(line: 15, column: 9, scope: !21)
!24 = !DILocation(line: 16, column: 9, scope: !21)
!25 = !DILocalVariable(name: "sum", scope: !21, file: !1, line: 18, type: !10)
!26 = !DILocation(line: 18, column: 13, scope: !21)
!27 = !DILocation(line: 18, column: 26, scope: !21)
!28 = !DILocation(line: 18, column: 19, scope: !21)
!29 = !DILocation(line: 19, column: 30, scope: !21)
!30 = !DILocation(line: 19, column: 37, scope: !21)
!31 = !DILocation(line: 19, column: 42, scope: !21)
!32 = !DILocation(line: 19, column: 9, scope: !21)
!33 = !DILocation(line: 20, column: 9, scope: !21)
!34 = !DILocation(line: 22, column: 9, scope: !21)
!35 = !DILocation(line: 23, column: 9, scope: !21)
!36 = distinct !{!36, !17, !37}
!37 = !DILocation(line: 24, column: 5, scope: !7)
!38 = !DILocation(line: 26, column: 5, scope: !7)
!39 = distinct !DISubprogram(name: "getSum", linkageName: "_ZL6getSumi", scope: !1, file: !1, line: 28, type: !40, isLocal: true, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!10, !10}
!42 = !DILocalVariable(name: "num", arg: 1, scope: !39, file: !1, line: 28, type: !10)
!43 = !DILocation(line: 28, column: 23, scope: !39)
!44 = !DILocalVariable(name: "index", scope: !39, file: !1, line: 30, type: !10)
!45 = !DILocation(line: 30, column: 9, scope: !39)
!46 = !DILocalVariable(name: "result", scope: !39, file: !1, line: 31, type: !10)
!47 = !DILocation(line: 31, column: 9, scope: !39)
!48 = !DILocalVariable(name: "tmpSum", scope: !39, file: !1, line: 32, type: !10)
!49 = !DILocation(line: 32, column: 9, scope: !39)
!50 = !DILocation(line: 33, column: 5, scope: !39)
!51 = !DILocation(line: 33, column: 11, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 33, column: 5)
!53 = distinct !DILexicalBlock(scope: !39, file: !1, line: 33, column: 5)
!54 = !DILocation(line: 33, column: 20, scope: !52)
!55 = !DILocation(line: 33, column: 17, scope: !52)
!56 = !DILocation(line: 33, column: 5, scope: !53)
!57 = !DILocation(line: 35, column: 20, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !1, line: 34, column: 5)
!59 = !DILocation(line: 35, column: 26, scope: !58)
!60 = !DILocation(line: 35, column: 16, scope: !58)
!61 = !DILocation(line: 36, column: 19, scope: !58)
!62 = !DILocation(line: 36, column: 27, scope: !58)
!63 = !DILocation(line: 36, column: 25, scope: !58)
!64 = !DILocation(line: 36, column: 16, scope: !58)
!65 = !DILocation(line: 37, column: 5, scope: !58)
!66 = !DILocation(line: 33, column: 25, scope: !52)
!67 = !DILocation(line: 33, column: 5, scope: !52)
!68 = distinct !{!68, !56, !69}
!69 = !DILocation(line: 37, column: 5, scope: !53)
!70 = !DILocation(line: 39, column: 12, scope: !39)
!71 = !DILocation(line: 39, column: 5, scope: !39)
