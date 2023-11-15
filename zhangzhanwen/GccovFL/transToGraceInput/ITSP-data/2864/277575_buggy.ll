; ModuleID = 'gcov/../WA_c/277575_buggy.c'
source_filename = "gcov/../WA_c/277575_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !15
  store i32 2, i32* %4, align 4, !dbg !15
  br label %5, !dbg !16

; <label>:5:                                      ; preds = %30, %1
  %6 = load i32, i32* %4, align 4, !dbg !17
  %7 = load i32, i32* %3, align 4, !dbg !19
  %8 = icmp slt i32 %6, %7, !dbg !20
  br i1 %8, label %9, label %33, !dbg !21

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !22
  %11 = load i32, i32* %4, align 4, !dbg !25
  %12 = srem i32 %10, %11, !dbg !26
  %13 = icmp eq i32 %12, 0, !dbg !27
  br i1 %13, label %14, label %15, !dbg !28

; <label>:14:                                     ; preds = %9
  br label %33, !dbg !29

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !31
  %17 = load i32, i32* %4, align 4, !dbg !33
  %18 = srem i32 %16, %17, !dbg !34
  %19 = icmp ne i32 %18, 0, !dbg !35
  br i1 %19, label %20, label %29, !dbg !36

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %4, align 4, !dbg !37
  %22 = load i32, i32* %3, align 4, !dbg !40
  %23 = sub nsw i32 %22, 1, !dbg !41
  %24 = icmp eq i32 %21, %23, !dbg !42
  br i1 %24, label %25, label %28, !dbg !43

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %3, align 4, !dbg !44
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %26), !dbg !46
  br label %28, !dbg !47

; <label>:28:                                     ; preds = %25, %20
  br label %29, !dbg !48

; <label>:29:                                     ; preds = %28, %15
  br label %30, !dbg !49

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %4, align 4, !dbg !50
  %32 = add nsw i32 %31, 1, !dbg !50
  store i32 %32, i32* %4, align 4, !dbg !50
  br label %5, !dbg !51, !llvm.loop !52

; <label>:33:                                     ; preds = %14, %5
  call void @llvm.trap(), !dbg !53
  unreachable, !dbg !53
                                                  ; No predecessors!
  %35 = load i32, i32* %2, align 4, !dbg !54
  ret i32 %35, !dbg !54
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #4 !dbg !55 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %3, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %4, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %5, metadata !64, metadata !DIExpression()), !dbg !65
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32* %2, i32* %3), !dbg !66
  %7 = load i32, i32* %2, align 4, !dbg !67
  %8 = icmp sle i32 %7, 2, !dbg !69
  br i1 %8, label %9, label %12, !dbg !70

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !71
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %10), !dbg !73
  br label %12, !dbg !74

; <label>:12:                                     ; preds = %9, %0
  %13 = load i32, i32* %2, align 4, !dbg !75
  store i32 %13, i32* %4, align 4, !dbg !77
  br label %14, !dbg !78

; <label>:14:                                     ; preds = %21, %12
  %15 = load i32, i32* %4, align 4, !dbg !79
  %16 = load i32, i32* %3, align 4, !dbg !81
  %17 = icmp sle i32 %15, %16, !dbg !82
  br i1 %17, label %18, label %24, !dbg !83

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !84
  %20 = call i32 @_Z11check_primei(i32 %19), !dbg !86
  br label %21, !dbg !87

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %4, align 4, !dbg !88
  %23 = add nsw i32 %22, 1, !dbg !88
  store i32 %23, i32* %4, align 4, !dbg !88
  br label %14, !dbg !89, !llvm.loop !90

; <label>:24:                                     ; preds = %14
  ret i32 0, !dbg !92
}

