; ModuleID = 'gcov/../WA_c/439817_buggy.c'
source_filename = "gcov/../WA_c/439817_buggy.c"
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
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %6, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  br label %8, !dbg !23

; <label>:8:                                      ; preds = %45, %0
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %7), !dbg !24
  %10 = icmp ne i32 %9, -1, !dbg !25
  br i1 %10, label %11, label %48, !dbg !23

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4, !dbg !26
  store i32 %12, i32* %5, align 4, !dbg !28
  store i32 0, i32* %6, align 4, !dbg !29
  br label %13, !dbg !30

; <label>:13:                                     ; preds = %24, %11
  %14 = load i32, i32* %5, align 4, !dbg !31
  %15 = icmp sgt i32 %14, 3, !dbg !34
  br i1 %15, label %16, label %27, !dbg !35

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4, !dbg !36
  %18 = srem i32 %17, 2, !dbg !39
  %19 = icmp eq i32 %18, 1, !dbg !40
  br i1 %19, label %20, label %23, !dbg !41

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %6, align 4, !dbg !42
  %22 = add nsw i32 %21, 1, !dbg !42
  store i32 %22, i32* %6, align 4, !dbg !42
  br label %23, !dbg !43

; <label>:23:                                     ; preds = %20, %16
  br label %24, !dbg !44

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %5, align 4, !dbg !45
  %26 = sdiv i32 %25, 2, !dbg !46
  store i32 %26, i32* %5, align 4, !dbg !47
  br label %13, !dbg !48, !llvm.loop !49

; <label>:27:                                     ; preds = %13
  %28 = load i32, i32* %5, align 4, !dbg !51
  %29 = icmp eq i32 %28, 3, !dbg !53
  br i1 %29, label %30, label %33, !dbg !54

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %6, align 4, !dbg !55
  %32 = add nsw i32 %31, 1, !dbg !55
  store i32 %32, i32* %6, align 4, !dbg !55
  br label %33, !dbg !56

; <label>:33:                                     ; preds = %30, %27
  %34 = load i32, i32* %5, align 4, !dbg !57
  %35 = icmp eq i32 %34, 2, !dbg !59
  br i1 %35, label %36, label %39, !dbg !60

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %6, align 4, !dbg !61
  %38 = add nsw i32 %37, 1, !dbg !61
  store i32 %38, i32* %6, align 4, !dbg !61
  br label %39, !dbg !62

; <label>:39:                                     ; preds = %36, %33
  %40 = load i32, i32* %5, align 4, !dbg !63
  %41 = icmp eq i32 %40, 1, !dbg !65
  br i1 %41, label %42, label %45, !dbg !66

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %6, align 4, !dbg !67
  %44 = add nsw i32 %43, 1, !dbg !67
  store i32 %44, i32* %6, align 4, !dbg !67
  br label %45, !dbg !68

; <label>:45:                                     ; preds = %42, %39
  %46 = load i32, i32* %6, align 4, !dbg !69
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %46), !dbg !70
  br label %8, !dbg !23, !llvm.loop !71

; <label>:48:                                     ; preds = %8
  %49 = load i32, i32* %1, align 4, !dbg !73
  ret i32 %49, !dbg !73
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
!1 = !DIFile(filename: "gcov/../WA_c/439817_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
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
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 21, scope: !7)
!21 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!22 = !DILocation(line: 4, column: 28, scope: !7)
!23 = !DILocation(line: 5, column: 5, scope: !7)
!24 = !DILocation(line: 5, column: 11, scope: !7)
!25 = !DILocation(line: 5, column: 27, scope: !7)
!26 = !DILocation(line: 7, column: 13, scope: !27)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!28 = !DILocation(line: 7, column: 11, scope: !27)
!29 = !DILocation(line: 8, column: 11, scope: !27)
!30 = !DILocation(line: 9, column: 9, scope: !27)
!31 = !DILocation(line: 9, column: 15, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 9, column: 9)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 9, column: 9)
!34 = !DILocation(line: 9, column: 17, scope: !32)
!35 = !DILocation(line: 9, column: 9, scope: !33)
!36 = !DILocation(line: 11, column: 16, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 11, column: 16)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 9)
!39 = !DILocation(line: 11, column: 18, scope: !37)
!40 = !DILocation(line: 11, column: 22, scope: !37)
!41 = !DILocation(line: 11, column: 16, scope: !38)
!42 = !DILocation(line: 12, column: 18, scope: !37)
!43 = !DILocation(line: 12, column: 17, scope: !37)
!44 = !DILocation(line: 13, column: 9, scope: !38)
!45 = !DILocation(line: 9, column: 26, scope: !32)
!46 = !DILocation(line: 9, column: 28, scope: !32)
!47 = !DILocation(line: 9, column: 24, scope: !32)
!48 = !DILocation(line: 9, column: 9, scope: !32)
!49 = distinct !{!49, !35, !50}
!50 = !DILocation(line: 13, column: 9, scope: !33)
!51 = !DILocation(line: 14, column: 12, scope: !52)
!52 = distinct !DILexicalBlock(scope: !27, file: !1, line: 14, column: 12)
!53 = !DILocation(line: 14, column: 14, scope: !52)
!54 = !DILocation(line: 14, column: 12, scope: !27)
!55 = !DILocation(line: 14, column: 21, scope: !52)
!56 = !DILocation(line: 14, column: 20, scope: !52)
!57 = !DILocation(line: 15, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !27, file: !1, line: 15, column: 12)
!59 = !DILocation(line: 15, column: 14, scope: !58)
!60 = !DILocation(line: 15, column: 12, scope: !27)
!61 = !DILocation(line: 15, column: 21, scope: !58)
!62 = !DILocation(line: 15, column: 20, scope: !58)
!63 = !DILocation(line: 16, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !27, file: !1, line: 16, column: 12)
!65 = !DILocation(line: 16, column: 14, scope: !64)
!66 = !DILocation(line: 16, column: 12, scope: !27)
!67 = !DILocation(line: 16, column: 21, scope: !64)
!68 = !DILocation(line: 16, column: 20, scope: !64)
!69 = !DILocation(line: 17, column: 24, scope: !27)
!70 = !DILocation(line: 17, column: 9, scope: !27)
!71 = distinct !{!71, !23, !72}
!72 = !DILocation(line: 18, column: 5, scope: !7)
!73 = !DILocation(line: 19, column: 1, scope: !7)
