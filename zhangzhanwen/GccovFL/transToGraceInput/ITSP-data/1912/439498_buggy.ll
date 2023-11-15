; ModuleID = 'gcov/../WA_c/439498_buggy.c'
source_filename = "gcov/../WA_c/439498_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %43, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !21
  %8 = icmp ne i32 %7, -1, !dbg !22
  br i1 %8, label %9, label %44, !dbg !20

; <label>:9:                                      ; preds = %6
  store i32 1, i32* %3, align 4, !dbg !23
  br label %10, !dbg !26

; <label>:10:                                     ; preds = %32, %9
  %11 = load i8, i8* %2, align 1, !dbg !27
  %12 = sext i8 %11 to i32, !dbg !27
  %13 = load i32, i32* %3, align 4, !dbg !29
  %14 = sub nsw i32 %12, %13, !dbg !30
  %15 = icmp sge i32 %14, 65, !dbg !31
  br i1 %15, label %16, label %35, !dbg !32

; <label>:16:                                     ; preds = %10
  store i32 0, i32* %4, align 4, !dbg !33
  br label %17, !dbg !36

; <label>:17:                                     ; preds = %27, %16
  %18 = load i32, i32* %4, align 4, !dbg !37
  %19 = load i32, i32* %3, align 4, !dbg !39
  %20 = icmp sle i32 %18, %19, !dbg !40
  br i1 %20, label %21, label %30, !dbg !41

; <label>:21:                                     ; preds = %17
  %22 = load i8, i8* %2, align 1, !dbg !42
  %23 = sext i8 %22 to i32, !dbg !42
  %24 = load i32, i32* %4, align 4, !dbg !44
  %25 = sub nsw i32 %23, %24, !dbg !45
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %25), !dbg !46
  br label %27, !dbg !47

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %4, align 4, !dbg !48
  %29 = add nsw i32 %28, 1, !dbg !48
  store i32 %29, i32* %4, align 4, !dbg !48
  br label %17, !dbg !49, !llvm.loop !50

; <label>:30:                                     ; preds = %17
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !52
  br label %32, !dbg !53

; <label>:32:                                     ; preds = %30
  %33 = load i32, i32* %3, align 4, !dbg !54
  %34 = add nsw i32 %33, 1, !dbg !54
  store i32 %34, i32* %3, align 4, !dbg !54
  br label %10, !dbg !55, !llvm.loop !56

; <label>:35:                                     ; preds = %10
  %36 = load i8, i8* %2, align 1, !dbg !58
  %37 = sext i8 %36 to i32, !dbg !58
  %38 = load i32, i32* %3, align 4, !dbg !60
  %39 = sub nsw i32 %37, %38, !dbg !61
  %40 = icmp eq i32 %39, 64, !dbg !62
  br i1 %40, label %41, label %43, !dbg !63

; <label>:41:                                     ; preds = %35
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !64
  br label %43, !dbg !64

; <label>:43:                                     ; preds = %41, %35
  br label %6, !dbg !20, !llvm.loop !65

; <label>:44:                                     ; preds = %6
  ret i32 0, !dbg !67
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
!1 = !DIFile(filename: "gcov/../WA_c/439498_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
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
!14 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!15 = !DILocation(line: 5, column: 9, scope: !7)
!16 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 12, scope: !7)
!18 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!19 = !DILocation(line: 5, column: 15, scope: !7)
!20 = !DILocation(line: 6, column: 5, scope: !7)
!21 = !DILocation(line: 6, column: 11, scope: !7)
!22 = !DILocation(line: 6, column: 27, scope: !7)
!23 = !DILocation(line: 8, column: 15, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 9)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 8, column: 13, scope: !24)
!27 = !DILocation(line: 8, column: 20, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 9)
!29 = !DILocation(line: 8, column: 24, scope: !28)
!30 = !DILocation(line: 8, column: 22, scope: !28)
!31 = !DILocation(line: 8, column: 26, scope: !28)
!32 = !DILocation(line: 8, column: 9, scope: !24)
!33 = !DILocation(line: 10, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 13)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 9, column: 9)
!36 = !DILocation(line: 10, column: 17, scope: !34)
!37 = !DILocation(line: 10, column: 24, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 13)
!39 = !DILocation(line: 10, column: 29, scope: !38)
!40 = !DILocation(line: 10, column: 26, scope: !38)
!41 = !DILocation(line: 10, column: 13, scope: !34)
!42 = !DILocation(line: 12, column: 30, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 11, column: 13)
!44 = !DILocation(line: 12, column: 34, scope: !43)
!45 = !DILocation(line: 12, column: 32, scope: !43)
!46 = !DILocation(line: 12, column: 17, scope: !43)
!47 = !DILocation(line: 13, column: 13, scope: !43)
!48 = !DILocation(line: 10, column: 33, scope: !38)
!49 = !DILocation(line: 10, column: 13, scope: !38)
!50 = distinct !{!50, !41, !51}
!51 = !DILocation(line: 13, column: 13, scope: !34)
!52 = !DILocation(line: 14, column: 13, scope: !35)
!53 = !DILocation(line: 15, column: 9, scope: !35)
!54 = !DILocation(line: 8, column: 35, scope: !28)
!55 = !DILocation(line: 8, column: 9, scope: !28)
!56 = distinct !{!56, !32, !57}
!57 = !DILocation(line: 15, column: 9, scope: !24)
!58 = !DILocation(line: 16, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !25, file: !1, line: 16, column: 12)
!60 = !DILocation(line: 16, column: 16, scope: !59)
!61 = !DILocation(line: 16, column: 14, scope: !59)
!62 = !DILocation(line: 16, column: 18, scope: !59)
!63 = !DILocation(line: 16, column: 12, scope: !25)
!64 = !DILocation(line: 17, column: 13, scope: !59)
!65 = distinct !{!65, !20, !66}
!66 = !DILocation(line: 18, column: 5, scope: !7)
!67 = !DILocation(line: 19, column: 5, scope: !7)
