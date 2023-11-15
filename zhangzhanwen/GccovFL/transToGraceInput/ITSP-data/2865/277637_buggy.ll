; ModuleID = 'gcov/../WA_c/277637_buggy.c'
source_filename = "gcov/../WA_c/277637_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !17
  %6 = load i32, i32* %3, align 4, !dbg !18
  store i32 %6, i32* %4, align 4, !dbg !20
  br label %7, !dbg !21

; <label>:7:                                      ; preds = %23, %0
  %8 = load i32, i32* %4, align 4, !dbg !22
  %9 = icmp sge i32 %8, 1, !dbg !24
  br i1 %9, label %10, label %26, !dbg !25

; <label>:10:                                     ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !26
  %12 = load i32, i32* %3, align 4, !dbg !28
  store i32 %12, i32* %2, align 4, !dbg !30
  br label %13, !dbg !31

; <label>:13:                                     ; preds = %19, %10
  %14 = load i32, i32* %2, align 4, !dbg !32
  %15 = icmp sge i32 %14, 1, !dbg !34
  br i1 %15, label %16, label %22, !dbg !35

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %2, align 4, !dbg !36
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %17), !dbg !38
  br label %19, !dbg !39

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %2, align 4, !dbg !40
  %21 = sub nsw i32 %20, 1, !dbg !41
  store i32 %21, i32* %2, align 4, !dbg !42
  br label %13, !dbg !43, !llvm.loop !44

; <label>:22:                                     ; preds = %13
  br label %23, !dbg !46

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %4, align 4, !dbg !47
  %25 = sub nsw i32 %24, 1, !dbg !48
  store i32 %25, i32* %4, align 4, !dbg !49
  br label %7, !dbg !50, !llvm.loop !51

; <label>:26:                                     ; preds = %7
  ret i32 0, !dbg !53
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
!1 = !DIFile(filename: "gcov/../WA_c/277637_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2865")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocation(line: 7, column: 12, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 7, column: 11, scope: !19)
!21 = !DILocation(line: 7, column: 10, scope: !19)
!22 = !DILocation(line: 7, column: 15, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 7, column: 16, scope: !23)
!25 = !DILocation(line: 7, column: 5, scope: !19)
!26 = !DILocation(line: 9, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 5)
!28 = !DILocation(line: 10, column: 15, scope: !29)
!29 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 9)
!30 = !DILocation(line: 10, column: 14, scope: !29)
!31 = !DILocation(line: 10, column: 13, scope: !29)
!32 = !DILocation(line: 10, column: 18, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 10, column: 9)
!34 = !DILocation(line: 10, column: 19, scope: !33)
!35 = !DILocation(line: 10, column: 9, scope: !29)
!36 = !DILocation(line: 12, column: 25, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 9)
!38 = !DILocation(line: 12, column: 13, scope: !37)
!39 = !DILocation(line: 13, column: 9, scope: !37)
!40 = !DILocation(line: 10, column: 26, scope: !33)
!41 = !DILocation(line: 10, column: 27, scope: !33)
!42 = !DILocation(line: 10, column: 25, scope: !33)
!43 = !DILocation(line: 10, column: 9, scope: !33)
!44 = distinct !{!44, !35, !45}
!45 = !DILocation(line: 13, column: 9, scope: !29)
!46 = !DILocation(line: 14, column: 5, scope: !27)
!47 = !DILocation(line: 7, column: 23, scope: !23)
!48 = !DILocation(line: 7, column: 24, scope: !23)
!49 = !DILocation(line: 7, column: 22, scope: !23)
!50 = !DILocation(line: 7, column: 5, scope: !23)
!51 = distinct !{!51, !25, !52}
!52 = !DILocation(line: 14, column: 5, scope: !19)
!53 = !DILocation(line: 16, column: 5, scope: !7)
