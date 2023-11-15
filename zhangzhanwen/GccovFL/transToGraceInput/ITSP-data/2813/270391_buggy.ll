; ModuleID = 'gcov/../WA_c/270391_buggy.c'
source_filename = "gcov/../WA_c/270391_buggy.c"
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
  %9 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata float* %7, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata float* %8, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata float* %9, metadata !26, metadata !DIExpression()), !dbg !27
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5), !dbg !28
  %11 = load float, float* %2, align 4, !dbg !29
  %12 = load float, float* %3, align 4, !dbg !30
  %13 = fmul float %11, %12, !dbg !31
  %14 = load float, float* %4, align 4, !dbg !32
  %15 = load float, float* %5, align 4, !dbg !33
  %16 = fsub float %14, %15, !dbg !34
  %17 = fmul float %13, %16, !dbg !35
  %18 = load float, float* %4, align 4, !dbg !36
  %19 = load float, float* %3, align 4, !dbg !37
  %20 = fmul float %18, %19, !dbg !38
  %21 = load float, float* %5, align 4, !dbg !39
  %22 = load float, float* %2, align 4, !dbg !40
  %23 = fmul float %21, %22, !dbg !41
  %24 = fsub float %20, %23, !dbg !42
  %25 = fdiv float %17, %24, !dbg !43
  store float %25, float* %6, align 4, !dbg !44
  %26 = load float, float* %4, align 4, !dbg !45
  %27 = load float, float* %5, align 4, !dbg !46
  %28 = fmul float %26, %27, !dbg !47
  %29 = load float, float* %2, align 4, !dbg !48
  %30 = load float, float* %3, align 4, !dbg !49
  %31 = fsub float %29, %30, !dbg !50
  %32 = fmul float %28, %31, !dbg !51
  %33 = load float, float* %2, align 4, !dbg !52
  %34 = load float, float* %5, align 4, !dbg !53
  %35 = fmul float %33, %34, !dbg !54
  %36 = load float, float* %3, align 4, !dbg !55
  %37 = load float, float* %4, align 4, !dbg !56
  %38 = fmul float %36, %37, !dbg !57
  %39 = fsub float %35, %38, !dbg !58
  %40 = fdiv float %32, %39, !dbg !59
  store float %40, float* %7, align 4, !dbg !60
  %41 = load float, float* %2, align 4, !dbg !61
  %42 = load float, float* %5, align 4, !dbg !63
  %43 = fmul float %41, %42, !dbg !64
  %44 = load float, float* %3, align 4, !dbg !65
  %45 = load float, float* %4, align 4, !dbg !66
  %46 = fmul float %44, %45, !dbg !67
  %47 = fcmp oeq float %43, %46, !dbg !68
  br i1 %47, label %48, label %50, !dbg !69

; <label>:48:                                     ; preds = %0
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !70
  br label %56, !dbg !72

; <label>:50:                                     ; preds = %0
  %51 = load float, float* %6, align 4, !dbg !73
  %52 = fpext float %51 to double, !dbg !73
  %53 = load float, float* %7, align 4, !dbg !75
  %54 = fpext float %53 to double, !dbg !75
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %52, double %54), !dbg !76
  br label %56

; <label>:56:                                     ; preds = %50, %48
  ret i32 0, !dbg !77
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
!1 = !DIFile(filename: "gcov/../WA_c/270391_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2813")
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
!14 = !DILocalVariable(name: "a2", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "b1", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "b2", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocalVariable(name: "X", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "Y", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 25, scope: !7)
!24 = !DILocalVariable(name: "s1", scope: !7, file: !1, line: 5, type: !12)
!25 = !DILocation(line: 5, column: 27, scope: !7)
!26 = !DILocalVariable(name: "s2", scope: !7, file: !1, line: 5, type: !12)
!27 = !DILocation(line: 5, column: 30, scope: !7)
!28 = !DILocation(line: 6, column: 5, scope: !7)
!29 = !DILocation(line: 7, column: 7, scope: !7)
!30 = !DILocation(line: 7, column: 10, scope: !7)
!31 = !DILocation(line: 7, column: 9, scope: !7)
!32 = !DILocation(line: 7, column: 14, scope: !7)
!33 = !DILocation(line: 7, column: 17, scope: !7)
!34 = !DILocation(line: 7, column: 16, scope: !7)
!35 = !DILocation(line: 7, column: 12, scope: !7)
!36 = !DILocation(line: 7, column: 22, scope: !7)
!37 = !DILocation(line: 7, column: 25, scope: !7)
!38 = !DILocation(line: 7, column: 24, scope: !7)
!39 = !DILocation(line: 7, column: 28, scope: !7)
!40 = !DILocation(line: 7, column: 31, scope: !7)
!41 = !DILocation(line: 7, column: 30, scope: !7)
!42 = !DILocation(line: 7, column: 27, scope: !7)
!43 = !DILocation(line: 7, column: 20, scope: !7)
!44 = !DILocation(line: 7, column: 6, scope: !7)
!45 = !DILocation(line: 8, column: 7, scope: !7)
!46 = !DILocation(line: 8, column: 10, scope: !7)
!47 = !DILocation(line: 8, column: 9, scope: !7)
!48 = !DILocation(line: 8, column: 14, scope: !7)
!49 = !DILocation(line: 8, column: 17, scope: !7)
!50 = !DILocation(line: 8, column: 16, scope: !7)
!51 = !DILocation(line: 8, column: 12, scope: !7)
!52 = !DILocation(line: 8, column: 22, scope: !7)
!53 = !DILocation(line: 8, column: 25, scope: !7)
!54 = !DILocation(line: 8, column: 24, scope: !7)
!55 = !DILocation(line: 8, column: 28, scope: !7)
!56 = !DILocation(line: 8, column: 31, scope: !7)
!57 = !DILocation(line: 8, column: 30, scope: !7)
!58 = !DILocation(line: 8, column: 27, scope: !7)
!59 = !DILocation(line: 8, column: 20, scope: !7)
!60 = !DILocation(line: 8, column: 6, scope: !7)
!61 = !DILocation(line: 9, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 8)
!63 = !DILocation(line: 9, column: 11, scope: !62)
!64 = !DILocation(line: 9, column: 10, scope: !62)
!65 = !DILocation(line: 9, column: 15, scope: !62)
!66 = !DILocation(line: 9, column: 18, scope: !62)
!67 = !DILocation(line: 9, column: 17, scope: !62)
!68 = !DILocation(line: 9, column: 13, scope: !62)
!69 = !DILocation(line: 9, column: 8, scope: !7)
!70 = !DILocation(line: 11, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 10, column: 5)
!72 = !DILocation(line: 12, column: 5, scope: !71)
!73 = !DILocation(line: 16, column: 30, scope: !74)
!74 = distinct !DILexicalBlock(scope: !62, file: !1, line: 15, column: 5)
!75 = !DILocation(line: 16, column: 32, scope: !74)
!76 = !DILocation(line: 16, column: 9, scope: !74)
!77 = !DILocation(line: 19, column: 5, scope: !7)
