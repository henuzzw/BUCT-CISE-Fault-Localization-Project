; ModuleID = 'gcov/../WA_c/440465_buggy.c'
source_filename = "gcov/../WA_c/440465_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  br label %4, !dbg !15

; <label>:4:                                      ; preds = %88, %0
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !16
  %6 = icmp ne i32 %5, -1, !dbg !17
  br i1 %6, label %7, label %91, !dbg !15

; <label>:7:                                      ; preds = %4
  store i32 0, i32* %3, align 4, !dbg !18
  %8 = load i32, i32* %2, align 4, !dbg !20
  %9 = sdiv i32 %8, 256, !dbg !22
  %10 = icmp eq i32 %9, 1, !dbg !23
  br i1 %10, label %11, label %16, !dbg !24

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !25
  %13 = add nsw i32 %12, 1, !dbg !25
  store i32 %13, i32* %3, align 4, !dbg !25
  %14 = load i32, i32* %2, align 4, !dbg !27
  %15 = sub nsw i32 %14, 256, !dbg !27
  store i32 %15, i32* %2, align 4, !dbg !27
  br label %16, !dbg !28

; <label>:16:                                     ; preds = %11, %7
  %17 = load i32, i32* %2, align 4, !dbg !29
  %18 = sdiv i32 %17, 128, !dbg !31
  %19 = icmp eq i32 %18, 1, !dbg !32
  br i1 %19, label %20, label %25, !dbg !33

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %3, align 4, !dbg !34
  %22 = add nsw i32 %21, 1, !dbg !34
  store i32 %22, i32* %3, align 4, !dbg !34
  %23 = load i32, i32* %2, align 4, !dbg !36
  %24 = sub nsw i32 %23, 128, !dbg !36
  store i32 %24, i32* %2, align 4, !dbg !36
  br label %25, !dbg !37

; <label>:25:                                     ; preds = %20, %16
  %26 = load i32, i32* %2, align 4, !dbg !38
  %27 = sdiv i32 %26, 64, !dbg !40
  %28 = icmp eq i32 %27, 1, !dbg !41
  br i1 %28, label %29, label %34, !dbg !42

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %3, align 4, !dbg !43
  %31 = add nsw i32 %30, 1, !dbg !43
  store i32 %31, i32* %3, align 4, !dbg !43
  %32 = load i32, i32* %2, align 4, !dbg !45
  %33 = sub nsw i32 %32, 64, !dbg !45
  store i32 %33, i32* %2, align 4, !dbg !45
  br label %34, !dbg !46

; <label>:34:                                     ; preds = %29, %25
  %35 = load i32, i32* %2, align 4, !dbg !47
  %36 = sdiv i32 %35, 32, !dbg !49
  %37 = icmp eq i32 %36, 1, !dbg !50
  br i1 %37, label %38, label %43, !dbg !51

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %3, align 4, !dbg !52
  %40 = add nsw i32 %39, 1, !dbg !52
  store i32 %40, i32* %3, align 4, !dbg !52
  %41 = load i32, i32* %2, align 4, !dbg !54
  %42 = sub nsw i32 %41, 32, !dbg !54
  store i32 %42, i32* %2, align 4, !dbg !54
  br label %43, !dbg !55

; <label>:43:                                     ; preds = %38, %34
  %44 = load i32, i32* %2, align 4, !dbg !56
  %45 = sdiv i32 %44, 16, !dbg !58
  %46 = icmp eq i32 %45, 1, !dbg !59
  br i1 %46, label %47, label %52, !dbg !60

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %3, align 4, !dbg !61
  %49 = add nsw i32 %48, 1, !dbg !61
  store i32 %49, i32* %3, align 4, !dbg !61
  %50 = load i32, i32* %2, align 4, !dbg !63
  %51 = sub nsw i32 %50, 16, !dbg !63
  store i32 %51, i32* %2, align 4, !dbg !63
  br label %52, !dbg !64

