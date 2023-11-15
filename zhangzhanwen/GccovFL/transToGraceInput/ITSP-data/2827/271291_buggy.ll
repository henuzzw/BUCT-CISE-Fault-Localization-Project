; ModuleID = 'gcov/../WA_c/271291_buggy.c'
source_filename = "gcov/../WA_c/271291_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%f%f%f%f%f%f\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"All the points are on same line\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"All the points are not on same line\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata float* %7, metadata !22, metadata !DIExpression()), !dbg !23
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5, float* %6, float* %7), !dbg !24
  call void @llvm.dbg.declare(metadata float* %8, metadata !25, metadata !DIExpression()), !dbg !26
  %11 = load float, float* %5, align 4, !dbg !27
  %12 = load float, float* %3, align 4, !dbg !28
  %13 = fsub float %11, %12, !dbg !29
  %14 = load float, float* %4, align 4, !dbg !30
  %15 = load float, float* %2, align 4, !dbg !31
  %16 = fsub float %14, %15, !dbg !32
  %17 = fdiv float %13, %16, !dbg !33
  store float %17, float* %8, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata float* %9, metadata !34, metadata !DIExpression()), !dbg !35
  %18 = load float, float* %7, align 4, !dbg !36
  %19 = load float, float* %5, align 4, !dbg !37
  %20 = fsub float %18, %19, !dbg !38
  %21 = load float, float* %6, align 4, !dbg !39
  %22 = load float, float* %4, align 4, !dbg !40
  %23 = fsub float %21, %22, !dbg !41
  %24 = fdiv float %20, %23, !dbg !42
  store float %24, float* %9, align 4, !dbg !35
  %25 = load float, float* %8, align 4, !dbg !43
  %26 = load float, float* %9, align 4, !dbg !45
  %27 = fcmp oeq float %25, %26, !dbg !46
  br i1 %27, label %28, label %30, !dbg !47

; <label>:28:                                     ; preds = %0
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)), !dbg !48
  br label %32, !dbg !50

; <label>:30:                                     ; preds = %0
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)), !dbg !51
  br label %32

; <label>:32:                                     ; preds = %30, %28
  ret i32 0, !dbg !53
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
!1 = !DIFile(filename: "gcov/../WA_c/271291_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2827")
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
!14 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 6, type: !12)
!15 = !DILocation(line: 6, column: 11, scope: !7)
!16 = !DILocalVariable(name: "x2", scope: !7, file: !1, line: 7, type: !12)
!17 = !DILocation(line: 7, column: 11, scope: !7)
!18 = !DILocalVariable(name: "y2", scope: !7, file: !1, line: 8, type: !12)
!19 = !DILocation(line: 8, column: 11, scope: !7)
!20 = !DILocalVariable(name: "x3", scope: !7, file: !1, line: 9, type: !12)
!21 = !DILocation(line: 9, column: 11, scope: !7)
!22 = !DILocalVariable(name: "y3", scope: !7, file: !1, line: 10, type: !12)
!23 = !DILocation(line: 10, column: 11, scope: !7)
!24 = !DILocation(line: 11, column: 5, scope: !7)
!25 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 12, type: !12)
!26 = !DILocation(line: 12, column: 11, scope: !7)
!27 = !DILocation(line: 12, column: 15, scope: !7)
!28 = !DILocation(line: 12, column: 18, scope: !7)
!29 = !DILocation(line: 12, column: 17, scope: !7)
!30 = !DILocation(line: 12, column: 23, scope: !7)
!31 = !DILocation(line: 12, column: 26, scope: !7)
!32 = !DILocation(line: 12, column: 25, scope: !7)
!33 = !DILocation(line: 12, column: 21, scope: !7)
!34 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 13, type: !12)
!35 = !DILocation(line: 13, column: 11, scope: !7)
!36 = !DILocation(line: 13, column: 15, scope: !7)
!37 = !DILocation(line: 13, column: 18, scope: !7)
!38 = !DILocation(line: 13, column: 17, scope: !7)
!39 = !DILocation(line: 13, column: 23, scope: !7)
!40 = !DILocation(line: 13, column: 26, scope: !7)
!41 = !DILocation(line: 13, column: 25, scope: !7)
!42 = !DILocation(line: 13, column: 21, scope: !7)
!43 = !DILocation(line: 14, column: 10, scope: !44)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 10)
!45 = !DILocation(line: 14, column: 13, scope: !44)
!46 = !DILocation(line: 14, column: 11, scope: !44)
!47 = !DILocation(line: 14, column: 10, scope: !7)
!48 = !DILocation(line: 16, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 5)
!50 = !DILocation(line: 17, column: 5, scope: !49)
!51 = !DILocation(line: 20, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !1, line: 19, column: 5)
!53 = !DILocation(line: 26, column: 5, scope: !7)
