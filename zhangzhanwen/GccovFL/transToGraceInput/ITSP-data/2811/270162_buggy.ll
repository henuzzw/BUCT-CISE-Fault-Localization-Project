; ModuleID = 'gcov/../WA_c/270162_buggy.c'
source_filename = "gcov/../WA_c/270162_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%f%f%f%f\00", align 1
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
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata float* %7, metadata !22, metadata !DIExpression()), !dbg !23
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5), !dbg !24
  %9 = load float, float* %2, align 4, !dbg !25
  %10 = load float, float* %3, align 4, !dbg !27
  %11 = fdiv float %9, %10, !dbg !28
  %12 = load float, float* %4, align 4, !dbg !29
  %13 = load float, float* %5, align 4, !dbg !30
  %14 = fdiv float %12, %13, !dbg !31
  %15 = fcmp oeq float %11, %14, !dbg !32
  br i1 %15, label %40, label %16, !dbg !33

; <label>:16:                                     ; preds = %0
  %17 = load float, float* %2, align 4, !dbg !34
  %18 = fcmp oeq float %17, 0.000000e+00, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

; <label>:19:                                     ; preds = %16
  %20 = load float, float* %4, align 4, !dbg !37
  %21 = fcmp oeq float %20, 0.000000e+00, !dbg !38
  br i1 %21, label %40, label %22, !dbg !39

; <label>:22:                                     ; preds = %19, %16
  %23 = load float, float* %3, align 4, !dbg !40
  %24 = fcmp oeq float %23, 0.000000e+00, !dbg !41
  br i1 %24, label %25, label %28, !dbg !42

; <label>:25:                                     ; preds = %22
  %26 = load float, float* %5, align 4, !dbg !43
  %27 = fcmp oeq float %26, 0.000000e+00, !dbg !44
  br i1 %27, label %40, label %28, !dbg !45

; <label>:28:                                     ; preds = %25, %22
  %29 = load float, float* %2, align 4, !dbg !46
  %30 = fcmp oeq float %29, 0.000000e+00, !dbg !47
  br i1 %30, label %31, label %34, !dbg !48

; <label>:31:                                     ; preds = %28
  %32 = load float, float* %3, align 4, !dbg !49
  %33 = fcmp oeq float %32, 0.000000e+00, !dbg !50
  br i1 %33, label %40, label %34, !dbg !51

; <label>:34:                                     ; preds = %31, %28
  %35 = load float, float* %4, align 4, !dbg !52
  %36 = fcmp oeq float %35, 0.000000e+00, !dbg !53
  br i1 %36, label %37, label %42, !dbg !54

; <label>:37:                                     ; preds = %34
  %38 = load float, float* %5, align 4, !dbg !55
  %39 = fcmp oeq float %38, 0.000000e+00, !dbg !56
  br i1 %39, label %40, label %42, !dbg !57

; <label>:40:                                     ; preds = %37, %31, %25, %19, %0
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !58
  br label %70, !dbg !60

; <label>:42:                                     ; preds = %37, %34
  %43 = load float, float* %3, align 4, !dbg !61
  %44 = load float, float* %5, align 4, !dbg !63
  %45 = fsub float %43, %44, !dbg !64
  %46 = load float, float* %4, align 4, !dbg !65
  %47 = load float, float* %3, align 4, !dbg !66
  %48 = fmul float %46, %47, !dbg !67
  %49 = load float, float* %2, align 4, !dbg !68
  %50 = load float, float* %5, align 4, !dbg !69
  %51 = fmul float %49, %50, !dbg !70
  %52 = fsub float %48, %51, !dbg !71
  %53 = fdiv float %45, %52, !dbg !72
  store float %53, float* %6, align 4, !dbg !73
  %54 = load float, float* %4, align 4, !dbg !74
  %55 = load float, float* %2, align 4, !dbg !75
  %56 = fsub float %54, %55, !dbg !76
  %57 = load float, float* %4, align 4, !dbg !77
  %58 = load float, float* %3, align 4, !dbg !78
  %59 = fmul float %57, %58, !dbg !79
  %60 = load float, float* %2, align 4, !dbg !80
  %61 = load float, float* %5, align 4, !dbg !81
  %62 = fmul float %60, %61, !dbg !82
  %63 = fsub float %59, %62, !dbg !83
  %64 = fdiv float %56, %63, !dbg !84
  store float %64, float* %7, align 4, !dbg !85
  %65 = load float, float* %6, align 4, !dbg !86
  %66 = fpext float %65 to double, !dbg !86
  %67 = load float, float* %7, align 4, !dbg !87
  %68 = fpext float %67 to double, !dbg !87
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %66, double %68), !dbg !88
  br label %70