; <label>:52:                                     ; preds = %47, %43
  %53 = load i32, i32* %2, align 4, !dbg !65
  %54 = sdiv i32 %53, 8, !dbg !67
  %55 = icmp eq i32 %54, 1, !dbg !68
  br i1 %55, label %56, label %61, !dbg !69

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %3, align 4, !dbg !70
  %58 = add nsw i32 %57, 1, !dbg !70
  store i32 %58, i32* %3, align 4, !dbg !70
  %59 = load i32, i32* %2, align 4, !dbg !72
  %60 = sub nsw i32 %59, 8, !dbg !72
  store i32 %60, i32* %2, align 4, !dbg !72
  br label %61, !dbg !73

; <label>:61:                                     ; preds = %56, %52
  %62 = load i32, i32* %2, align 4, !dbg !74
  %63 = sdiv i32 %62, 4, !dbg !76
  %64 = icmp eq i32 %63, 1, !dbg !77
  br i1 %64, label %65, label %70, !dbg !78

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %3, align 4, !dbg !79
  %67 = add nsw i32 %66, 1, !dbg !79
  store i32 %67, i32* %3, align 4, !dbg !79
  %68 = load i32, i32* %2, align 4, !dbg !81
  %69 = sub nsw i32 %68, 4, !dbg !81
  store i32 %69, i32* %2, align 4, !dbg !81
  br label %70, !dbg !82

; <label>:70:                                     ; preds = %65, %61
  %71 = load i32, i32* %2, align 4, !dbg !83
  %72 = sdiv i32 %71, 2, !dbg !85
  %73 = icmp eq i32 %72, 1, !dbg !86
  br i1 %73, label %74, label %79, !dbg !87

; <label>:74:                                     ; preds = %70
  %75 = load i32, i32* %3, align 4, !dbg !88
  %76 = add nsw i32 %75, 1, !dbg !88
  store i32 %76, i32* %3, align 4, !dbg !88
  %77 = load i32, i32* %2, align 4, !dbg !90
  %78 = sub nsw i32 %77, 2, !dbg !90
  store i32 %78, i32* %2, align 4, !dbg !90
  br label %79, !dbg !91

; <label>:79:                                     ; preds = %74, %70
  %80 = load i32, i32* %2, align 4, !dbg !92
  %81 = sdiv i32 %80, 1, !dbg !94
  %82 = icmp eq i32 %81, 1, !dbg !95
  br i1 %82, label %83, label %88, !dbg !96

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* %3, align 4, !dbg !97
  %85 = add nsw i32 %84, 2, !dbg !97
  store i32 %85, i32* %3, align 4, !dbg !97
  %86 = load i32, i32* %2, align 4, !dbg !99
  %87 = sub nsw i32 %86, 1, !dbg !99
  store i32 %87, i32* %2, align 4, !dbg !99
  br label %88, !dbg !100

; <label>:88:                                     ; preds = %83, %79
  %89 = load i32, i32* %3, align 4, !dbg !101
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %89), !dbg !102
  br label %4, !dbg !15, !llvm.loop !103

