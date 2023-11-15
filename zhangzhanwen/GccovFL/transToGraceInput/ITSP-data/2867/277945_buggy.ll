; ModuleID = 'gcov/../WA_c/277945_buggy.c'
source_filename = "gcov/../WA_c/277945_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !19
  store i32 0, i32* %2, align 4, !dbg !20
  br label %7, !dbg !22

; <label>:7:                                      ; preds = %20, %0
  %8 = load i32, i32* %2, align 4, !dbg !23
  %9 = load i32, i32* %3, align 4, !dbg !25
  %10 = icmp slt i32 %8, %9, !dbg !26
  br i1 %10, label %11, label %23, !dbg !27

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 4, !dbg !28
  %13 = load i32, i32* %2, align 4, !dbg !30
  %14 = add nsw i32 %13, 1, !dbg !31
  %15 = mul nsw i32 %12, %14, !dbg !32
  %16 = sdiv i32 %15, 2, !dbg !33
  store i32 %16, i32* %4, align 4, !dbg !34
  %17 = load i32, i32* %5, align 4, !dbg !35
  %18 = load i32, i32* %4, align 4, !dbg !36
  %19 = add nsw i32 %17, %18, !dbg !37
  store i32 %19, i32* %5, align 4, !dbg !38
  br label %20, !dbg !39

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %2, align 4, !dbg !40
  %22 = add nsw i32 %21, 1, !dbg !41
  store i32 %22, i32* %2, align 4, !dbg !42
  br label %7, !dbg !43, !llvm.loop !44

; <label>:23:                                     ; preds = %7
  %24 = load i32, i32* %5, align 4, !dbg !46
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %24), !dbg !47
  ret i32 0, !dbg !48
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
!1 = !DIFile(filename: "gcov/../WA_c/277945_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2867")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "v", scope: !7, file: !1, line: 6, type: !10)
!18 = !DILocation(line: 6, column: 9, scope: !7)
!19 = !DILocation(line: 7, column: 5, scope: !7)
!20 = !DILocation(line: 8, column: 11, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!22 = !DILocation(line: 8, column: 10, scope: !21)
!23 = !DILocation(line: 8, column: 15, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 5)
!25 = !DILocation(line: 8, column: 17, scope: !24)
!26 = !DILocation(line: 8, column: 16, scope: !24)
!27 = !DILocation(line: 8, column: 5, scope: !21)
!28 = !DILocation(line: 10, column: 12, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 5)
!30 = !DILocation(line: 10, column: 15, scope: !29)
!31 = !DILocation(line: 10, column: 16, scope: !29)
!32 = !DILocation(line: 10, column: 13, scope: !29)
!33 = !DILocation(line: 10, column: 19, scope: !29)
!34 = !DILocation(line: 10, column: 10, scope: !29)
!35 = !DILocation(line: 11, column: 11, scope: !29)
!36 = !DILocation(line: 11, column: 13, scope: !29)
!37 = !DILocation(line: 11, column: 12, scope: !29)
!38 = !DILocation(line: 11, column: 10, scope: !29)
!39 = !DILocation(line: 12, column: 5, scope: !29)
!40 = !DILocation(line: 8, column: 22, scope: !24)
!41 = !DILocation(line: 8, column: 23, scope: !24)
!42 = !DILocation(line: 8, column: 21, scope: !24)
!43 = !DILocation(line: 8, column: 5, scope: !24)
!44 = distinct !{!44, !27, !45}
!45 = !DILocation(line: 12, column: 5, scope: !21)
!46 = !DILocation(line: 14, column: 17, scope: !7)
!47 = !DILocation(line: 14, column: 5, scope: !7)
!48 = !DILocation(line: 15, column: 5, scope: !7)
