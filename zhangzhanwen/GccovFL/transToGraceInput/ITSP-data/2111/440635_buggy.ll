; ModuleID = 'gcov/../WA_c/440635_buggy.c'
source_filename = "gcov/../WA_c/440635_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z14count_one_bitsj(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %3, align 4, !dbg !15
  br label %4, !dbg !16

; <label>:4:                                      ; preds = %14, %1
  %5 = load i32, i32* %2, align 4, !dbg !17
  %6 = icmp ne i32 %5, 0, !dbg !18
  br i1 %6, label %7, label %17, !dbg !16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !19
  %9 = urem i32 %8, 2, !dbg !22
  %10 = icmp eq i32 %9, 1, !dbg !23
  br i1 %10, label %11, label %14, !dbg !24

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !25
  %13 = add nsw i32 %12, 1, !dbg !25
  store i32 %13, i32* %3, align 4, !dbg !25
  br label %14, !dbg !27

; <label>:14:                                     ; preds = %11, %7
  %15 = load i32, i32* %2, align 4, !dbg !28
  %16 = udiv i32 %15, 2, !dbg !29
  store i32 %16, i32* %2, align 4, !dbg !30
  br label %4, !dbg !16, !llvm.loop !31

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %3, align 4, !dbg !33
  ret i32 %18, !dbg !34
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !35 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !38, metadata !DIExpression()), !dbg !39
  br label %4, !dbg !40

; <label>:4:                                      ; preds = %7, %0
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !41
  %6 = icmp ne i32 %5, -1, !dbg !42
  br i1 %6, label %7, label %14, !dbg !40

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !43, metadata !DIExpression()), !dbg !45
  %8 = load i32, i32* %2, align 4, !dbg !46
  %9 = call i32 @_Z14count_one_bitsj(i32 %8), !dbg !47
  store i32 %9, i32* %3, align 4, !dbg !45
  %10 = load i32, i32* %3, align 4, !dbg !48
  %11 = add nsw i32 %10, 1, !dbg !48
  store i32 %11, i32* %3, align 4, !dbg !48
  %12 = load i32, i32* %3, align 4, !dbg !49
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %12), !dbg !50
  br label %4, !dbg !40, !llvm.loop !51

; <label>:14:                                     ; preds = %4
  ret i32 0, !dbg !53
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
!1 = !DIFile(filename: "gcov/../WA_c/440635_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "count_one_bits", linkageName: "_Z14count_one_bitsj", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !1, line: 2, type: !11)
!13 = !DILocation(line: 2, column: 33, scope: !7)
!14 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 4, type: !10)
!15 = !DILocation(line: 4, column: 9, scope: !7)
!16 = !DILocation(line: 5, column: 5, scope: !7)
!17 = !DILocation(line: 5, column: 12, scope: !7)
!18 = !DILocation(line: 5, column: 14, scope: !7)
!19 = !DILocation(line: 7, column: 13, scope: !20)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 7, column: 13)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!22 = !DILocation(line: 7, column: 15, scope: !20)
!23 = !DILocation(line: 7, column: 19, scope: !20)
!24 = !DILocation(line: 7, column: 13, scope: !21)
!25 = !DILocation(line: 9, column: 18, scope: !26)
!26 = distinct !DILexicalBlock(scope: !20, file: !1, line: 8, column: 9)
!27 = !DILocation(line: 10, column: 9, scope: !26)
!28 = !DILocation(line: 11, column: 13, scope: !21)
!29 = !DILocation(line: 11, column: 15, scope: !21)
!30 = !DILocation(line: 11, column: 11, scope: !21)
!31 = distinct !{!31, !16, !32}
!32 = !DILocation(line: 12, column: 5, scope: !7)
!33 = !DILocation(line: 13, column: 12, scope: !7)
!34 = !DILocation(line: 13, column: 5, scope: !7)
!35 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !36, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!10}
!38 = !DILocalVariable(name: "num", scope: !35, file: !1, line: 17, type: !10)
!39 = !DILocation(line: 17, column: 9, scope: !35)
!40 = !DILocation(line: 18, column: 5, scope: !35)
!41 = !DILocation(line: 18, column: 11, scope: !35)
!42 = !DILocation(line: 18, column: 29, scope: !35)
!43 = !DILocalVariable(name: "ret", scope: !44, file: !1, line: 20, type: !10)
!44 = distinct !DILexicalBlock(scope: !35, file: !1, line: 19, column: 5)
!45 = !DILocation(line: 20, column: 13, scope: !44)
!46 = !DILocation(line: 20, column: 34, scope: !44)
!47 = !DILocation(line: 20, column: 19, scope: !44)
!48 = !DILocation(line: 21, column: 12, scope: !44)
!49 = !DILocation(line: 22, column: 24, scope: !44)
!50 = !DILocation(line: 22, column: 9, scope: !44)
!51 = distinct !{!51, !40, !52}
!52 = !DILocation(line: 23, column: 5, scope: !35)
!53 = !DILocation(line: 24, column: 5, scope: !35)
