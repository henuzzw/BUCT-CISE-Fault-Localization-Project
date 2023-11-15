; ModuleID = 'gcov/../WA_c/466063_buggy.c'
source_filename = "gcov/../WA_c/466063_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  br label %9, !dbg !14

; <label>:9:                                      ; preds = %26, %0
  %10 = load i32, i32* %2, align 4, !dbg !15
  %11 = add nsw i32 %10, -1, !dbg !15
  store i32 %11, i32* %2, align 4, !dbg !15
  %12 = icmp ne i32 %10, 0, !dbg !16
  br i1 %12, label %13, label %34, !dbg !14

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %6, metadata !24, metadata !DIExpression()), !dbg !25
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %3, i32* %4), !dbg !26
  %15 = load i32, i32* %3, align 4, !dbg !27
  store i32 %15, i32* %5, align 4, !dbg !28
  %16 = load i32, i32* %4, align 4, !dbg !29
  store i32 %16, i32* %6, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %7, metadata !31, metadata !DIExpression()), !dbg !32
  br label %17, !dbg !33

; <label>:17:                                     ; preds = %20, %13
  %18 = load i32, i32* %4, align 4, !dbg !34
  %19 = icmp ne i32 %18, 0, !dbg !35
  br i1 %19, label %20, label %26, !dbg !33

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %3, align 4, !dbg !36
  %22 = load i32, i32* %4, align 4, !dbg !38
  %23 = srem i32 %21, %22, !dbg !39
  store i32 %23, i32* %7, align 4, !dbg !40
  %24 = load i32, i32* %4, align 4, !dbg !41
  store i32 %24, i32* %3, align 4, !dbg !42
  %25 = load i32, i32* %7, align 4, !dbg !43
  store i32 %25, i32* %4, align 4, !dbg !44
  br label %17, !dbg !33, !llvm.loop !45

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %5, align 4, !dbg !47
  %28 = load i32, i32* %6, align 4, !dbg !48
  %29 = add nsw i32 %27, %28, !dbg !49
  %30 = add nsw i32 %29, 1, !dbg !50
  %31 = load i32, i32* %3, align 4, !dbg !51
  %32 = sdiv i32 %30, %31, !dbg !52
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %32), !dbg !53
  br label %9, !dbg !14, !llvm.loop !54

; <label>:34:                                     ; preds = %9
  %35 = load i32, i32* %1, align 4, !dbg !56
  ret i32 %35, !dbg !56
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
!1 = !DIFile(filename: "gcov/../WA_c/466063_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "t", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocation(line: 5, column: 5, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = !DILocation(line: 6, column: 12, scope: !7)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocalVariable(name: "x", scope: !18, file: !1, line: 8, type: !10)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!19 = !DILocation(line: 8, column: 13, scope: !18)
!20 = !DILocalVariable(name: "y", scope: !18, file: !1, line: 8, type: !10)
!21 = !DILocation(line: 8, column: 16, scope: !18)
!22 = !DILocalVariable(name: "s", scope: !18, file: !1, line: 9, type: !10)
!23 = !DILocation(line: 9, column: 13, scope: !18)
!24 = !DILocalVariable(name: "t", scope: !18, file: !1, line: 9, type: !10)
!25 = !DILocation(line: 9, column: 16, scope: !18)
!26 = !DILocation(line: 10, column: 9, scope: !18)
!27 = !DILocation(line: 11, column: 13, scope: !18)
!28 = !DILocation(line: 11, column: 11, scope: !18)
!29 = !DILocation(line: 12, column: 13, scope: !18)
!30 = !DILocation(line: 12, column: 11, scope: !18)
!31 = !DILocalVariable(name: "r", scope: !18, file: !1, line: 13, type: !10)
!32 = !DILocation(line: 13, column: 13, scope: !18)
!33 = !DILocation(line: 14, column: 9, scope: !18)
!34 = !DILocation(line: 14, column: 15, scope: !18)
!35 = !DILocation(line: 14, column: 17, scope: !18)
!36 = !DILocation(line: 16, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !18, file: !1, line: 15, column: 9)
!38 = !DILocation(line: 16, column: 21, scope: !37)
!39 = !DILocation(line: 16, column: 19, scope: !37)
!40 = !DILocation(line: 16, column: 15, scope: !37)
!41 = !DILocation(line: 17, column: 17, scope: !37)
!42 = !DILocation(line: 17, column: 15, scope: !37)
!43 = !DILocation(line: 18, column: 17, scope: !37)
!44 = !DILocation(line: 18, column: 15, scope: !37)
!45 = distinct !{!45, !33, !46}
!46 = !DILocation(line: 19, column: 9, scope: !18)
!47 = !DILocation(line: 20, column: 25, scope: !18)
!48 = !DILocation(line: 20, column: 29, scope: !18)
!49 = !DILocation(line: 20, column: 27, scope: !18)
!50 = !DILocation(line: 20, column: 31, scope: !18)
!51 = !DILocation(line: 20, column: 38, scope: !18)
!52 = !DILocation(line: 20, column: 36, scope: !18)
!53 = !DILocation(line: 20, column: 9, scope: !18)
!54 = distinct !{!54, !14, !55}
!55 = !DILocation(line: 21, column: 5, scope: !7)
!56 = !DILocation(line: 22, column: 1, scope: !7)
