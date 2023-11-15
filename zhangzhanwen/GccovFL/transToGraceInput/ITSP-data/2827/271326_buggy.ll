; ModuleID = 'gcov/../WA_c/271326_buggy.c'
source_filename = "gcov/../WA_c/271326_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%f%f%f%f%f%f\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"All the points are on same line.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"All the points are not on same line.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata float* %3, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata float* %4, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata float* %5, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata float* %6, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata float* %7, metadata !23, metadata !DIExpression()), !dbg !24
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5, float* %6, float* %7), !dbg !25
  %9 = load float, float* %5, align 4, !dbg !26
  %10 = load float, float* %3, align 4, !dbg !28
  %11 = load float, float* %4, align 4, !dbg !29
  %12 = fdiv float %10, %11, !dbg !30
  %13 = fsub float %9, %12, !dbg !31
  %14 = load float, float* %2, align 4, !dbg !32
  %15 = fsub float %13, %14, !dbg !33
  %16 = load float, float* %7, align 4, !dbg !34
  %17 = load float, float* %5, align 4, !dbg !35
  %18 = load float, float* %6, align 4, !dbg !36
  %19 = fdiv float %17, %18, !dbg !37
  %20 = fsub float %16, %19, !dbg !38
  %21 = load float, float* %4, align 4, !dbg !39
  %22 = fsub float %20, %21, !dbg !40
  %23 = fcmp oeq float %15, %22, !dbg !41
  br i1 %23, label %24, label %26, !dbg !42

; <label>:24:                                     ; preds = %0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !43
  br label %28, !dbg !45

; <label>:26:                                     ; preds = %0
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0)), !dbg !46
  br label %28

; <label>:28:                                     ; preds = %26, %24
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
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "gcov/../WA_c/271326_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2827")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !10, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "x1", scope: !9, file: !1, line: 5, type: !4)
!14 = !DILocation(line: 5, column: 11, scope: !9)
!15 = !DILocalVariable(name: "y1", scope: !9, file: !1, line: 5, type: !4)
!16 = !DILocation(line: 5, column: 14, scope: !9)
!17 = !DILocalVariable(name: "x2", scope: !9, file: !1, line: 5, type: !4)
!18 = !DILocation(line: 5, column: 17, scope: !9)
!19 = !DILocalVariable(name: "y2", scope: !9, file: !1, line: 5, type: !4)
!20 = !DILocation(line: 5, column: 20, scope: !9)
!21 = !DILocalVariable(name: "x3", scope: !9, file: !1, line: 5, type: !4)
!22 = !DILocation(line: 5, column: 23, scope: !9)
!23 = !DILocalVariable(name: "y3", scope: !9, file: !1, line: 5, type: !4)
!24 = !DILocation(line: 5, column: 26, scope: !9)
!25 = !DILocation(line: 6, column: 5, scope: !9)
!26 = !DILocation(line: 7, column: 15, scope: !27)
!27 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 8)
!28 = !DILocation(line: 7, column: 18, scope: !27)
!29 = !DILocation(line: 7, column: 21, scope: !27)
!30 = !DILocation(line: 7, column: 20, scope: !27)
!31 = !DILocation(line: 7, column: 17, scope: !27)
!32 = !DILocation(line: 7, column: 24, scope: !27)
!33 = !DILocation(line: 7, column: 23, scope: !27)
!34 = !DILocation(line: 7, column: 35, scope: !27)
!35 = !DILocation(line: 7, column: 38, scope: !27)
!36 = !DILocation(line: 7, column: 41, scope: !27)
!37 = !DILocation(line: 7, column: 40, scope: !27)
!38 = !DILocation(line: 7, column: 37, scope: !27)
!39 = !DILocation(line: 7, column: 44, scope: !27)
!40 = !DILocation(line: 7, column: 43, scope: !27)
!41 = !DILocation(line: 7, column: 26, scope: !27)
!42 = !DILocation(line: 7, column: 8, scope: !9)
!43 = !DILocation(line: 9, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !27, file: !1, line: 8, column: 5)
!45 = !DILocation(line: 12, column: 5, scope: !44)
!46 = !DILocation(line: 18, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !27, file: !1, line: 17, column: 5)
!48 = !DILocation(line: 20, column: 5, scope: !9)
