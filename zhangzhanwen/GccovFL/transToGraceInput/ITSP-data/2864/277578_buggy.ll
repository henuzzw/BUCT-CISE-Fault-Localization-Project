; ModuleID = 'gcov/../WA_c/277578_buggy.c'
source_filename = "gcov/../WA_c/277578_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 2, i32* %4, align 4, !dbg !15
  br label %5, !dbg !17

; <label>:5:                                      ; preds = %19, %1
  %6 = load i32, i32* %4, align 4, !dbg !18
  %7 = load i32, i32* %3, align 4, !dbg !20
  %8 = icmp slt i32 %6, %7, !dbg !21
  br i1 %8, label %9, label %22, !dbg !22

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !23
  %11 = load i32, i32* %4, align 4, !dbg !26
  %12 = srem i32 %10, %11, !dbg !27
  %13 = icmp eq i32 %12, 0, !dbg !28
  br i1 %13, label %17, label %14, !dbg !29

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %3, align 4, !dbg !30
  %16 = icmp eq i32 %15, 1, !dbg !31
  br i1 %16, label %17, label %18, !dbg !32

; <label>:17:                                     ; preds = %14, %9
  store i32 0, i32* %2, align 4, !dbg !33
  br label %23, !dbg !33

; <label>:18:                                     ; preds = %14
  br label %19, !dbg !35

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4, !dbg !36
  %21 = add nsw i32 %20, 1, !dbg !36
  store i32 %21, i32* %4, align 4, !dbg !36
  br label %5, !dbg !37, !llvm.loop !38

; <label>:22:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !40
  br label %23, !dbg !40

; <label>:23:                                     ; preds = %22, %17
  %24 = load i32, i32* %2, align 4, !dbg !41
  ret i32 %24, !dbg !41
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %3, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3), !dbg !51
  %6 = load i32, i32* %2, align 4, !dbg !52
  store i32 %6, i32* %4, align 4, !dbg !54
  br label %7, !dbg !55

; <label>:7:                                      ; preds = %19, %0
  %8 = load i32, i32* %4, align 4, !dbg !56
  %9 = load i32, i32* %3, align 4, !dbg !58
  %10 = icmp sle i32 %8, %9, !dbg !59
  br i1 %10, label %11, label %22, !dbg !60

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %4, align 4, !dbg !61
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !64
  %14 = icmp eq i32 %13, 1, !dbg !65
  br i1 %14, label %15, label %18, !dbg !66

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !67
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %16), !dbg !69
  br label %18, !dbg !70

; <label>:18:                                     ; preds = %15, %11
  br label %19, !dbg !71

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4, !dbg !72
  %21 = add nsw i32 %20, 1, !dbg !72
  store i32 %21, i32* %4, align 4, !dbg !72
  br label %7, !dbg !73, !llvm.loop !74

; <label>:22:                                     ; preds = %7
  ret i32 0, !dbg !76
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
!1 = !DIFile(filename: "gcov/../WA_c/277578_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
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
!17 = !DILocation(line: 6, column: 10, scope: !16)
!18 = !DILocation(line: 6, column: 15, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 6, column: 17, scope: !19)
!21 = !DILocation(line: 6, column: 16, scope: !19)
!22 = !DILocation(line: 6, column: 5, scope: !16)
!23 = !DILocation(line: 8, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 12)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 8, column: 17, scope: !24)
!27 = !DILocation(line: 8, column: 16, scope: !24)
!28 = !DILocation(line: 8, column: 18, scope: !24)
!29 = !DILocation(line: 8, column: 22, scope: !24)
!30 = !DILocation(line: 8, column: 25, scope: !24)
!31 = !DILocation(line: 8, column: 28, scope: !24)
!32 = !DILocation(line: 8, column: 12, scope: !25)
!33 = !DILocation(line: 10, column: 13, scope: !34)
!34 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 9)
!35 = !DILocation(line: 12, column: 5, scope: !25)
!36 = !DILocation(line: 6, column: 23, scope: !19)
!37 = !DILocation(line: 6, column: 5, scope: !19)
!38 = distinct !{!38, !22, !39}
!39 = !DILocation(line: 12, column: 5, scope: !16)
!40 = !DILocation(line: 13, column: 5, scope: !7)
!41 = !DILocation(line: 14, column: 1, scope: !7)
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !43, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{!10}
!45 = !DILocalVariable(name: "n1", scope: !42, file: !1, line: 17, type: !10)
!46 = !DILocation(line: 17, column: 9, scope: !42)
!47 = !DILocalVariable(name: "n2", scope: !42, file: !1, line: 17, type: !10)
!48 = !DILocation(line: 17, column: 13, scope: !42)
!49 = !DILocalVariable(name: "i", scope: !42, file: !1, line: 17, type: !10)
!50 = !DILocation(line: 17, column: 16, scope: !42)
!51 = !DILocation(line: 18, column: 5, scope: !42)
!52 = !DILocation(line: 19, column: 12, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !1, line: 19, column: 5)
!54 = !DILocation(line: 19, column: 11, scope: !53)
!55 = !DILocation(line: 19, column: 10, scope: !53)
!56 = !DILocation(line: 19, column: 16, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 19, column: 5)
!58 = !DILocation(line: 19, column: 19, scope: !57)
!59 = !DILocation(line: 19, column: 17, scope: !57)
!60 = !DILocation(line: 19, column: 5, scope: !53)
!61 = !DILocation(line: 21, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 21, column: 13)
!63 = distinct !DILexicalBlock(scope: !57, file: !1, line: 20, column: 5)
!64 = !DILocation(line: 21, column: 13, scope: !62)
!65 = !DILocation(line: 21, column: 27, scope: !62)
!66 = !DILocation(line: 21, column: 13, scope: !63)
!67 = !DILocation(line: 23, column: 27, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 22, column: 9)
!69 = !DILocation(line: 23, column: 13, scope: !68)
!70 = !DILocation(line: 24, column: 9, scope: !68)
!71 = !DILocation(line: 25, column: 5, scope: !63)
!72 = !DILocation(line: 19, column: 24, scope: !57)
!73 = !DILocation(line: 19, column: 5, scope: !57)
!74 = distinct !{!74, !60, !75}
!75 = !DILocation(line: 25, column: 5, scope: !53)
!76 = !DILocation(line: 26, column: 5, scope: !42)
