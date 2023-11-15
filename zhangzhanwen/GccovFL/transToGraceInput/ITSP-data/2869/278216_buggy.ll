; ModuleID = 'gcov/../WA_c/278216_buggy.c'
source_filename = "gcov/../WA_c/278216_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !17
  store i32 1, i32* %3, align 4, !dbg !18
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %34, %0
  %7 = load i32, i32* %3, align 4, !dbg !21
  %8 = load i32, i32* %2, align 4, !dbg !23
  %9 = icmp sle i32 %7, %8, !dbg !24
  br i1 %9, label %10, label %37, !dbg !25

; <label>:10:                                     ; preds = %6
  store i32 1, i32* %4, align 4, !dbg !26
  br label %11, !dbg !29

; <label>:11:                                     ; preds = %29, %10
  %12 = load i32, i32* %4, align 4, !dbg !30
  %13 = load i32, i32* %2, align 4, !dbg !32
  %14 = icmp sle i32 %12, %13, !dbg !33
  br i1 %14, label %15, label %32, !dbg !34

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !35
  %17 = load i32, i32* %3, align 4, !dbg !38
  %18 = icmp slt i32 %16, %17, !dbg !39
  br i1 %18, label %19, label %26, !dbg !40

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %2, align 4, !dbg !41
  %21 = load i32, i32* %3, align 4, !dbg !43
  %22 = sub nsw i32 %20, %21, !dbg !44
  %23 = load i32, i32* %4, align 4, !dbg !45
  %24 = add nsw i32 %22, %23, !dbg !46
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %24), !dbg !47
  br label %28, !dbg !48

; <label>:26:                                     ; preds = %15
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !49
  br label %28

; <label>:28:                                     ; preds = %26, %19
  br label %29, !dbg !51

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %4, align 4, !dbg !52
  %31 = add nsw i32 %30, 1, !dbg !52
  store i32 %31, i32* %4, align 4, !dbg !52
  br label %11, !dbg !53, !llvm.loop !54

; <label>:32:                                     ; preds = %11
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !56
  br label %34, !dbg !57

; <label>:34:                                     ; preds = %32
  %35 = load i32, i32* %3, align 4, !dbg !58
  %36 = add nsw i32 %35, 1, !dbg !58
  store i32 %36, i32* %3, align 4, !dbg !58
  br label %6, !dbg !59, !llvm.loop !60

; <label>:37:                                     ; preds = %6
  ret i32 0, !dbg !62
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
!1 = !DIFile(filename: "gcov/../WA_c/278216_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2869")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 5, scope: !7)
!18 = !DILocation(line: 7, column: 10, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 7, column: 9, scope: !19)
!21 = !DILocation(line: 7, column: 14, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!23 = !DILocation(line: 7, column: 17, scope: !22)
!24 = !DILocation(line: 7, column: 15, scope: !22)
!25 = !DILocation(line: 7, column: 5, scope: !19)
!26 = !DILocation(line: 9, column: 14, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 9, column: 9)
!28 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 5)
!29 = !DILocation(line: 9, column: 13, scope: !27)
!30 = !DILocation(line: 9, column: 18, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 9, column: 9)
!32 = !DILocation(line: 9, column: 21, scope: !31)
!33 = !DILocation(line: 9, column: 19, scope: !31)
!34 = !DILocation(line: 9, column: 9, scope: !27)
!35 = !DILocation(line: 11, column: 16, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 16)
!37 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 9)
!38 = !DILocation(line: 11, column: 18, scope: !36)
!39 = !DILocation(line: 11, column: 17, scope: !36)
!40 = !DILocation(line: 11, column: 16, scope: !37)
!41 = !DILocation(line: 13, column: 30, scope: !42)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 13)
!43 = !DILocation(line: 13, column: 32, scope: !42)
!44 = !DILocation(line: 13, column: 31, scope: !42)
!45 = !DILocation(line: 13, column: 34, scope: !42)
!46 = !DILocation(line: 13, column: 33, scope: !42)
!47 = !DILocation(line: 13, column: 17, scope: !42)
!48 = !DILocation(line: 14, column: 13, scope: !42)
!49 = !DILocation(line: 17, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !36, file: !1, line: 16, column: 13)
!51 = !DILocation(line: 19, column: 9, scope: !37)
!52 = !DILocation(line: 9, column: 25, scope: !31)
!53 = !DILocation(line: 9, column: 9, scope: !31)
!54 = distinct !{!54, !34, !55}
!55 = !DILocation(line: 19, column: 9, scope: !27)
!56 = !DILocation(line: 20, column: 9, scope: !28)
!57 = !DILocation(line: 21, column: 5, scope: !28)
!58 = !DILocation(line: 7, column: 21, scope: !22)
!59 = !DILocation(line: 7, column: 5, scope: !22)
!60 = distinct !{!60, !25, !61}
!61 = !DILocation(line: 21, column: 5, scope: !19)
!62 = !DILocation(line: 24, column: 5, scope: !7)
