; ModuleID = 'gcov/../WA_c/439997_buggy.c'
source_filename = "gcov/../WA_c/439997_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %3, align 4, !dbg !14
  br label %4, !dbg !15

; <label>:4:                                      ; preds = %26, %0
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !16
  %6 = icmp ne i32 %5, -1, !dbg !17
  br i1 %6, label %7, label %29, !dbg !15

; <label>:7:                                      ; preds = %4
  store i32 0, i32* %3, align 4, !dbg !18
  br label %8, !dbg !20

; <label>:8:                                      ; preds = %23, %7
  %9 = load i32, i32* %2, align 4, !dbg !22
  %10 = icmp sgt i32 %9, 0, !dbg !24
  br i1 %10, label %11, label %26, !dbg !25

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !26
  %13 = srem i32 %12, 2, !dbg !29
  %14 = icmp eq i32 %13, 1, !dbg !30
  br i1 %14, label %15, label %18, !dbg !31

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !32
  %17 = add nsw i32 %16, 2, !dbg !32
  store i32 %17, i32* %3, align 4, !dbg !32
  br label %18, !dbg !33

; <label>:18:                                     ; preds = %15, %11
  %19 = load i32, i32* %2, align 4, !dbg !34
  %20 = icmp eq i32 %19, 1, !dbg !36
  br i1 %20, label %21, label %22, !dbg !37

; <label>:21:                                     ; preds = %18
  br label %26, !dbg !38

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !39

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %2, align 4, !dbg !40
  %25 = sdiv i32 %24, 2, !dbg !41
  store i32 %25, i32* %2, align 4, !dbg !42
  br label %8, !dbg !43, !llvm.loop !44

; <label>:26:                                     ; preds = %21, %8
  %27 = load i32, i32* %3, align 4, !dbg !46
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %27), !dbg !47
  br label %4, !dbg !15, !llvm.loop !48

; <label>:29:                                     ; preds = %4
  %30 = load i32, i32* %1, align 4, !dbg !50
  ret i32 %30, !dbg !50
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
!1 = !DIFile(filename: "gcov/../WA_c/439997_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
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
!15 = !DILocation(line: 5, column: 5, scope: !7)
!16 = !DILocation(line: 5, column: 11, scope: !7)
!17 = !DILocation(line: 5, column: 27, scope: !7)
!18 = !DILocation(line: 7, column: 11, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!20 = !DILocation(line: 8, column: 13, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 9)
!22 = !DILocation(line: 8, column: 16, scope: !23)
!23 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 9)
!24 = !DILocation(line: 8, column: 18, scope: !23)
!25 = !DILocation(line: 8, column: 9, scope: !21)
!26 = !DILocation(line: 11, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 11, column: 16)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 9, column: 9)
!29 = !DILocation(line: 11, column: 18, scope: !27)
!30 = !DILocation(line: 11, column: 22, scope: !27)
!31 = !DILocation(line: 11, column: 16, scope: !28)
!32 = !DILocation(line: 12, column: 18, scope: !27)
!33 = !DILocation(line: 12, column: 17, scope: !27)
!34 = !DILocation(line: 13, column: 16, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 13, column: 16)
!36 = !DILocation(line: 13, column: 18, scope: !35)
!37 = !DILocation(line: 13, column: 16, scope: !28)
!38 = !DILocation(line: 14, column: 17, scope: !35)
!39 = !DILocation(line: 15, column: 9, scope: !28)
!40 = !DILocation(line: 8, column: 27, scope: !23)
!41 = !DILocation(line: 8, column: 29, scope: !23)
!42 = !DILocation(line: 8, column: 25, scope: !23)
!43 = !DILocation(line: 8, column: 9, scope: !23)
!44 = distinct !{!44, !25, !45}
!45 = !DILocation(line: 15, column: 9, scope: !21)
!46 = !DILocation(line: 16, column: 24, scope: !19)
!47 = !DILocation(line: 16, column: 9, scope: !19)
!48 = distinct !{!48, !15, !49}
!49 = !DILocation(line: 17, column: 5, scope: !7)
!50 = !DILocation(line: 18, column: 1, scope: !7)
