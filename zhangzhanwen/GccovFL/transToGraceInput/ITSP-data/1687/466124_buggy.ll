; ModuleID = 'gcov/../WA_c/466124_buggy.c'
source_filename = "gcov/../WA_c/466124_buggy.c"
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
  store i32 0, i32* %3, align 4, !dbg !26
  br label %10, !dbg !28

; <label>:10:                                     ; preds = %51, %0
  %11 = load i32, i32* %3, align 4, !dbg !29
  %12 = load i32, i32* %2, align 4, !dbg !31
  %13 = icmp slt i32 %11, %12, !dbg !32
  br i1 %13, label %14, label %54, !dbg !33

; <label>:14:                                     ; preds = %10
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %4, i32* %5), !dbg !34
  %16 = load i32, i32* %4, align 4, !dbg !36
  %17 = add nsw i32 %16, 1, !dbg !37
  store i32 %17, i32* %6, align 4, !dbg !38
  %18 = load i32, i32* %5, align 4, !dbg !39
  %19 = sub nsw i32 %18, 1, !dbg !40
  store i32 %19, i32* %7, align 4, !dbg !41
  br label %20, !dbg !42

; <label>:20:                                     ; preds = %40, %14
  %21 = load i32, i32* %4, align 4, !dbg !43
  %22 = load i32, i32* %5, align 4, !dbg !44
  %23 = icmp ne i32 %21, %22, !dbg !45
  br i1 %23, label %24, label %41, !dbg !42

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %4, align 4, !dbg !46
  %26 = load i32, i32* %5, align 4, !dbg !49
  %27 = icmp sgt i32 %25, %26, !dbg !50
  br i1 %27, label %28, label %32, !dbg !51

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %4, align 4, !dbg !52
  %30 = load i32, i32* %5, align 4, !dbg !53
  %31 = sub nsw i32 %29, %30, !dbg !54
  store i32 %31, i32* %4, align 4, !dbg !55
  br label %32, !dbg !56

; <label>:32:                                     ; preds = %28, %24
  %33 = load i32, i32* %4, align 4, !dbg !57
  %34 = load i32, i32* %5, align 4, !dbg !59
  %35 = icmp slt i32 %33, %34, !dbg !60
  br i1 %35, label %36, label %40, !dbg !61

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %5, align 4, !dbg !62
  %38 = load i32, i32* %4, align 4, !dbg !63
  %39 = sub nsw i32 %37, %38, !dbg !64
  store i32 %39, i32* %5, align 4, !dbg !65
  br label %40, !dbg !66

; <label>:40:                                     ; preds = %36, %32
  br label %20, !dbg !42, !llvm.loop !67

; <label>:41:                                     ; preds = %20
  %42 = load i32, i32* %6, align 4, !dbg !69
  %43 = load i32, i32* %4, align 4, !dbg !70
  %44 = sdiv i32 %42, %43, !dbg !71
  %45 = load i32, i32* %7, align 4, !dbg !72
  %46 = load i32, i32* %4, align 4, !dbg !73
  %47 = sdiv i32 %45, %46, !dbg !74
  %48 = add nsw i32 %44, %47, !dbg !75
  store i32 %48, i32* %8, align 4, !dbg !76
  %49 = load i32, i32* %8, align 4, !dbg !77
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %49), !dbg !78
  br label %51, !dbg !79

; <label>:51:                                     ; preds = %41
  %52 = load i32, i32* %3, align 4, !dbg !80
  %53 = add nsw i32 %52, 1, !dbg !80
  store i32 %53, i32* %3, align 4, !dbg !80
  br label %10, !dbg !81, !llvm.loop !82

; <label>:54:                                     ; preds = %10
  %55 = load i32, i32* %1, align 4, !dbg !84
  ret i32 %55, !dbg !84
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
!1 = !DIFile(filename: "gcov/../WA_c/466124_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
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
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 21, scope: !7)
!21 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 4, type: !10)
!22 = !DILocation(line: 4, column: 24, scope: !7)
!23 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 4, type: !10)
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
!36 = !DILocation(line: 9, column: 13, scope: !35)
!37 = !DILocation(line: 9, column: 15, scope: !35)
!38 = !DILocation(line: 9, column: 11, scope: !35)
!39 = !DILocation(line: 10, column: 13, scope: !35)
!40 = !DILocation(line: 10, column: 15, scope: !35)
!41 = !DILocation(line: 10, column: 11, scope: !35)
!42 = !DILocation(line: 11, column: 9, scope: !35)
!43 = !DILocation(line: 11, column: 15, scope: !35)
!44 = !DILocation(line: 11, column: 20, scope: !35)
!45 = !DILocation(line: 11, column: 17, scope: !35)
!46 = !DILocation(line: 13, column: 16, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 13, column: 16)
!48 = distinct !DILexicalBlock(scope: !35, file: !1, line: 12, column: 9)
!49 = !DILocation(line: 13, column: 20, scope: !47)
!50 = !DILocation(line: 13, column: 18, scope: !47)
!51 = !DILocation(line: 13, column: 16, scope: !48)
!52 = !DILocation(line: 14, column: 21, scope: !47)
!53 = !DILocation(line: 14, column: 25, scope: !47)
!54 = !DILocation(line: 14, column: 23, scope: !47)
!55 = !DILocation(line: 14, column: 19, scope: !47)
!56 = !DILocation(line: 14, column: 17, scope: !47)
!57 = !DILocation(line: 15, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !48, file: !1, line: 15, column: 16)
!59 = !DILocation(line: 15, column: 20, scope: !58)
!60 = !DILocation(line: 15, column: 18, scope: !58)
!61 = !DILocation(line: 15, column: 16, scope: !48)
!62 = !DILocation(line: 16, column: 21, scope: !58)
!63 = !DILocation(line: 16, column: 25, scope: !58)
!64 = !DILocation(line: 16, column: 23, scope: !58)
!65 = !DILocation(line: 16, column: 19, scope: !58)
!66 = !DILocation(line: 16, column: 17, scope: !58)
!67 = distinct !{!67, !42, !68}
!68 = !DILocation(line: 17, column: 9, scope: !35)
!69 = !DILocation(line: 18, column: 15, scope: !35)
!70 = !DILocation(line: 18, column: 19, scope: !35)
!71 = !DILocation(line: 18, column: 17, scope: !35)
!72 = !DILocation(line: 18, column: 23, scope: !35)
!73 = !DILocation(line: 18, column: 27, scope: !35)
!74 = !DILocation(line: 18, column: 25, scope: !35)
!75 = !DILocation(line: 18, column: 21, scope: !35)
!76 = !DILocation(line: 18, column: 13, scope: !35)
!77 = !DILocation(line: 19, column: 24, scope: !35)
!78 = !DILocation(line: 19, column: 9, scope: !35)
!79 = !DILocation(line: 20, column: 5, scope: !35)
!80 = !DILocation(line: 6, column: 24, scope: !30)
!81 = !DILocation(line: 6, column: 5, scope: !30)
!82 = distinct !{!82, !33, !83}
!83 = !DILocation(line: 20, column: 5, scope: !27)
!84 = !DILocation(line: 21, column: 1, scope: !7)
