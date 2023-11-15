; ModuleID = 'gcov/../WA_c/470213_buggy.c'
source_filename = "gcov/../WA_c/470213_buggy.c"
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
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !23, metadata !DIExpression()), !dbg !24
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !25
  store i32 0, i32* %6, align 4, !dbg !26
  br label %10, !dbg !28

; <label>:10:                                     ; preds = %37, %0
  %11 = load i32, i32* %6, align 4, !dbg !29
  %12 = load i32, i32* %2, align 4, !dbg !31
  %13 = icmp slt i32 %11, %12, !dbg !32
  br i1 %13, label %14, label %40, !dbg !33

; <label>:14:                                     ; preds = %10
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %3, i32* %4), !dbg !34
  %16 = load i32, i32* %3, align 4, !dbg !36
  store i32 %16, i32* %7, align 4, !dbg !37
  %17 = load i32, i32* %4, align 4, !dbg !38
  %18 = add nsw i32 %17, 1, !dbg !39
  store i32 %18, i32* %8, align 4, !dbg !40
  br label %19, !dbg !41

; <label>:19:                                     ; preds = %22, %14
  %20 = load i32, i32* %4, align 4, !dbg !42
  %21 = icmp ne i32 %20, 0, !dbg !43
  br i1 %21, label %22, label %28, !dbg !41

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4, !dbg !44
  %24 = load i32, i32* %4, align 4, !dbg !46
  %25 = srem i32 %23, %24, !dbg !47
  store i32 %25, i32* %5, align 4, !dbg !48
  %26 = load i32, i32* %4, align 4, !dbg !49
  store i32 %26, i32* %3, align 4, !dbg !50
  %27 = load i32, i32* %5, align 4, !dbg !51
  store i32 %27, i32* %4, align 4, !dbg !52
  br label %19, !dbg !41, !llvm.loop !53

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %7, align 4, !dbg !55
  %30 = load i32, i32* %3, align 4, !dbg !56
  %31 = sdiv i32 %29, %30, !dbg !57
  %32 = load i32, i32* %8, align 4, !dbg !58
  %33 = load i32, i32* %3, align 4, !dbg !59
  %34 = sdiv i32 %32, %33, !dbg !60
  %35 = add nsw i32 %31, %34, !dbg !61
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %35), !dbg !62
  br label %37, !dbg !63

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %6, align 4, !dbg !64
  %39 = add nsw i32 %38, 1, !dbg !64
  store i32 %39, i32* %6, align 4, !dbg !64
  br label %10, !dbg !65, !llvm.loop !66

; <label>:40:                                     ; preds = %10
  ret i32 0, !dbg !68
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
!1 = !DIFile(filename: "gcov/../WA_c/470213_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 21, scope: !7)
!21 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 4, type: !10)
!22 = !DILocation(line: 4, column: 24, scope: !7)
!23 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 4, type: !10)
!24 = !DILocation(line: 4, column: 27, scope: !7)
!25 = !DILocation(line: 5, column: 5, scope: !7)
!26 = !DILocation(line: 6, column: 11, scope: !27)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!28 = !DILocation(line: 6, column: 9, scope: !27)
!29 = !DILocation(line: 6, column: 16, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 6, column: 5)
!31 = !DILocation(line: 6, column: 20, scope: !30)
!32 = !DILocation(line: 6, column: 18, scope: !30)
!33 = !DILocation(line: 6, column: 5, scope: !27)
!34 = !DILocation(line: 8, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 7, column: 5)
!36 = !DILocation(line: 10, column: 13, scope: !35)
!37 = !DILocation(line: 10, column: 11, scope: !35)
!38 = !DILocation(line: 11, column: 13, scope: !35)
!39 = !DILocation(line: 11, column: 14, scope: !35)
!40 = !DILocation(line: 11, column: 11, scope: !35)
!41 = !DILocation(line: 12, column: 9, scope: !35)
!42 = !DILocation(line: 12, column: 15, scope: !35)
!43 = !DILocation(line: 12, column: 17, scope: !35)
!44 = !DILocation(line: 14, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !35, file: !1, line: 13, column: 9)
!46 = !DILocation(line: 14, column: 21, scope: !45)
!47 = !DILocation(line: 14, column: 19, scope: !45)
!48 = !DILocation(line: 14, column: 15, scope: !45)
!49 = !DILocation(line: 15, column: 17, scope: !45)
!50 = !DILocation(line: 15, column: 15, scope: !45)
!51 = !DILocation(line: 16, column: 17, scope: !45)
!52 = !DILocation(line: 16, column: 15, scope: !45)
!53 = distinct !{!53, !41, !54}
!54 = !DILocation(line: 17, column: 9, scope: !35)
!55 = !DILocation(line: 18, column: 24, scope: !35)
!56 = !DILocation(line: 18, column: 28, scope: !35)
!57 = !DILocation(line: 18, column: 26, scope: !35)
!58 = !DILocation(line: 18, column: 32, scope: !35)
!59 = !DILocation(line: 18, column: 36, scope: !35)
!60 = !DILocation(line: 18, column: 34, scope: !35)
!61 = !DILocation(line: 18, column: 30, scope: !35)
!62 = !DILocation(line: 18, column: 9, scope: !35)
!63 = !DILocation(line: 19, column: 5, scope: !35)
!64 = !DILocation(line: 6, column: 24, scope: !30)
!65 = !DILocation(line: 6, column: 5, scope: !30)
!66 = distinct !{!66, !33, !67}
!67 = !DILocation(line: 19, column: 5, scope: !27)
!68 = !DILocation(line: 20, column: 5, scope: !7)
