; ModuleID = 'gcov/../WA_c/270469_buggy.c'
source_filename = "gcov/../WA_c/270469_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(%0.3f,%0.3f)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"INF\00", align 1

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
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %2), !dbg !24
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %3), !dbg !25
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %4), !dbg !26
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %5), !dbg !27
  %12 = load float, float* %2, align 4, !dbg !28
  %13 = load float, float* %3, align 4, !dbg !29
  %14 = fmul float %12, %13, !dbg !30
  %15 = load float, float* %4, align 4, !dbg !31
  %16 = load float, float* %5, align 4, !dbg !32
  %17 = fsub float %15, %16, !dbg !33
  %18 = fmul float %14, %17, !dbg !34
  %19 = load float, float* %3, align 4, !dbg !35
  %20 = load float, float* %4, align 4, !dbg !36
  %21 = fmul float %19, %20, !dbg !37
  %22 = load float, float* %2, align 4, !dbg !38
  %23 = load float, float* %5, align 4, !dbg !39
  %24 = fmul float %22, %23, !dbg !40
  %25 = fsub float %21, %24, !dbg !41
  %26 = fdiv float %18, %25, !dbg !42
  store float %26, float* %6, align 4, !dbg !43
  %27 = load float, float* %4, align 4, !dbg !44
  %28 = load float, float* %5, align 4, !dbg !45
  %29 = fmul float %27, %28, !dbg !46
  %30 = load float, float* %2, align 4, !dbg !47
  %31 = load float, float* %3, align 4, !dbg !48
  %32 = fsub float %30, %31, !dbg !49
  %33 = fmul float %29, %32, !dbg !50
  %34 = load float, float* %2, align 4, !dbg !51
  %35 = load float, float* %5, align 4, !dbg !52
  %36 = fmul float %34, %35, !dbg !53
  %37 = load float, float* %3, align 4, !dbg !54
  %38 = load float, float* %4, align 4, !dbg !55
  %39 = fmul float %37, %38, !dbg !56
  %40 = fsub float %36, %39, !dbg !57
  %41 = fdiv float %33, %40, !dbg !58
  store float %41, float* %7, align 4, !dbg !59
  %42 = load float, float* %3, align 4, !dbg !60
  %43 = load float, float* %4, align 4, !dbg !62
  %44 = fmul float %42, %43, !dbg !63
  %45 = load float, float* %2, align 4, !dbg !64
  %46 = load float, float* %5, align 4, !dbg !65
  %47 = fmul float %45, %46, !dbg !66
  %48 = fcmp une float %44, %47, !dbg !67
  br i1 %48, label %49, label %55, !dbg !68

; <label>:49:                                     ; preds = %0
  %50 = load float, float* %6, align 4, !dbg !69
  %51 = fpext float %50 to double, !dbg !69
  %52 = load float, float* %7, align 4, !dbg !71
  %53 = fpext float %52 to double, !dbg !71
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), double %51, double %53), !dbg !72
  br label %66, !dbg !73

; <label>:55:                                     ; preds = %0
  %56 = load float, float* %3, align 4, !dbg !74
  %57 = load float, float* %4, align 4, !dbg !76
  %58 = fmul float %56, %57, !dbg !77
  %59 = load float, float* %2, align 4, !dbg !78
  %60 = load float, float* %5, align 4, !dbg !79
  %61 = fmul float %59, %60, !dbg !80
  %62 = fcmp oeq float %58, %61, !dbg !81
  br i1 %62, label %63, label %65, !dbg !82

; <label>:63:                                     ; preds = %55
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !83
  br label %65, !dbg !85

; <label>:65:                                     ; preds = %63, %55
  br label %66

