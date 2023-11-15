; ModuleID = 'gcov/../WA_c/271983_buggy.c'
source_filename = "gcov/../WA_c/271983_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Number of possible triangles is %d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 1, i32* %3, align 4, !dbg !19
  store i32 1, i32* %4, align 4, !dbg !20
  store i32 1, i32* %5, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %6, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %6, align 4, !dbg !23
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !24
  br label %8, !dbg !25

; <label>:8:                                      ; preds = %49, %0
  %9 = load i32, i32* %3, align 4, !dbg !26
  %10 = load i32, i32* %2, align 4, !dbg !27
  %11 = icmp sle i32 %9, %10, !dbg !28
  br i1 %11, label %12, label %52, !dbg !25

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !29
  br label %13, !dbg !31

; <label>:13:                                     ; preds = %46, %12
  %14 = load i32, i32* %4, align 4, !dbg !32
  %15 = load i32, i32* %2, align 4, !dbg !33
  %16 = icmp sle i32 %14, %15, !dbg !34
  br i1 %16, label %17, label %49, !dbg !31

; <label>:17:                                     ; preds = %13
  store i32 1, i32* %5, align 4, !dbg !35
  br label %18, !dbg !37

; <label>:18:                                     ; preds = %43, %17
  %19 = load i32, i32* %5, align 4, !dbg !38
  %20 = load i32, i32* %2, align 4, !dbg !39
  %21 = icmp sle i32 %19, %20, !dbg !40
  br i1 %21, label %22, label %46, !dbg !37

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %3, align 4, !dbg !41
  %24 = load i32, i32* %4, align 4, !dbg !44
  %25 = load i32, i32* %5, align 4, !dbg !45
  %26 = add nsw i32 %24, %25, !dbg !46
  %27 = icmp slt i32 %23, %26, !dbg !47
  br i1 %27, label %40, label %28, !dbg !48

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !49
  %30 = load i32, i32* %3, align 4, !dbg !50
  %31 = load i32, i32* %5, align 4, !dbg !51
  %32 = add nsw i32 %30, %31, !dbg !52
  %33 = icmp slt i32 %29, %32, !dbg !53
  br i1 %33, label %40, label %34, !dbg !54

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %5, align 4, !dbg !55
  %36 = load i32, i32* %3, align 4, !dbg !56
  %37 = load i32, i32* %4, align 4, !dbg !57
  %38 = add nsw i32 %36, %37, !dbg !58
  %39 = icmp slt i32 %35, %38, !dbg !59
  br i1 %39, label %40, label %43, !dbg !60

; <label>:40:                                     ; preds = %34, %28, %22
  %41 = load i32, i32* %6, align 4, !dbg !61
  %42 = add nsw i32 %41, 1, !dbg !61
  store i32 %42, i32* %6, align 4, !dbg !61
  br label %43, !dbg !63

; <label>:43:                                     ; preds = %40, %34
  %44 = load i32, i32* %5, align 4, !dbg !64
  %45 = add nsw i32 %44, 1, !dbg !64
  store i32 %45, i32* %5, align 4, !dbg !64
  br label %18, !dbg !37, !llvm.loop !65

; <label>:46:                                     ; preds = %18
  %47 = load i32, i32* %4, align 4, !dbg !67
  %48 = add nsw i32 %47, 1, !dbg !67
  store i32 %48, i32* %4, align 4, !dbg !67
  br label %13, !dbg !31, !llvm.loop !68

; <label>:49:                                     ; preds = %13
  %50 = load i32, i32* %3, align 4, !dbg !70
  %51 = add nsw i32 %50, 1, !dbg !70
  store i32 %51, i32* %3, align 4, !dbg !70
  br label %8, !dbg !25, !llvm.loop !71

; <label>:52:                                     ; preds = %8
  %53 = load i32, i32* %6, align 4, !dbg !73
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %53), !dbg !74
  ret i32 0, !dbg !75
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
!1 = !DIFile(filename: "gcov/../WA_c/271983_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2833")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 6, type: !10)
!18 = !DILocation(line: 6, column: 13, scope: !7)
!19 = !DILocation(line: 7, column: 6, scope: !7)
!20 = !DILocation(line: 8, column: 6, scope: !7)
!21 = !DILocation(line: 9, column: 6, scope: !7)
!22 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 10, type: !10)
!23 = !DILocation(line: 10, column: 9, scope: !7)
!24 = !DILocation(line: 11, column: 5, scope: !7)
!25 = !DILocation(line: 12, column: 5, scope: !7)
!26 = !DILocation(line: 12, column: 11, scope: !7)
!27 = !DILocation(line: 12, column: 14, scope: !7)
!28 = !DILocation(line: 12, column: 12, scope: !7)
!29 = !DILocation(line: 14, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 13, column: 5)
!31 = !DILocation(line: 15, column: 9, scope: !30)
!32 = !DILocation(line: 15, column: 15, scope: !30)
!33 = !DILocation(line: 15, column: 18, scope: !30)
!34 = !DILocation(line: 15, column: 16, scope: !30)
!35 = !DILocation(line: 17, column: 14, scope: !36)
!36 = distinct !DILexicalBlock(scope: !30, file: !1, line: 16, column: 9)
!37 = !DILocation(line: 18, column: 13, scope: !36)
!38 = !DILocation(line: 18, column: 19, scope: !36)
!39 = !DILocation(line: 18, column: 22, scope: !36)
!40 = !DILocation(line: 18, column: 20, scope: !36)
!41 = !DILocation(line: 20, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 20, column: 20)
!43 = distinct !DILexicalBlock(scope: !36, file: !1, line: 19, column: 13)
!44 = !DILocation(line: 20, column: 22, scope: !42)
!45 = !DILocation(line: 20, column: 24, scope: !42)
!46 = !DILocation(line: 20, column: 23, scope: !42)
!47 = !DILocation(line: 20, column: 21, scope: !42)
!48 = !DILocation(line: 20, column: 25, scope: !42)
!49 = !DILocation(line: 20, column: 27, scope: !42)
!50 = !DILocation(line: 20, column: 29, scope: !42)
!51 = !DILocation(line: 20, column: 31, scope: !42)
!52 = !DILocation(line: 20, column: 30, scope: !42)
!53 = !DILocation(line: 20, column: 28, scope: !42)
!54 = !DILocation(line: 20, column: 32, scope: !42)
!55 = !DILocation(line: 20, column: 34, scope: !42)
!56 = !DILocation(line: 20, column: 36, scope: !42)
!57 = !DILocation(line: 20, column: 38, scope: !42)
!58 = !DILocation(line: 20, column: 37, scope: !42)
!59 = !DILocation(line: 20, column: 35, scope: !42)
!60 = !DILocation(line: 20, column: 20, scope: !43)
!61 = !DILocation(line: 22, column: 26, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !1, line: 21, column: 17)
!63 = !DILocation(line: 23, column: 17, scope: !62)
!64 = !DILocation(line: 24, column: 18, scope: !43)
!65 = distinct !{!65, !37, !66}
!66 = !DILocation(line: 25, column: 13, scope: !36)
!67 = !DILocation(line: 26, column: 14, scope: !36)
!68 = distinct !{!68, !31, !69}
!69 = !DILocation(line: 27, column: 9, scope: !30)
!70 = !DILocation(line: 28, column: 10, scope: !30)
!71 = distinct !{!71, !25, !72}
!72 = !DILocation(line: 29, column: 5, scope: !7)
!73 = !DILocation(line: 30, column: 50, scope: !7)
!74 = !DILocation(line: 30, column: 5, scope: !7)
!75 = !DILocation(line: 31, column: 5, scope: !7)
