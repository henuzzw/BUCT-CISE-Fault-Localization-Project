; ModuleID = 'gcov/../WA_c/1745148_buggy.c'
source_filename = "gcov/../WA_c/1745148_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Y\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"N\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  br label %6, !dbg !13

; <label>:6:                                      ; preds = %44, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !14
  %8 = icmp ne i32 %7, -1, !dbg !15
  br i1 %8, label %9, label %45, !dbg !13

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %5, align 4, !dbg !23
  %10 = load i32, i32* %2, align 4, !dbg !24
  store i32 %10, i32* %3, align 4, !dbg !25
  br label %11, !dbg !26

; <label>:11:                                     ; preds = %14, %9
  %12 = load i32, i32* %3, align 4, !dbg !27
  %13 = icmp sgt i32 %12, 0, !dbg !28
  br i1 %13, label %14, label %34, !dbg !26

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !29
  %16 = srem i32 %15, 10, !dbg !31
  store i32 %16, i32* %4, align 4, !dbg !32
  %17 = load i32, i32* %5, align 4, !dbg !33
  %18 = load i32, i32* %4, align 4, !dbg !34
  %19 = load i32, i32* %4, align 4, !dbg !35
  %20 = mul nsw i32 %18, %19, !dbg !36
  %21 = load i32, i32* %4, align 4, !dbg !37
  %22 = mul nsw i32 %20, %21, !dbg !38
  %23 = load i32, i32* %4, align 4, !dbg !39
  %24 = mul nsw i32 %22, %23, !dbg !40
  %25 = load i32, i32* %4, align 4, !dbg !41
  %26 = mul nsw i32 %24, %25, !dbg !42
  %27 = load i32, i32* %4, align 4, !dbg !43
  %28 = mul nsw i32 %26, %27, !dbg !44
  %29 = load i32, i32* %4, align 4, !dbg !45
  %30 = mul nsw i32 %28, %29, !dbg !46
  %31 = add nsw i32 %17, %30, !dbg !47
  store i32 %31, i32* %5, align 4, !dbg !48
  %32 = load i32, i32* %3, align 4, !dbg !49
  %33 = sdiv i32 %32, 10, !dbg !50
  store i32 %33, i32* %3, align 4, !dbg !51
  br label %11, !dbg !26, !llvm.loop !52

; <label>:34:                                     ; preds = %11
  %35 = load i32, i32* %5, align 4, !dbg !54
  %36 = add nsw i32 %35, -1, !dbg !54
  store i32 %36, i32* %5, align 4, !dbg !54
  %37 = load i32, i32* %2, align 4, !dbg !55
  %38 = load i32, i32* %5, align 4, !dbg !57
  %39 = icmp eq i32 %37, %38, !dbg !58
  br i1 %39, label %40, label %42, !dbg !59

; <label>:40:                                     ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !60
  br label %44, !dbg !60

; <label>:42:                                     ; preds = %34
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !61
  br label %44

; <label>:44:                                     ; preds = %42, %40
  br label %6, !dbg !13, !llvm.loop !62

; <label>:45:                                     ; preds = %6
  ret i32 0, !dbg !64
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
!1 = !DIFile(filename: "gcov/../WA_c/1745148_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocation(line: 5, column: 5, scope: !7)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocation(line: 5, column: 27, scope: !7)
!16 = !DILocalVariable(name: "m", scope: !17, file: !1, line: 7, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!18 = !DILocation(line: 7, column: 13, scope: !17)
!19 = !DILocalVariable(name: "n", scope: !17, file: !1, line: 7, type: !10)
!20 = !DILocation(line: 7, column: 16, scope: !17)
!21 = !DILocalVariable(name: "sum", scope: !17, file: !1, line: 7, type: !10)
!22 = !DILocation(line: 7, column: 19, scope: !17)
!23 = !DILocation(line: 8, column: 13, scope: !17)
!24 = !DILocation(line: 9, column: 13, scope: !17)
!25 = !DILocation(line: 9, column: 11, scope: !17)
!26 = !DILocation(line: 10, column: 9, scope: !17)
!27 = !DILocation(line: 10, column: 15, scope: !17)
!28 = !DILocation(line: 10, column: 17, scope: !17)
!29 = !DILocation(line: 12, column: 17, scope: !30)
!30 = distinct !DILexicalBlock(scope: !17, file: !1, line: 11, column: 9)
!31 = !DILocation(line: 12, column: 19, scope: !30)
!32 = !DILocation(line: 12, column: 15, scope: !30)
!33 = !DILocation(line: 13, column: 19, scope: !30)
!34 = !DILocation(line: 13, column: 25, scope: !30)
!35 = !DILocation(line: 13, column: 29, scope: !30)
!36 = !DILocation(line: 13, column: 27, scope: !30)
!37 = !DILocation(line: 13, column: 33, scope: !30)
!38 = !DILocation(line: 13, column: 31, scope: !30)
!39 = !DILocation(line: 13, column: 37, scope: !30)
!40 = !DILocation(line: 13, column: 35, scope: !30)
!41 = !DILocation(line: 13, column: 41, scope: !30)
!42 = !DILocation(line: 13, column: 39, scope: !30)
!43 = !DILocation(line: 13, column: 45, scope: !30)
!44 = !DILocation(line: 13, column: 43, scope: !30)
!45 = !DILocation(line: 13, column: 49, scope: !30)
!46 = !DILocation(line: 13, column: 47, scope: !30)
!47 = !DILocation(line: 13, column: 23, scope: !30)
!48 = !DILocation(line: 13, column: 17, scope: !30)
!49 = !DILocation(line: 14, column: 17, scope: !30)
!50 = !DILocation(line: 14, column: 19, scope: !30)
!51 = !DILocation(line: 14, column: 15, scope: !30)
!52 = distinct !{!52, !26, !53}
!53 = !DILocation(line: 15, column: 9, scope: !17)
!54 = !DILocation(line: 16, column: 12, scope: !17)
!55 = !DILocation(line: 17, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !17, file: !1, line: 17, column: 12)
!57 = !DILocation(line: 17, column: 17, scope: !56)
!58 = !DILocation(line: 17, column: 14, scope: !56)
!59 = !DILocation(line: 17, column: 12, scope: !17)
!60 = !DILocation(line: 18, column: 13, scope: !56)
!61 = !DILocation(line: 20, column: 13, scope: !56)
!62 = distinct !{!62, !13, !63}
!63 = !DILocation(line: 22, column: 5, scope: !7)
!64 = !DILocation(line: 23, column: 5, scope: !7)
