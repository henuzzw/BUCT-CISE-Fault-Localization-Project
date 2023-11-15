; ModuleID = 'gcov/../WA_c/440723_buggy.c'
source_filename = "gcov/../WA_c/440723_buggy.c"
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
  br label %6, !dbg !13

; <label>:6:                                      ; preds = %25, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !14
  %8 = icmp ne i32 %7, -1, !dbg !15
  br i1 %8, label %9, label %30, !dbg !13

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %4, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  br label %10, !dbg !23

; <label>:10:                                     ; preds = %9, %24
  %11 = load i32, i32* %2, align 4, !dbg !24
  %12 = srem i32 %11, 2, !dbg !26
  store i32 %12, i32* %5, align 4, !dbg !27
  %13 = load i32, i32* %5, align 4, !dbg !28
  %14 = icmp eq i32 %13, 1, !dbg !30
  br i1 %14, label %15, label %18, !dbg !31

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %4, align 4, !dbg !32
  %17 = add nsw i32 %16, 1, !dbg !32
  store i32 %17, i32* %4, align 4, !dbg !32
  br label %18, !dbg !33

; <label>:18:                                     ; preds = %15, %10
  %19 = load i32, i32* %2, align 4, !dbg !34
  %20 = sdiv i32 %19, 2, !dbg !34
  store i32 %20, i32* %2, align 4, !dbg !34
  %21 = load i32, i32* %2, align 4, !dbg !35
  %22 = icmp eq i32 %21, 0, !dbg !37
  br i1 %22, label %23, label %24, !dbg !38

; <label>:23:                                     ; preds = %18
  br label %25, !dbg !39

; <label>:24:                                     ; preds = %18
  br label %10, !dbg !23, !llvm.loop !40

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %4, align 4, !dbg !42
  %27 = add nsw i32 %26, -1, !dbg !42
  store i32 %27, i32* %4, align 4, !dbg !42
  %28 = load i32, i32* %4, align 4, !dbg !43
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %28), !dbg !44
  br label %6, !dbg !13, !llvm.loop !45

; <label>:30:                                     ; preds = %6
  %31 = load i32, i32* %1, align 4, !dbg !47
  ret i32 %31, !dbg !47
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
!1 = !DIFile(filename: "gcov/../WA_c/440723_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
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
!13 = !DILocation(line: 5, column: 5, scope: !7)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocation(line: 5, column: 27, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 7, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!18 = !DILocation(line: 7, column: 13, scope: !17)
!19 = !DILocalVariable(name: "t", scope: !17, file: !1, line: 7, type: !10)
!20 = !DILocation(line: 7, column: 16, scope: !17)
!21 = !DILocalVariable(name: "p", scope: !17, file: !1, line: 7, type: !10)
!22 = !DILocation(line: 7, column: 23, scope: !17)
!23 = !DILocation(line: 8, column: 9, scope: !17)
!24 = !DILocation(line: 10, column: 17, scope: !25)
!25 = distinct !DILexicalBlock(scope: !17, file: !1, line: 9, column: 9)
!26 = !DILocation(line: 10, column: 19, scope: !25)
!27 = !DILocation(line: 10, column: 15, scope: !25)
!28 = !DILocation(line: 12, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 16)
!30 = !DILocation(line: 12, column: 18, scope: !29)
!31 = !DILocation(line: 12, column: 16, scope: !25)
!32 = !DILocation(line: 13, column: 18, scope: !29)
!33 = !DILocation(line: 13, column: 17, scope: !29)
!34 = !DILocation(line: 14, column: 15, scope: !25)
!35 = !DILocation(line: 15, column: 16, scope: !36)
!36 = distinct !DILexicalBlock(scope: !25, file: !1, line: 15, column: 16)
!37 = !DILocation(line: 15, column: 18, scope: !36)
!38 = !DILocation(line: 15, column: 16, scope: !25)
!39 = !DILocation(line: 16, column: 17, scope: !36)
!40 = distinct !{!40, !23, !41}
!41 = !DILocation(line: 18, column: 9, scope: !17)
!42 = !DILocation(line: 19, column: 10, scope: !17)
!43 = !DILocation(line: 20, column: 24, scope: !17)
!44 = !DILocation(line: 20, column: 9, scope: !17)
!45 = distinct !{!45, !13, !46}
!46 = !DILocation(line: 22, column: 5, scope: !7)
!47 = !DILocation(line: 23, column: 1, scope: !7)
