; ModuleID = 'gcov/../WA_c/278304_buggy.c'
source_filename = "gcov/../WA_c/278304_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %2, align 4, !dbg !19
  store i32 %6, i32* %3, align 4, !dbg !21
  br label %7, !dbg !22

; <label>:7:                                      ; preds = %40, %1
  %8 = load i32, i32* %3, align 4, !dbg !23
  %9 = load i32, i32* %2, align 4, !dbg !25
  %10 = icmp sge i32 %8, %9, !dbg !26
  br i1 %10, label %11, label %43, !dbg !27

; <label>:11:                                     ; preds = %7
  store i32 2, i32* %4, align 4, !dbg !28
  br label %12, !dbg !31

; <label>:12:                                     ; preds = %24, %11
  %13 = load i32, i32* %4, align 4, !dbg !32
  %14 = load i32, i32* %3, align 4, !dbg !34
  %15 = sdiv i32 %14, 2, !dbg !35
  %16 = icmp slt i32 %13, %15, !dbg !36
  br i1 %16, label %17, label %27, !dbg !37

; <label>:17:                                     ; preds = %12
  store i32 1, i32* %5, align 4, !dbg !38
  %18 = load i32, i32* %3, align 4, !dbg !40
  %19 = load i32, i32* %4, align 4, !dbg !42
  %20 = srem i32 %18, %19, !dbg !43
  %21 = icmp eq i32 %20, 0, !dbg !44
  br i1 %21, label %22, label %23, !dbg !45

; <label>:22:                                     ; preds = %17
  store i32 1, i32* %5, align 4, !dbg !46
  br label %27, !dbg !48

; <label>:23:                                     ; preds = %17
  br label %24, !dbg !49

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4, !dbg !50
  %26 = add nsw i32 %25, 1, !dbg !50
  store i32 %26, i32* %4, align 4, !dbg !50
  br label %12, !dbg !51, !llvm.loop !52

; <label>:27:                                     ; preds = %22, %12
  %28 = load i32, i32* %5, align 4, !dbg !54
  %29 = icmp eq i32 %28, 0, !dbg !56
  br i1 %29, label %30, label %31, !dbg !57

; <label>:30:                                     ; preds = %27
  br label %40, !dbg !58

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %5, align 4, !dbg !60
  %33 = icmp eq i32 %32, 1, !dbg !62
  br i1 %33, label %34, label %39, !dbg !63

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %3, align 4, !dbg !64
  %36 = icmp sgt i32 %35, 1, !dbg !65
  br i1 %36, label %37, label %39, !dbg !66

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %3, align 4, !dbg !67
  ret i32 %38, !dbg !69

; <label>:39:                                     ; preds = %34, %31
  br label %40, !dbg !70

; <label>:40:                                     ; preds = %39, %30
  %41 = load i32, i32* %3, align 4, !dbg !71
  %42 = add nsw i32 %41, 1, !dbg !71
  store i32 %42, i32* %3, align 4, !dbg !71
  br label %7, !dbg !72, !llvm.loop !73

; <label>:43:                                     ; preds = %7
  call void @llvm.trap(), !dbg !74
  unreachable, !dbg !74
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #3 !dbg !75 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %3, metadata !80, metadata !DIExpression()), !dbg !81
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !82
  %5 = load i32, i32* %2, align 4, !dbg !83
  %6 = call i32 @_Z11check_primei(i32 %5), !dbg !84
  store i32 %6, i32* %3, align 4, !dbg !85
  %7 = load i32, i32* %3, align 4, !dbg !86
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %7), !dbg !87
  ret i32 0, !dbg !88
}

declare i32 @scanf(i8*, ...) #4

