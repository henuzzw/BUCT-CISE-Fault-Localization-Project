; ModuleID = 'gcov/../WA_c/439860_buggy.c'
source_filename = "gcov/../WA_c/439860_buggy.c"
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
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  store i8 65, i8* %2, align 1, !dbg !13
  br label %7, !dbg !14

; <label>:7:                                      ; preds = %44, %0
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !15
  %9 = icmp ne i32 %8, -1, !dbg !16
  br i1 %9, label %10, label %45, !dbg !14

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !19
  %11 = load i8, i8* %2, align 1, !dbg !20
  %12 = sext i8 %11 to i32, !dbg !20
  %13 = sub nsw i32 %12, 65, !dbg !21
  store i32 %13, i32* %3, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %4, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %5, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %5, align 4, !dbg !25
  store i32 1, i32* %4, align 4, !dbg !26
  br label %14, !dbg !28

; <label>:14:                                     ; preds = %41, %10
  %15 = load i32, i32* %4, align 4, !dbg !29
  %16 = load i32, i32* %3, align 4, !dbg !31
  %17 = icmp sle i32 %15, %16, !dbg !32
  br i1 %17, label %18, label %44, !dbg !33

; <label>:18:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %6, metadata !34, metadata !DIExpression()), !dbg !36
  %19 = load i8, i8* %2, align 1, !dbg !37
  %20 = sext i8 %19 to i32, !dbg !37
  store i32 %20, i32* %6, align 4, !dbg !36
  store i32 1, i32* %5, align 4, !dbg !38
  br label %21, !dbg !40

; <label>:21:                                     ; preds = %30, %18
  %22 = load i32, i32* %5, align 4, !dbg !41
  %23 = load i32, i32* %4, align 4, !dbg !43
  %24 = icmp sle i32 %22, %23, !dbg !44
  br i1 %24, label %25, label %33, !dbg !45

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %6, align 4, !dbg !46
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %26), !dbg !48
  %28 = load i32, i32* %6, align 4, !dbg !49
  %29 = sub nsw i32 %28, 1, !dbg !49
  store i32 %29, i32* %6, align 4, !dbg !49
  br label %30, !dbg !50

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %5, align 4, !dbg !51
  %32 = add nsw i32 %31, 1, !dbg !51
  store i32 %32, i32* %5, align 4, !dbg !51
  br label %21, !dbg !52, !llvm.loop !53

; <label>:33:                                     ; preds = %21
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !55
  %35 = load i32, i32* %4, align 4, !dbg !56
  %36 = load i32, i32* %3, align 4, !dbg !58
  %37 = icmp eq i32 %35, %36, !dbg !59
  br i1 %37, label %38, label %40, !dbg !60

; <label>:38:                                     ; preds = %33
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !61
  br label %40, !dbg !61

; <label>:40:                                     ; preds = %38, %33
  br label %41, !dbg !62

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %4, align 4, !dbg !63
  %43 = add nsw i32 %42, 1, !dbg !63
  store i32 %43, i32* %4, align 4, !dbg !63
  br label %14, !dbg !64, !llvm.loop !65

; <label>:44:                                     ; preds = %14
  br label %7, !dbg !14, !llvm.loop !67

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
!1 = !DIFile(filename: "gcov/../WA_c/439860_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "letter", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 4, column: 10, scope: !7)
!14 = !DILocation(line: 5, column: 5, scope: !7)
!15 = !DILocation(line: 5, column: 11, scope: !7)
!16 = !DILocation(line: 5, column: 32, scope: !7)
!17 = !DILocalVariable(name: "count", scope: !18, file: !1, line: 7, type: !10)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!19 = !DILocation(line: 7, column: 13, scope: !18)
!20 = !DILocation(line: 7, column: 21, scope: !18)
!21 = !DILocation(line: 7, column: 28, scope: !18)
!22 = !DILocalVariable(name: "index", scope: !18, file: !1, line: 8, type: !10)
!23 = !DILocation(line: 8, column: 13, scope: !18)
!24 = !DILocalVariable(name: "jndex", scope: !18, file: !1, line: 9, type: !10)
!25 = !DILocation(line: 9, column: 13, scope: !18)
!26 = !DILocation(line: 10, column: 19, scope: !27)
!27 = distinct !DILexicalBlock(scope: !18, file: !1, line: 10, column: 9)
!28 = !DILocation(line: 10, column: 13, scope: !27)
!29 = !DILocation(line: 10, column: 24, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 9)
!31 = !DILocation(line: 10, column: 33, scope: !30)
!32 = !DILocation(line: 10, column: 30, scope: !30)
!33 = !DILocation(line: 10, column: 9, scope: !27)
!34 = !DILocalVariable(name: "letterout", scope: !35, file: !1, line: 12, type: !10)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 9)
!36 = !DILocation(line: 12, column: 17, scope: !35)
!37 = !DILocation(line: 12, column: 29, scope: !35)
!38 = !DILocation(line: 13, column: 23, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 13, column: 13)
!40 = !DILocation(line: 13, column: 17, scope: !39)
!41 = !DILocation(line: 13, column: 28, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 13, column: 13)
!43 = !DILocation(line: 13, column: 37, scope: !42)
!44 = !DILocation(line: 13, column: 34, scope: !42)
!45 = !DILocation(line: 13, column: 13, scope: !39)
!46 = !DILocation(line: 15, column: 30, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 14, column: 13)
!48 = !DILocation(line: 15, column: 17, scope: !47)
!49 = !DILocation(line: 16, column: 27, scope: !47)
!50 = !DILocation(line: 17, column: 13, scope: !47)
!51 = !DILocation(line: 13, column: 49, scope: !42)
!52 = !DILocation(line: 13, column: 13, scope: !42)
!53 = distinct !{!53, !45, !54}
!54 = !DILocation(line: 17, column: 13, scope: !39)
!55 = !DILocation(line: 18, column: 13, scope: !35)
!56 = !DILocation(line: 19, column: 16, scope: !57)
!57 = distinct !DILexicalBlock(scope: !35, file: !1, line: 19, column: 16)
!58 = !DILocation(line: 19, column: 25, scope: !57)
!59 = !DILocation(line: 19, column: 22, scope: !57)
!60 = !DILocation(line: 19, column: 16, scope: !35)
!61 = !DILocation(line: 20, column: 17, scope: !57)
!62 = !DILocation(line: 21, column: 9, scope: !35)
!63 = !DILocation(line: 10, column: 45, scope: !30)
!64 = !DILocation(line: 10, column: 9, scope: !30)
!65 = distinct !{!65, !33, !66}
!66 = !DILocation(line: 21, column: 9, scope: !27)
!67 = distinct !{!67, !14, !68}
!68 = !DILocation(line: 22, column: 5, scope: !7)
!69 = !DILocation(line: 23, column: 5, scope: !7)
