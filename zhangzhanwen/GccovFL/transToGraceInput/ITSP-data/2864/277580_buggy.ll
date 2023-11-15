; ModuleID = 'gcov/../WA_c/277580_buggy.c'
source_filename = "gcov/../WA_c/277580_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid Input.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 2, i32* %3, align 4, !dbg !15
  br label %4, !dbg !17

; <label>:4:                                      ; preds = %18, %1
  %5 = load i32, i32* %3, align 4, !dbg !18
  %6 = load i32, i32* %2, align 4, !dbg !20
  %7 = icmp slt i32 %5, %6, !dbg !21
  br i1 %7, label %8, label %21, !dbg !22

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %2, align 4, !dbg !23
  %10 = load i32, i32* %3, align 4, !dbg !26
  %11 = srem i32 %9, %10, !dbg !27
  %12 = icmp eq i32 %11, 0, !dbg !28
  br i1 %12, label %16, label %13, !dbg !29

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %2, align 4, !dbg !30
  %15 = icmp eq i32 %14, 1, !dbg !31
  br i1 %15, label %16, label %17, !dbg !32

; <label>:16:                                     ; preds = %13, %8
  store i32 -1, i32* %2, align 4, !dbg !33
  br label %22, !dbg !35

; <label>:17:                                     ; preds = %13
  br label %18, !dbg !36

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %3, align 4, !dbg !37
  %20 = add nsw i32 %19, 1, !dbg !37
  store i32 %20, i32* %3, align 4, !dbg !37
  br label %4, !dbg !38, !llvm.loop !39

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !40

; <label>:22:                                     ; preds = %21, %16
  %23 = load i32, i32* %2, align 4, !dbg !41
  ret i32 %23, !dbg !42
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !43 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %3, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %4, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %5, metadata !52, metadata !DIExpression()), !dbg !53
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32* %3, i32* %2), !dbg !54
  %7 = load i32, i32* %3, align 4, !dbg !55
  %8 = load i32, i32* %2, align 4, !dbg !57
  %9 = icmp sgt i32 %7, %8, !dbg !58
  br i1 %9, label %16, label %10, !dbg !59

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %3, align 4, !dbg !60
  %12 = icmp slt i32 %11, 0, !dbg !61
  br i1 %12, label %16, label %13, !dbg !62

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %2, align 4, !dbg !63
  %15 = icmp slt i32 %14, 0, !dbg !64
  br i1 %15, label %16, label %18, !dbg !65

; <label>:16:                                     ; preds = %13, %10, %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !66
  br label %36, !dbg !68

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !69

; <label>:19:                                     ; preds = %32, %18
  %20 = load i32, i32* %3, align 4, !dbg !71
  %21 = load i32, i32* %2, align 4, !dbg !72
  %22 = icmp sle i32 %20, %21, !dbg !73
  br i1 %22, label %23, label %35, !dbg !69

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4, !dbg !74
  store i32 %24, i32* %5, align 4, !dbg !76
  %25 = load i32, i32* %5, align 4, !dbg !77
  %26 = call i32 @_Z11check_primei(i32 %25), !dbg !78
  store i32 %26, i32* %4, align 4, !dbg !79
  %27 = load i32, i32* %4, align 4, !dbg !80
  %28 = icmp ne i32 %27, -1, !dbg !82
  br i1 %28, label %29, label %32, !dbg !83

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %4, align 4, !dbg !84
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %30), !dbg !86
  br label %32, !dbg !87

; <label>:32:                                     ; preds = %29, %23
  %33 = load i32, i32* %3, align 4, !dbg !88
  %34 = add nsw i32 %33, 1, !dbg !89
  store i32 %34, i32* %3, align 4, !dbg !90
  br label %19, !dbg !69, !llvm.loop !91

; <label>:35:                                     ; preds = %19
  br label %36

; <label>:36:                                     ; preds = %35, %16
  ret i32 0, !dbg !93
}

