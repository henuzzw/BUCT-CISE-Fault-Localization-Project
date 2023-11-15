; ModuleID = 'gcov/../WA_c/277541_buggy.c'
source_filename = "gcov/../WA_c/277541_buggy.c"
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
  store i32 1, i32* %5, align 4, !dbg !17
  store i32 2, i32* %4, align 4, !dbg !18
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %20, %1
  %7 = load i32, i32* %4, align 4, !dbg !21
  %8 = load i32, i32* %3, align 4, !dbg !23
  %9 = sdiv i32 %8, 2, !dbg !24
  %10 = icmp sle i32 %7, %9, !dbg !25
  br i1 %10, label %11, label %23, !dbg !26

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %3, align 4, !dbg !27
  %13 = load i32, i32* %4, align 4, !dbg !30
  %14 = srem i32 %12, %13, !dbg !31
  %15 = icmp eq i32 %14, 0, !dbg !32
  br i1 %15, label %16, label %19, !dbg !33

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %5, align 4, !dbg !34
  %18 = add nsw i32 %17, 1, !dbg !36
  store i32 %18, i32* %5, align 4, !dbg !37
  br label %19, !dbg !38

; <label>:19:                                     ; preds = %16, %11
  br label %20, !dbg !39

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %4, align 4, !dbg !40
  %22 = add nsw i32 %21, 1, !dbg !40
  store i32 %22, i32* %4, align 4, !dbg !40
  br label %6, !dbg !41, !llvm.loop !42

; <label>:23:                                     ; preds = %6
  %24 = load i32, i32* %5, align 4, !dbg !44
  %25 = icmp eq i32 %24, 1, !dbg !46
  br i1 %25, label %26, label %28, !dbg !47

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %3, align 4, !dbg !48
  store i32 %27, i32* %2, align 4, !dbg !50
  br label %29, !dbg !50

; <label>:28:                                     ; preds = %23
  store i32 0, i32* %2, align 4, !dbg !51
  br label %29, !dbg !51

; <label>:29:                                     ; preds = %28, %26
  %30 = load i32, i32* %2, align 4, !dbg !53
  ret i32 %30, !dbg !53
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %3, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %4, metadata !61, metadata !DIExpression()), !dbg !62
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3), !dbg !63
  %6 = load i32, i32* %2, align 4, !dbg !64
  store i32 %6, i32* %4, align 4, !dbg !66
  br label %7, !dbg !67

; <label>:7:                                      ; preds = %20, %0
  %8 = load i32, i32* %4, align 4, !dbg !68
  %9 = load i32, i32* %3, align 4, !dbg !70
  %10 = icmp sle i32 %8, %9, !dbg !71
  br i1 %10, label %11, label %23, !dbg !72

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %4, align 4, !dbg !73
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !76
  %14 = icmp ne i32 %13, 0, !dbg !77
  br i1 %14, label %15, label %19, !dbg !78

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !79
  %17 = call i32 @_Z11check_primei(i32 %16), !dbg !81
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %17), !dbg !82
  br label %19, !dbg !83

; <label>:19:                                     ; preds = %15, %11
  br label %20, !dbg !84

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %4, align 4, !dbg !85
  %22 = add nsw i32 %21, 1, !dbg !85
  store i32 %22, i32* %4, align 4, !dbg !85
  br label %7, !dbg !86, !llvm.loop !87

; <label>:23:                                     ; preds = %7
  ret i32 0, !dbg !89
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
!1 = !DIFile(filename: "gcov/../WA_c/277541_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
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
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 11, scope: !7)
!17 = !DILocation(line: 6, column: 6, scope: !7)
!18 = !DILocation(line: 7, column: 10, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 7, column: 9, scope: !19)
!21 = !DILocation(line: 7, column: 14, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!23 = !DILocation(line: 7, column: 17, scope: !22)
!24 = !DILocation(line: 7, column: 20, scope: !22)
!25 = !DILocation(line: 7, column: 15, scope: !22)
!26 = !DILocation(line: 7, column: 5, scope: !19)
!27 = !DILocation(line: 9, column: 12, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 12)
!29 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 5)
!30 = !DILocation(line: 9, column: 16, scope: !28)
!31 = !DILocation(line: 9, column: 15, scope: !28)
!32 = !DILocation(line: 9, column: 17, scope: !28)
!33 = !DILocation(line: 9, column: 12, scope: !29)
!34 = !DILocation(line: 11, column: 15, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 9)
!36 = !DILocation(line: 11, column: 16, scope: !35)
!37 = !DILocation(line: 11, column: 14, scope: !35)
!38 = !DILocation(line: 12, column: 9, scope: !35)
!39 = !DILocation(line: 13, column: 5, scope: !29)
!40 = !DILocation(line: 7, column: 25, scope: !22)
!41 = !DILocation(line: 7, column: 5, scope: !22)
!42 = distinct !{!42, !26, !43}
!43 = !DILocation(line: 13, column: 5, scope: !19)
!44 = !DILocation(line: 14, column: 8, scope: !45)
!45 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 8)
!46 = !DILocation(line: 14, column: 9, scope: !45)
!47 = !DILocation(line: 14, column: 8, scope: !7)
!48 = !DILocation(line: 16, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 5)
!50 = !DILocation(line: 16, column: 9, scope: !49)
!51 = !DILocation(line: 20, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !45, file: !1, line: 19, column: 5)
!53 = !DILocation(line: 22, column: 1, scope: !7)
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !55, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!10}
!57 = !DILocalVariable(name: "n1", scope: !54, file: !1, line: 27, type: !10)
!58 = !DILocation(line: 27, column: 9, scope: !54)
!59 = !DILocalVariable(name: "n2", scope: !54, file: !1, line: 27, type: !10)
!60 = !DILocation(line: 27, column: 12, scope: !54)
!61 = !DILocalVariable(name: "i", scope: !54, file: !1, line: 27, type: !10)
!62 = !DILocation(line: 27, column: 15, scope: !54)
!63 = !DILocation(line: 28, column: 5, scope: !54)
!64 = !DILocation(line: 29, column: 11, scope: !65)
!65 = distinct !DILexicalBlock(scope: !54, file: !1, line: 29, column: 5)
!66 = !DILocation(line: 29, column: 10, scope: !65)
!67 = !DILocation(line: 29, column: 9, scope: !65)
!68 = !DILocation(line: 29, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 29, column: 5)
!70 = !DILocation(line: 29, column: 18, scope: !69)
!71 = !DILocation(line: 29, column: 16, scope: !69)
!72 = !DILocation(line: 29, column: 5, scope: !65)
!73 = !DILocation(line: 31, column: 24, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 31, column: 12)
!75 = distinct !DILexicalBlock(scope: !69, file: !1, line: 30, column: 5)
!76 = !DILocation(line: 31, column: 12, scope: !74)
!77 = !DILocation(line: 31, column: 26, scope: !74)
!78 = !DILocation(line: 31, column: 12, scope: !75)
!79 = !DILocation(line: 33, column: 38, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 32, column: 9)
!81 = !DILocation(line: 33, column: 26, scope: !80)
!82 = !DILocation(line: 33, column: 13, scope: !80)
!83 = !DILocation(line: 34, column: 9, scope: !80)
!84 = !DILocation(line: 35, column: 5, scope: !75)
!85 = !DILocation(line: 29, column: 23, scope: !69)
!86 = !DILocation(line: 29, column: 5, scope: !69)
!87 = distinct !{!87, !72, !88}
!88 = !DILocation(line: 35, column: 5, scope: !65)
!89 = !DILocation(line: 37, column: 5, scope: !54)
