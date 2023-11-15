; ModuleID = 'gcov/../WA_c/270423_buggy.c'
source_filename = "gcov/../WA_c/270423_buggy.c"
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
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), float* %4, float* %5, float* %6, float* %7), !dbg !24
  %9 = load float, float* %6, align 4, !dbg !25
  %10 = load float, float* %4, align 4, !dbg !27
  %11 = fdiv float %9, %10, !dbg !28
  %12 = load float, float* %7, align 4, !dbg !29
  %13 = load float, float* %5, align 4, !dbg !30
  %14 = fdiv float %12, %13, !dbg !31
  %15 = fcmp oeq float %11, %14, !dbg !32
  br i1 %15, label %24, label %16, !dbg !33

; <label>:16:                                     ; preds = %0
  %17 = load float, float* %4, align 4, !dbg !34
  %18 = load float, float* %6, align 4, !dbg !35
  %19 = fdiv float %17, %18, !dbg !36
  %20 = load float, float* %5, align 4, !dbg !37
  %21 = load float, float* %7, align 4, !dbg !38
  %22 = fdiv float %20, %21, !dbg !39
  %23 = fcmp oeq float %19, %22, !dbg !40
  br i1 %23, label %24, label %26, !dbg !41

; <label>:24:                                     ; preds = %16, %0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !42
  br label %62, !dbg !44

; <label>:26:                                     ; preds = %16
  %27 = load float, float* %4, align 4, !dbg !45
  %28 = load float, float* %6, align 4, !dbg !47
  %29 = fmul float %27, %28, !dbg !48
  %30 = load float, float* %5, align 4, !dbg !49
  %31 = load float, float* %7, align 4, !dbg !50
  %32 = fsub float %30, %31, !dbg !51
  %33 = fmul float %29, %32, !dbg !52
  %34 = load float, float* %5, align 4, !dbg !53
  %35 = load float, float* %6, align 4, !dbg !54
  %36 = fmul float %34, %35, !dbg !55
  %37 = load float, float* %7, align 4, !dbg !56
  %38 = load float, float* %4, align 4, !dbg !57
  %39 = fmul float %37, %38, !dbg !58
  %40 = fsub float %36, %39, !dbg !59
  %41 = fdiv float %33, %40, !dbg !60
  store float %41, float* %2, align 4, !dbg !61
  %42 = load float, float* %5, align 4, !dbg !62
  %43 = load float, float* %7, align 4, !dbg !63
  %44 = fmul float %42, %43, !dbg !64
  %45 = load float, float* %4, align 4, !dbg !65
  %46 = load float, float* %6, align 4, !dbg !66
  %47 = fsub float %45, %46, !dbg !67
  %48 = fmul float %44, %47, !dbg !68
  %49 = load float, float* %4, align 4, !dbg !69
  %50 = load float, float* %7, align 4, !dbg !70
  %51 = fmul float %49, %50, !dbg !71
  %52 = load float, float* %6, align 4, !dbg !72
  %53 = load float, float* %5, align 4, !dbg !73
  %54 = fmul float %52, %53, !dbg !74
  %55 = fsub float %51, %54, !dbg !75
  %56 = fdiv float %48, %55, !dbg !76
  store float %56, float* %3, align 4, !dbg !77
  %57 = load float, float* %2, align 4, !dbg !78
  %58 = fpext float %57 to double, !dbg !78
  %59 = load float, float* %3, align 4, !dbg !79
  %60 = fpext float %59 to double, !dbg !79
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %58, double %60), !dbg !80
  br label %62

