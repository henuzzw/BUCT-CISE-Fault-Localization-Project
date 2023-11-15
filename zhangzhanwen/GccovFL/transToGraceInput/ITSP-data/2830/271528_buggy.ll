; ModuleID = 'gcov/../WA_c/271528_buggy.c'
source_filename = "gcov/../WA_c/271528_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"The second largest number is %d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4, i32* %5), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !DIExpression()), !dbg !21
  %10 = load i32, i32* %2, align 4, !dbg !22
  store i32 %10, i32* %6, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %7, metadata !23, metadata !DIExpression()), !dbg !24
  %11 = load i32, i32* %4, align 4, !dbg !25
  store i32 %11, i32* %7, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %8, metadata !26, metadata !DIExpression()), !dbg !27
  %12 = load i32, i32* %3, align 4, !dbg !28
  %13 = load i32, i32* %2, align 4, !dbg !30
  %14 = icmp sgt i32 %12, %13, !dbg !31
  br i1 %14, label %15, label %18, !dbg !32

; <label>:15:                                     ; preds = %0
  %16 = load i32, i32* %3, align 4, !dbg !33
  store i32 %16, i32* %6, align 4, !dbg !35
  %17 = load i32, i32* %2, align 4, !dbg !36
  store i32 %17, i32* %3, align 4, !dbg !37
  br label %18, !dbg !38

; <label>:18:                                     ; preds = %15, %0
  %19 = load i32, i32* %5, align 4, !dbg !39
  %20 = load i32, i32* %7, align 4, !dbg !41
  %21 = icmp sgt i32 %19, %20, !dbg !42
  br i1 %21, label %22, label %25, !dbg !43

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4, !dbg !44
  store i32 %23, i32* %7, align 4, !dbg !46
  %24 = load i32, i32* %4, align 4, !dbg !47
  store i32 %24, i32* %5, align 4, !dbg !48
  br label %25, !dbg !49

; <label>:25:                                     ; preds = %22, %18
  %26 = load i32, i32* %6, align 4, !dbg !50
  %27 = load i32, i32* %7, align 4, !dbg !52
  %28 = icmp sgt i32 %26, %27, !dbg !53
  br i1 %28, label %29, label %35, !dbg !54

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %3, align 4, !dbg !55
  %31 = load i32, i32* %7, align 4, !dbg !56
  %32 = icmp sgt i32 %30, %31, !dbg !57
  br i1 %32, label %33, label %35, !dbg !58

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %3, align 4, !dbg !59
  store i32 %34, i32* %8, align 4, !dbg !61
  br label %35, !dbg !62

; <label>:35:                                     ; preds = %33, %29, %25
  %36 = load i32, i32* %8, align 4, !dbg !63
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %36), !dbg !64
  ret i32 0, !dbg !65
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
!1 = !DIFile(filename: "gcov/../WA_c/271528_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2830")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocalVariable(name: "g1", scope: !7, file: !1, line: 7, type: !10)
!21 = !DILocation(line: 7, column: 9, scope: !7)
!22 = !DILocation(line: 7, column: 12, scope: !7)
!23 = !DILocalVariable(name: "g2", scope: !7, file: !1, line: 7, type: !10)
!24 = !DILocation(line: 7, column: 14, scope: !7)
!25 = !DILocation(line: 7, column: 17, scope: !7)
!26 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 7, type: !10)
!27 = !DILocation(line: 7, column: 19, scope: !7)
!28 = !DILocation(line: 8, column: 8, scope: !29)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 8)
!30 = !DILocation(line: 8, column: 10, scope: !29)
!31 = !DILocation(line: 8, column: 9, scope: !29)
!32 = !DILocation(line: 8, column: 8, scope: !7)
!33 = !DILocation(line: 10, column: 12, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 5)
!35 = !DILocation(line: 10, column: 11, scope: !34)
!36 = !DILocation(line: 11, column: 11, scope: !34)
!37 = !DILocation(line: 11, column: 10, scope: !34)
!38 = !DILocation(line: 12, column: 5, scope: !34)
!39 = !DILocation(line: 13, column: 8, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 8)
!41 = !DILocation(line: 13, column: 10, scope: !40)
!42 = !DILocation(line: 13, column: 9, scope: !40)
!43 = !DILocation(line: 13, column: 8, scope: !7)
!44 = !DILocation(line: 15, column: 12, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 14, column: 5)
!46 = !DILocation(line: 15, column: 11, scope: !45)
!47 = !DILocation(line: 16, column: 11, scope: !45)
!48 = !DILocation(line: 16, column: 10, scope: !45)
!49 = !DILocation(line: 17, column: 5, scope: !45)
!50 = !DILocation(line: 18, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 8)
!52 = !DILocation(line: 18, column: 12, scope: !51)
!53 = !DILocation(line: 18, column: 11, scope: !51)
!54 = !DILocation(line: 18, column: 15, scope: !51)
!55 = !DILocation(line: 18, column: 18, scope: !51)
!56 = !DILocation(line: 18, column: 20, scope: !51)
!57 = !DILocation(line: 18, column: 19, scope: !51)
!58 = !DILocation(line: 18, column: 8, scope: !7)
!59 = !DILocation(line: 20, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !1, line: 19, column: 5)
!61 = !DILocation(line: 20, column: 10, scope: !60)
!62 = !DILocation(line: 21, column: 5, scope: !60)
!63 = !DILocation(line: 22, column: 46, scope: !7)
!64 = !DILocation(line: 22, column: 5, scope: !7)
!65 = !DILocation(line: 23, column: 5, scope: !7)
