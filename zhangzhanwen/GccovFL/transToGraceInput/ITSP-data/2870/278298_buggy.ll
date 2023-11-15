; ModuleID = 'gcov/../WA_c/278298_buggy.c'
source_filename = "gcov/../WA_c/278298_buggy.c"
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
  %5 = load i32, i32* %2, align 4, !dbg !17
  store i32 %5, i32* %3, align 4, !dbg !18
  store i32 2, i32* %4, align 4, !dbg !19
  store i32 2, i32* %4, align 4, !dbg !20
  br label %6, !dbg !22

; <label>:6:                                      ; preds = %21, %1
  %7 = load i32, i32* %4, align 4, !dbg !23
  %8 = load i32, i32* %3, align 4, !dbg !25
  %9 = icmp slt i32 %7, %8, !dbg !26
  br i1 %9, label %10, label %22, !dbg !27

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !28
  %12 = load i32, i32* %4, align 4, !dbg !31
  %13 = srem i32 %11, %12, !dbg !32
  %14 = icmp ne i32 %13, 0, !dbg !33
  br i1 %14, label %15, label %18, !dbg !34

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %4, align 4, !dbg !35
  %17 = add nsw i32 %16, 1, !dbg !37
  store i32 %17, i32* %4, align 4, !dbg !38
  br label %21, !dbg !39

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %3, align 4, !dbg !40
  %20 = add nsw i32 %19, 1, !dbg !42
  store i32 %20, i32* %3, align 4, !dbg !43
  br label %21

; <label>:21:                                     ; preds = %18, %15
  br label %6, !dbg !44, !llvm.loop !45

; <label>:22:                                     ; preds = %6
  %23 = load i32, i32* %4, align 4, !dbg !47
  ret i32 %23, !dbg !48
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !49 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !52, metadata !DIExpression()), !dbg !53
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !54
  %4 = load i32, i32* %2, align 4, !dbg !55
  %5 = call i32 @_Z11check_primei(i32 %4), !dbg !56
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %5), !dbg !57
  ret i32 0, !dbg !58
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
!1 = !DIFile(filename: "gcov/../WA_c/278298_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2870")
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
!13 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 11, scope: !7)
!17 = !DILocation(line: 6, column: 7, scope: !7)
!18 = !DILocation(line: 6, column: 6, scope: !7)
!19 = !DILocation(line: 7, column: 6, scope: !7)
!20 = !DILocation(line: 8, column: 11, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!22 = !DILocation(line: 8, column: 10, scope: !21)
!23 = !DILocation(line: 8, column: 15, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 5)
!25 = !DILocation(line: 8, column: 17, scope: !24)
!26 = !DILocation(line: 8, column: 16, scope: !24)
!27 = !DILocation(line: 8, column: 5, scope: !21)
!28 = !DILocation(line: 10, column: 14, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 13)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 5)
!31 = !DILocation(line: 10, column: 16, scope: !29)
!32 = !DILocation(line: 10, column: 15, scope: !29)
!33 = !DILocation(line: 10, column: 18, scope: !29)
!34 = !DILocation(line: 10, column: 13, scope: !30)
!35 = !DILocation(line: 12, column: 15, scope: !36)
!36 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 9)
!37 = !DILocation(line: 12, column: 16, scope: !36)
!38 = !DILocation(line: 12, column: 14, scope: !36)
!39 = !DILocation(line: 13, column: 9, scope: !36)
!40 = !DILocation(line: 16, column: 15, scope: !41)
!41 = distinct !DILexicalBlock(scope: !29, file: !1, line: 15, column: 9)
!42 = !DILocation(line: 16, column: 16, scope: !41)
!43 = !DILocation(line: 16, column: 14, scope: !41)
!44 = !DILocation(line: 8, column: 5, scope: !24)
!45 = distinct !{!45, !27, !46}
!46 = !DILocation(line: 18, column: 5, scope: !21)
!47 = !DILocation(line: 19, column: 12, scope: !7)
!48 = !DILocation(line: 19, column: 5, scope: !7)
!49 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !50, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!10}
!52 = !DILocalVariable(name: "A", scope: !49, file: !1, line: 26, type: !10)
!53 = !DILocation(line: 26, column: 9, scope: !49)
!54 = !DILocation(line: 27, column: 5, scope: !49)
!55 = !DILocation(line: 28, column: 29, scope: !49)
!56 = !DILocation(line: 28, column: 17, scope: !49)
!57 = !DILocation(line: 28, column: 5, scope: !49)
!58 = !DILocation(line: 30, column: 5, scope: !49)
