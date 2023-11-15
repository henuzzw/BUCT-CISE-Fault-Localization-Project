; ModuleID = 'gcov/../WA_c/1063408_buggy.c'
source_filename = "gcov/../WA_c/1063408_buggy.c"
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
  store i32 10, i32* %2, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  br label %6, !dbg !19

; <label>:6:                                      ; preds = %31, %0
  %7 = load i32, i32* %2, align 4, !dbg !20
  %8 = icmp ne i32 %7, 0, !dbg !20
  br i1 %8, label %9, label %34, !dbg !19

; <label>:9:                                      ; preds = %6
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !21
  %11 = load i32, i32* %3, align 4, !dbg !23
  %12 = icmp eq i32 %11, 0, !dbg !25
  br i1 %12, label %13, label %14, !dbg !26

; <label>:13:                                     ; preds = %9
  br label %34, !dbg !27

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %4, align 4, !dbg !28
  br label %15, !dbg !31

; <label>:15:                                     ; preds = %21, %14
  %16 = load i32, i32* %3, align 4, !dbg !32
  %17 = icmp sge i32 %16, 3, !dbg !34
  br i1 %17, label %18, label %24, !dbg !35

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4, !dbg !36
  %20 = sub nsw i32 %19, 1, !dbg !38
  store i32 %20, i32* %3, align 4, !dbg !39
  br label %21, !dbg !40

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %4, align 4, !dbg !41
  %23 = add nsw i32 %22, 1, !dbg !41
  store i32 %23, i32* %4, align 4, !dbg !41
  br label %15, !dbg !42, !llvm.loop !43

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %3, align 4, !dbg !45
  %26 = icmp eq i32 %25, 2, !dbg !47
  br i1 %26, label %27, label %30, !dbg !48

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %4, align 4, !dbg !49
  %29 = add nsw i32 %28, 1, !dbg !50
  store i32 %29, i32* %4, align 4, !dbg !51
  br label %30, !dbg !52

; <label>:30:                                     ; preds = %27, %24
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %4, align 4, !dbg !53
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %32), !dbg !54
  br label %6, !dbg !19, !llvm.loop !55

; <label>:34:                                     ; preds = %13, %6
  ret i32 0, !dbg !57
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
!1 = !DIFile(filename: "gcov/../WA_c/1063408_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1951")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 12, scope: !7)
!17 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 6, column: 11, scope: !7)
!21 = !DILocation(line: 8, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!23 = !DILocation(line: 9, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 12)
!25 = !DILocation(line: 9, column: 14, scope: !24)
!26 = !DILocation(line: 9, column: 12, scope: !22)
!27 = !DILocation(line: 10, column: 13, scope: !24)
!28 = !DILocation(line: 13, column: 19, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 13)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 9)
!31 = !DILocation(line: 13, column: 17, scope: !29)
!32 = !DILocation(line: 13, column: 24, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 13)
!34 = !DILocation(line: 13, column: 26, scope: !33)
!35 = !DILocation(line: 13, column: 13, scope: !29)
!36 = !DILocation(line: 15, column: 21, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 13)
!38 = !DILocation(line: 15, column: 23, scope: !37)
!39 = !DILocation(line: 15, column: 19, scope: !37)
!40 = !DILocation(line: 16, column: 13, scope: !37)
!41 = !DILocation(line: 13, column: 33, scope: !33)
!42 = !DILocation(line: 13, column: 13, scope: !33)
!43 = distinct !{!43, !35, !44}
!44 = !DILocation(line: 16, column: 13, scope: !29)
!45 = !DILocation(line: 17, column: 16, scope: !46)
!46 = distinct !DILexicalBlock(scope: !30, file: !1, line: 17, column: 16)
!47 = !DILocation(line: 17, column: 18, scope: !46)
!48 = !DILocation(line: 17, column: 16, scope: !30)
!49 = !DILocation(line: 18, column: 21, scope: !46)
!50 = !DILocation(line: 18, column: 23, scope: !46)
!51 = !DILocation(line: 18, column: 19, scope: !46)
!52 = !DILocation(line: 18, column: 17, scope: !46)
!53 = !DILocation(line: 20, column: 24, scope: !22)
!54 = !DILocation(line: 20, column: 9, scope: !22)
!55 = distinct !{!55, !19, !56}
!56 = !DILocation(line: 21, column: 5, scope: !7)
!57 = !DILocation(line: 22, column: 5, scope: !7)
