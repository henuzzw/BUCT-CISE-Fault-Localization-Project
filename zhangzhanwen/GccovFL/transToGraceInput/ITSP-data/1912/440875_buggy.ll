; ModuleID = 'gcov/../WA_c/440875_buggy.c'
source_filename = "gcov/../WA_c/440875_buggy.c"
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
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  br label %5, !dbg !18

; <label>:5:                                      ; preds = %44, %0
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !19
  %7 = icmp ne i32 %6, -1, !dbg !20
  br i1 %7, label %8, label %45, !dbg !18

; <label>:8:                                      ; preds = %5
  store i32 0, i32* %3, align 4, !dbg !21
  br label %9, !dbg !24

; <label>:9:                                      ; preds = %41, %8
  %10 = load i32, i32* %3, align 4, !dbg !25
  %11 = load i8, i8* %2, align 1, !dbg !27
  %12 = sext i8 %11 to i32, !dbg !27
  %13 = sub nsw i32 %12, 65, !dbg !28
  %14 = icmp sle i32 %10, %13, !dbg !29
  br i1 %14, label %15, label %44, !dbg !30

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !31
  %17 = add nsw i32 %16, 1, !dbg !31
  store i32 %17, i32* %3, align 4, !dbg !31
  store i32 0, i32* %4, align 4, !dbg !33
  br label %18, !dbg !35

; <label>:18:                                     ; preds = %28, %15
  %19 = load i32, i32* %4, align 4, !dbg !36
  %20 = load i32, i32* %3, align 4, !dbg !38
  %21 = icmp sle i32 %19, %20, !dbg !39
  br i1 %21, label %22, label %31, !dbg !40

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %2, align 1, !dbg !41
  %24 = sext i8 %23 to i32, !dbg !41
  %25 = load i32, i32* %4, align 4, !dbg !42
  %26 = sub nsw i32 %24, %25, !dbg !43
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %26), !dbg !44
  br label %28, !dbg !44

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !45
  %30 = add nsw i32 %29, 1, !dbg !45
  store i32 %30, i32* %4, align 4, !dbg !45
  br label %18, !dbg !46, !llvm.loop !47

; <label>:31:                                     ; preds = %18
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !49
  %33 = load i32, i32* %3, align 4, !dbg !50
  %34 = load i8, i8* %2, align 1, !dbg !52
  %35 = sext i8 %34 to i32, !dbg !52
  %36 = sub nsw i32 %35, 65, !dbg !53
  %37 = icmp eq i32 %33, %36, !dbg !54
  br i1 %37, label %38, label %40, !dbg !55

; <label>:38:                                     ; preds = %31
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !56
  br label %44, !dbg !58

; <label>:40:                                     ; preds = %31
  br label %41, !dbg !59

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %3, align 4, !dbg !60
  %43 = add nsw i32 %42, 1, !dbg !60
  store i32 %43, i32* %3, align 4, !dbg !60
  br label %9, !dbg !61, !llvm.loop !62

; <label>:44:                                     ; preds = %38, %9
  br label %5, !dbg !18, !llvm.loop !64

; <label>:45:                                     ; preds = %5
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !66
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
!1 = !DIFile(filename: "gcov/../WA_c/440875_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
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
!18 = !DILocation(line: 6, column: 5, scope: !7)
!19 = !DILocation(line: 6, column: 11, scope: !7)
!20 = !DILocation(line: 6, column: 27, scope: !7)
!21 = !DILocation(line: 8, column: 15, scope: !22)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 9)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 8, column: 13, scope: !22)
!25 = !DILocation(line: 8, column: 20, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!27 = !DILocation(line: 8, column: 25, scope: !26)
!28 = !DILocation(line: 8, column: 27, scope: !26)
!29 = !DILocation(line: 8, column: 22, scope: !26)
!30 = !DILocation(line: 8, column: 9, scope: !22)
!31 = !DILocation(line: 10, column: 11, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 9)
!33 = !DILocation(line: 11, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 13)
!35 = !DILocation(line: 11, column: 17, scope: !34)
!36 = !DILocation(line: 11, column: 24, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 13)
!38 = !DILocation(line: 11, column: 29, scope: !37)
!39 = !DILocation(line: 11, column: 26, scope: !37)
!40 = !DILocation(line: 11, column: 13, scope: !34)
!41 = !DILocation(line: 12, column: 30, scope: !37)
!42 = !DILocation(line: 12, column: 34, scope: !37)
!43 = !DILocation(line: 12, column: 32, scope: !37)
!44 = !DILocation(line: 12, column: 17, scope: !37)
!45 = !DILocation(line: 11, column: 33, scope: !37)
!46 = !DILocation(line: 11, column: 13, scope: !37)
!47 = distinct !{!47, !40, !48}
!48 = !DILocation(line: 12, column: 35, scope: !34)
!49 = !DILocation(line: 13, column: 13, scope: !32)
!50 = !DILocation(line: 14, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !32, file: !1, line: 14, column: 16)
!52 = !DILocation(line: 14, column: 21, scope: !51)
!53 = !DILocation(line: 14, column: 23, scope: !51)
!54 = !DILocation(line: 14, column: 18, scope: !51)
!55 = !DILocation(line: 14, column: 16, scope: !32)
!56 = !DILocation(line: 16, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !51, file: !1, line: 15, column: 13)
!58 = !DILocation(line: 17, column: 17, scope: !57)
!59 = !DILocation(line: 20, column: 9, scope: !32)
!60 = !DILocation(line: 8, column: 34, scope: !26)
!61 = !DILocation(line: 8, column: 9, scope: !26)
!62 = distinct !{!62, !30, !63}
!63 = !DILocation(line: 20, column: 9, scope: !22)
!64 = distinct !{!64, !18, !65}
!65 = !DILocation(line: 21, column: 5, scope: !7)
!66 = !DILocation(line: 22, column: 5, scope: !7)
!67 = !DILocation(line: 23, column: 5, scope: !7)
