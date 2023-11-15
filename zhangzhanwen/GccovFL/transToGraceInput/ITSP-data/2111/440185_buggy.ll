; ModuleID = 'gcov/../WA_c/440185_buggy.c'
source_filename = "gcov/../WA_c/440185_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z3addi(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %3, align 4, !dbg !14
  br label %4, !dbg !15

; <label>:4:                                      ; preds = %14, %1
  %5 = load i32, i32* %2, align 4, !dbg !16
  %6 = icmp ne i32 %5, 0, !dbg !17
  br i1 %6, label %7, label %17, !dbg !15

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !18
  %9 = srem i32 %8, 2, !dbg !21
  %10 = icmp eq i32 %9, 1, !dbg !22
  br i1 %10, label %11, label %14, !dbg !23

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !24
  %13 = add nsw i32 %12, 1, !dbg !24
  store i32 %13, i32* %3, align 4, !dbg !24
  br label %14, !dbg !26

; <label>:14:                                     ; preds = %11, %7
  %15 = load i32, i32* %2, align 4, !dbg !27
  %16 = sdiv i32 %15, 2, !dbg !28
  store i32 %16, i32* %2, align 4, !dbg !29
  br label %4, !dbg !15, !llvm.loop !30

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %3, align 4, !dbg !32
  ret i32 %18, !dbg !33
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %3, metadata !39, metadata !DIExpression()), !dbg !40
  br label %4, !dbg !41

; <label>:4:                                      ; preds = %7, %0
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !42
  %6 = icmp ne i32 %5, -1, !dbg !43
  br i1 %6, label %7, label %14, !dbg !41

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !44
  %9 = call i32 @_Z3addi(i32 %8), !dbg !46
  store i32 %9, i32* %3, align 4, !dbg !47
  %10 = load i32, i32* %3, align 4, !dbg !48
  %11 = add nsw i32 %10, -1, !dbg !48
  store i32 %11, i32* %3, align 4, !dbg !48
  %12 = load i32, i32* %3, align 4, !dbg !49
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %12), !dbg !50
  br label %4, !dbg !41, !llvm.loop !51

; <label>:14:                                     ; preds = %4
  %15 = load i32, i32* %1, align 4, !dbg !53
  ret i32 %15, !dbg !53
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
!1 = !DIFile(filename: "gcov/../WA_c/440185_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2111")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "add", linkageName: "_Z3addi", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !1, line: 2, type: !10)
!12 = !DILocation(line: 2, column: 13, scope: !7)
!13 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 9, scope: !7)
!15 = !DILocation(line: 5, column: 5, scope: !7)
!16 = !DILocation(line: 5, column: 12, scope: !7)
!17 = !DILocation(line: 5, column: 14, scope: !7)
!18 = !DILocation(line: 7, column: 13, scope: !19)
!19 = distinct !DILexicalBlock(scope: !20, file: !1, line: 7, column: 13)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!21 = !DILocation(line: 7, column: 15, scope: !19)
!22 = !DILocation(line: 7, column: 19, scope: !19)
!23 = !DILocation(line: 7, column: 13, scope: !20)
!24 = !DILocation(line: 9, column: 14, scope: !25)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 9)
!26 = !DILocation(line: 10, column: 9, scope: !25)
!27 = !DILocation(line: 11, column: 13, scope: !20)
!28 = !DILocation(line: 11, column: 15, scope: !20)
!29 = !DILocation(line: 11, column: 11, scope: !20)
!30 = distinct !{!30, !15, !31}
!31 = !DILocation(line: 12, column: 5, scope: !7)
!32 = !DILocation(line: 13, column: 12, scope: !7)
!33 = !DILocation(line: 13, column: 5, scope: !7)
!34 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !35, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!10}
!37 = !DILocalVariable(name: "n", scope: !34, file: !1, line: 17, type: !10)
!38 = !DILocation(line: 17, column: 9, scope: !34)
!39 = !DILocalVariable(name: "c", scope: !34, file: !1, line: 18, type: !10)
!40 = !DILocation(line: 18, column: 9, scope: !34)
!41 = !DILocation(line: 19, column: 5, scope: !34)
!42 = !DILocation(line: 19, column: 11, scope: !34)
!43 = !DILocation(line: 19, column: 27, scope: !34)
!44 = !DILocation(line: 21, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 20, column: 5)
!46 = !DILocation(line: 21, column: 13, scope: !45)
!47 = !DILocation(line: 21, column: 11, scope: !45)
!48 = !DILocation(line: 22, column: 10, scope: !45)
!49 = !DILocation(line: 23, column: 24, scope: !45)
!50 = !DILocation(line: 23, column: 9, scope: !45)
!51 = distinct !{!51, !41, !52}
!52 = !DILocation(line: 24, column: 5, scope: !34)
!53 = !DILocation(line: 25, column: 1, scope: !34)