declare i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noreturn nounwind }
attributes #3 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/278304_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !10)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 6, type: !10)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocalVariable(name: "tmp", scope: !7, file: !1, line: 6, type: !10)
!18 = !DILocation(line: 6, column: 13, scope: !7)
!19 = !DILocation(line: 7, column: 11, scope: !20)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!21 = !DILocation(line: 7, column: 10, scope: !20)
!22 = !DILocation(line: 7, column: 9, scope: !20)
!23 = !DILocation(line: 7, column: 16, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 7, column: 5)
!25 = !DILocation(line: 7, column: 19, scope: !24)
!26 = !DILocation(line: 7, column: 17, scope: !24)
!27 = !DILocation(line: 7, column: 5, scope: !20)
!28 = !DILocation(line: 9, column: 14, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 9)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 5)
!31 = !DILocation(line: 9, column: 13, scope: !29)
!32 = !DILocation(line: 9, column: 18, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 9)
!34 = !DILocation(line: 9, column: 20, scope: !33)
!35 = !DILocation(line: 9, column: 21, scope: !33)
!36 = !DILocation(line: 9, column: 19, scope: !33)
!37 = !DILocation(line: 9, column: 9, scope: !29)
!38 = !DILocation(line: 11, column: 16, scope: !39)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 9)
!40 = !DILocation(line: 12, column: 16, scope: !41)
!41 = distinct !DILexicalBlock(scope: !39, file: !1, line: 12, column: 16)
!42 = !DILocation(line: 12, column: 18, scope: !41)
!43 = !DILocation(line: 12, column: 17, scope: !41)
!44 = !DILocation(line: 12, column: 19, scope: !41)
!45 = !DILocation(line: 12, column: 16, scope: !39)
!46 = !DILocation(line: 14, column: 20, scope: !47)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 13)
!48 = !DILocation(line: 15, column: 17, scope: !47)
!49 = !DILocation(line: 17, column: 9, scope: !39)
!50 = !DILocation(line: 9, column: 26, scope: !33)
!51 = !DILocation(line: 9, column: 9, scope: !33)
!52 = distinct !{!52, !37, !53}
!53 = !DILocation(line: 17, column: 9, scope: !29)
!54 = !DILocation(line: 18, column: 12, scope: !55)
!55 = distinct !DILexicalBlock(scope: !30, file: !1, line: 18, column: 12)
!56 = !DILocation(line: 18, column: 15, scope: !55)
!57 = !DILocation(line: 18, column: 12, scope: !30)
!58 = !DILocation(line: 20, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 19, column: 9)
!60 = !DILocation(line: 22, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !30, file: !1, line: 22, column: 12)
!62 = !DILocation(line: 22, column: 16, scope: !61)
!63 = !DILocation(line: 22, column: 20, scope: !61)
!64 = !DILocation(line: 22, column: 23, scope: !61)
!65 = !DILocation(line: 22, column: 24, scope: !61)
!66 = !DILocation(line: 22, column: 12, scope: !30)
!67 = !DILocation(line: 24, column: 20, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !1, line: 23, column: 9)
!69 = !DILocation(line: 24, column: 13, scope: !68)
!70 = !DILocation(line: 26, column: 5, scope: !30)
!71 = !DILocation(line: 7, column: 25, scope: !24)
!72 = !DILocation(line: 7, column: 5, scope: !24)
!73 = distinct !{!73, !27, !74}
!74 = !DILocation(line: 26, column: 5, scope: !20)
!75 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 30, type: !76, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!76 = !DISubroutineType(types: !77)
!77 = !{!10}
!78 = !DILocalVariable(name: "N", scope: !75, file: !1, line: 32, type: !10)
!79 = !DILocation(line: 32, column: 9, scope: !75)
!80 = !DILocalVariable(name: "x", scope: !75, file: !1, line: 32, type: !10)
!81 = !DILocation(line: 32, column: 11, scope: !75)
!82 = !DILocation(line: 33, column: 5, scope: !75)
!83 = !DILocation(line: 34, column: 19, scope: !75)
!84 = !DILocation(line: 34, column: 7, scope: !75)
!85 = !DILocation(line: 34, column: 6, scope: !75)
!86 = !DILocation(line: 35, column: 17, scope: !75)
!87 = !DILocation(line: 35, column: 5, scope: !75)
!88 = !DILocation(line: 36, column: 5, scope: !75)
