; ModuleID = 'gcov/../WA_c/439729_buggy.c'
source_filename = "gcov/../WA_c/439729_buggy.c"
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %5, align 4, !dbg !18
  br label %6, !dbg !19

; <label>:6:                                      ; preds = %24, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !20
  %8 = icmp ne i32 %7, -1, !dbg !21
  br i1 %8, label %9, label %29, !dbg !19

; <label>:9:                                      ; preds = %6
  store i32 0, i32* %3, align 4, !dbg !22
  store i32 0, i32* %5, align 4, !dbg !24
  br label %10, !dbg !25

; <label>:10:                                     ; preds = %21, %9
  %11 = load i32, i32* %2, align 4, !dbg !27
  %12 = icmp sge i32 %11, 1, !dbg !29
  br i1 %12, label %13, label %24, !dbg !30

; <label>:13:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !31
  %14 = load i32, i32* %2, align 4, !dbg !33
  %15 = srem i32 %14, 2, !dbg !34
  store i32 %15, i32* %3, align 4, !dbg !35
  %16 = load i32, i32* %3, align 4, !dbg !36
  %17 = icmp eq i32 %16, 1, !dbg !38
  br i1 %17, label %18, label %21, !dbg !39

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !40
  %20 = add nsw i32 %19, 1, !dbg !40
  store i32 %20, i32* %5, align 4, !dbg !40
  br label %21, !dbg !41

; <label>:21:                                     ; preds = %18, %13
  %22 = load i32, i32* %2, align 4, !dbg !42
  %23 = sdiv i32 %22, 2, !dbg !43
  store i32 %23, i32* %2, align 4, !dbg !44
  br label %10, !dbg !45, !llvm.loop !46

; <label>:24:                                     ; preds = %10
  %25 = load i32, i32* %5, align 4, !dbg !48
  %26 = add nsw i32 %25, -1, !dbg !48
  store i32 %26, i32* %5, align 4, !dbg !48
  %27 = load i32, i32* %5, align 4, !dbg !49
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %27), !dbg !50
  br label %6, !dbg !19, !llvm.loop !51

; <label>:29:                                     ; preds = %6
  %30 = load i32, i32* %1, align 4, !dbg !53
  ret i32 %30, !dbg !53
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
!1 = !DIFile(filename: "gcov/../WA_c/439729_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
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
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocation(line: 5, column: 5, scope: !7)
!20 = !DILocation(line: 5, column: 11, scope: !7)
!21 = !DILocation(line: 5, column: 27, scope: !7)
!22 = !DILocation(line: 7, column: 11, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!24 = !DILocation(line: 8, column: 11, scope: !23)
!25 = !DILocation(line: 9, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 9)
!27 = !DILocation(line: 9, column: 16, scope: !28)
!28 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 9)
!29 = !DILocation(line: 9, column: 18, scope: !28)
!30 = !DILocation(line: 9, column: 9, scope: !26)
!31 = !DILocation(line: 11, column: 15, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 9)
!33 = !DILocation(line: 12, column: 17, scope: !32)
!34 = !DILocation(line: 12, column: 19, scope: !32)
!35 = !DILocation(line: 12, column: 15, scope: !32)
!36 = !DILocation(line: 13, column: 16, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 13, column: 16)
!38 = !DILocation(line: 13, column: 18, scope: !37)
!39 = !DILocation(line: 13, column: 16, scope: !32)
!40 = !DILocation(line: 14, column: 18, scope: !37)
!41 = !DILocation(line: 14, column: 17, scope: !37)
!42 = !DILocation(line: 15, column: 17, scope: !32)
!43 = !DILocation(line: 15, column: 19, scope: !32)
!44 = !DILocation(line: 15, column: 15, scope: !32)
!45 = !DILocation(line: 9, column: 9, scope: !28)
!46 = distinct !{!46, !30, !47}
!47 = !DILocation(line: 16, column: 9, scope: !26)
!48 = !DILocation(line: 17, column: 10, scope: !23)
!49 = !DILocation(line: 18, column: 24, scope: !23)
!50 = !DILocation(line: 18, column: 9, scope: !23)
!51 = distinct !{!51, !19, !52}
!52 = !DILocation(line: 19, column: 5, scope: !7)
!53 = !DILocation(line: 20, column: 1, scope: !7)
