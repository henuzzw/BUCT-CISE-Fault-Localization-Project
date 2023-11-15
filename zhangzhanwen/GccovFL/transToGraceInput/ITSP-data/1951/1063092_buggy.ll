; ModuleID = 'gcov/../WA_c/1063092_buggy.c'
source_filename = "gcov/../WA_c/1063092_buggy.c"
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
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  br label %5, !dbg !17

; <label>:5:                                      ; preds = %0, %34
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !18
  %7 = load i32, i32* %2, align 4, !dbg !20
  %8 = icmp ne i32 %7, 0, !dbg !20
  br i1 %8, label %9, label %33, !dbg !22

; <label>:9:                                      ; preds = %5
  store i32 0, i32* %4, align 4, !dbg !23
  %10 = load i32, i32* %2, align 4, !dbg !25
  store i32 %10, i32* %3, align 4, !dbg !27
  br label %11, !dbg !28

; <label>:11:                                     ; preds = %14, %9
  %12 = load i32, i32* %3, align 4, !dbg !29
  %13 = icmp sge i32 %12, 3, !dbg !31
  br i1 %13, label %14, label %24, !dbg !32

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !33
  %16 = sdiv i32 %15, 5, !dbg !35
  %17 = load i32, i32* %4, align 4, !dbg !36
  %18 = add nsw i32 %17, %16, !dbg !36
  store i32 %18, i32* %4, align 4, !dbg !36
  %19 = load i32, i32* %3, align 4, !dbg !37
  %20 = srem i32 %19, 3, !dbg !38
  %21 = load i32, i32* %3, align 4, !dbg !39
  %22 = sdiv i32 %21, 3, !dbg !40
  %23 = add nsw i32 %20, %22, !dbg !41
  store i32 %23, i32* %3, align 4, !dbg !42
  br label %11, !dbg !43, !llvm.loop !44

; <label>:24:                                     ; preds = %11
  %25 = load i32, i32* %3, align 4, !dbg !46
  %26 = icmp eq i32 %25, 2, !dbg !48
  br i1 %26, label %27, label %30, !dbg !49

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %4, align 4, !dbg !50
  %29 = add nsw i32 %28, 1, !dbg !50
  store i32 %29, i32* %4, align 4, !dbg !50
  br label %30, !dbg !51

; <label>:30:                                     ; preds = %27, %24
  %31 = load i32, i32* %4, align 4, !dbg !52
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %31), !dbg !53
  br label %34, !dbg !54

; <label>:33:                                     ; preds = %5
  br label %35, !dbg !55

; <label>:34:                                     ; preds = %30
  br label %5, !dbg !17, !llvm.loop !56

; <label>:35:                                     ; preds = %33
  %36 = load i32, i32* %1, align 4, !dbg !58
  ret i32 %36, !dbg !58
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
!1 = !DIFile(filename: "gcov/../WA_c/1063092_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1951")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "amount", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "yus", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 17, scope: !7)
!15 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 22, scope: !7)
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocation(line: 8, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 9, column: 12, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !1, line: 9, column: 12)
!22 = !DILocation(line: 9, column: 12, scope: !19)
!23 = !DILocation(line: 11, column: 17, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 9)
!25 = !DILocation(line: 12, column: 24, scope: !26)
!26 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 13)
!27 = !DILocation(line: 12, column: 22, scope: !26)
!28 = !DILocation(line: 12, column: 18, scope: !26)
!29 = !DILocation(line: 12, column: 32, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 12, column: 13)
!31 = !DILocation(line: 12, column: 36, scope: !30)
!32 = !DILocation(line: 12, column: 13, scope: !26)
!33 = !DILocation(line: 14, column: 24, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 13)
!35 = !DILocation(line: 14, column: 28, scope: !34)
!36 = !DILocation(line: 14, column: 21, scope: !34)
!37 = !DILocation(line: 15, column: 23, scope: !34)
!38 = !DILocation(line: 15, column: 27, scope: !34)
!39 = !DILocation(line: 15, column: 33, scope: !34)
!40 = !DILocation(line: 15, column: 37, scope: !34)
!41 = !DILocation(line: 15, column: 31, scope: !34)
!42 = !DILocation(line: 15, column: 21, scope: !34)
!43 = !DILocation(line: 12, column: 13, scope: !30)
!44 = distinct !{!44, !32, !45}
!45 = !DILocation(line: 16, column: 13, scope: !26)
!46 = !DILocation(line: 17, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !24, file: !1, line: 17, column: 17)
!48 = !DILocation(line: 17, column: 21, scope: !47)
!49 = !DILocation(line: 17, column: 17, scope: !24)
!50 = !DILocation(line: 18, column: 20, scope: !47)
!51 = !DILocation(line: 18, column: 17, scope: !47)
!52 = !DILocation(line: 19, column: 28, scope: !24)
!53 = !DILocation(line: 19, column: 13, scope: !24)
!54 = !DILocation(line: 20, column: 9, scope: !24)
!55 = !DILocation(line: 22, column: 13, scope: !21)
!56 = distinct !{!56, !17, !57}
!57 = !DILocation(line: 23, column: 5, scope: !7)
!58 = !DILocation(line: 24, column: 1, scope: !7)
