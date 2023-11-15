; ModuleID = 'gcov/../WA_c/278288_buggy.c'
source_filename = "gcov/../WA_c/278288_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 1, i32* %4, align 4, !dbg !17
  store i32 2, i32* %3, align 4, !dbg !18
  br label %5, !dbg !20

; <label>:5:                                      ; preds = %17, %1
  %6 = load i32, i32* %3, align 4, !dbg !21
  %7 = load i32, i32* %2, align 4, !dbg !23
  %8 = sdiv i32 %7, 2, !dbg !24
  %9 = icmp sle i32 %6, %8, !dbg !25
  br i1 %9, label %10, label %20, !dbg !26

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %2, align 4, !dbg !27
  %12 = load i32, i32* %3, align 4, !dbg !30
  %13 = srem i32 %11, %12, !dbg !31
  %14 = icmp eq i32 %13, 0, !dbg !32
  br i1 %14, label %15, label %16, !dbg !33

; <label>:15:                                     ; preds = %10
  store i32 0, i32* %4, align 4, !dbg !34
  br label %16, !dbg !36

; <label>:16:                                     ; preds = %15, %10
  br label %20, !dbg !37
                                                  ; No predecessors!
  %18 = load i32, i32* %3, align 4, !dbg !38
  %19 = add nsw i32 %18, 1, !dbg !38
  store i32 %19, i32* %3, align 4, !dbg !38
  br label %5, !dbg !39, !llvm.loop !40

; <label>:20:                                     ; preds = %16, %5
  %21 = load i32, i32* %2, align 4, !dbg !42
  %22 = icmp eq i32 %21, 1, !dbg !44
  br i1 %22, label %23, label %24, !dbg !45

; <label>:23:                                     ; preds = %20
  store i32 0, i32* %4, align 4, !dbg !46
  br label %24, !dbg !48

; <label>:24:                                     ; preds = %23, %20
  %25 = load i32, i32* %4, align 4, !dbg !49
  ret i32 %25, !dbg !50
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %3, metadata !56, metadata !DIExpression()), !dbg !57
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !58
  %5 = load i32, i32* %2, align 4, !dbg !59
  store i32 %5, i32* %3, align 4, !dbg !60
  br label %6, !dbg !61

; <label>:6:                                      ; preds = %15, %0
  %7 = load i32, i32* %3, align 4, !dbg !62
  %8 = load i32, i32* %2, align 4, !dbg !63
  %9 = icmp sge i32 %7, %8, !dbg !64
  br i1 %9, label %10, label %18, !dbg !61

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !65
  %12 = call i32 @_Z11check_primei(i32 %11), !dbg !68
  %13 = icmp eq i32 %12, 1, !dbg !69
  br i1 %13, label %14, label %15, !dbg !70

; <label>:14:                                     ; preds = %10
  br label %18, !dbg !71

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %3, align 4, !dbg !73
  %17 = add nsw i32 %16, 1, !dbg !73
  store i32 %17, i32* %3, align 4, !dbg !73
  br label %6, !dbg !61, !llvm.loop !74

; <label>:18:                                     ; preds = %14, %6
  %19 = load i32, i32* %3, align 4, !dbg !76
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %19), !dbg !77
  ret i32 0, !dbg !78
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
!1 = !DIFile(filename: "gcov/../WA_c/278288_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 2, type: !10)
!12 = !DILocation(line: 2, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 9, scope: !7)
!15 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 11, scope: !7)
!17 = !DILocation(line: 5, column: 6, scope: !7)
!18 = !DILocation(line: 6, column: 10, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 6, column: 9, scope: !19)
!21 = !DILocation(line: 6, column: 14, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 6, column: 5)
!23 = !DILocation(line: 6, column: 18, scope: !22)
!24 = !DILocation(line: 6, column: 21, scope: !22)
!25 = !DILocation(line: 6, column: 15, scope: !22)
!26 = !DILocation(line: 6, column: 5, scope: !19)
!27 = !DILocation(line: 8, column: 12, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 12)
!29 = distinct !DILexicalBlock(scope: !22, file: !1, line: 7, column: 5)
!30 = !DILocation(line: 8, column: 16, scope: !28)
!31 = !DILocation(line: 8, column: 15, scope: !28)
!32 = !DILocation(line: 8, column: 17, scope: !28)
!33 = !DILocation(line: 8, column: 12, scope: !29)
!34 = !DILocation(line: 10, column: 14, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 9, column: 9)
!36 = !DILocation(line: 11, column: 9, scope: !35)
!37 = !DILocation(line: 12, column: 9, scope: !29)
!38 = !DILocation(line: 6, column: 27, scope: !22)
!39 = !DILocation(line: 6, column: 5, scope: !22)
!40 = distinct !{!40, !26, !41}
!41 = !DILocation(line: 13, column: 5, scope: !19)
!42 = !DILocation(line: 14, column: 8, scope: !43)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 8)
!44 = !DILocation(line: 14, column: 11, scope: !43)
!45 = !DILocation(line: 14, column: 8, scope: !7)
!46 = !DILocation(line: 16, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 5)
!48 = !DILocation(line: 17, column: 5, scope: !47)
!49 = !DILocation(line: 18, column: 12, scope: !7)
!50 = !DILocation(line: 18, column: 5, scope: !7)
!51 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !52, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{!10}
!54 = !DILocalVariable(name: "N", scope: !51, file: !1, line: 22, type: !10)
!55 = !DILocation(line: 22, column: 9, scope: !51)
!56 = !DILocalVariable(name: "i", scope: !51, file: !1, line: 22, type: !10)
!57 = !DILocation(line: 22, column: 11, scope: !51)
!58 = !DILocation(line: 23, column: 5, scope: !51)
!59 = !DILocation(line: 24, column: 7, scope: !51)
!60 = !DILocation(line: 24, column: 6, scope: !51)
!61 = !DILocation(line: 25, column: 5, scope: !51)
!62 = !DILocation(line: 25, column: 11, scope: !51)
!63 = !DILocation(line: 25, column: 14, scope: !51)
!64 = !DILocation(line: 25, column: 12, scope: !51)
!65 = !DILocation(line: 27, column: 24, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 27, column: 12)
!67 = distinct !DILexicalBlock(scope: !51, file: !1, line: 26, column: 5)
!68 = !DILocation(line: 27, column: 12, scope: !66)
!69 = !DILocation(line: 27, column: 26, scope: !66)
!70 = !DILocation(line: 27, column: 12, scope: !67)
!71 = !DILocation(line: 29, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 28, column: 9)
!73 = !DILocation(line: 31, column: 10, scope: !67)
!74 = distinct !{!74, !61, !75}
!75 = !DILocation(line: 32, column: 5, scope: !51)
!76 = !DILocation(line: 33, column: 17, scope: !51)
!77 = !DILocation(line: 33, column: 5, scope: !51)
!78 = !DILocation(line: 34, column: 5, scope: !51)
