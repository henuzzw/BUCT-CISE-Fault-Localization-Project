; ModuleID = 'gcov/../WA_c/270168_buggy.c'
source_filename = "gcov/../WA_c/270168_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%f %f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"(%.3f,%.3f)\00", align 1

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
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5), !dbg !20
  %9 = load float, float* %2, align 4, !dbg !21
  %10 = load float, float* %5, align 4, !dbg !23
  %11 = fmul float %9, %10, !dbg !24
  %12 = load float, float* %4, align 4, !dbg !25
  %13 = load float, float* %3, align 4, !dbg !26
  %14 = fmul float %12, %13, !dbg !27
  %15 = fsub float %11, %14, !dbg !28
  %16 = fcmp oeq float %15, 0.000000e+00, !dbg !29
  br i1 %16, label %17, label %19, !dbg !30

; <label>:17:                                     ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !31
  br label %47, !dbg !33

; <label>:19:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata float* %6, metadata !34, metadata !DIExpression()), !dbg !36
  %20 = load float, float* %2, align 4, !dbg !37
  %21 = load float, float* %4, align 4, !dbg !38
  %22 = fsub float %20, %21, !dbg !39
  %23 = load float, float* %2, align 4, !dbg !40
  %24 = load float, float* %5, align 4, !dbg !41
  %25 = fmul float %23, %24, !dbg !42
  %26 = load float, float* %4, align 4, !dbg !43
  %27 = load float, float* %3, align 4, !dbg !44
  %28 = fmul float %26, %27, !dbg !45
  %29 = fsub float %25, %28, !dbg !46
  %30 = fdiv float %22, %29, !dbg !47
  store float %30, float* %6, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata float* %7, metadata !48, metadata !DIExpression()), !dbg !49
  %31 = load float, float* %5, align 4, !dbg !50
  %32 = load float, float* %3, align 4, !dbg !51
  %33 = fsub float %31, %32, !dbg !52
  %34 = load float, float* %2, align 4, !dbg !53
  %35 = load float, float* %5, align 4, !dbg !54
  %36 = fmul float %34, %35, !dbg !55
  %37 = load float, float* %4, align 4, !dbg !56
  %38 = load float, float* %3, align 4, !dbg !57
  %39 = fmul float %37, %38, !dbg !58
  %40 = fsub float %36, %39, !dbg !59
  %41 = fdiv float %33, %40, !dbg !60
  store float %41, float* %7, align 4, !dbg !49
  %42 = load float, float* %6, align 4, !dbg !61
  %43 = fpext float %42 to double, !dbg !61
  %44 = load float, float* %7, align 4, !dbg !62
  %45 = fpext float %44 to double, !dbg !62
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %43, double %45), !dbg !63
  br label %47

; <label>:47:                                     ; preds = %19, %17
  ret i32 0, !dbg !64
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
!1 = !DIFile(filename: "gcov/../WA_c/270168_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2811")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a1", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "b1", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "a2", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "b2", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocation(line: 6, column: 5, scope: !7)
!21 = !DILocation(line: 7, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!23 = !DILocation(line: 7, column: 12, scope: !22)
!24 = !DILocation(line: 7, column: 11, scope: !22)
!25 = !DILocation(line: 7, column: 15, scope: !22)
!26 = !DILocation(line: 7, column: 18, scope: !22)
!27 = !DILocation(line: 7, column: 17, scope: !22)
!28 = !DILocation(line: 7, column: 14, scope: !22)
!29 = !DILocation(line: 7, column: 21, scope: !22)
!30 = !DILocation(line: 7, column: 8, scope: !7)
!31 = !DILocation(line: 9, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 5)
!33 = !DILocation(line: 10, column: 5, scope: !32)
!34 = !DILocalVariable(name: "a", scope: !35, file: !1, line: 13, type: !12)
!35 = distinct !DILexicalBlock(scope: !22, file: !1, line: 12, column: 5)
!36 = !DILocation(line: 13, column: 15, scope: !35)
!37 = !DILocation(line: 13, column: 18, scope: !35)
!38 = !DILocation(line: 13, column: 21, scope: !35)
!39 = !DILocation(line: 13, column: 20, scope: !35)
!40 = !DILocation(line: 13, column: 26, scope: !35)
!41 = !DILocation(line: 13, column: 29, scope: !35)
!42 = !DILocation(line: 13, column: 28, scope: !35)
!43 = !DILocation(line: 13, column: 32, scope: !35)
!44 = !DILocation(line: 13, column: 35, scope: !35)
!45 = !DILocation(line: 13, column: 34, scope: !35)
!46 = !DILocation(line: 13, column: 31, scope: !35)
!47 = !DILocation(line: 13, column: 24, scope: !35)
!48 = !DILocalVariable(name: "b", scope: !35, file: !1, line: 14, type: !12)
!49 = !DILocation(line: 14, column: 15, scope: !35)
!50 = !DILocation(line: 14, column: 18, scope: !35)
!51 = !DILocation(line: 14, column: 21, scope: !35)
!52 = !DILocation(line: 14, column: 20, scope: !35)
!53 = !DILocation(line: 14, column: 26, scope: !35)
!54 = !DILocation(line: 14, column: 29, scope: !35)
!55 = !DILocation(line: 14, column: 28, scope: !35)
!56 = !DILocation(line: 14, column: 32, scope: !35)
!57 = !DILocation(line: 14, column: 35, scope: !35)
!58 = !DILocation(line: 14, column: 34, scope: !35)
!59 = !DILocation(line: 14, column: 31, scope: !35)
!60 = !DILocation(line: 14, column: 24, scope: !35)
!61 = !DILocation(line: 15, column: 30, scope: !35)
!62 = !DILocation(line: 15, column: 32, scope: !35)
!63 = !DILocation(line: 15, column: 9, scope: !35)
!64 = !DILocation(line: 18, column: 5, scope: !7)
