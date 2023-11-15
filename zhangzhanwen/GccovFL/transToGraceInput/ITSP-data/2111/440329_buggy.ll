; ModuleID = 'gcov/../WA_c/440329_buggy.c'
source_filename = "gcov/../WA_c/440329_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  br label %8, !dbg !13

; <label>:8:                                      ; preds = %54, %0
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !14
  %10 = icmp ne i32 %9, -1, !dbg !15
  br i1 %10, label %11, label %55, !dbg !13

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %3, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 1, i32* %4, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %6, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %7, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %7, align 4, !dbg !26
  %12 = load i32, i32* %2, align 4, !dbg !27
  %13 = icmp eq i32 %12, 0, !dbg !29
  br i1 %13, label %14, label %16, !dbg !30

; <label>:14:                                     ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !31
  br label %54, !dbg !33

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %2, align 4, !dbg !34
  store i32 %17, i32* %6, align 4, !dbg !35
  br label %18

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !36

; <label>:19:                                     ; preds = %22, %18
  %20 = load i32, i32* %6, align 4, !dbg !37
  %21 = icmp ne i32 %20, 0, !dbg !37
  br i1 %21, label %22, label %34, !dbg !36

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %6, align 4, !dbg !38
  %24 = srem i32 %23, 2, !dbg !40
  store i32 %24, i32* %5, align 4, !dbg !41
  %25 = load i32, i32* %4, align 4, !dbg !42
  %26 = load i32, i32* %5, align 4, !dbg !43
  %27 = mul nsw i32 %25, %26, !dbg !44
  %28 = load i32, i32* %3, align 4, !dbg !45
  %29 = add nsw i32 %27, %28, !dbg !46
  store i32 %29, i32* %3, align 4, !dbg !47
  %30 = load i32, i32* %4, align 4, !dbg !48
  %31 = mul nsw i32 %30, 10, !dbg !49
  store i32 %31, i32* %4, align 4, !dbg !50
  %32 = load i32, i32* %6, align 4, !dbg !51
  %33 = sdiv i32 %32, 2, !dbg !52
  store i32 %33, i32* %6, align 4, !dbg !53
  br label %19, !dbg !36, !llvm.loop !54

; <label>:34:                                     ; preds = %19
  br label %35, !dbg !56

; <label>:35:                                     ; preds = %34, %48
  %36 = load i32, i32* %3, align 4, !dbg !57
  %37 = srem i32 %36, 10, !dbg !60
  %38 = icmp eq i32 %37, 1, !dbg !61
  br i1 %38, label %39, label %42, !dbg !62

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %7, align 4, !dbg !63
  %41 = add nsw i32 %40, 1, !dbg !63
  store i32 %41, i32* %7, align 4, !dbg !63
  br label %42, !dbg !64

; <label>:42:                                     ; preds = %39, %35
  %43 = load i32, i32* %3, align 4, !dbg !65
  %44 = sdiv i32 %43, 2, !dbg !66
  store i32 %44, i32* %3, align 4, !dbg !67
  %45 = load i32, i32* %3, align 4, !dbg !68
  %46 = icmp eq i32 %45, 0, !dbg !70
  br i1 %46, label %47, label %48, !dbg !71

; <label>:47:                                     ; preds = %42
  br label %49, !dbg !72

; <label>:48:                                     ; preds = %42
  br label %35, !dbg !56, !llvm.loop !73

; <label>:49:                                     ; preds = %47
  %50 = load i32, i32* %7, align 4, !dbg !75
  %51 = add nsw i32 %50, -1, !dbg !75
  store i32 %51, i32* %7, align 4, !dbg !75
  %52 = load i32, i32* %7, align 4, !dbg !76
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %52), !dbg !77
  br label %54, !dbg !77

; <label>:54:                                     ; preds = %49, %14
  br label %8, !dbg !13, !llvm.loop !78