; <label>:91:                                     ; preds = %4
  ret i32 0, !dbg !105
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
!1 = !DIFile(filename: "gcov/../WA_c/440465_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
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
!13 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocation(line: 6, column: 5, scope: !7)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocation(line: 6, column: 27, scope: !7)
!18 = !DILocation(line: 8, column: 13, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 9, column: 12, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !1, line: 9, column: 12)
!22 = !DILocation(line: 9, column: 14, scope: !21)
!23 = !DILocation(line: 9, column: 20, scope: !21)
!24 = !DILocation(line: 9, column: 12, scope: !19)
!25 = !DILocation(line: 11, column: 16, scope: !26)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 9)
!27 = !DILocation(line: 12, column: 15, scope: !26)
!28 = !DILocation(line: 13, column: 9, scope: !26)
!29 = !DILocation(line: 14, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !19, file: !1, line: 14, column: 12)
!31 = !DILocation(line: 14, column: 14, scope: !30)
!32 = !DILocation(line: 14, column: 20, scope: !30)
!33 = !DILocation(line: 14, column: 12, scope: !19)
!34 = !DILocation(line: 16, column: 16, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 15, column: 9)
!36 = !DILocation(line: 17, column: 15, scope: !35)
!37 = !DILocation(line: 18, column: 9, scope: !35)
!38 = !DILocation(line: 19, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !19, file: !1, line: 19, column: 12)
!40 = !DILocation(line: 19, column: 14, scope: !39)
!41 = !DILocation(line: 19, column: 19, scope: !39)
!42 = !DILocation(line: 19, column: 12, scope: !19)
!43 = !DILocation(line: 21, column: 16, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 20, column: 9)
!45 = !DILocation(line: 22, column: 15, scope: !44)
!46 = !DILocation(line: 23, column: 9, scope: !44)
!47 = !DILocation(line: 24, column: 12, scope: !48)
!48 = distinct !DILexicalBlock(scope: !19, file: !1, line: 24, column: 12)
!49 = !DILocation(line: 24, column: 14, scope: !48)
!50 = !DILocation(line: 24, column: 19, scope: !48)
!51 = !DILocation(line: 24, column: 12, scope: !19)
!52 = !DILocation(line: 26, column: 16, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 25, column: 9)
!54 = !DILocation(line: 27, column: 15, scope: !53)
!55 = !DILocation(line: 28, column: 9, scope: !53)
!56 = !DILocation(line: 29, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !19, file: !1, line: 29, column: 12)
!58 = !DILocation(line: 29, column: 14, scope: !57)
!59 = !DILocation(line: 29, column: 19, scope: !57)
!60 = !DILocation(line: 29, column: 12, scope: !19)
!61 = !DILocation(line: 31, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 30, column: 9)
!63 = !DILocation(line: 32, column: 15, scope: !62)
!64 = !DILocation(line: 33, column: 9, scope: !62)
!65 = !DILocation(line: 34, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !19, file: !1, line: 34, column: 12)
!67 = !DILocation(line: 34, column: 14, scope: !66)
!68 = !DILocation(line: 34, column: 18, scope: !66)
!69 = !DILocation(line: 34, column: 12, scope: !19)
!70 = !DILocation(line: 36, column: 16, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 35, column: 9)
!72 = !DILocation(line: 37, column: 15, scope: !71)
!73 = !DILocation(line: 38, column: 9, scope: !71)
!74 = !DILocation(line: 39, column: 12, scope: !75)
!75 = distinct !DILexicalBlock(scope: !19, file: !1, line: 39, column: 12)
!76 = !DILocation(line: 39, column: 14, scope: !75)
!77 = !DILocation(line: 39, column: 18, scope: !75)
!78 = !DILocation(line: 39, column: 12, scope: !19)
!79 = !DILocation(line: 41, column: 16, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 40, column: 9)
!81 = !DILocation(line: 42, column: 15, scope: !80)
!82 = !DILocation(line: 43, column: 9, scope: !80)
!83 = !DILocation(line: 44, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !19, file: !1, line: 44, column: 12)
!85 = !DILocation(line: 44, column: 14, scope: !84)
!86 = !DILocation(line: 44, column: 18, scope: !84)
!87 = !DILocation(line: 44, column: 12, scope: !19)
!88 = !DILocation(line: 46, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 45, column: 9)
!90 = !DILocation(line: 47, column: 15, scope: !89)
!91 = !DILocation(line: 48, column: 9, scope: !89)
!92 = !DILocation(line: 49, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !19, file: !1, line: 49, column: 12)
!94 = !DILocation(line: 49, column: 14, scope: !93)
!95 = !DILocation(line: 49, column: 18, scope: !93)
!96 = !DILocation(line: 49, column: 12, scope: !19)
!97 = !DILocation(line: 51, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 50, column: 9)
!99 = !DILocation(line: 52, column: 15, scope: !98)
!100 = !DILocation(line: 53, column: 9, scope: !98)
!101 = !DILocation(line: 54, column: 24, scope: !19)
!102 = !DILocation(line: 54, column: 9, scope: !19)
!103 = distinct !{!103, !15, !104}
!104 = !DILocation(line: 55, column: 5, scope: !7)
!105 = !DILocation(line: 56, column: 5, scope: !7)
