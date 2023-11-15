; ModuleID = 'gcov/../WA_c/471089_buggy.c'
source_filename = "gcov/../WA_c/471089_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 1, i32* %3, align 4, !dbg !15
  br label %8, !dbg !16

; <label>:8:                                      ; preds = %37, %0
  %9 = load i32, i32* %2, align 4, !dbg !17
  %10 = add nsw i32 %9, -1, !dbg !17
  store i32 %10, i32* %2, align 4, !dbg !17
  %11 = icmp ne i32 %9, 0, !dbg !18
  br i1 %11, label %12, label %44, !dbg !16

; <label>:12:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !19, metadata !DIExpression()), !dbg !22
  store i64 0, i64* %4, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %5, metadata !23, metadata !DIExpression()), !dbg !24
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %5), !dbg !25
  %14 = load i32, i32* %3, align 4, !dbg !26
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %14), !dbg !27
  %16 = load i32, i32* %5, align 4, !dbg !28
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %16), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !32
  store i32 1, i32* %6, align 4, !dbg !32
  br label %18, !dbg !33

; <label>:18:                                     ; preds = %34, %12
  %19 = load i32, i32* %6, align 4, !dbg !34
  %20 = load i32, i32* %5, align 4, !dbg !36
  %21 = icmp sle i32 %19, %20, !dbg !37
  br i1 %21, label %22, label %37, !dbg !38

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %6, align 4, !dbg !39
  %24 = load i32, i32* %6, align 4, !dbg !41
  %25 = add nsw i32 %24, 1, !dbg !42
  %26 = mul nsw i32 %23, %25, !dbg !43
  %27 = load i32, i32* %6, align 4, !dbg !44
  %28 = add nsw i32 %27, 2, !dbg !45
  %29 = mul nsw i32 %26, %28, !dbg !46
  %30 = sdiv i32 %29, 2, !dbg !47
  %31 = sext i32 %30 to i64, !dbg !39
  %32 = load i64, i64* %4, align 8, !dbg !48
  %33 = add nsw i64 %32, %31, !dbg !48
  store i64 %33, i64* %4, align 8, !dbg !48
  br label %34, !dbg !49

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %6, align 4, !dbg !50
  %36 = add nsw i32 %35, 1, !dbg !50
  store i32 %36, i32* %6, align 4, !dbg !50
  br label %18, !dbg !51, !llvm.loop !52

; <label>:37:                                     ; preds = %18
  %38 = load i64, i64* %4, align 8, !dbg !54
  %39 = add nsw i64 %38, -1, !dbg !54
  store i64 %39, i64* %4, align 8, !dbg !54
  %40 = load i64, i64* %4, align 8, !dbg !55
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 %40), !dbg !56
  %42 = load i32, i32* %3, align 4, !dbg !57
  %43 = add nsw i32 %42, 1, !dbg !57
  store i32 %43, i32* %3, align 4, !dbg !57
  br label %8, !dbg !16, !llvm.loop !58

; <label>:44:                                     ; preds = %8
  %45 = load i32, i32* %1, align 4, !dbg !60
  ret i32 %45, !dbg !60
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
!1 = !DIFile(filename: "gcov/../WA_c/471089_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1500")
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
!12 = !DILocation(line: 4, column: 6, scope: !7)
!13 = !DILocation(line: 5, column: 2, scope: !7)
!14 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 6, type: !10)
!15 = !DILocation(line: 6, column: 6, scope: !7)
!16 = !DILocation(line: 7, column: 2, scope: !7)
!17 = !DILocation(line: 7, column: 9, scope: !7)
!18 = !DILocation(line: 7, column: 8, scope: !7)
!19 = !DILocalVariable(name: "sum", scope: !20, file: !1, line: 9, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 2)
!21 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!22 = !DILocation(line: 9, column: 13, scope: !20)
!23 = !DILocalVariable(name: "m", scope: !20, file: !1, line: 10, type: !10)
!24 = !DILocation(line: 10, column: 7, scope: !20)
!25 = !DILocation(line: 11, column: 3, scope: !20)
!26 = !DILocation(line: 12, column: 16, scope: !20)
!27 = !DILocation(line: 12, column: 3, scope: !20)
!28 = !DILocation(line: 13, column: 16, scope: !20)
!29 = !DILocation(line: 13, column: 3, scope: !20)
!30 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 14, type: !10)
!31 = distinct !DILexicalBlock(scope: !20, file: !1, line: 14, column: 3)
!32 = !DILocation(line: 14, column: 11, scope: !31)
!33 = !DILocation(line: 14, column: 7, scope: !31)
!34 = !DILocation(line: 14, column: 15, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 14, column: 3)
!36 = !DILocation(line: 14, column: 18, scope: !35)
!37 = !DILocation(line: 14, column: 16, scope: !35)
!38 = !DILocation(line: 14, column: 3, scope: !31)
!39 = !DILocation(line: 16, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 15, column: 3)
!41 = !DILocation(line: 16, column: 12, scope: !40)
!42 = !DILocation(line: 16, column: 13, scope: !40)
!43 = !DILocation(line: 16, column: 10, scope: !40)
!44 = !DILocation(line: 16, column: 18, scope: !40)
!45 = !DILocation(line: 16, column: 19, scope: !40)
!46 = !DILocation(line: 16, column: 16, scope: !40)
!47 = !DILocation(line: 16, column: 22, scope: !40)
!48 = !DILocation(line: 16, column: 7, scope: !40)
!49 = !DILocation(line: 17, column: 3, scope: !40)
!50 = !DILocation(line: 14, column: 21, scope: !35)
!51 = !DILocation(line: 14, column: 3, scope: !35)
!52 = distinct !{!52, !38, !53}
!53 = !DILocation(line: 17, column: 3, scope: !31)
!54 = !DILocation(line: 18, column: 6, scope: !20)
!55 = !DILocation(line: 19, column: 19, scope: !20)
!56 = !DILocation(line: 19, column: 3, scope: !20)
!57 = !DILocation(line: 20, column: 4, scope: !20)
!58 = distinct !{!58, !16, !59}
!59 = !DILocation(line: 21, column: 2, scope: !7)
!60 = !DILocation(line: 22, column: 1, scope: !7)
