; ModuleID = 'gcov/../WA_c/271150_buggy.c'
source_filename = "gcov/../WA_c/271150_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%f %f %f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Point is on the Circle\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Point is outside the Circle\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Point is inside the Circle\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5, float* %6), !dbg !22
  %8 = load float, float* %5, align 4, !dbg !23
  %9 = load float, float* %2, align 4, !dbg !26
  %10 = fsub float %8, %9, !dbg !27
  %11 = load float, float* %5, align 4, !dbg !28
  %12 = load float, float* %2, align 4, !dbg !29
  %13 = fsub float %11, %12, !dbg !30
  %14 = fmul float %10, %13, !dbg !31
  %15 = load float, float* %6, align 4, !dbg !32
  %16 = load float, float* %3, align 4, !dbg !33
  %17 = fsub float %15, %16, !dbg !34
  %18 = load float, float* %6, align 4, !dbg !35
  %19 = load float, float* %3, align 4, !dbg !36
  %20 = fsub float %18, %19, !dbg !37
  %21 = fmul float %17, %20, !dbg !38
  %22 = fadd float %14, %21, !dbg !39
  %23 = load float, float* %4, align 4, !dbg !40
  %24 = load float, float* %4, align 4, !dbg !41
  %25 = fmul float %23, %24, !dbg !42
  %26 = fcmp oeq float %22, %25, !dbg !43
  br i1 %26, label %27, label %29, !dbg !44

; <label>:27:                                     ; preds = %0
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)), !dbg !45
  br label %54, !dbg !47

; <label>:29:                                     ; preds = %0
  %30 = load float, float* %5, align 4, !dbg !48
  %31 = load float, float* %2, align 4, !dbg !50
  %32 = fsub float %30, %31, !dbg !51
  %33 = load float, float* %5, align 4, !dbg !52
  %34 = load float, float* %2, align 4, !dbg !53
  %35 = fsub float %33, %34, !dbg !54
  %36 = fmul float %32, %35, !dbg !55
  %37 = load float, float* %6, align 4, !dbg !56
  %38 = load float, float* %3, align 4, !dbg !57
  %39 = fsub float %37, %38, !dbg !58
  %40 = load float, float* %6, align 4, !dbg !59
  %41 = load float, float* %3, align 4, !dbg !60
  %42 = fsub float %40, %41, !dbg !61
  %43 = fmul float %39, %42, !dbg !62
  %44 = fadd float %36, %43, !dbg !63
  %45 = load float, float* %4, align 4, !dbg !64
  %46 = load float, float* %4, align 4, !dbg !65
  %47 = fmul float %45, %46, !dbg !66
  %48 = fcmp ogt float %44, %47, !dbg !67
  br i1 %48, label %49, label %51, !dbg !68

; <label>:49:                                     ; preds = %29
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)), !dbg !69
  br label %53, !dbg !71

; <label>:51:                                     ; preds = %29
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)), !dbg !72
  br label %53

; <label>:53:                                     ; preds = %51, %49
  br label %54

; <label>:54:                                     ; preds = %53, %27
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
!1 = !DIFile(filename: "gcov/../WA_c/271150_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
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
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "x1", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 24, scope: !7)
!22 = !DILocation(line: 6, column: 5, scope: !7)
!23 = !DILocation(line: 8, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 13)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 5)
!26 = !DILocation(line: 8, column: 17, scope: !24)
!27 = !DILocation(line: 8, column: 16, scope: !24)
!28 = !DILocation(line: 8, column: 21, scope: !24)
!29 = !DILocation(line: 8, column: 24, scope: !24)
!30 = !DILocation(line: 8, column: 23, scope: !24)
!31 = !DILocation(line: 8, column: 19, scope: !24)
!32 = !DILocation(line: 8, column: 28, scope: !24)
!33 = !DILocation(line: 8, column: 31, scope: !24)
!34 = !DILocation(line: 8, column: 30, scope: !24)
!35 = !DILocation(line: 8, column: 35, scope: !24)
!36 = !DILocation(line: 8, column: 38, scope: !24)
!37 = !DILocation(line: 8, column: 37, scope: !24)
!38 = !DILocation(line: 8, column: 33, scope: !24)
!39 = !DILocation(line: 8, column: 26, scope: !24)
!40 = !DILocation(line: 8, column: 42, scope: !24)
!41 = !DILocation(line: 8, column: 44, scope: !24)
!42 = !DILocation(line: 8, column: 43, scope: !24)
!43 = !DILocation(line: 8, column: 40, scope: !24)
!44 = !DILocation(line: 8, column: 13, scope: !25)
!45 = !DILocation(line: 10, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 9)
!47 = !DILocation(line: 11, column: 9, scope: !46)
!48 = !DILocation(line: 12, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 18)
!50 = !DILocation(line: 12, column: 22, scope: !49)
!51 = !DILocation(line: 12, column: 21, scope: !49)
!52 = !DILocation(line: 12, column: 26, scope: !49)
!53 = !DILocation(line: 12, column: 29, scope: !49)
!54 = !DILocation(line: 12, column: 28, scope: !49)
!55 = !DILocation(line: 12, column: 24, scope: !49)
!56 = !DILocation(line: 12, column: 33, scope: !49)
!57 = !DILocation(line: 12, column: 36, scope: !49)
!58 = !DILocation(line: 12, column: 35, scope: !49)
!59 = !DILocation(line: 12, column: 40, scope: !49)
!60 = !DILocation(line: 12, column: 43, scope: !49)
!61 = !DILocation(line: 12, column: 42, scope: !49)
!62 = !DILocation(line: 12, column: 38, scope: !49)
!63 = !DILocation(line: 12, column: 31, scope: !49)
!64 = !DILocation(line: 12, column: 46, scope: !49)
!65 = !DILocation(line: 12, column: 48, scope: !49)
!66 = !DILocation(line: 12, column: 47, scope: !49)
!67 = !DILocation(line: 12, column: 45, scope: !49)
!68 = !DILocation(line: 12, column: 18, scope: !24)
!69 = !DILocation(line: 14, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !49, file: !1, line: 13, column: 9)
!71 = !DILocation(line: 15, column: 9, scope: !70)
!72 = !DILocation(line: 18, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !49, file: !1, line: 17, column: 9)
!74 = !DILocation(line: 21, column: 5, scope: !7)