declare i32 @scanf(i8*, ...) #2

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/277575_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
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
!13 = !DILocalVariable(name: "j", scope: !14, file: !1, line: 6, type: !10)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!15 = !DILocation(line: 6, column: 14, scope: !14)
!16 = !DILocation(line: 6, column: 10, scope: !14)
!17 = !DILocation(line: 6, column: 20, scope: !18)
!18 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 5)
!19 = !DILocation(line: 6, column: 22, scope: !18)
!20 = !DILocation(line: 6, column: 21, scope: !18)
!21 = !DILocation(line: 6, column: 5, scope: !14)
!22 = !DILocation(line: 8, column: 12, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 12)
!24 = distinct !DILexicalBlock(scope: !18, file: !1, line: 7, column: 5)
!25 = !DILocation(line: 8, column: 16, scope: !23)
!26 = !DILocation(line: 8, column: 15, scope: !23)
!27 = !DILocation(line: 8, column: 17, scope: !23)
!28 = !DILocation(line: 8, column: 12, scope: !24)
!29 = !DILocation(line: 10, column: 13, scope: !30)
!30 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 9)
!31 = !DILocation(line: 12, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 12)
!33 = !DILocation(line: 12, column: 16, scope: !32)
!34 = !DILocation(line: 12, column: 15, scope: !32)
!35 = !DILocation(line: 12, column: 17, scope: !32)
!36 = !DILocation(line: 12, column: 12, scope: !24)
!37 = !DILocation(line: 14, column: 17, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 14, column: 17)
!39 = distinct !DILexicalBlock(scope: !32, file: !1, line: 13, column: 9)
!40 = !DILocation(line: 14, column: 20, scope: !38)
!41 = !DILocation(line: 14, column: 23, scope: !38)
!42 = !DILocation(line: 14, column: 18, scope: !38)
!43 = !DILocation(line: 14, column: 17, scope: !39)
!44 = !DILocation(line: 16, column: 30, scope: !45)
!45 = distinct !DILexicalBlock(scope: !38, file: !1, line: 15, column: 13)
!46 = !DILocation(line: 16, column: 17, scope: !45)
!47 = !DILocation(line: 17, column: 13, scope: !45)
!48 = !DILocation(line: 18, column: 9, scope: !39)
!49 = !DILocation(line: 19, column: 5, scope: !24)
!50 = !DILocation(line: 6, column: 29, scope: !18)
!51 = !DILocation(line: 6, column: 5, scope: !18)
!52 = distinct !{!52, !21, !53}
!53 = !DILocation(line: 19, column: 5, scope: !14)
!54 = !DILocation(line: 20, column: 1, scope: !7)
!55 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !56, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!56 = !DISubroutineType(types: !57)
!57 = !{!10}
!58 = !DILocalVariable(name: "n1", scope: !55, file: !1, line: 23, type: !10)
!59 = !DILocation(line: 23, column: 9, scope: !55)
!60 = !DILocalVariable(name: "n2", scope: !55, file: !1, line: 23, type: !10)
!61 = !DILocation(line: 23, column: 13, scope: !55)
!62 = !DILocalVariable(name: "num", scope: !55, file: !1, line: 23, type: !10)
!63 = !DILocation(line: 23, column: 17, scope: !55)
!64 = !DILocalVariable(name: "j", scope: !55, file: !1, line: 23, type: !10)
!65 = !DILocation(line: 23, column: 22, scope: !55)
!66 = !DILocation(line: 24, column: 5, scope: !55)
!67 = !DILocation(line: 25, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 9)
!69 = !DILocation(line: 25, column: 12, scope: !68)
!70 = !DILocation(line: 25, column: 9, scope: !55)
!71 = !DILocation(line: 27, column: 22, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 26, column: 5)
!73 = !DILocation(line: 27, column: 9, scope: !72)
!74 = !DILocation(line: 28, column: 5, scope: !72)
!75 = !DILocation(line: 29, column: 16, scope: !76)
!76 = distinct !DILexicalBlock(scope: !55, file: !1, line: 29, column: 5)
!77 = !DILocation(line: 29, column: 14, scope: !76)
!78 = !DILocation(line: 29, column: 10, scope: !76)
!79 = !DILocation(line: 29, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 29, column: 5)
!81 = !DILocation(line: 29, column: 27, scope: !80)
!82 = !DILocation(line: 29, column: 25, scope: !80)
!83 = !DILocation(line: 29, column: 5, scope: !76)
!84 = !DILocation(line: 31, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 30, column: 5)
!86 = !DILocation(line: 31, column: 9, scope: !85)
!87 = !DILocation(line: 32, column: 5, scope: !85)
!88 = !DILocation(line: 29, column: 35, scope: !80)
!89 = !DILocation(line: 29, column: 5, scope: !80)
!90 = distinct !{!90, !83, !91}
!91 = !DILocation(line: 32, column: 5, scope: !76)
!92 = !DILocation(line: 34, column: 5, scope: !55)
