; ModuleID = 'gcov/../WA_c/440272_buggy.c'
source_filename = "gcov/../WA_c/440272_buggy.c"
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
  br label %6, !dbg !14

; <label>:6:                                      ; preds = %43, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !15
  %8 = icmp ne i32 %7, -1, !dbg !16
  br i1 %8, label %9, label %44, !dbg !14

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !19
  %10 = load i8, i8* %2, align 1, !dbg !20
  %11 = sext i8 %10 to i32, !dbg !20
  %12 = sub nsw i32 %11, 65, !dbg !21
  %13 = add nsw i32 %12, 1, !dbg !22
  store i32 %13, i32* %3, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %4, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 1, i32* %4, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %5, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, i32* %5, align 4, !dbg !27
  store i32 1, i32* %4, align 4, !dbg !28
  br label %14, !dbg !30

; <label>:14:                                     ; preds = %40, %9
  %15 = load i32, i32* %4, align 4, !dbg !31
  %16 = load i32, i32* %3, align 4, !dbg !33
  %17 = icmp sle i32 %15, %16, !dbg !34
  br i1 %17, label %18, label %43, !dbg !35

; <label>:18:                                     ; preds = %14
  store i32 1, i32* %5, align 4, !dbg !36
  br label %19, !dbg !39

; <label>:19:                                     ; preds = %29, %18
  %20 = load i32, i32* %5, align 4, !dbg !40
  %21 = load i32, i32* %4, align 4, !dbg !42
  %22 = icmp sle i32 %20, %21, !dbg !43
  br i1 %22, label %23, label %32, !dbg !44

; <label>:23:                                     ; preds = %19
  %24 = load i8, i8* %2, align 1, !dbg !45
  %25 = sext i8 %24 to i32, !dbg !45
  %26 = load i32, i32* %5, align 4, !dbg !47
  %27 = sub nsw i32 %25, %26, !dbg !48
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %27), !dbg !49
  br label %29, !dbg !50

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %5, align 4, !dbg !51
  %31 = add nsw i32 %30, 1, !dbg !51
  store i32 %31, i32* %5, align 4, !dbg !51
  br label %19, !dbg !52, !llvm.loop !53

; <label>:32:                                     ; preds = %19
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !55
  %34 = load i32, i32* %4, align 4, !dbg !56
  %35 = load i32, i32* %3, align 4, !dbg !58
  %36 = icmp eq i32 %34, %35, !dbg !59
  br i1 %36, label %37, label %39, !dbg !60

; <label>:37:                                     ; preds = %32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !61
  br label %39, !dbg !61

; <label>:39:                                     ; preds = %37, %32
  br label %40, !dbg !62

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %4, align 4, !dbg !63
  %42 = add nsw i32 %41, 1, !dbg !63
  store i32 %42, i32* %4, align 4, !dbg !63
  br label %14, !dbg !64, !llvm.loop !65

; <label>:43:                                     ; preds = %14
  br label %6, !dbg !14, !llvm.loop !67

; <label>:44:                                     ; preds = %6
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
!1 = !DIFile(filename: "gcov/../WA_c/440272_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 4, column: 10, scope: !7)
!14 = !DILocation(line: 5, column: 5, scope: !7)
!15 = !DILocation(line: 5, column: 11, scope: !7)
!16 = !DILocation(line: 5, column: 27, scope: !7)
!17 = !DILocalVariable(name: "a", scope: !18, file: !1, line: 7, type: !10)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!19 = !DILocation(line: 7, column: 13, scope: !18)
!20 = !DILocation(line: 8, column: 13, scope: !18)
!21 = !DILocation(line: 8, column: 15, scope: !18)
!22 = !DILocation(line: 8, column: 21, scope: !18)
!23 = !DILocation(line: 8, column: 11, scope: !18)
!24 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 9, type: !10)
!25 = !DILocation(line: 9, column: 13, scope: !18)
!26 = !DILocalVariable(name: "j", scope: !18, file: !1, line: 9, type: !10)
!27 = !DILocation(line: 9, column: 20, scope: !18)
!28 = !DILocation(line: 11, column: 15, scope: !29)
!29 = distinct !DILexicalBlock(scope: !18, file: !1, line: 11, column: 9)
!30 = !DILocation(line: 11, column: 13, scope: !29)
!31 = !DILocation(line: 11, column: 20, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 9)
!33 = !DILocation(line: 11, column: 25, scope: !32)
!34 = !DILocation(line: 11, column: 22, scope: !32)
!35 = !DILocation(line: 11, column: 9, scope: !29)
!36 = !DILocation(line: 13, column: 19, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 13)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 9)
!39 = !DILocation(line: 13, column: 17, scope: !37)
!40 = !DILocation(line: 13, column: 24, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 13, column: 13)
!42 = !DILocation(line: 13, column: 29, scope: !41)
!43 = !DILocation(line: 13, column: 26, scope: !41)
!44 = !DILocation(line: 13, column: 13, scope: !37)
!45 = !DILocation(line: 15, column: 30, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 13)
!47 = !DILocation(line: 15, column: 34, scope: !46)
!48 = !DILocation(line: 15, column: 32, scope: !46)
!49 = !DILocation(line: 15, column: 17, scope: !46)
!50 = !DILocation(line: 16, column: 13, scope: !46)
!51 = !DILocation(line: 13, column: 33, scope: !41)
!52 = !DILocation(line: 13, column: 13, scope: !41)
!53 = distinct !{!53, !44, !54}
!54 = !DILocation(line: 16, column: 13, scope: !37)
!55 = !DILocation(line: 17, column: 13, scope: !38)
!56 = !DILocation(line: 18, column: 16, scope: !57)
!57 = distinct !DILexicalBlock(scope: !38, file: !1, line: 18, column: 16)
!58 = !DILocation(line: 18, column: 21, scope: !57)
!59 = !DILocation(line: 18, column: 18, scope: !57)
!60 = !DILocation(line: 18, column: 16, scope: !38)
!61 = !DILocation(line: 18, column: 24, scope: !57)
!62 = !DILocation(line: 19, column: 9, scope: !38)
!63 = !DILocation(line: 11, column: 29, scope: !32)
!64 = !DILocation(line: 11, column: 9, scope: !32)
!65 = distinct !{!65, !35, !66}
!66 = !DILocation(line: 19, column: 9, scope: !29)
!67 = distinct !{!67, !14, !68}
!68 = !DILocation(line: 22, column: 5, scope: !7)
!69 = !DILocation(line: 23, column: 5, scope: !7)
