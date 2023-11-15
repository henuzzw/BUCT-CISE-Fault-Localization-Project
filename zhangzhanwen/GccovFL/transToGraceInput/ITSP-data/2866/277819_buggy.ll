; ModuleID = 'gcov/../WA_c/277819_buggy.c'
source_filename = "gcov/../WA_c/277819_buggy.c"
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
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 2, i32* %5, align 4, !dbg !17
  %6 = load i32, i32* %3, align 4, !dbg !18
  %7 = icmp eq i32 %6, 2, !dbg !20
  br i1 %7, label %8, label %9, !dbg !21

; <label>:8:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !22
  br label %25, !dbg !22

; <label>:9:                                      ; preds = %1
  br label %10, !dbg !24

; <label>:10:                                     ; preds = %21, %9
  %11 = load i32, i32* %5, align 4, !dbg !25
  %12 = load i32, i32* %3, align 4, !dbg !26
  %13 = icmp slt i32 %11, %12, !dbg !27
  br i1 %13, label %14, label %24, !dbg !24

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 4, !dbg !28
  %16 = load i32, i32* %5, align 4, !dbg !30
  %17 = srem i32 %15, %16, !dbg !31
  store i32 %17, i32* %4, align 4, !dbg !32
  %18 = load i32, i32* %4, align 4, !dbg !33
  %19 = icmp eq i32 %18, 0, !dbg !35
  br i1 %19, label %20, label %21, !dbg !36

; <label>:20:                                     ; preds = %14
  store i32 0, i32* %2, align 4, !dbg !37
  br label %25, !dbg !37

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %5, align 4, !dbg !39
  %23 = add nsw i32 %22, 1, !dbg !40
  store i32 %23, i32* %5, align 4, !dbg !41
  br label %10, !dbg !24, !llvm.loop !42

; <label>:24:                                     ; preds = %10
  store i32 1, i32* %2, align 4, !dbg !44
  br label %25, !dbg !44

; <label>:25:                                     ; preds = %24, %20, %8
  %26 = load i32, i32* %2, align 4, !dbg !45
  ret i32 %26, !dbg !45
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !46 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %3, metadata !51, metadata !DIExpression()), !dbg !52
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 2, i32* %3, align 4, !dbg !58
  br label %7, !dbg !60

; <label>:7:                                      ; preds = %18, %0
  %8 = load i32, i32* %3, align 4, !dbg !61
  %9 = load i32, i32* %2, align 4, !dbg !63
  %10 = icmp slt i32 %8, %9, !dbg !64
  br i1 %10, label %11, label %21, !dbg !65

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !66
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !68
  store i32 %13, i32* %4, align 4, !dbg !69
  %14 = load i32, i32* %2, align 4, !dbg !70
  %15 = load i32, i32* %3, align 4, !dbg !71
  %16 = sub nsw i32 %14, %15, !dbg !72
  %17 = call i32 @_Z11check_primei(i32 %16), !dbg !73
  store i32 %17, i32* %5, align 4, !dbg !74
  br label %18, !dbg !75

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %3, align 4, !dbg !76
  %20 = add nsw i32 %19, 1, !dbg !76
  store i32 %20, i32* %3, align 4, !dbg !76
  br label %7, !dbg !77, !llvm.loop !78

; <label>:21:                                     ; preds = %7
  %22 = load i32, i32* %4, align 4, !dbg !80
  %23 = icmp eq i32 %22, 1, !dbg !82
  br i1 %23, label %24, label %29, !dbg !83

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %5, align 4, !dbg !84
  %26 = icmp eq i32 %25, 1, !dbg !85
  br i1 %26, label %27, label %29, !dbg !86

; <label>:27:                                     ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !87
  br label %31, !dbg !89

; <label>:29:                                     ; preds = %24, %21
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !90
  br label %31

