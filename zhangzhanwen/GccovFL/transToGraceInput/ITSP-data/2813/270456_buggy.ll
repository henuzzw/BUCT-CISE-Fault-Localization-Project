; ModuleID = 'gcov/../WA_c/270456_buggy.c'
source_filename = "gcov/../WA_c/270456_buggy.c"
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
  %8 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5), !dbg !20
  call void @llvm.dbg.declare(metadata float* %6, metadata !21, metadata !DIExpression()), !dbg !22
  %10 = load float, float* %3, align 4, !dbg !23
  %11 = load float, float* %5, align 4, !dbg !24
  %12 = fsub float %10, %11, !dbg !25
  %13 = load float, float* %2, align 4, !dbg !26
  %14 = load float, float* %4, align 4, !dbg !27
  %15 = fmul float %13, %14, !dbg !28
  %16 = fmul float %12, %15, !dbg !29
  %17 = load float, float* %3, align 4, !dbg !30
  %18 = load float, float* %4, align 4, !dbg !31
  %19 = fmul float %17, %18, !dbg !32
  %20 = load float, float* %2, align 4, !dbg !33
  %21 = load float, float* %5, align 4, !dbg !34
  %22 = fmul float %20, %21, !dbg !35
  %23 = fsub float %19, %22, !dbg !36
  %24 = fdiv float %16, %23, !dbg !37
  store float %24, float* %6, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata float* %7, metadata !38, metadata !DIExpression()), !dbg !39
  %25 = load float, float* %2, align 4, !dbg !40
  %26 = load float, float* %4, align 4, !dbg !41
  %27 = fsub float %25, %26, !dbg !42
  %28 = load float, float* %3, align 4, !dbg !43
  %29 = load float, float* %5, align 4, !dbg !44
  %30 = fmul float %28, %29, !dbg !45
  %31 = fmul float %27, %30, !dbg !46
  %32 = load float, float* %2, align 4, !dbg !47
  %33 = load float, float* %5, align 4, !dbg !48
  %34 = fmul float %32, %33, !dbg !49
  %35 = load float, float* %3, align 4, !dbg !50
  %36 = load float, float* %4, align 4, !dbg !51
  %37 = fmul float %35, %36, !dbg !52
  %38 = fsub float %34, %37, !dbg !53
  %39 = fdiv float %31, %38, !dbg !54
  store float %39, float* %7, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata float* %8, metadata !55, metadata !DIExpression()), !dbg !56
  %40 = load float, float* %2, align 4, !dbg !57
  %41 = load float, float* %5, align 4, !dbg !58
  %42 = fmul float %40, %41, !dbg !59
  %43 = load float, float* %3, align 4, !dbg !60
  %44 = load float, float* %4, align 4, !dbg !61
  %45 = fmul float %43, %44, !dbg !62
  %46 = fsub float %42, %45, !dbg !63
  store float %46, float* %8, align 4, !dbg !56
  %47 = load float, float* %8, align 4, !dbg !64
  %48 = fcmp oeq float %47, 0.000000e+00, !dbg !66
  br i1 %48, label %49, label %51, !dbg !67

; <label>:49:                                     ; preds = %0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !68
  br label %51, !dbg !70

; <label>:51:                                     ; preds = %49, %0
  %52 = load float, float* %6, align 4, !dbg !71
  %53 = fpext float %52 to double, !dbg !71
  %54 = load float, float* %7, align 4, !dbg !72
  %55 = fpext float %54 to double, !dbg !72
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %53, double %55), !dbg !73
  ret i32 0, !dbg !74
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
!1 = !DIFile(filename: "gcov/../WA_c/270456_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2813")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 13, scope: !7)
!16 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 15, scope: !7)
!18 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 17, scope: !7)
!20 = !DILocation(line: 6, column: 5, scope: !7)
!21 = !DILocalVariable(name: "X", scope: !7, file: !1, line: 7, type: !12)
!22 = !DILocation(line: 7, column: 11, scope: !7)
!23 = !DILocation(line: 7, column: 14, scope: !7)
!24 = !DILocation(line: 7, column: 16, scope: !7)
!25 = !DILocation(line: 7, column: 15, scope: !7)
!26 = !DILocation(line: 7, column: 20, scope: !7)
!27 = !DILocation(line: 7, column: 22, scope: !7)
!28 = !DILocation(line: 7, column: 21, scope: !7)
!29 = !DILocation(line: 7, column: 18, scope: !7)
!30 = !DILocation(line: 7, column: 26, scope: !7)
!31 = !DILocation(line: 7, column: 28, scope: !7)
!32 = !DILocation(line: 7, column: 27, scope: !7)
!33 = !DILocation(line: 7, column: 30, scope: !7)
!34 = !DILocation(line: 7, column: 32, scope: !7)
!35 = !DILocation(line: 7, column: 31, scope: !7)
!36 = !DILocation(line: 7, column: 29, scope: !7)
!37 = !DILocation(line: 7, column: 24, scope: !7)
!38 = !DILocalVariable(name: "Y", scope: !7, file: !1, line: 8, type: !12)
!39 = !DILocation(line: 8, column: 11, scope: !7)
!40 = !DILocation(line: 8, column: 14, scope: !7)
!41 = !DILocation(line: 8, column: 16, scope: !7)
!42 = !DILocation(line: 8, column: 15, scope: !7)
!43 = !DILocation(line: 8, column: 20, scope: !7)
!44 = !DILocation(line: 8, column: 22, scope: !7)
!45 = !DILocation(line: 8, column: 21, scope: !7)
!46 = !DILocation(line: 8, column: 18, scope: !7)
!47 = !DILocation(line: 8, column: 26, scope: !7)
!48 = !DILocation(line: 8, column: 28, scope: !7)
!49 = !DILocation(line: 8, column: 27, scope: !7)
!50 = !DILocation(line: 8, column: 30, scope: !7)
!51 = !DILocation(line: 8, column: 32, scope: !7)
!52 = !DILocation(line: 8, column: 31, scope: !7)
!53 = !DILocation(line: 8, column: 29, scope: !7)
!54 = !DILocation(line: 8, column: 24, scope: !7)
!55 = !DILocalVariable(name: "E", scope: !7, file: !1, line: 9, type: !12)
!56 = !DILocation(line: 9, column: 11, scope: !7)
!57 = !DILocation(line: 9, column: 13, scope: !7)
!58 = !DILocation(line: 9, column: 15, scope: !7)
!59 = !DILocation(line: 9, column: 14, scope: !7)
!60 = !DILocation(line: 9, column: 17, scope: !7)
!61 = !DILocation(line: 9, column: 19, scope: !7)
!62 = !DILocation(line: 9, column: 18, scope: !7)
!63 = !DILocation(line: 9, column: 16, scope: !7)
!64 = !DILocation(line: 10, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 9)
!66 = !DILocation(line: 10, column: 10, scope: !65)
!67 = !DILocation(line: 10, column: 9, scope: !7)
!68 = !DILocation(line: 12, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 11, column: 5)
!70 = !DILocation(line: 13, column: 5, scope: !69)
!71 = !DILocation(line: 14, column: 26, scope: !7)
!72 = !DILocation(line: 14, column: 28, scope: !7)
!73 = !DILocation(line: 14, column: 5, scope: !7)
!74 = !DILocation(line: 17, column: 5, scope: !7)
