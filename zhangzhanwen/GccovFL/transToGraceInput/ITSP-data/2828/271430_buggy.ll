; ModuleID = 'gcov/../WA_c/271430_buggy.c'
source_filename = "gcov/../WA_c/271430_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Capital Letter\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Small Letter\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Letter\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !14
  %4 = load i8, i8* %2, align 1, !dbg !15
  %5 = sext i8 %4 to i32, !dbg !15
  %6 = icmp sge i32 %5, 65, !dbg !17
  br i1 %6, label %7, label %13, !dbg !18

; <label>:7:                                      ; preds = %0
  %8 = load i8, i8* %2, align 1, !dbg !19
  %9 = sext i8 %8 to i32, !dbg !19
  %10 = icmp sle i32 %9, 91, !dbg !20
  br i1 %10, label %11, label %13, !dbg !21

; <label>:11:                                     ; preds = %7
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !22
  br label %35, !dbg !24

; <label>:13:                                     ; preds = %7, %0
  %14 = load i8, i8* %2, align 1, !dbg !25
  %15 = sext i8 %14 to i32, !dbg !25
  %16 = icmp sge i32 %15, 97, !dbg !27
  br i1 %16, label %17, label %23, !dbg !28

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %2, align 1, !dbg !29
  %19 = sext i8 %18 to i32, !dbg !29
  %20 = icmp sle i32 %19, 122, !dbg !30
  br i1 %20, label %21, label %23, !dbg !31

; <label>:21:                                     ; preds = %17
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !32
  br label %34, !dbg !34

; <label>:23:                                     ; preds = %17, %13
  %24 = load i8, i8* %2, align 1, !dbg !35
  %25 = sext i8 %24 to i32, !dbg !35
  %26 = icmp sge i32 %25, 48, !dbg !37
  br i1 %26, label %27, label %33, !dbg !38

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %2, align 1, !dbg !39
  %29 = sext i8 %28 to i32, !dbg !39
  %30 = icmp sle i32 %29, 57, !dbg !40
  br i1 %30, label %31, label %33, !dbg !41

; <label>:31:                                     ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !42
  br label %33, !dbg !44

; <label>:33:                                     ; preds = %31, %27, %23
  br label %34

; <label>:34:                                     ; preds = %33, %21
  br label %35

; <label>:35:                                     ; preds = %34, %11
  ret i32 0, !dbg !45
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
!1 = !DIFile(filename: "gcov/../WA_c/271430_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2828")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "ch", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 5, column: 10, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = !DILocation(line: 8, column: 8, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!17 = !DILocation(line: 8, column: 10, scope: !16)
!18 = !DILocation(line: 8, column: 15, scope: !16)
!19 = !DILocation(line: 8, column: 18, scope: !16)
!20 = !DILocation(line: 8, column: 20, scope: !16)
!21 = !DILocation(line: 8, column: 8, scope: !7)
!22 = !DILocation(line: 10, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !16, file: !1, line: 9, column: 5)
!24 = !DILocation(line: 12, column: 5, scope: !23)
!25 = !DILocation(line: 13, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !16, file: !1, line: 13, column: 13)
!27 = !DILocation(line: 13, column: 15, scope: !26)
!28 = !DILocation(line: 13, column: 20, scope: !26)
!29 = !DILocation(line: 13, column: 23, scope: !26)
!30 = !DILocation(line: 13, column: 25, scope: !26)
!31 = !DILocation(line: 13, column: 13, scope: !16)
!32 = !DILocation(line: 15, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 14, column: 5)
!34 = !DILocation(line: 16, column: 5, scope: !33)
!35 = !DILocation(line: 17, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !26, file: !1, line: 17, column: 13)
!37 = !DILocation(line: 17, column: 15, scope: !36)
!38 = !DILocation(line: 17, column: 20, scope: !36)
!39 = !DILocation(line: 17, column: 23, scope: !36)
!40 = !DILocation(line: 17, column: 25, scope: !36)
!41 = !DILocation(line: 17, column: 13, scope: !26)
!42 = !DILocation(line: 19, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !36, file: !1, line: 18, column: 5)
!44 = !DILocation(line: 20, column: 5, scope: !43)
!45 = !DILocation(line: 21, column: 5, scope: !7)
