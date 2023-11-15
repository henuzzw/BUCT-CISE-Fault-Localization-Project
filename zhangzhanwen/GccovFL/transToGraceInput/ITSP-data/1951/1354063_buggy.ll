; ModuleID = 'gcov/../WA_c/1354063_buggy.c'
source_filename = "gcov/../WA_c/1354063_buggy.c"
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %5, align 4, !dbg !18
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !19
  br label %7, !dbg !20

; <label>:7:                                      ; preds = %39, %0
  %8 = load i32, i32* %2, align 4, !dbg !21
  %9 = icmp ne i32 %8, 0, !dbg !22
  br i1 %9, label %10, label %45, !dbg !20

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %2, align 4, !dbg !23
  %12 = icmp eq i32 %11, 2, !dbg !26
  br i1 %12, label %13, label %14, !dbg !27

; <label>:13:                                     ; preds = %10
  store i32 1, i32* %5, align 4, !dbg !28
  br label %14, !dbg !29

; <label>:14:                                     ; preds = %13, %10
  %15 = load i32, i32* %2, align 4, !dbg !30
  %16 = icmp eq i32 %15, 1, !dbg !32
  br i1 %16, label %17, label %18, !dbg !33

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %5, align 4, !dbg !34
  br label %18, !dbg !35

; <label>:18:                                     ; preds = %17, %14
  br label %19, !dbg !36

; <label>:19:                                     ; preds = %38, %18
  %20 = load i32, i32* %2, align 4, !dbg !37
  %21 = icmp sge i32 %20, 3, !dbg !38
  br i1 %21, label %22, label %39, !dbg !36

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %2, align 4, !dbg !39
  %24 = sdiv i32 %23, 3, !dbg !41
  store i32 %24, i32* %3, align 4, !dbg !42
  %25 = load i32, i32* %2, align 4, !dbg !43
  %26 = srem i32 %25, 3, !dbg !44
  store i32 %26, i32* %4, align 4, !dbg !45
  %27 = load i32, i32* %4, align 4, !dbg !46
  %28 = load i32, i32* %5, align 4, !dbg !47
  %29 = add nsw i32 %28, %27, !dbg !47
  store i32 %29, i32* %5, align 4, !dbg !47
  %30 = load i32, i32* %3, align 4, !dbg !48
  %31 = load i32, i32* %4, align 4, !dbg !49
  %32 = add nsw i32 %30, %31, !dbg !50
  store i32 %32, i32* %2, align 4, !dbg !51
  %33 = load i32, i32* %2, align 4, !dbg !52
  %34 = icmp eq i32 %33, 2, !dbg !54
  br i1 %34, label %35, label %38, !dbg !55

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %5, align 4, !dbg !56
  %37 = add nsw i32 %36, 1, !dbg !56
  store i32 %37, i32* %5, align 4, !dbg !56
  store i32 0, i32* %2, align 4, !dbg !58
  br label %38, !dbg !59

; <label>:38:                                     ; preds = %35, %22
  br label %19, !dbg !36, !llvm.loop !60

; <label>:39:                                     ; preds = %19
  %40 = load i32, i32* %5, align 4, !dbg !62
  %41 = add nsw i32 %40, -1, !dbg !62
  store i32 %41, i32* %5, align 4, !dbg !62
  %42 = load i32, i32* %5, align 4, !dbg !63
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %42), !dbg !64
  store i32 0, i32* %5, align 4, !dbg !65
  %44 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !66
  br label %7, !dbg !20, !llvm.loop !67

; <label>:45:                                     ; preds = %7
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
!1 = !DIFile(filename: "gcov/../WA_c/1354063_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1951")
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
!13 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "t", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 12, scope: !7)
!17 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 7, column: 5, scope: !7)
!21 = !DILocation(line: 7, column: 11, scope: !7)
!22 = !DILocation(line: 7, column: 13, scope: !7)
!23 = !DILocation(line: 9, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 12)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!26 = !DILocation(line: 9, column: 14, scope: !24)
!27 = !DILocation(line: 9, column: 12, scope: !25)
!28 = !DILocation(line: 9, column: 24, scope: !24)
!29 = !DILocation(line: 9, column: 20, scope: !24)
!30 = !DILocation(line: 10, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 12)
!32 = !DILocation(line: 10, column: 14, scope: !31)
!33 = !DILocation(line: 10, column: 12, scope: !25)
!34 = !DILocation(line: 10, column: 24, scope: !31)
!35 = !DILocation(line: 10, column: 20, scope: !31)
!36 = !DILocation(line: 11, column: 9, scope: !25)
!37 = !DILocation(line: 11, column: 15, scope: !25)
!38 = !DILocation(line: 11, column: 17, scope: !25)
!39 = !DILocation(line: 13, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 9)
!41 = !DILocation(line: 13, column: 19, scope: !40)
!42 = !DILocation(line: 13, column: 15, scope: !40)
!43 = !DILocation(line: 14, column: 17, scope: !40)
!44 = !DILocation(line: 14, column: 19, scope: !40)
!45 = !DILocation(line: 14, column: 15, scope: !40)
!46 = !DILocation(line: 15, column: 20, scope: !40)
!47 = !DILocation(line: 15, column: 17, scope: !40)
!48 = !DILocation(line: 16, column: 17, scope: !40)
!49 = !DILocation(line: 16, column: 21, scope: !40)
!50 = !DILocation(line: 16, column: 19, scope: !40)
!51 = !DILocation(line: 16, column: 15, scope: !40)
!52 = !DILocation(line: 17, column: 16, scope: !53)
!53 = distinct !DILexicalBlock(scope: !40, file: !1, line: 17, column: 16)
!54 = !DILocation(line: 17, column: 18, scope: !53)
!55 = !DILocation(line: 17, column: 16, scope: !40)
!56 = !DILocation(line: 19, column: 21, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 18, column: 13)
!58 = !DILocation(line: 20, column: 19, scope: !57)
!59 = !DILocation(line: 21, column: 13, scope: !57)
!60 = distinct !{!60, !36, !61}
!61 = !DILocation(line: 22, column: 9, scope: !25)
!62 = !DILocation(line: 23, column: 12, scope: !25)
!63 = !DILocation(line: 24, column: 24, scope: !25)
!64 = !DILocation(line: 24, column: 9, scope: !25)
!65 = !DILocation(line: 25, column: 13, scope: !25)
!66 = !DILocation(line: 26, column: 9, scope: !25)
!67 = distinct !{!67, !20, !68}
!68 = !DILocation(line: 27, column: 5, scope: !7)
!69 = !DILocation(line: 28, column: 5, scope: !7)
