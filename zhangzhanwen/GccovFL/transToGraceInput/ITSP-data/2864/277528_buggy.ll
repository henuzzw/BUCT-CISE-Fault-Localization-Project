; ModuleID = 'gcov/../WA_c/277528_buggy.c'
source_filename = "gcov/../WA_c/277528_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1

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

; <label>:5:                                      ; preds = %16, %1
  %6 = load i32, i32* %4, align 4, !dbg !18
  %7 = load i32, i32* %3, align 4, !dbg !20
  %8 = icmp slt i32 %6, %7, !dbg !21
  br i1 %8, label %9, label %19, !dbg !22

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !23
  %11 = load i32, i32* %4, align 4, !dbg !26
  %12 = srem i32 %10, %11, !dbg !27
  %13 = icmp eq i32 %12, 0, !dbg !28
  br i1 %13, label %14, label %15, !dbg !29

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !30
  br label %20, !dbg !30

; <label>:15:                                     ; preds = %9
  br label %16, !dbg !32

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %4, align 4, !dbg !33
  %18 = add nsw i32 %17, 1, !dbg !33
  store i32 %18, i32* %4, align 4, !dbg !33
  br label %5, !dbg !34, !llvm.loop !35

; <label>:19:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !37
  br label %20, !dbg !37

; <label>:20:                                     ; preds = %19, %14
  %21 = load i32, i32* %2, align 4, !dbg !38
  ret i32 %21, !dbg !38
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline optnone uwtable
define void @_Z11print_primeii(i32, i32) #2 !dbg !39 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %5, metadata !46, metadata !DIExpression()), !dbg !47
  %6 = load i32, i32* %3, align 4, !dbg !48
  store i32 %6, i32* %5, align 4, !dbg !50
  br label %7, !dbg !51

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4, !dbg !52
  %9 = load i32, i32* %4, align 4, !dbg !54
  %10 = icmp sle i32 %8, %9, !dbg !55
  br i1 %10, label %11, label %22, !dbg !56

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %5, align 4, !dbg !57
  %13 = call i32 @_Z11check_primei(i32 %12), !dbg !60
  %14 = icmp ne i32 %13, 0, !dbg !60
  br i1 %14, label %15, label %18, !dbg !61

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %5, align 4, !dbg !62
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %16), !dbg !64
  br label %18, !dbg !65

; <label>:18:                                     ; preds = %15, %11
  br label %19, !dbg !66

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %5, align 4, !dbg !67
  %21 = add nsw i32 %20, 1, !dbg !67
  store i32 %21, i32* %5, align 4, !dbg !67
  br label %7, !dbg !68, !llvm.loop !69

; <label>:22:                                     ; preds = %7
  ret void, !dbg !71
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #4 !dbg !72 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %3, metadata !77, metadata !DIExpression()), !dbg !78
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %2, i32* %3), !dbg !79
  %5 = load i32, i32* %2, align 4, !dbg !80
  %6 = load i32, i32* %3, align 4, !dbg !81
  call void @_Z11print_primeii(i32 %5, i32 %6), !dbg !82
  ret i32 0, !dbg !83
}

declare i32 @scanf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/277528_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 6, type: !8, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 21, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 9, type: !10)
!14 = !DILocation(line: 9, column: 9, scope: !7)
!15 = !DILocation(line: 10, column: 10, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 5)
!17 = !DILocation(line: 10, column: 9, scope: !16)
!18 = !DILocation(line: 10, column: 14, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !1, line: 10, column: 5)
!20 = !DILocation(line: 10, column: 16, scope: !19)
!21 = !DILocation(line: 10, column: 15, scope: !19)
!22 = !DILocation(line: 10, column: 5, scope: !16)
!23 = !DILocation(line: 12, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 12)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 11, column: 5)
!26 = !DILocation(line: 12, column: 16, scope: !24)
!27 = !DILocation(line: 12, column: 15, scope: !24)
!28 = !DILocation(line: 12, column: 17, scope: !24)
!29 = !DILocation(line: 12, column: 12, scope: !25)
!30 = !DILocation(line: 14, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 13, column: 9)
!32 = !DILocation(line: 17, column: 5, scope: !25)
!33 = !DILocation(line: 10, column: 22, scope: !19)
!34 = !DILocation(line: 10, column: 5, scope: !19)
!35 = distinct !{!35, !22, !36}
!36 = !DILocation(line: 17, column: 5, scope: !16)
!37 = !DILocation(line: 18, column: 5, scope: !7)
!38 = !DILocation(line: 19, column: 1, scope: !7)
!39 = distinct !DISubprogram(name: "print_prime", linkageName: "_Z11print_primeii", scope: !1, file: !1, line: 21, type: !40, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !10, !10}
!42 = !DILocalVariable(name: "n1", arg: 1, scope: !39, file: !1, line: 21, type: !10)
!43 = !DILocation(line: 21, column: 22, scope: !39)
!44 = !DILocalVariable(name: "n2", arg: 2, scope: !39, file: !1, line: 21, type: !10)
!45 = !DILocation(line: 21, column: 30, scope: !39)
!46 = !DILocalVariable(name: "i", scope: !39, file: !1, line: 25, type: !10)
!47 = !DILocation(line: 25, column: 9, scope: !39)
!48 = !DILocation(line: 26, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 5)
!50 = !DILocation(line: 26, column: 10, scope: !49)
!51 = !DILocation(line: 26, column: 9, scope: !49)
!52 = !DILocation(line: 26, column: 15, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 26, column: 5)
!54 = !DILocation(line: 26, column: 18, scope: !53)
!55 = !DILocation(line: 26, column: 16, scope: !53)
!56 = !DILocation(line: 26, column: 5, scope: !49)
!57 = !DILocation(line: 28, column: 24, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 28, column: 12)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 27, column: 5)
!60 = !DILocation(line: 28, column: 12, scope: !58)
!61 = !DILocation(line: 28, column: 12, scope: !59)
!62 = !DILocation(line: 30, column: 26, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 29, column: 9)
!64 = !DILocation(line: 30, column: 13, scope: !63)
!65 = !DILocation(line: 31, column: 9, scope: !63)
!66 = !DILocation(line: 32, column: 5, scope: !59)
!67 = !DILocation(line: 26, column: 23, scope: !53)
!68 = !DILocation(line: 26, column: 5, scope: !53)
!69 = distinct !{!69, !56, !70}
!70 = !DILocation(line: 32, column: 5, scope: !49)
!71 = !DILocation(line: 33, column: 1, scope: !39)
!72 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !73, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!73 = !DISubroutineType(types: !74)
!74 = !{!10}
!75 = !DILocalVariable(name: "n1", scope: !72, file: !1, line: 37, type: !10)
!76 = !DILocation(line: 37, column: 9, scope: !72)
!77 = !DILocalVariable(name: "n2", scope: !72, file: !1, line: 37, type: !10)
!78 = !DILocation(line: 37, column: 12, scope: !72)
!79 = !DILocation(line: 38, column: 5, scope: !72)
!80 = !DILocation(line: 39, column: 17, scope: !72)
!81 = !DILocation(line: 39, column: 20, scope: !72)
!82 = !DILocation(line: 39, column: 5, scope: !72)
!83 = !DILocation(line: 40, column: 5, scope: !72)
