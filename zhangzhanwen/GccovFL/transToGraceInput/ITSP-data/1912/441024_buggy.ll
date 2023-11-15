; ModuleID = 'gcov/../WA_c/441024_buggy.c'
source_filename = "gcov/../WA_c/441024_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  br label %6, !dbg !14

; <label>:6:                                      ; preds = %39, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !15
  %8 = icmp ne i32 %7, -1, !dbg !16
  br i1 %8, label %9, label %41, !dbg !14

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !19
  store i32 1, i32* %3, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i8* %4, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8* %5, metadata !22, metadata !DIExpression()), !dbg !23
  br label %10, !dbg !24

; <label>:10:                                     ; preds = %36, %9
  %11 = load i32, i32* %3, align 4, !dbg !26
  %12 = load i8, i8* %2, align 1, !dbg !28
  %13 = sext i8 %12 to i32, !dbg !28
  %14 = sub nsw i32 %13, 64, !dbg !29
  %15 = icmp slt i32 %11, %14, !dbg !30
  br i1 %15, label %16, label %39, !dbg !31

; <label>:16:                                     ; preds = %10
  %17 = load i8, i8* %2, align 1, !dbg !32
  store i8 %17, i8* %5, align 1, !dbg !35
  br label %18, !dbg !36

; <label>:18:                                     ; preds = %31, %16
  %19 = load i8, i8* %5, align 1, !dbg !37
  %20 = sext i8 %19 to i32, !dbg !37
  %21 = load i8, i8* %2, align 1, !dbg !39
  %22 = sext i8 %21 to i32, !dbg !39
  %23 = load i32, i32* %3, align 4, !dbg !40
  %24 = sub nsw i32 %22, %23, !dbg !41
  %25 = sub nsw i32 %24, 1, !dbg !42
  %26 = icmp sgt i32 %20, %25, !dbg !43
  br i1 %26, label %27, label %34, !dbg !44

; <label>:27:                                     ; preds = %18
  %28 = load i8, i8* %5, align 1, !dbg !45
  %29 = sext i8 %28 to i32, !dbg !45
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %29), !dbg !46
  br label %31, !dbg !46

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %5, align 1, !dbg !47
  %33 = add i8 %32, -1, !dbg !47
  store i8 %33, i8* %5, align 1, !dbg !47
  br label %18, !dbg !48, !llvm.loop !49

; <label>:34:                                     ; preds = %18
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !51
  br label %36, !dbg !52

; <label>:36:                                     ; preds = %34
  %37 = load i32, i32* %3, align 4, !dbg !53
  %38 = add nsw i32 %37, 1, !dbg !53
  store i32 %38, i32* %3, align 4, !dbg !53
  br label %10, !dbg !54, !llvm.loop !55

; <label>:39:                                     ; preds = %10
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !57
  br label %6, !dbg !14, !llvm.loop !58

; <label>:41:                                     ; preds = %6
  %42 = load i32, i32* %1, align 4, !dbg !60
  ret i32 %42, !dbg !60
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
!1 = !DIFile(filename: "gcov/../WA_c/441024_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
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
!14 = !DILocation(line: 5, column: 5, scope: !7)
!15 = !DILocation(line: 5, column: 11, scope: !7)
!16 = !DILocation(line: 5, column: 27, scope: !7)
!17 = !DILocalVariable(name: "j", scope: !18, file: !1, line: 7, type: !10)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!19 = !DILocation(line: 7, column: 13, scope: !18)
!20 = !DILocalVariable(name: "b", scope: !18, file: !1, line: 8, type: !12)
!21 = !DILocation(line: 8, column: 14, scope: !18)
!22 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 8, type: !12)
!23 = !DILocation(line: 8, column: 17, scope: !18)
!24 = !DILocation(line: 9, column: 13, scope: !25)
!25 = distinct !DILexicalBlock(scope: !18, file: !1, line: 9, column: 9)
!26 = !DILocation(line: 9, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!28 = !DILocation(line: 9, column: 20, scope: !27)
!29 = !DILocation(line: 9, column: 22, scope: !27)
!30 = !DILocation(line: 9, column: 18, scope: !27)
!31 = !DILocation(line: 9, column: 9, scope: !25)
!32 = !DILocation(line: 11, column: 21, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 13)
!34 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 9)
!35 = !DILocation(line: 11, column: 19, scope: !33)
!36 = !DILocation(line: 11, column: 17, scope: !33)
!37 = !DILocation(line: 11, column: 24, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 13)
!39 = !DILocation(line: 11, column: 28, scope: !38)
!40 = !DILocation(line: 11, column: 32, scope: !38)
!41 = !DILocation(line: 11, column: 30, scope: !38)
!42 = !DILocation(line: 11, column: 34, scope: !38)
!43 = !DILocation(line: 11, column: 26, scope: !38)
!44 = !DILocation(line: 11, column: 13, scope: !33)
!45 = !DILocation(line: 12, column: 30, scope: !38)
!46 = !DILocation(line: 12, column: 17, scope: !38)
!47 = !DILocation(line: 11, column: 40, scope: !38)
!48 = !DILocation(line: 11, column: 13, scope: !38)
!49 = distinct !{!49, !44, !50}
!50 = !DILocation(line: 12, column: 31, scope: !33)
!51 = !DILocation(line: 13, column: 13, scope: !34)
!52 = !DILocation(line: 14, column: 9, scope: !34)
!53 = !DILocation(line: 9, column: 30, scope: !27)
!54 = !DILocation(line: 9, column: 9, scope: !27)
!55 = distinct !{!55, !31, !56}
!56 = !DILocation(line: 14, column: 9, scope: !25)
!57 = !DILocation(line: 15, column: 9, scope: !18)
!58 = distinct !{!58, !14, !59}
!59 = !DILocation(line: 16, column: 5, scope: !7)
!60 = !DILocation(line: 17, column: 1, scope: !7)
