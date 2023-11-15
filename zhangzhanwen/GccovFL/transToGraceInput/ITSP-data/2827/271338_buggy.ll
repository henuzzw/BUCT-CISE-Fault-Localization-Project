; ModuleID = 'gcov/../WA_c/271338_buggy.c'
source_filename = "gcov/../WA_c/271338_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%f%f%f%f%f%f\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"All the points are on same line.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"All the points are not on the same line.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata float* %7, metadata !22, metadata !DIExpression()), !dbg !23
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), float* %2, float* %5, float* %3, float* %6, float* %4, float* %7), !dbg !24
  %9 = load float, float* %4, align 4, !dbg !25
  %10 = load float, float* %2, align 4, !dbg !27
  %11 = fsub float %9, %10, !dbg !28
  %12 = load float, float* %7, align 4, !dbg !29
  %13 = load float, float* %5, align 4, !dbg !30
  %14 = fsub float %12, %13, !dbg !31
  %15 = fdiv float %11, %14, !dbg !32
  %16 = load float, float* %3, align 4, !dbg !33
  %17 = load float, float* %2, align 4, !dbg !34
  %18 = fsub float %16, %17, !dbg !35
  %19 = load float, float* %6, align 4, !dbg !36
  %20 = load float, float* %5, align 4, !dbg !37
  %21 = fsub float %19, %20, !dbg !38
  %22 = fdiv float %18, %21, !dbg !39
  %23 = fcmp oeq float %15, %22, !dbg !40
  br i1 %23, label %24, label %26, !dbg !41

; <label>:24:                                     ; preds = %0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !42
  br label %28, !dbg !44

; <label>:26:                                     ; preds = %0
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)), !dbg !45
  br label %28

; <label>:28:                                     ; preds = %26, %24
  ret i32 0, !dbg !47
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
!1 = !DIFile(filename: "gcov/../WA_c/271338_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2827")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x1", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "x2", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "x3", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocalVariable(name: "y2", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "y3", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 26, scope: !7)
!24 = !DILocation(line: 6, column: 5, scope: !7)
!25 = !DILocation(line: 7, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!27 = !DILocation(line: 7, column: 12, scope: !26)
!28 = !DILocation(line: 7, column: 11, scope: !26)
!29 = !DILocation(line: 7, column: 17, scope: !26)
!30 = !DILocation(line: 7, column: 20, scope: !26)
!31 = !DILocation(line: 7, column: 19, scope: !26)
!32 = !DILocation(line: 7, column: 15, scope: !26)
!33 = !DILocation(line: 7, column: 26, scope: !26)
!34 = !DILocation(line: 7, column: 29, scope: !26)
!35 = !DILocation(line: 7, column: 28, scope: !26)
!36 = !DILocation(line: 7, column: 34, scope: !26)
!37 = !DILocation(line: 7, column: 37, scope: !26)
!38 = !DILocation(line: 7, column: 36, scope: !26)
!39 = !DILocation(line: 7, column: 32, scope: !26)
!40 = !DILocation(line: 7, column: 23, scope: !26)
!41 = !DILocation(line: 7, column: 8, scope: !7)
!42 = !DILocation(line: 9, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!44 = !DILocation(line: 10, column: 5, scope: !43)
!45 = !DILocation(line: 13, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !26, file: !1, line: 12, column: 5)
!47 = !DILocation(line: 15, column: 5, scope: !7)
