; ModuleID = 'gcov/../WA_c/277860_buggy.c'
source_filename = "gcov/../WA_c/277860_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 2, i32* %4, align 4, !dbg !14
  br label %5, !dbg !15

; <label>:5:                                      ; preds = %15, %1
  %6 = load i32, i32* %4, align 4, !dbg !16
  %7 = load i32, i32* %3, align 4, !dbg !17
  %8 = icmp slt i32 %6, %7, !dbg !18
  br i1 %8, label %9, label %18, !dbg !15

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !19
  %11 = load i32, i32* %4, align 4, !dbg !22
  %12 = srem i32 %10, %11, !dbg !23
  %13 = icmp eq i32 %12, 0, !dbg !24
  br i1 %13, label %14, label %15, !dbg !25

; <label>:14:                                     ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !26
  br label %19, !dbg !26

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %4, align 4, !dbg !28
  %17 = add nsw i32 %16, 1, !dbg !29
  store i32 %17, i32* %4, align 4, !dbg !30
  br label %5, !dbg !15, !llvm.loop !31

; <label>:18:                                     ; preds = %5
  store i32 0, i32* %2, align 4, !dbg !33
  br label %19, !dbg !33

; <label>:19:                                     ; preds = %18, %14
  %20 = load i32, i32* %2, align 4, !dbg !34
  ret i32 %20, !dbg !34
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !35 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %3, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %4, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 1, i32* %4, align 4, !dbg !43
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !44
  store i32 2, i32* %2, align 4, !dbg !45
  br label %7, !dbg !47

; <label>:7:                                      ; preds = %22, %0
  %8 = load i32, i32* %2, align 4, !dbg !48
  %9 = load i32, i32* %3, align 4, !dbg !50
  %10 = icmp slt i32 %8, %9, !dbg !51
  br i1 %10, label %11, label %25, !dbg !52

; <label>:11:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata i32* %5, metadata !53, metadata !DIExpression()), !dbg !55
  %12 = load i32, i32* %2, align 4, !dbg !56
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !57
  %14 = load i32, i32* %3, align 4, !dbg !58
  %15 = load i32, i32* %2, align 4, !dbg !59
  %16 = sub nsw i32 %14, %15, !dbg !60
  %17 = call i32 @_Z11check_primei(i32 %16), !dbg !61
  %18 = add nsw i32 %13, %17, !dbg !62
  store i32 %18, i32* %5, align 4, !dbg !55
  %19 = load i32, i32* %4, align 4, !dbg !63
  %20 = load i32, i32* %5, align 4, !dbg !64
  %21 = mul nsw i32 %19, %20, !dbg !65
  store i32 %21, i32* %4, align 4, !dbg !66
  br label %22, !dbg !67

; <label>:22:                                     ; preds = %11
  %23 = load i32, i32* %2, align 4, !dbg !68
  %24 = add nsw i32 %23, 1, !dbg !68
  store i32 %24, i32* %2, align 4, !dbg !68
  br label %7, !dbg !69, !llvm.loop !70

; <label>:25:                                     ; preds = %7
  %26 = load i32, i32* %4, align 4, !dbg !72
  %27 = icmp eq i32 %26, 0, !dbg !74
  br i1 %27, label %28, label %30, !dbg !75

; <label>:28:                                     ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !76
  br label %32, !dbg !78

; <label>:30:                                     ; preds = %25
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !79
  br label %32

; <label>:32:                                     ; preds = %30, %28
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
!1 = !DIFile(filename: "gcov/../WA_c/277860_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
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
!15 = !DILocation(line: 6, column: 5, scope: !7)
!16 = !DILocation(line: 6, column: 11, scope: !7)
!17 = !DILocation(line: 6, column: 13, scope: !7)
!18 = !DILocation(line: 6, column: 12, scope: !7)
!19 = !DILocation(line: 8, column: 12, scope: !20)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 12)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!22 = !DILocation(line: 8, column: 16, scope: !20)
!23 = !DILocation(line: 8, column: 15, scope: !20)
!24 = !DILocation(line: 8, column: 17, scope: !20)
!25 = !DILocation(line: 8, column: 12, scope: !21)
!26 = !DILocation(line: 10, column: 13, scope: !27)
!27 = distinct !DILexicalBlock(scope: !20, file: !1, line: 9, column: 9)
!28 = !DILocation(line: 12, column: 11, scope: !21)
!29 = !DILocation(line: 12, column: 12, scope: !21)
!30 = !DILocation(line: 12, column: 10, scope: !21)
!31 = distinct !{!31, !15, !32}
!32 = !DILocation(line: 13, column: 5, scope: !7)
!33 = !DILocation(line: 14, column: 5, scope: !7)
!34 = !DILocation(line: 15, column: 1, scope: !7)
!35 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !36, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!10}
!38 = !DILocalVariable(name: "i", scope: !35, file: !1, line: 18, type: !10)
!39 = !DILocation(line: 18, column: 9, scope: !35)
!40 = !DILocalVariable(name: "N", scope: !35, file: !1, line: 19, type: !10)
!41 = !DILocation(line: 19, column: 9, scope: !35)
!42 = !DILocalVariable(name: "p", scope: !35, file: !1, line: 20, type: !10)
!43 = !DILocation(line: 20, column: 9, scope: !35)
!44 = !DILocation(line: 21, column: 5, scope: !35)
!45 = !DILocation(line: 22, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !35, file: !1, line: 22, column: 5)
!47 = !DILocation(line: 22, column: 9, scope: !46)
!48 = !DILocation(line: 22, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 22, column: 5)
!50 = !DILocation(line: 22, column: 16, scope: !49)
!51 = !DILocation(line: 22, column: 15, scope: !49)
!52 = !DILocation(line: 22, column: 5, scope: !46)
!53 = !DILocalVariable(name: "q", scope: !54, file: !1, line: 24, type: !10)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 23, column: 5)
!55 = !DILocation(line: 24, column: 13, scope: !54)
!56 = !DILocation(line: 24, column: 28, scope: !54)
!57 = !DILocation(line: 24, column: 16, scope: !54)
!58 = !DILocation(line: 24, column: 43, scope: !54)
!59 = !DILocation(line: 24, column: 45, scope: !54)
!60 = !DILocation(line: 24, column: 44, scope: !54)
!61 = !DILocation(line: 24, column: 31, scope: !54)
!62 = !DILocation(line: 24, column: 30, scope: !54)
!63 = !DILocation(line: 25, column: 11, scope: !54)
!64 = !DILocation(line: 25, column: 13, scope: !54)
!65 = !DILocation(line: 25, column: 12, scope: !54)
!66 = !DILocation(line: 25, column: 10, scope: !54)
!67 = !DILocation(line: 26, column: 5, scope: !54)
!68 = !DILocation(line: 22, column: 20, scope: !49)
!69 = !DILocation(line: 22, column: 5, scope: !49)
!70 = distinct !{!70, !52, !71}
!71 = !DILocation(line: 26, column: 5, scope: !46)
!72 = !DILocation(line: 27, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !35, file: !1, line: 27, column: 9)
!74 = !DILocation(line: 27, column: 10, scope: !73)
!75 = !DILocation(line: 27, column: 9, scope: !35)
!76 = !DILocation(line: 29, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 28, column: 5)
!78 = !DILocation(line: 30, column: 5, scope: !77)
!79 = !DILocation(line: 33, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 32, column: 5)
!81 = !DILocation(line: 37, column: 5, scope: !35)