; <label>:66:                                     ; preds = %65, %49
  ret i32 0, !dbg !86
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
!1 = !DIFile(filename: "gcov/../WA_c/270469_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2813")
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
!20 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 25, scope: !7)
!24 = !DILocation(line: 6, column: 5, scope: !7)
!25 = !DILocation(line: 7, column: 5, scope: !7)
!26 = !DILocation(line: 8, column: 5, scope: !7)
!27 = !DILocation(line: 9, column: 5, scope: !7)
!28 = !DILocation(line: 10, column: 8, scope: !7)
!29 = !DILocation(line: 10, column: 11, scope: !7)
!30 = !DILocation(line: 10, column: 10, scope: !7)
!31 = !DILocation(line: 10, column: 15, scope: !7)
!32 = !DILocation(line: 10, column: 18, scope: !7)
!33 = !DILocation(line: 10, column: 17, scope: !7)
!34 = !DILocation(line: 10, column: 13, scope: !7)
!35 = !DILocation(line: 10, column: 24, scope: !7)
!36 = !DILocation(line: 10, column: 27, scope: !7)
!37 = !DILocation(line: 10, column: 26, scope: !7)
!38 = !DILocation(line: 10, column: 30, scope: !7)
!39 = !DILocation(line: 10, column: 33, scope: !7)
!40 = !DILocation(line: 10, column: 32, scope: !7)
!41 = !DILocation(line: 10, column: 29, scope: !7)
!42 = !DILocation(line: 10, column: 22, scope: !7)
!43 = !DILocation(line: 10, column: 6, scope: !7)
!44 = !DILocation(line: 11, column: 8, scope: !7)
!45 = !DILocation(line: 11, column: 11, scope: !7)
!46 = !DILocation(line: 11, column: 10, scope: !7)
!47 = !DILocation(line: 11, column: 15, scope: !7)
!48 = !DILocation(line: 11, column: 18, scope: !7)
!49 = !DILocation(line: 11, column: 17, scope: !7)
!50 = !DILocation(line: 11, column: 13, scope: !7)
!51 = !DILocation(line: 11, column: 24, scope: !7)
!52 = !DILocation(line: 11, column: 27, scope: !7)
!53 = !DILocation(line: 11, column: 26, scope: !7)
!54 = !DILocation(line: 11, column: 30, scope: !7)
!55 = !DILocation(line: 11, column: 33, scope: !7)
!56 = !DILocation(line: 11, column: 32, scope: !7)
!57 = !DILocation(line: 11, column: 29, scope: !7)
!58 = !DILocation(line: 11, column: 22, scope: !7)
!59 = !DILocation(line: 11, column: 6, scope: !7)
!60 = !DILocation(line: 12, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 8)
!62 = !DILocation(line: 12, column: 11, scope: !61)
!63 = !DILocation(line: 12, column: 10, scope: !61)
!64 = !DILocation(line: 12, column: 15, scope: !61)
!65 = !DILocation(line: 12, column: 18, scope: !61)
!66 = !DILocation(line: 12, column: 17, scope: !61)
!67 = !DILocation(line: 12, column: 13, scope: !61)
!68 = !DILocation(line: 12, column: 8, scope: !7)
!69 = !DILocation(line: 14, column: 32, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 13, column: 5)
!71 = !DILocation(line: 14, column: 34, scope: !70)
!72 = !DILocation(line: 14, column: 9, scope: !70)
!73 = !DILocation(line: 15, column: 5, scope: !70)
!74 = !DILocation(line: 16, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !61, file: !1, line: 16, column: 13)
!76 = !DILocation(line: 16, column: 16, scope: !75)
!77 = !DILocation(line: 16, column: 15, scope: !75)
!78 = !DILocation(line: 16, column: 20, scope: !75)
!79 = !DILocation(line: 16, column: 23, scope: !75)
!80 = !DILocation(line: 16, column: 22, scope: !75)
!81 = !DILocation(line: 16, column: 18, scope: !75)
!82 = !DILocation(line: 16, column: 13, scope: !61)
!83 = !DILocation(line: 18, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !1, line: 17, column: 5)
!85 = !DILocation(line: 19, column: 5, scope: !84)
!86 = !DILocation(line: 21, column: 5, scope: !7)