declare i32 @scanf(i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/277580_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocation(line: 6, column: 11, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!17 = !DILocation(line: 6, column: 9, scope: !16)
!18 = !DILocation(line: 6, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 6, column: 20, scope: !19)
!21 = !DILocation(line: 6, column: 18, scope: !19)
!22 = !DILocation(line: 6, column: 5, scope: !16)
!23 = !DILocation(line: 8, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 12)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 8, column: 16, scope: !24)
!27 = !DILocation(line: 8, column: 15, scope: !24)
!28 = !DILocation(line: 8, column: 18, scope: !24)
!29 = !DILocation(line: 8, column: 22, scope: !24)
!30 = !DILocation(line: 8, column: 24, scope: !24)
!31 = !DILocation(line: 8, column: 28, scope: !24)
!32 = !DILocation(line: 8, column: 12, scope: !25)
!33 = !DILocation(line: 10, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 9)
!35 = !DILocation(line: 11, column: 13, scope: !34)
!36 = !DILocation(line: 13, column: 5, scope: !25)
!37 = !DILocation(line: 6, column: 26, scope: !19)
!38 = !DILocation(line: 6, column: 5, scope: !19)
!39 = distinct !{!39, !22, !40}
!40 = !DILocation(line: 13, column: 5, scope: !16)
!41 = !DILocation(line: 15, column: 12, scope: !7)
!42 = !DILocation(line: 15, column: 5, scope: !7)
!43 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !44, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{!10}
!46 = !DILocalVariable(name: "max", scope: !43, file: !1, line: 20, type: !10)
!47 = !DILocation(line: 20, column: 9, scope: !43)
!48 = !DILocalVariable(name: "min", scope: !43, file: !1, line: 20, type: !10)
!49 = !DILocation(line: 20, column: 14, scope: !43)
!50 = !DILocalVariable(name: "prime", scope: !43, file: !1, line: 20, type: !10)
!51 = !DILocation(line: 20, column: 19, scope: !43)
!52 = !DILocalVariable(name: "num", scope: !43, file: !1, line: 20, type: !10)
!53 = !DILocation(line: 20, column: 26, scope: !43)
!54 = !DILocation(line: 21, column: 5, scope: !43)
!55 = !DILocation(line: 22, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !43, file: !1, line: 22, column: 8)
!57 = !DILocation(line: 22, column: 14, scope: !56)
!58 = !DILocation(line: 22, column: 12, scope: !56)
!59 = !DILocation(line: 22, column: 17, scope: !56)
!60 = !DILocation(line: 22, column: 19, scope: !56)
!61 = !DILocation(line: 22, column: 23, scope: !56)
!62 = !DILocation(line: 22, column: 26, scope: !56)
!63 = !DILocation(line: 22, column: 28, scope: !56)
!64 = !DILocation(line: 22, column: 32, scope: !56)
!65 = !DILocation(line: 22, column: 8, scope: !43)
!66 = !DILocation(line: 24, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !56, file: !1, line: 23, column: 5)
!68 = !DILocation(line: 25, column: 5, scope: !67)
!69 = !DILocation(line: 28, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !56, file: !1, line: 27, column: 5)
!71 = !DILocation(line: 28, column: 15, scope: !70)
!72 = !DILocation(line: 28, column: 22, scope: !70)
!73 = !DILocation(line: 28, column: 19, scope: !70)
!74 = !DILocation(line: 30, column: 19, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 29, column: 9)
!76 = !DILocation(line: 30, column: 17, scope: !75)
!77 = !DILocation(line: 31, column: 33, scope: !75)
!78 = !DILocation(line: 31, column: 21, scope: !75)
!79 = !DILocation(line: 31, column: 19, scope: !75)
!80 = !DILocation(line: 32, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 32, column: 16)
!82 = !DILocation(line: 32, column: 22, scope: !81)
!83 = !DILocation(line: 32, column: 16, scope: !75)
!84 = !DILocation(line: 34, column: 31, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 33, column: 13)
!86 = !DILocation(line: 34, column: 17, scope: !85)
!87 = !DILocation(line: 35, column: 13, scope: !85)
!88 = !DILocation(line: 36, column: 19, scope: !75)
!89 = !DILocation(line: 36, column: 23, scope: !75)
!90 = !DILocation(line: 36, column: 17, scope: !75)
!91 = distinct !{!91, !69, !92}
!92 = !DILocation(line: 37, column: 9, scope: !70)
!93 = !DILocation(line: 39, column: 5, scope: !43)
