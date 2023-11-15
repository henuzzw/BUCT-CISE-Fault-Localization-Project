; ModuleID = 'gcov/../WA_c/270404_buggy.c'
source_filename = "gcov/../WA_c/270404_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"% %f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
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
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5), !dbg !28
  %11 = load float, float* %3, align 4, !dbg !29
  %12 = load float, float* %2, align 4, !dbg !30
  %13 = fdiv float %11, %12, !dbg !31
  store float %13, float* %8, align 4, !dbg !32
  %14 = load float, float* %5, align 4, !dbg !33
  %15 = load float, float* %4, align 4, !dbg !34
  %16 = fdiv float %14, %15, !dbg !35
  store float %16, float* %9, align 4, !dbg !36
  %17 = load float, float* %8, align 4, !dbg !37
  %18 = load float, float* %9, align 4, !dbg !39
  %19 = fcmp oeq float %17, %18, !dbg !40
  br i1 %19, label %20, label %22, !dbg !41

; <label>:20:                                     ; preds = %0
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !42
  br label %60, !dbg !44

; <label>:22:                                     ; preds = %0
  %23 = load float, float* %6, align 4, !dbg !45
  %24 = load float, float* %2, align 4, !dbg !47
  %25 = load float, float* %4, align 4, !dbg !48
  %26 = fmul float %24, %25, !dbg !49
  %27 = load float, float* %5, align 4, !dbg !50
  %28 = load float, float* %3, align 4, !dbg !51
  %29 = fsub float %27, %28, !dbg !52
  %30 = fmul float %26, %29, !dbg !53
  %31 = load float, float* %2, align 4, !dbg !54
  %32 = load float, float* %5, align 4, !dbg !55
  %33 = fmul float %31, %32, !dbg !56
  %34 = load float, float* %4, align 4, !dbg !57
  %35 = load float, float* %3, align 4, !dbg !58
  %36 = fmul float %34, %35, !dbg !59
  %37 = fsub float %33, %36, !dbg !60
  %38 = fdiv float %30, %37, !dbg !61
  %39 = fcmp oeq float %23, %38, !dbg !62
  %40 = zext i1 %39 to i32, !dbg !45
  %41 = load float, float* %7, align 4, !dbg !63
  %42 = load float, float* %2, align 4, !dbg !64
  %43 = load float, float* %4, align 4, !dbg !65
  %44 = fsub float %42, %43, !dbg !66
  %45 = load float, float* %3, align 4, !dbg !67
  %46 = load float, float* %5, align 4, !dbg !68
  %47 = fmul float %45, %46, !dbg !69
  %48 = fmul float %44, %47, !dbg !70
  %49 = load float, float* %2, align 4, !dbg !71
  %50 = load float, float* %5, align 4, !dbg !72
  %51 = fmul float %49, %50, !dbg !73
  %52 = load float, float* %4, align 4, !dbg !74
  %53 = load float, float* %3, align 4, !dbg !75
  %54 = fmul float %52, %53, !dbg !76
  %55 = fsub float %51, %54, !dbg !77
  %56 = fdiv float %48, %55, !dbg !78
  %57 = fcmp oeq float %41, %56, !dbg !79
  %58 = zext i1 %57 to i32, !dbg !63
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %40, i32 %58), !dbg !80
  br label %60

; <label>:60:                                     ; preds = %22, %20
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
!1 = !DIFile(filename: "gcov/../WA_c/270404_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2813")
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
!20 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 25, scope: !7)
!24 = !DILocalVariable(name: "l", scope: !7, file: !1, line: 5, type: !12)
!25 = !DILocation(line: 5, column: 27, scope: !7)
!26 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 5, type: !12)
!27 = !DILocation(line: 5, column: 29, scope: !7)
!28 = !DILocation(line: 6, column: 5, scope: !7)
!29 = !DILocation(line: 7, column: 7, scope: !7)
!30 = !DILocation(line: 7, column: 10, scope: !7)
!31 = !DILocation(line: 7, column: 9, scope: !7)
!32 = !DILocation(line: 7, column: 6, scope: !7)
!33 = !DILocation(line: 8, column: 7, scope: !7)
!34 = !DILocation(line: 8, column: 10, scope: !7)
!35 = !DILocation(line: 8, column: 9, scope: !7)
!36 = !DILocation(line: 8, column: 6, scope: !7)
!37 = !DILocation(line: 9, column: 8, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 8)
!39 = !DILocation(line: 9, column: 11, scope: !38)
!40 = !DILocation(line: 9, column: 9, scope: !38)
!41 = !DILocation(line: 9, column: 8, scope: !7)
!42 = !DILocation(line: 11, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 10, column: 5)
!44 = !DILocation(line: 12, column: 5, scope: !43)
!45 = !DILocation(line: 15, column: 31, scope: !46)
!46 = distinct !DILexicalBlock(scope: !38, file: !1, line: 14, column: 5)
!47 = !DILocation(line: 15, column: 34, scope: !46)
!48 = !DILocation(line: 15, column: 37, scope: !46)
!49 = !DILocation(line: 15, column: 36, scope: !46)
!50 = !DILocation(line: 15, column: 41, scope: !46)
!51 = !DILocation(line: 15, column: 44, scope: !46)
!52 = !DILocation(line: 15, column: 43, scope: !46)
!53 = !DILocation(line: 15, column: 39, scope: !46)
!54 = !DILocation(line: 15, column: 49, scope: !46)
!55 = !DILocation(line: 15, column: 52, scope: !46)
!56 = !DILocation(line: 15, column: 51, scope: !46)
!57 = !DILocation(line: 15, column: 55, scope: !46)
!58 = !DILocation(line: 15, column: 58, scope: !46)
!59 = !DILocation(line: 15, column: 57, scope: !46)
!60 = !DILocation(line: 15, column: 54, scope: !46)
!61 = !DILocation(line: 15, column: 47, scope: !46)
!62 = !DILocation(line: 15, column: 32, scope: !46)
!63 = !DILocation(line: 16, column: 16, scope: !46)
!64 = !DILocation(line: 16, column: 20, scope: !46)
!65 = !DILocation(line: 16, column: 23, scope: !46)
!66 = !DILocation(line: 16, column: 22, scope: !46)
!67 = !DILocation(line: 16, column: 28, scope: !46)
!68 = !DILocation(line: 16, column: 31, scope: !46)
!69 = !DILocation(line: 16, column: 30, scope: !46)
!70 = !DILocation(line: 16, column: 26, scope: !46)
!71 = !DILocation(line: 16, column: 36, scope: !46)
!72 = !DILocation(line: 16, column: 39, scope: !46)
!73 = !DILocation(line: 16, column: 38, scope: !46)
!74 = !DILocation(line: 16, column: 42, scope: !46)
!75 = !DILocation(line: 16, column: 45, scope: !46)
!76 = !DILocation(line: 16, column: 44, scope: !46)
!77 = !DILocation(line: 16, column: 41, scope: !46)
!78 = !DILocation(line: 16, column: 34, scope: !46)
!79 = !DILocation(line: 16, column: 17, scope: !46)
!80 = !DILocation(line: 15, column: 9, scope: !46)
!81 = !DILocation(line: 18, column: 5, scope: !7)
