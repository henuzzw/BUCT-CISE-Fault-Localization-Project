; ModuleID = 'gcov/../WA_c/277594_buggy.c'
source_filename = "gcov/../WA_c/277594_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 1, i32* %4, align 4, !dbg !14
  store i32 2, i32* %4, align 4, !dbg !15
  br label %5, !dbg !17

; <label>:5:                                      ; preds = %16, %1
  %6 = load i32, i32* %4, align 4, !dbg !18
  %7 = load i32, i32* %3, align 4, !dbg !20
  %8 = icmp slt i32 %6, %7, !dbg !21
  br i1 %8, label %9, label %19, !dbg !22

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !23
  %11 = load i32, i32* %4, align 4, !dbg !26
  %12 = srem i32 %10, %11, !dbg !27
  %13 = icmp eq i32 %12, 0, !dbg !28
  br i1 %13, label %14, label %15, !dbg !29

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !30
  br label %20, !dbg !30

; <label>:15:                                     ; preds = %9
  br label %16, !dbg !32

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %4, align 4, !dbg !33
  %18 = add nsw i32 %17, 1, !dbg !34
  store i32 %18, i32* %4, align 4, !dbg !35
  br label %5, !dbg !36, !llvm.loop !37

; <label>:19:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !39
  br label %20, !dbg !39

; <label>:20:                                     ; preds = %19, %14
  %21 = load i32, i32* %2, align 4, !dbg !40
  ret i32 %21, !dbg !40
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %4, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %5, metadata !50, metadata !DIExpression()), !dbg !51
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3), !dbg !52
  %7 = load i32, i32* %2, align 4, !dbg !53
  store i32 %7, i32* %4, align 4, !dbg !55
  br label %8, !dbg !56

; <label>:8:                                      ; preds = %21, %0
  %9 = load i32, i32* %4, align 4, !dbg !57
  %10 = load i32, i32* %3, align 4, !dbg !59
  %11 = icmp sle i32 %9, %10, !dbg !60
  br i1 %11, label %12, label %24, !dbg !61

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %4, align 4, !dbg !62
  %14 = call i32 @_Z11check_primei(i32 %13), !dbg !64
  store i32 %14, i32* %5, align 4, !dbg !65
  %15 = load i32, i32* %5, align 4, !dbg !66
  %16 = icmp eq i32 %15, 1, !dbg !68
  br i1 %16, label %17, label %20, !dbg !69

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %4, align 4, !dbg !70
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %18), !dbg !72
  br label %20, !dbg !73

; <label>:20:                                     ; preds = %17, %12
  br label %21, !dbg !74

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %4, align 4, !dbg !75
  %23 = add nsw i32 %22, 1, !dbg !75
  store i32 %23, i32* %4, align 4, !dbg !75
  br label %8, !dbg !76, !llvm.loop !77

; <label>:24:                                     ; preds = %8
  ret i32 0, !dbg !79
}

declare i32 @scanf(i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/277594_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocation(line: 6, column: 10, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!17 = !DILocation(line: 6, column: 9, scope: !16)
!18 = !DILocation(line: 6, column: 14, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 6, column: 16, scope: !19)
!21 = !DILocation(line: 6, column: 15, scope: !19)
!22 = !DILocation(line: 6, column: 5, scope: !16)
!23 = !DILocation(line: 8, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 13)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 8, column: 17, scope: !24)
!27 = !DILocation(line: 8, column: 16, scope: !24)
!28 = !DILocation(line: 8, column: 18, scope: !24)
!29 = !DILocation(line: 8, column: 13, scope: !25)
!30 = !DILocation(line: 10, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 9)
!32 = !DILocation(line: 12, column: 5, scope: !25)
!33 = !DILocation(line: 6, column: 23, scope: !19)
!34 = !DILocation(line: 6, column: 24, scope: !19)
!35 = !DILocation(line: 6, column: 22, scope: !19)
!36 = !DILocation(line: 6, column: 5, scope: !19)
!37 = distinct !{!37, !22, !38}
!38 = !DILocation(line: 12, column: 5, scope: !16)
!39 = !DILocation(line: 14, column: 5, scope: !7)
!40 = !DILocation(line: 16, column: 1, scope: !7)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !42, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!10}
!44 = !DILocalVariable(name: "n1", scope: !41, file: !1, line: 20, type: !10)
!45 = !DILocation(line: 20, column: 9, scope: !41)
!46 = !DILocalVariable(name: "n2", scope: !41, file: !1, line: 20, type: !10)
!47 = !DILocation(line: 20, column: 12, scope: !41)
!48 = !DILocalVariable(name: "i", scope: !41, file: !1, line: 20, type: !10)
!49 = !DILocation(line: 20, column: 15, scope: !41)
!50 = !DILocalVariable(name: "result", scope: !41, file: !1, line: 20, type: !10)
!51 = !DILocation(line: 20, column: 17, scope: !41)
!52 = !DILocation(line: 21, column: 5, scope: !41)
!53 = !DILocation(line: 22, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !41, file: !1, line: 22, column: 5)
!55 = !DILocation(line: 22, column: 10, scope: !54)
!56 = !DILocation(line: 22, column: 9, scope: !54)
!57 = !DILocation(line: 22, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 22, column: 5)
!59 = !DILocation(line: 22, column: 18, scope: !58)
!60 = !DILocation(line: 22, column: 16, scope: !58)
!61 = !DILocation(line: 22, column: 5, scope: !54)
!62 = !DILocation(line: 24, column: 28, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 23, column: 5)
!64 = !DILocation(line: 24, column: 16, scope: !63)
!65 = !DILocation(line: 24, column: 15, scope: !63)
!66 = !DILocation(line: 25, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 25, column: 13)
!68 = !DILocation(line: 25, column: 19, scope: !67)
!69 = !DILocation(line: 25, column: 13, scope: !63)
!70 = !DILocation(line: 27, column: 26, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 26, column: 9)
!72 = !DILocation(line: 27, column: 13, scope: !71)
!73 = !DILocation(line: 28, column: 9, scope: !71)
!74 = !DILocation(line: 29, column: 5, scope: !63)
!75 = !DILocation(line: 22, column: 22, scope: !58)
!76 = !DILocation(line: 22, column: 5, scope: !58)
!77 = distinct !{!77, !61, !78}
!78 = !DILocation(line: 29, column: 5, scope: !54)
!79 = !DILocation(line: 30, column: 5, scope: !41)
