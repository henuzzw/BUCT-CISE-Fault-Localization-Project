; ModuleID = 'gcov/../WA_c/440580_buggy.c'
source_filename = "gcov/../WA_c/440580_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %3, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %4, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  br label %6, !dbg !19

; <label>:6:                                      ; preds = %29, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !20
  %8 = icmp ne i32 %7, -1, !dbg !21
  br i1 %8, label %9, label %32, !dbg !19

; <label>:9:                                      ; preds = %6
  store i32 0, i32* %3, align 4, !dbg !22
  br label %10, !dbg !25

; <label>:10:                                     ; preds = %26, %9
  %11 = load i32, i32* %2, align 4, !dbg !26
  %12 = icmp sge i32 %11, 1, !dbg !28
  br i1 %12, label %13, label %29, !dbg !29

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %2, align 4, !dbg !30
  %15 = srem i32 %14, 2, !dbg !32
  store i32 %15, i32* %5, align 4, !dbg !33
  %16 = load i32, i32* %5, align 4, !dbg !34
  %17 = icmp eq i32 %16, 1, !dbg !36
  br i1 %17, label %18, label %21, !dbg !37

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %4, align 4, !dbg !38
  %20 = add nsw i32 %19, 1, !dbg !40
  store i32 %20, i32* %4, align 4, !dbg !41
  br label %21, !dbg !42

; <label>:21:                                     ; preds = %18, %13
  %22 = load i32, i32* %2, align 4, !dbg !43
  %23 = load i32, i32* %5, align 4, !dbg !44
  %24 = sub nsw i32 %22, %23, !dbg !45
  %25 = sdiv i32 %24, 2, !dbg !46
  store i32 %25, i32* %2, align 4, !dbg !47
  br label %26, !dbg !48

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %3, align 4, !dbg !49
  %28 = add nsw i32 %27, 1, !dbg !49
  store i32 %28, i32* %3, align 4, !dbg !49
  br label %10, !dbg !50, !llvm.loop !51

; <label>:29:                                     ; preds = %10
  %30 = load i32, i32* %4, align 4, !dbg !53
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %30), !dbg !54
  store i32 1, i32* %4, align 4, !dbg !55
  br label %6, !dbg !19, !llvm.loop !56

; <label>:32:                                     ; preds = %6
  %33 = load i32, i32* %1, align 4, !dbg !58
  ret i32 %33, !dbg !58
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gcov/../WA_c/440580_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 19, scope: !7)
!17 = !DILocalVariable(name: "t", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 28, scope: !7)
!19 = !DILocation(line: 5, column: 5, scope: !7)
!20 = !DILocation(line: 5, column: 11, scope: !7)
!21 = !DILocation(line: 5, column: 27, scope: !7)
!22 = !DILocation(line: 7, column: 15, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 7, column: 9)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!25 = !DILocation(line: 7, column: 13, scope: !23)
!26 = !DILocation(line: 7, column: 20, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 9)
!28 = !DILocation(line: 7, column: 22, scope: !27)
!29 = !DILocation(line: 7, column: 9, scope: !23)
!30 = !DILocation(line: 9, column: 17, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 8, column: 9)
!32 = !DILocation(line: 9, column: 19, scope: !31)
!33 = !DILocation(line: 9, column: 15, scope: !31)
!34 = !DILocation(line: 10, column: 16, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 16)
!36 = !DILocation(line: 10, column: 18, scope: !35)
!37 = !DILocation(line: 10, column: 16, scope: !31)
!38 = !DILocation(line: 12, column: 23, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 13)
!40 = !DILocation(line: 12, column: 27, scope: !39)
!41 = !DILocation(line: 12, column: 21, scope: !39)
!42 = !DILocation(line: 13, column: 13, scope: !39)
!43 = !DILocation(line: 14, column: 18, scope: !31)
!44 = !DILocation(line: 14, column: 22, scope: !31)
!45 = !DILocation(line: 14, column: 20, scope: !31)
!46 = !DILocation(line: 14, column: 25, scope: !31)
!47 = !DILocation(line: 14, column: 15, scope: !31)
!48 = !DILocation(line: 15, column: 9, scope: !31)
!49 = !DILocation(line: 7, column: 29, scope: !27)
!50 = !DILocation(line: 7, column: 9, scope: !27)
!51 = distinct !{!51, !29, !52}
!52 = !DILocation(line: 15, column: 9, scope: !23)
!53 = !DILocation(line: 16, column: 24, scope: !24)
!54 = !DILocation(line: 16, column: 9, scope: !24)
!55 = !DILocation(line: 17, column: 13, scope: !24)
!56 = distinct !{!56, !19, !57}
!57 = !DILocation(line: 18, column: 5, scope: !7)
!58 = !DILocation(line: 19, column: 1, scope: !7)