; <label>:31:                                     ; preds = %29, %27
  ret i32 0, !dbg !92
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
!1 = !DIFile(filename: "gcov/../WA_c/277819_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
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
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 11, scope: !7)
!17 = !DILocation(line: 6, column: 6, scope: !7)
!18 = !DILocation(line: 7, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!20 = !DILocation(line: 7, column: 11, scope: !19)
!21 = !DILocation(line: 7, column: 8, scope: !7)
!22 = !DILocation(line: 9, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 5)
!24 = !DILocation(line: 11, column: 5, scope: !7)
!25 = !DILocation(line: 11, column: 12, scope: !7)
!26 = !DILocation(line: 11, column: 14, scope: !7)
!27 = !DILocation(line: 11, column: 13, scope: !7)
!28 = !DILocation(line: 13, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 5)
!30 = !DILocation(line: 13, column: 15, scope: !29)
!31 = !DILocation(line: 13, column: 14, scope: !29)
!32 = !DILocation(line: 13, column: 10, scope: !29)
!33 = !DILocation(line: 14, column: 12, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 14, column: 12)
!35 = !DILocation(line: 14, column: 14, scope: !34)
!36 = !DILocation(line: 14, column: 12, scope: !29)
!37 = !DILocation(line: 16, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 15, column: 9)
!39 = !DILocation(line: 18, column: 11, scope: !29)
!40 = !DILocation(line: 18, column: 12, scope: !29)
!41 = !DILocation(line: 18, column: 10, scope: !29)
!42 = distinct !{!42, !24, !43}
!43 = !DILocation(line: 19, column: 5, scope: !7)
!44 = !DILocation(line: 20, column: 5, scope: !7)
!45 = !DILocation(line: 22, column: 1, scope: !7)
!46 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 24, type: !47, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{!10}
!49 = !DILocalVariable(name: "num", scope: !46, file: !1, line: 26, type: !10)
!50 = !DILocation(line: 26, column: 9, scope: !46)
!51 = !DILocalVariable(name: "i", scope: !46, file: !1, line: 26, type: !10)
!52 = !DILocation(line: 26, column: 13, scope: !46)
!53 = !DILocation(line: 27, column: 5, scope: !46)
!54 = !DILocalVariable(name: "chk1", scope: !46, file: !1, line: 28, type: !10)
!55 = !DILocation(line: 28, column: 9, scope: !46)
!56 = !DILocalVariable(name: "chk2", scope: !46, file: !1, line: 28, type: !10)
!57 = !DILocation(line: 28, column: 14, scope: !46)
!58 = !DILocation(line: 29, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !46, file: !1, line: 29, column: 5)
!60 = !DILocation(line: 29, column: 9, scope: !59)
!61 = !DILocation(line: 29, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 29, column: 5)
!63 = !DILocation(line: 29, column: 16, scope: !62)
!64 = !DILocation(line: 29, column: 15, scope: !62)
!65 = !DILocation(line: 29, column: 5, scope: !59)
!66 = !DILocation(line: 31, column: 26, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 30, column: 5)
!68 = !DILocation(line: 31, column: 14, scope: !67)
!69 = !DILocation(line: 31, column: 13, scope: !67)
!70 = !DILocation(line: 32, column: 26, scope: !67)
!71 = !DILocation(line: 32, column: 30, scope: !67)
!72 = !DILocation(line: 32, column: 29, scope: !67)
!73 = !DILocation(line: 32, column: 14, scope: !67)
!74 = !DILocation(line: 32, column: 13, scope: !67)
!75 = !DILocation(line: 33, column: 5, scope: !67)
!76 = !DILocation(line: 29, column: 22, scope: !62)
!77 = !DILocation(line: 29, column: 5, scope: !62)
!78 = distinct !{!78, !65, !79}
!79 = !DILocation(line: 33, column: 5, scope: !59)
!80 = !DILocation(line: 34, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !46, file: !1, line: 34, column: 8)
!82 = !DILocation(line: 34, column: 13, scope: !81)
!83 = !DILocation(line: 34, column: 17, scope: !81)
!84 = !DILocation(line: 34, column: 20, scope: !81)
!85 = !DILocation(line: 34, column: 24, scope: !81)
!86 = !DILocation(line: 34, column: 8, scope: !46)
!87 = !DILocation(line: 36, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !81, file: !1, line: 35, column: 5)
!89 = !DILocation(line: 37, column: 5, scope: !88)
!90 = !DILocation(line: 40, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !81, file: !1, line: 39, column: 5)
!92 = !DILocation(line: 42, column: 5, scope: !46)