; <label>:70:                                     ; preds = %42, %40
  ret i32 0, !dbg !89
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
!1 = !DIFile(filename: "gcov/../WA_c/270162_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2811")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a1", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 4, column: 11, scope: !7)
!14 = !DILocalVariable(name: "b1", scope: !7, file: !1, line: 4, type: !12)
!15 = !DILocation(line: 4, column: 14, scope: !7)
!16 = !DILocalVariable(name: "a2", scope: !7, file: !1, line: 4, type: !12)
!17 = !DILocation(line: 4, column: 17, scope: !7)
!18 = !DILocalVariable(name: "b2", scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 20, scope: !7)
!20 = !DILocalVariable(name: "c1", scope: !7, file: !1, line: 4, type: !12)
!21 = !DILocation(line: 4, column: 23, scope: !7)
!22 = !DILocalVariable(name: "c2", scope: !7, file: !1, line: 4, type: !12)
!23 = !DILocation(line: 4, column: 26, scope: !7)
!24 = !DILocation(line: 5, column: 5, scope: !7)
!25 = !DILocation(line: 6, column: 8, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 8)
!27 = !DILocation(line: 6, column: 11, scope: !26)
!28 = !DILocation(line: 6, column: 10, scope: !26)
!29 = !DILocation(line: 6, column: 15, scope: !26)
!30 = !DILocation(line: 6, column: 18, scope: !26)
!31 = !DILocation(line: 6, column: 17, scope: !26)
!32 = !DILocation(line: 6, column: 13, scope: !26)
!33 = !DILocation(line: 6, column: 20, scope: !26)
!34 = !DILocation(line: 6, column: 22, scope: !26)
!35 = !DILocation(line: 6, column: 24, scope: !26)
!36 = !DILocation(line: 6, column: 27, scope: !26)
!37 = !DILocation(line: 6, column: 29, scope: !26)
!38 = !DILocation(line: 6, column: 31, scope: !26)
!39 = !DILocation(line: 6, column: 34, scope: !26)
!40 = !DILocation(line: 6, column: 36, scope: !26)
!41 = !DILocation(line: 6, column: 38, scope: !26)
!42 = !DILocation(line: 6, column: 41, scope: !26)
!43 = !DILocation(line: 6, column: 43, scope: !26)
!44 = !DILocation(line: 6, column: 45, scope: !26)
!45 = !DILocation(line: 6, column: 48, scope: !26)
!46 = !DILocation(line: 6, column: 50, scope: !26)
!47 = !DILocation(line: 6, column: 52, scope: !26)
!48 = !DILocation(line: 6, column: 55, scope: !26)
!49 = !DILocation(line: 6, column: 57, scope: !26)
!50 = !DILocation(line: 6, column: 59, scope: !26)
!51 = !DILocation(line: 6, column: 62, scope: !26)
!52 = !DILocation(line: 6, column: 64, scope: !26)
!53 = !DILocation(line: 6, column: 66, scope: !26)
!54 = !DILocation(line: 6, column: 69, scope: !26)
!55 = !DILocation(line: 6, column: 71, scope: !26)
!56 = !DILocation(line: 6, column: 73, scope: !26)
!57 = !DILocation(line: 6, column: 8, scope: !7)
!58 = !DILocation(line: 8, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 5)
!60 = !DILocation(line: 9, column: 5, scope: !59)
!61 = !DILocation(line: 12, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !26, file: !1, line: 11, column: 5)
!63 = !DILocation(line: 12, column: 17, scope: !62)
!64 = !DILocation(line: 12, column: 16, scope: !62)
!65 = !DILocation(line: 12, column: 22, scope: !62)
!66 = !DILocation(line: 12, column: 25, scope: !62)
!67 = !DILocation(line: 12, column: 24, scope: !62)
!68 = !DILocation(line: 12, column: 28, scope: !62)
!69 = !DILocation(line: 12, column: 31, scope: !62)
!70 = !DILocation(line: 12, column: 30, scope: !62)
!71 = !DILocation(line: 12, column: 27, scope: !62)
!72 = !DILocation(line: 12, column: 20, scope: !62)
!73 = !DILocation(line: 12, column: 11, scope: !62)
!74 = !DILocation(line: 13, column: 14, scope: !62)
!75 = !DILocation(line: 13, column: 17, scope: !62)
!76 = !DILocation(line: 13, column: 16, scope: !62)
!77 = !DILocation(line: 13, column: 22, scope: !62)
!78 = !DILocation(line: 13, column: 25, scope: !62)
!79 = !DILocation(line: 13, column: 24, scope: !62)
!80 = !DILocation(line: 13, column: 28, scope: !62)
!81 = !DILocation(line: 13, column: 31, scope: !62)
!82 = !DILocation(line: 13, column: 30, scope: !62)
!83 = !DILocation(line: 13, column: 27, scope: !62)
!84 = !DILocation(line: 13, column: 20, scope: !62)
!85 = !DILocation(line: 13, column: 11, scope: !62)
!86 = !DILocation(line: 14, column: 30, scope: !62)
!87 = !DILocation(line: 14, column: 33, scope: !62)
!88 = !DILocation(line: 14, column: 9, scope: !62)
!89 = !DILocation(line: 16, column: 5, scope: !7)
