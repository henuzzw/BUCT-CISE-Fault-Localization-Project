; ModuleID = 'gcov/../WA_c/277519_buggy.c'
source_filename = "gcov/../WA_c/277519_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 2, i32* %4, align 4, !dbg !17
  br label %6, !dbg !19

; <label>:6:                                      ; preds = %18, %1
  %7 = load i32, i32* %4, align 4, !dbg !20
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = icmp slt i32 %7, %8, !dbg !23
  br i1 %9, label %10, label %21, !dbg !24

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !25
  %12 = load i32, i32* %4, align 4, !dbg !27
  %13 = srem i32 %11, %12, !dbg !28
  store i32 %13, i32* %5, align 4, !dbg !29
  %14 = load i32, i32* %5, align 4, !dbg !30
  %15 = icmp eq i32 %14, 0, !dbg !32
  br i1 %15, label %16, label %17, !dbg !33

; <label>:16:                                     ; preds = %10
  store i32 0, i32* %2, align 4, !dbg !34
  br label %22, !dbg !34

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !36

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %4, align 4, !dbg !37
  %20 = add nsw i32 %19, 1, !dbg !37
  store i32 %20, i32* %4, align 4, !dbg !37
  br label %6, !dbg !38, !llvm.loop !39

; <label>:21:                                     ; preds = %6
  store i32 1, i32* %2, align 4, !dbg !41
  br label %22, !dbg !41

; <label>:22:                                     ; preds = %21, %16
  %23 = load i32, i32* %2, align 4, !dbg !42
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
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32* %3, i32* %4), !dbg !54
  %7 = load i32, i32* %3, align 4, !dbg !55
  store i32 %7, i32* %5, align 4, !dbg !57
  br label %8, !dbg !58

; <label>:8:                                      ; preds = %21, %0
  %9 = load i32, i32* %5, align 4, !dbg !59
  %10 = load i32, i32* %4, align 4, !dbg !61
  %11 = icmp sle i32 %9, %10, !dbg !62
  br i1 %11, label %12, label %24, !dbg !63

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4, !dbg !64
  %14 = call i32 @_Z11check_primei(i32 %13), !dbg !66
  store i32 %14, i32* %2, align 4, !dbg !67
  %15 = load i32, i32* %2, align 4, !dbg !68
  %16 = icmp ne i32 %15, 0, !dbg !70
  br i1 %16, label %17, label %20, !dbg !71

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %5, align 4, !dbg !72
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %18), !dbg !74
  br label %20, !dbg !75

; <label>:20:                                     ; preds = %17, %12
  br label %21, !dbg !76

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %5, align 4, !dbg !77
  %23 = add nsw i32 %22, 1, !dbg !77
  store i32 %23, i32* %5, align 4, !dbg !77
  br label %8, !dbg !78, !llvm.loop !79

; <label>:24:                                     ; preds = %8
  ret i32 0, !dbg !81
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
!1 = !DIFile(filename: "gcov/../WA_c/277519_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
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
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 7, type: !10)
!14 = !DILocation(line: 7, column: 9, scope: !7)
!15 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 7, type: !10)
!16 = !DILocation(line: 7, column: 11, scope: !7)
!17 = !DILocation(line: 8, column: 10, scope: !18)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!19 = !DILocation(line: 8, column: 9, scope: !18)
!20 = !DILocation(line: 8, column: 14, scope: !21)
!21 = distinct !DILexicalBlock(scope: !18, file: !1, line: 8, column: 5)
!22 = !DILocation(line: 8, column: 16, scope: !21)
!23 = !DILocation(line: 8, column: 15, scope: !21)
!24 = !DILocation(line: 8, column: 5, scope: !18)
!25 = !DILocation(line: 10, column: 11, scope: !26)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 5)
!27 = !DILocation(line: 10, column: 15, scope: !26)
!28 = !DILocation(line: 10, column: 14, scope: !26)
!29 = !DILocation(line: 10, column: 10, scope: !26)
!30 = !DILocation(line: 11, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 11, column: 12)
!32 = !DILocation(line: 11, column: 13, scope: !31)
!33 = !DILocation(line: 11, column: 12, scope: !26)
!34 = !DILocation(line: 13, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 12, column: 9)
!36 = !DILocation(line: 15, column: 5, scope: !26)
!37 = !DILocation(line: 8, column: 22, scope: !21)
!38 = !DILocation(line: 8, column: 5, scope: !21)
!39 = distinct !{!39, !24, !40}
!40 = !DILocation(line: 15, column: 5, scope: !18)
!41 = !DILocation(line: 16, column: 5, scope: !7)
!42 = !DILocation(line: 17, column: 1, scope: !7)
!43 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !44, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{!10}
!46 = !DILocalVariable(name: "a", scope: !43, file: !1, line: 21, type: !10)
!47 = !DILocation(line: 21, column: 9, scope: !43)
!48 = !DILocalVariable(name: "n1", scope: !43, file: !1, line: 21, type: !10)
!49 = !DILocation(line: 21, column: 11, scope: !43)
!50 = !DILocalVariable(name: "n2", scope: !43, file: !1, line: 21, type: !10)
!51 = !DILocation(line: 21, column: 14, scope: !43)
!52 = !DILocalVariable(name: "num", scope: !43, file: !1, line: 21, type: !10)
!53 = !DILocation(line: 21, column: 17, scope: !43)
!54 = !DILocation(line: 22, column: 5, scope: !43)
!55 = !DILocation(line: 23, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !43, file: !1, line: 23, column: 5)
!57 = !DILocation(line: 23, column: 12, scope: !56)
!58 = !DILocation(line: 23, column: 9, scope: !56)
!59 = !DILocation(line: 23, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 23, column: 5)
!61 = !DILocation(line: 23, column: 22, scope: !60)
!62 = !DILocation(line: 23, column: 20, scope: !60)
!63 = !DILocation(line: 23, column: 5, scope: !56)
!64 = !DILocation(line: 25, column: 23, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 24, column: 5)
!66 = !DILocation(line: 25, column: 11, scope: !65)
!67 = !DILocation(line: 25, column: 10, scope: !65)
!68 = !DILocation(line: 26, column: 12, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 26, column: 12)
!70 = !DILocation(line: 26, column: 13, scope: !69)
!71 = !DILocation(line: 26, column: 12, scope: !65)
!72 = !DILocation(line: 28, column: 26, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 27, column: 9)
!74 = !DILocation(line: 28, column: 13, scope: !73)
!75 = !DILocation(line: 29, column: 9, scope: !73)
!76 = !DILocation(line: 30, column: 5, scope: !65)
!77 = !DILocation(line: 23, column: 29, scope: !60)
!78 = !DILocation(line: 23, column: 5, scope: !60)
!79 = distinct !{!79, !63, !80}
!80 = !DILocation(line: 30, column: 5, scope: !56)
!81 = !DILocation(line: 31, column: 5, scope: !43)