; <label>:62:                                     ; preds = %26, %24
  ret i32 0, !dbg !81
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
!1 = !DIFile(filename: "gcov/../WA_c/270423_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2813")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 13, scope: !7)
!16 = !DILocalVariable(name: "a1", scope: !7, file: !1, line: 7, type: !12)
!17 = !DILocation(line: 7, column: 11, scope: !7)
!18 = !DILocalVariable(name: "b1", scope: !7, file: !1, line: 7, type: !12)
!19 = !DILocation(line: 7, column: 14, scope: !7)
!20 = !DILocalVariable(name: "a2", scope: !7, file: !1, line: 7, type: !12)
!21 = !DILocation(line: 7, column: 17, scope: !7)
!22 = !DILocalVariable(name: "b2", scope: !7, file: !1, line: 7, type: !12)
!23 = !DILocation(line: 7, column: 20, scope: !7)
!24 = !DILocation(line: 8, column: 5, scope: !7)
!25 = !DILocation(line: 9, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 8)
!27 = !DILocation(line: 9, column: 12, scope: !26)
!28 = !DILocation(line: 9, column: 11, scope: !26)
!29 = !DILocation(line: 9, column: 18, scope: !26)
!30 = !DILocation(line: 9, column: 21, scope: !26)
!31 = !DILocation(line: 9, column: 20, scope: !26)
!32 = !DILocation(line: 9, column: 15, scope: !26)
!33 = !DILocation(line: 9, column: 24, scope: !26)
!34 = !DILocation(line: 9, column: 27, scope: !26)
!35 = !DILocation(line: 9, column: 30, scope: !26)
!36 = !DILocation(line: 9, column: 29, scope: !26)
!37 = !DILocation(line: 9, column: 36, scope: !26)
!38 = !DILocation(line: 9, column: 39, scope: !26)
!39 = !DILocation(line: 9, column: 38, scope: !26)
!40 = !DILocation(line: 9, column: 33, scope: !26)
!41 = !DILocation(line: 9, column: 8, scope: !7)
!42 = !DILocation(line: 12, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !26, file: !1, line: 11, column: 5)
!44 = !DILocation(line: 13, column: 5, scope: !43)
!45 = !DILocation(line: 17, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !26, file: !1, line: 16, column: 5)
!47 = !DILocation(line: 17, column: 16, scope: !46)
!48 = !DILocation(line: 17, column: 15, scope: !46)
!49 = !DILocation(line: 17, column: 21, scope: !46)
!50 = !DILocation(line: 17, column: 24, scope: !46)
!51 = !DILocation(line: 17, column: 23, scope: !46)
!52 = !DILocation(line: 17, column: 19, scope: !46)
!53 = !DILocation(line: 17, column: 30, scope: !46)
!54 = !DILocation(line: 17, column: 33, scope: !46)
!55 = !DILocation(line: 17, column: 32, scope: !46)
!56 = !DILocation(line: 17, column: 36, scope: !46)
!57 = !DILocation(line: 17, column: 39, scope: !46)
!58 = !DILocation(line: 17, column: 38, scope: !46)
!59 = !DILocation(line: 17, column: 35, scope: !46)
!60 = !DILocation(line: 17, column: 28, scope: !46)
!61 = !DILocation(line: 17, column: 10, scope: !46)
!62 = !DILocation(line: 18, column: 13, scope: !46)
!63 = !DILocation(line: 18, column: 16, scope: !46)
!64 = !DILocation(line: 18, column: 15, scope: !46)
!65 = !DILocation(line: 18, column: 21, scope: !46)
!66 = !DILocation(line: 18, column: 24, scope: !46)
!67 = !DILocation(line: 18, column: 23, scope: !46)
!68 = !DILocation(line: 18, column: 19, scope: !46)
!69 = !DILocation(line: 18, column: 30, scope: !46)
!70 = !DILocation(line: 18, column: 33, scope: !46)
!71 = !DILocation(line: 18, column: 32, scope: !46)
!72 = !DILocation(line: 18, column: 36, scope: !46)
!73 = !DILocation(line: 18, column: 39, scope: !46)
!74 = !DILocation(line: 18, column: 38, scope: !46)
!75 = !DILocation(line: 18, column: 35, scope: !46)
!76 = !DILocation(line: 18, column: 28, scope: !46)
!77 = !DILocation(line: 18, column: 10, scope: !46)
!78 = !DILocation(line: 19, column: 30, scope: !46)
!79 = !DILocation(line: 19, column: 32, scope: !46)
!80 = !DILocation(line: 19, column: 9, scope: !46)
!81 = !DILocation(line: 22, column: 5, scope: !7)
