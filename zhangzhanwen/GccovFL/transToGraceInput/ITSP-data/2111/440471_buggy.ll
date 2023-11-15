; ModuleID = 'gcov/../WA_c/440471_buggy.c'
source_filename = "gcov/../WA_c/440471_buggy.c"
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
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %3, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %4, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %5, align 4, !dbg !18
  br label %6, !dbg !19

; <label>:6:                                      ; preds = %39, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !20
  %8 = icmp ne i32 %7, -1, !dbg !21
  br i1 %8, label %9, label %40, !dbg !19

; <label>:9:                                      ; preds = %6
  store i32 0, i32* %5, align 4, !dbg !22
  %10 = load i32, i32* %2, align 4, !dbg !24
  %11 = icmp eq i32 %10, 1, !dbg !26
  br i1 %11, label %12, label %14, !dbg !27

; <label>:12:                                     ; preds = %9
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 1), !dbg !28
  br label %39, !dbg !30

; <label>:14:                                     ; preds = %9
  br label %15, !dbg !31

; <label>:15:                                     ; preds = %27, %14
  %16 = load i32, i32* %2, align 4, !dbg !33
  %17 = icmp sgt i32 %16, 1, !dbg !34
  br i1 %17, label %18, label %36, !dbg !31

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4, !dbg !35
  %20 = sdiv i32 %19, 2, !dbg !37
  store i32 %20, i32* %3, align 4, !dbg !38
  %21 = load i32, i32* %3, align 4, !dbg !39
  %22 = icmp eq i32 %21, 1, !dbg !41
  br i1 %22, label %23, label %27, !dbg !42

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %5, align 4, !dbg !43
  %25 = load i32, i32* %3, align 4, !dbg !44
  %26 = add nsw i32 %24, %25, !dbg !45
  store i32 %26, i32* %5, align 4, !dbg !46
  br label %27, !dbg !47

; <label>:27:                                     ; preds = %23, %18
  %28 = load i32, i32* %2, align 4, !dbg !48
  %29 = srem i32 %28, 2, !dbg !49
  store i32 %29, i32* %4, align 4, !dbg !50
  %30 = load i32, i32* %3, align 4, !dbg !51
  store i32 %30, i32* %2, align 4, !dbg !52
  %31 = load i32, i32* %5, align 4, !dbg !53
  %32 = load i32, i32* %4, align 4, !dbg !54
  %33 = add nsw i32 %31, %32, !dbg !55
  %34 = load i32, i32* %3, align 4, !dbg !56
  %35 = add nsw i32 %33, %34, !dbg !57
  store i32 %35, i32* %5, align 4, !dbg !58
  br label %15, !dbg !31, !llvm.loop !59

; <label>:36:                                     ; preds = %15
  %37 = load i32, i32* %5, align 4, !dbg !61
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %37), !dbg !62
  br label %39

; <label>:39:                                     ; preds = %36, %12
  br label %6, !dbg !19, !llvm.loop !63

; <label>:40:                                     ; preds = %6
  %41 = load i32, i32* %1, align 4, !dbg !65
  ret i32 %41, !dbg !65
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
!1 = !DIFile(filename: "gcov/../WA_c/440471_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 16, scope: !7)
!17 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 23, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 6, column: 11, scope: !7)
!21 = !DILocation(line: 6, column: 27, scope: !7)
!22 = !DILocation(line: 8, column: 13, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 9, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 12)
!26 = !DILocation(line: 9, column: 14, scope: !25)
!27 = !DILocation(line: 9, column: 12, scope: !23)
!28 = !DILocation(line: 11, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 9)
!30 = !DILocation(line: 12, column: 9, scope: !29)
!31 = !DILocation(line: 16, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 15, column: 9)
!33 = !DILocation(line: 16, column: 19, scope: !32)
!34 = !DILocation(line: 16, column: 21, scope: !32)
!35 = !DILocation(line: 18, column: 21, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 17, column: 13)
!37 = !DILocation(line: 18, column: 23, scope: !36)
!38 = !DILocation(line: 18, column: 19, scope: !36)
!39 = !DILocation(line: 19, column: 20, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 19, column: 20)
!41 = !DILocation(line: 19, column: 22, scope: !40)
!42 = !DILocation(line: 19, column: 20, scope: !36)
!43 = !DILocation(line: 20, column: 27, scope: !40)
!44 = !DILocation(line: 20, column: 33, scope: !40)
!45 = !DILocation(line: 20, column: 31, scope: !40)
!46 = !DILocation(line: 20, column: 25, scope: !40)
!47 = !DILocation(line: 20, column: 21, scope: !40)
!48 = !DILocation(line: 21, column: 21, scope: !36)
!49 = !DILocation(line: 21, column: 23, scope: !36)
!50 = !DILocation(line: 21, column: 19, scope: !36)
!51 = !DILocation(line: 22, column: 21, scope: !36)
!52 = !DILocation(line: 22, column: 19, scope: !36)
!53 = !DILocation(line: 23, column: 23, scope: !36)
!54 = !DILocation(line: 23, column: 29, scope: !36)
!55 = !DILocation(line: 23, column: 27, scope: !36)
!56 = !DILocation(line: 23, column: 33, scope: !36)
!57 = !DILocation(line: 23, column: 31, scope: !36)
!58 = !DILocation(line: 23, column: 21, scope: !36)
!59 = distinct !{!59, !31, !60}
!60 = !DILocation(line: 24, column: 13, scope: !32)
!61 = !DILocation(line: 25, column: 28, scope: !32)
!62 = !DILocation(line: 25, column: 13, scope: !32)
!63 = distinct !{!63, !19, !64}
!64 = !DILocation(line: 27, column: 5, scope: !7)
!65 = !DILocation(line: 28, column: 1, scope: !7)
