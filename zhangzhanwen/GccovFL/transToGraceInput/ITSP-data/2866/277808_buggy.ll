; ModuleID = 'gcov/../WA_c/277808_buggy.c'
source_filename = "gcov/../WA_c/277808_buggy.c"
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !DIExpression()), !dbg !15
  store i32 2, i32* %4, align 4, !dbg !15
  br label %5, !dbg !16

; <label>:5:                                      ; preds = %16, %1
  %6 = load i32, i32* %4, align 4, !dbg !17
  %7 = load i32, i32* %3, align 4, !dbg !19
  %8 = icmp slt i32 %6, %7, !dbg !20
  br i1 %8, label %9, label %19, !dbg !21

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !22
  %11 = load i32, i32* %4, align 4, !dbg !25
  %12 = srem i32 %10, %11, !dbg !26
  %13 = icmp eq i32 %12, 0, !dbg !27
  br i1 %13, label %14, label %15, !dbg !28

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !29
  br label %20, !dbg !29

; <label>:15:                                     ; preds = %9
  br label %16, !dbg !31

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %4, align 4, !dbg !32
  %18 = add nsw i32 %17, 1, !dbg !32
  store i32 %18, i32* %4, align 4, !dbg !32
  br label %5, !dbg !33, !llvm.loop !34

; <label>:19:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !36
  br label %20, !dbg !36

; <label>:20:                                     ; preds = %19, %14
  %21 = load i32, i32* %2, align 4, !dbg !37
  ret i32 %21, !dbg !37
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %3, metadata !43, metadata !DIExpression()), !dbg !44
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !45
  store i32 2, i32* %3, align 4, !dbg !46
  br label %5, !dbg !48

; <label>:5:                                      ; preds = %24, %0
  %6 = load i32, i32* %3, align 4, !dbg !49
  %7 = load i32, i32* %2, align 4, !dbg !51
  %8 = icmp slt i32 %6, %7, !dbg !52
  br i1 %8, label %9, label %27, !dbg !53

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4, !dbg !54
  %11 = call i32 @_Z11check_primei(i32 %10), !dbg !57
  %12 = icmp eq i32 %11, 1, !dbg !58
  br i1 %12, label %13, label %21, !dbg !59

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %2, align 4, !dbg !60
  %15 = load i32, i32* %3, align 4, !dbg !61
  %16 = sub nsw i32 %14, %15, !dbg !62
  %17 = call i32 @_Z11check_primei(i32 %16), !dbg !63
  %18 = icmp eq i32 %17, 1, !dbg !64
  br i1 %18, label %19, label %21, !dbg !65

; <label>:19:                                     ; preds = %13
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !66
  br label %23, !dbg !68

; <label>:21:                                     ; preds = %13, %9
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !69
  br label %23

; <label>:23:                                     ; preds = %21, %19
  store i32 0, i32* %1, align 4, !dbg !71
  br label %27, !dbg !71
                                                  ; No predecessors!
  %25 = load i32, i32* %3, align 4, !dbg !72
  %26 = add nsw i32 %25, 1, !dbg !72
  store i32 %26, i32* %3, align 4, !dbg !72
  br label %5, !dbg !73, !llvm.loop !74

; <label>:27:                                     ; preds = %23, %5
  %28 = load i32, i32* %1, align 4, !dbg !76
  ret i32 %28, !dbg !76
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
!1 = !DIFile(filename: "gcov/../WA_c/277808_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2866")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 21, scope: !7)
!13 = !DILocalVariable(name: "n", scope: !14, file: !1, line: 5, type: !10)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 5)
!15 = !DILocation(line: 5, column: 13, scope: !14)
!16 = !DILocation(line: 5, column: 9, scope: !14)
!17 = !DILocation(line: 5, column: 18, scope: !18)
!18 = distinct !DILexicalBlock(scope: !14, file: !1, line: 5, column: 5)
!19 = !DILocation(line: 5, column: 20, scope: !18)
!20 = !DILocation(line: 5, column: 19, scope: !18)
!21 = !DILocation(line: 5, column: 5, scope: !14)
!22 = !DILocation(line: 7, column: 12, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 7, column: 12)
!24 = distinct !DILexicalBlock(scope: !18, file: !1, line: 6, column: 5)
!25 = !DILocation(line: 7, column: 14, scope: !23)
!26 = !DILocation(line: 7, column: 13, scope: !23)
!27 = !DILocation(line: 7, column: 16, scope: !23)
!28 = !DILocation(line: 7, column: 12, scope: !24)
!29 = !DILocation(line: 9, column: 13, scope: !30)
!30 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 9)
!31 = !DILocation(line: 11, column: 5, scope: !24)
!32 = !DILocation(line: 5, column: 24, scope: !18)
!33 = !DILocation(line: 5, column: 5, scope: !18)
!34 = distinct !{!34, !21, !35}
!35 = !DILocation(line: 11, column: 5, scope: !14)
!36 = !DILocation(line: 12, column: 5, scope: !7)
!37 = !DILocation(line: 14, column: 1, scope: !7)
!38 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !39, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{!10}
!41 = !DILocalVariable(name: "N", scope: !38, file: !1, line: 17, type: !10)
!42 = !DILocation(line: 17, column: 9, scope: !38)
!43 = !DILocalVariable(name: "b", scope: !38, file: !1, line: 17, type: !10)
!44 = !DILocation(line: 17, column: 11, scope: !38)
!45 = !DILocation(line: 18, column: 5, scope: !38)
!46 = !DILocation(line: 22, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !38, file: !1, line: 22, column: 5)
!48 = !DILocation(line: 22, column: 9, scope: !47)
!49 = !DILocation(line: 22, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 22, column: 5)
!51 = !DILocation(line: 22, column: 16, scope: !50)
!52 = !DILocation(line: 22, column: 15, scope: !50)
!53 = !DILocation(line: 22, column: 5, scope: !47)
!54 = !DILocation(line: 24, column: 27, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 24, column: 14)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 23, column: 5)
!57 = !DILocation(line: 24, column: 15, scope: !55)
!58 = !DILocation(line: 24, column: 29, scope: !55)
!59 = !DILocation(line: 24, column: 34, scope: !55)
!60 = !DILocation(line: 24, column: 50, scope: !55)
!61 = !DILocation(line: 24, column: 52, scope: !55)
!62 = !DILocation(line: 24, column: 51, scope: !55)
!63 = !DILocation(line: 24, column: 38, scope: !55)
!64 = !DILocation(line: 24, column: 54, scope: !55)
!65 = !DILocation(line: 24, column: 14, scope: !56)
!66 = !DILocation(line: 28, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !55, file: !1, line: 27, column: 9)
!68 = !DILocation(line: 29, column: 9, scope: !67)
!69 = !DILocation(line: 33, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !55, file: !1, line: 32, column: 9)
!71 = !DILocation(line: 35, column: 9, scope: !56)
!72 = !DILocation(line: 22, column: 20, scope: !50)
!73 = !DILocation(line: 22, column: 5, scope: !50)
!74 = distinct !{!74, !53, !75}
!75 = !DILocation(line: 36, column: 5, scope: !47)
!76 = !DILocation(line: 37, column: 1, scope: !38)