; <label>:55:                                     ; preds = %8
  %56 = load i32, i32* %1, align 4, !dbg !80
  ret i32 %56, !dbg !80
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
!1 = !DIFile(filename: "gcov/../WA_c/440329_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocation(line: 7, column: 5, scope: !7)
!14 = !DILocation(line: 7, column: 11, scope: !7)
!15 = !DILocation(line: 7, column: 27, scope: !7)
!16 = !DILocalVariable(name: "r", scope: !17, file: !1, line: 9, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!18 = !DILocation(line: 9, column: 13, scope: !17)
!19 = !DILocalVariable(name: "k", scope: !17, file: !1, line: 9, type: !10)
!20 = !DILocation(line: 9, column: 20, scope: !17)
!21 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 9, type: !10)
!22 = !DILocation(line: 9, column: 27, scope: !17)
!23 = !DILocalVariable(name: "t", scope: !17, file: !1, line: 9, type: !10)
!24 = !DILocation(line: 9, column: 30, scope: !17)
!25 = !DILocalVariable(name: "count", scope: !17, file: !1, line: 9, type: !10)
!26 = !DILocation(line: 9, column: 33, scope: !17)
!27 = !DILocation(line: 10, column: 12, scope: !28)
!28 = distinct !DILexicalBlock(scope: !17, file: !1, line: 10, column: 12)
!29 = !DILocation(line: 10, column: 14, scope: !28)
!30 = !DILocation(line: 10, column: 12, scope: !17)
!31 = !DILocation(line: 12, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 11, column: 9)
!33 = !DILocation(line: 13, column: 13, scope: !32)
!34 = !DILocation(line: 18, column: 17, scope: !28)
!35 = !DILocation(line: 18, column: 15, scope: !28)
!36 = !DILocation(line: 19, column: 9, scope: !17)
!37 = !DILocation(line: 19, column: 15, scope: !17)
!38 = !DILocation(line: 21, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !17, file: !1, line: 20, column: 9)
!40 = !DILocation(line: 21, column: 19, scope: !39)
!41 = !DILocation(line: 21, column: 15, scope: !39)
!42 = !DILocation(line: 23, column: 17, scope: !39)
!43 = !DILocation(line: 23, column: 21, scope: !39)
!44 = !DILocation(line: 23, column: 19, scope: !39)
!45 = !DILocation(line: 23, column: 25, scope: !39)
!46 = !DILocation(line: 23, column: 23, scope: !39)
!47 = !DILocation(line: 23, column: 15, scope: !39)
!48 = !DILocation(line: 24, column: 17, scope: !39)
!49 = !DILocation(line: 24, column: 19, scope: !39)
!50 = !DILocation(line: 24, column: 15, scope: !39)
!51 = !DILocation(line: 25, column: 17, scope: !39)
!52 = !DILocation(line: 25, column: 19, scope: !39)
!53 = !DILocation(line: 25, column: 15, scope: !39)
!54 = distinct !{!54, !36, !55}
!55 = !DILocation(line: 26, column: 9, scope: !17)
!56 = !DILocation(line: 30, column: 9, scope: !17)
!57 = !DILocation(line: 33, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 33, column: 16)
!59 = distinct !DILexicalBlock(scope: !17, file: !1, line: 31, column: 9)
!60 = !DILocation(line: 33, column: 18, scope: !58)
!61 = !DILocation(line: 33, column: 23, scope: !58)
!62 = !DILocation(line: 33, column: 16, scope: !59)
!63 = !DILocation(line: 34, column: 22, scope: !58)
!64 = !DILocation(line: 34, column: 17, scope: !58)
!65 = !DILocation(line: 35, column: 17, scope: !59)
!66 = !DILocation(line: 35, column: 19, scope: !59)
!67 = !DILocation(line: 35, column: 15, scope: !59)
!68 = !DILocation(line: 36, column: 16, scope: !69)
!69 = distinct !DILexicalBlock(scope: !59, file: !1, line: 36, column: 16)
!70 = !DILocation(line: 36, column: 18, scope: !69)
!71 = !DILocation(line: 36, column: 16, scope: !59)
!72 = !DILocation(line: 37, column: 17, scope: !69)
!73 = distinct !{!73, !56, !74}
!74 = !DILocation(line: 38, column: 9, scope: !17)
!75 = !DILocation(line: 39, column: 14, scope: !17)
!76 = !DILocation(line: 40, column: 24, scope: !17)
!77 = !DILocation(line: 40, column: 9, scope: !17)
!78 = distinct !{!78, !13, !79}
!79 = !DILocation(line: 43, column: 5, scope: !7)
!80 = !DILocation(line: 44, column: 1, scope: !7)
