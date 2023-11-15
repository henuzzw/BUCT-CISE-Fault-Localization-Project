; ModuleID = 'gcov/../WA_c/1063350_buggy.c'
source_filename = "gcov/../WA_c/1063350_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  br label %6, !dbg !14

; <label>:6:                                      ; preds = %29, %0
  %7 = load i32, i32* %2, align 4, !dbg !15
  %8 = icmp ne i32 %7, 0, !dbg !16
  br i1 %8, label %9, label %33, !dbg !14

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %3, align 4, !dbg !19
  br label %10, !dbg !20

; <label>:10:                                     ; preds = %20, %9
  %11 = load i32, i32* %2, align 4, !dbg !21
  %12 = icmp sge i32 %11, 2, !dbg !22
  br i1 %12, label %13, label %29, !dbg !20

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !25
  %14 = load i32, i32* %2, align 4, !dbg !26
  %15 = icmp eq i32 %14, 2, !dbg !28
  br i1 %15, label %16, label %17, !dbg !29

; <label>:16:                                     ; preds = %13
  store i32 1, i32* %4, align 4, !dbg !30
  br label %20, !dbg !31

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %2, align 4, !dbg !32
  %19 = sdiv i32 %18, 3, !dbg !33
  store i32 %19, i32* %4, align 4, !dbg !34
  br label %20

; <label>:20:                                     ; preds = %17, %16
  %21 = load i32, i32* %4, align 4, !dbg !35
  %22 = add nsw i32 %21, 1, !dbg !36
  %23 = load i32, i32* %3, align 4, !dbg !37
  %24 = add nsw i32 %23, %22, !dbg !37
  store i32 %24, i32* %3, align 4, !dbg !37
  %25 = load i32, i32* %4, align 4, !dbg !38
  %26 = mul nsw i32 %25, 2, !dbg !39
  %27 = load i32, i32* %2, align 4, !dbg !40
  %28 = sub nsw i32 %27, %26, !dbg !40
  store i32 %28, i32* %2, align 4, !dbg !40
  br label %10, !dbg !20, !llvm.loop !41

; <label>:29:                                     ; preds = %10
  %30 = load i32, i32* %3, align 4, !dbg !43
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %30), !dbg !44
  %32 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !45
  br label %6, !dbg !14, !llvm.loop !46

; <label>:33:                                     ; preds = %6
  %34 = load i32, i32* %1, align 4, !dbg !48
  ret i32 %34, !dbg !48
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
!1 = !DIFile(filename: "gcov/../WA_c/1063350_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1951")
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
!13 = !DILocation(line: 5, column: 5, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = !DILocation(line: 6, column: 11, scope: !7)
!16 = !DILocation(line: 6, column: 13, scope: !7)
!17 = !DILocalVariable(name: "sum", scope: !18, file: !1, line: 8, type: !10)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!19 = !DILocation(line: 8, column: 13, scope: !18)
!20 = !DILocation(line: 9, column: 9, scope: !18)
!21 = !DILocation(line: 9, column: 15, scope: !18)
!22 = !DILocation(line: 9, column: 17, scope: !18)
!23 = !DILocalVariable(name: "m", scope: !24, file: !1, line: 11, type: !10)
!24 = distinct !DILexicalBlock(scope: !18, file: !1, line: 10, column: 9)
!25 = !DILocation(line: 11, column: 17, scope: !24)
!26 = !DILocation(line: 12, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 16)
!28 = !DILocation(line: 12, column: 18, scope: !27)
!29 = !DILocation(line: 12, column: 16, scope: !24)
!30 = !DILocation(line: 12, column: 26, scope: !27)
!31 = !DILocation(line: 12, column: 24, scope: !27)
!32 = !DILocation(line: 13, column: 22, scope: !27)
!33 = !DILocation(line: 13, column: 24, scope: !27)
!34 = !DILocation(line: 13, column: 20, scope: !27)
!35 = !DILocation(line: 14, column: 20, scope: !24)
!36 = !DILocation(line: 14, column: 22, scope: !24)
!37 = !DILocation(line: 14, column: 17, scope: !24)
!38 = !DILocation(line: 15, column: 18, scope: !24)
!39 = !DILocation(line: 15, column: 20, scope: !24)
!40 = !DILocation(line: 15, column: 15, scope: !24)
!41 = distinct !{!41, !20, !42}
!42 = !DILocation(line: 16, column: 9, scope: !18)
!43 = !DILocation(line: 17, column: 24, scope: !18)
!44 = !DILocation(line: 17, column: 9, scope: !18)
!45 = !DILocation(line: 18, column: 9, scope: !18)
!46 = distinct !{!46, !14, !47}
!47 = !DILocation(line: 19, column: 5, scope: !7)
!48 = !DILocation(line: 20, column: 1, scope: !7)
