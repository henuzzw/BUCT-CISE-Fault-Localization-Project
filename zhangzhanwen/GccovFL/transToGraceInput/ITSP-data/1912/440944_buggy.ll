; ModuleID = 'gcov/../WA_c/440944_buggy.c'
source_filename = "gcov/../WA_c/440944_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i8* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %7, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %8, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %8, align 4, !dbg !25
  br label %9, !dbg !26

; <label>:9:                                      ; preds = %49, %0
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !27
  %11 = icmp ne i32 %10, -1, !dbg !28
  br i1 %11, label %12, label %50, !dbg !26

; <label>:12:                                     ; preds = %9
  %13 = load i8, i8* %2, align 1, !dbg !29
  %14 = sext i8 %13 to i32, !dbg !29
  %15 = sub nsw i32 %14, 65, !dbg !31
  %16 = add nsw i32 %15, 1, !dbg !32
  store i32 %16, i32* %8, align 4, !dbg !33
  store i32 1, i32* %5, align 4, !dbg !34
  br label %17, !dbg !36

; <label>:17:                                     ; preds = %46, %12
  %18 = load i32, i32* %5, align 4, !dbg !37
  %19 = load i32, i32* %8, align 4, !dbg !39
  %20 = add nsw i32 %19, 1, !dbg !40
  %21 = icmp sle i32 %18, %20, !dbg !41
  br i1 %21, label %22, label %49, !dbg !42

; <label>:22:                                     ; preds = %17
  %23 = load i8, i8* %2, align 1, !dbg !43
  store i8 %23, i8* %3, align 1, !dbg !45
  store i32 1, i32* %6, align 4, !dbg !46
  br label %24, !dbg !48

; <label>:24:                                     ; preds = %34, %22
  %25 = load i32, i32* %6, align 4, !dbg !49
  %26 = load i32, i32* %5, align 4, !dbg !51
  %27 = icmp sle i32 %25, %26, !dbg !52
  br i1 %27, label %28, label %37, !dbg !53

; <label>:28:                                     ; preds = %24
  %29 = load i8, i8* %3, align 1, !dbg !54
  %30 = sext i8 %29 to i32, !dbg !54
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %30), !dbg !56
  %32 = load i8, i8* %3, align 1, !dbg !57
  %33 = add i8 %32, -1, !dbg !57
  store i8 %33, i8* %3, align 1, !dbg !57
  br label %34, !dbg !58

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %6, align 4, !dbg !59
  %36 = add nsw i32 %35, 1, !dbg !59
  store i32 %36, i32* %6, align 4, !dbg !59
  br label %24, !dbg !60, !llvm.loop !61

; <label>:37:                                     ; preds = %24
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !63
  %39 = load i32, i32* %5, align 4, !dbg !64
  %40 = load i32, i32* %8, align 4, !dbg !66
  %41 = add nsw i32 %40, 1, !dbg !67
  %42 = icmp eq i32 %39, %41, !dbg !68
  br i1 %42, label %43, label %45, !dbg !69

; <label>:43:                                     ; preds = %37
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !70
  br label %45, !dbg !70

; <label>:45:                                     ; preds = %43, %37
  br label %46, !dbg !71

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %5, align 4, !dbg !72
  %48 = add nsw i32 %47, 1, !dbg !72
  store i32 %48, i32* %5, align 4, !dbg !72
  br label %17, !dbg !73, !llvm.loop !74

; <label>:49:                                     ; preds = %17
  br label %9, !dbg !26, !llvm.loop !76

; <label>:50:                                     ; preds = %9
  ret i32 0, !dbg !78
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
!1 = !DIFile(filename: "gcov/../WA_c/440944_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 4, column: 10, scope: !7)
!14 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 4, type: !12)
!15 = !DILocation(line: 4, column: 13, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 9, scope: !7)
!18 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!19 = !DILocation(line: 5, column: 12, scope: !7)
!20 = !DILocalVariable(name: "q", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 15, scope: !7)
!22 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 5, type: !10)
!23 = !DILocation(line: 5, column: 18, scope: !7)
!24 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 5, type: !10)
!25 = !DILocation(line: 5, column: 21, scope: !7)
!26 = !DILocation(line: 6, column: 5, scope: !7)
!27 = !DILocation(line: 6, column: 11, scope: !7)
!28 = !DILocation(line: 6, column: 27, scope: !7)
!29 = !DILocation(line: 8, column: 13, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!31 = !DILocation(line: 8, column: 15, scope: !30)
!32 = !DILocation(line: 8, column: 21, scope: !30)
!33 = !DILocation(line: 8, column: 11, scope: !30)
!34 = !DILocation(line: 9, column: 15, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 9)
!36 = !DILocation(line: 9, column: 13, scope: !35)
!37 = !DILocation(line: 9, column: 20, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 9, column: 9)
!39 = !DILocation(line: 9, column: 25, scope: !38)
!40 = !DILocation(line: 9, column: 27, scope: !38)
!41 = !DILocation(line: 9, column: 22, scope: !38)
!42 = !DILocation(line: 9, column: 9, scope: !35)
!43 = !DILocation(line: 11, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 10, column: 9)
!45 = !DILocation(line: 11, column: 15, scope: !44)
!46 = !DILocation(line: 12, column: 19, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 13)
!48 = !DILocation(line: 12, column: 17, scope: !47)
!49 = !DILocation(line: 12, column: 24, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 12, column: 13)
!51 = !DILocation(line: 12, column: 29, scope: !50)
!52 = !DILocation(line: 12, column: 26, scope: !50)
!53 = !DILocation(line: 12, column: 13, scope: !47)
!54 = !DILocation(line: 14, column: 30, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 13, column: 13)
!56 = !DILocation(line: 14, column: 17, scope: !55)
!57 = !DILocation(line: 15, column: 18, scope: !55)
!58 = !DILocation(line: 16, column: 13, scope: !55)
!59 = !DILocation(line: 12, column: 33, scope: !50)
!60 = !DILocation(line: 12, column: 13, scope: !50)
!61 = distinct !{!61, !53, !62}
!62 = !DILocation(line: 16, column: 13, scope: !47)
!63 = !DILocation(line: 17, column: 13, scope: !44)
!64 = !DILocation(line: 18, column: 16, scope: !65)
!65 = distinct !DILexicalBlock(scope: !44, file: !1, line: 18, column: 16)
!66 = !DILocation(line: 18, column: 21, scope: !65)
!67 = !DILocation(line: 18, column: 23, scope: !65)
!68 = !DILocation(line: 18, column: 18, scope: !65)
!69 = !DILocation(line: 18, column: 16, scope: !44)
!70 = !DILocation(line: 18, column: 27, scope: !65)
!71 = !DILocation(line: 19, column: 9, scope: !44)
!72 = !DILocation(line: 9, column: 33, scope: !38)
!73 = !DILocation(line: 9, column: 9, scope: !38)
!74 = distinct !{!74, !42, !75}
!75 = !DILocation(line: 19, column: 9, scope: !35)
!76 = distinct !{!76, !26, !77}
!77 = !DILocation(line: 20, column: 5, scope: !7)
!78 = !DILocation(line: 21, column: 5, scope: !7)
