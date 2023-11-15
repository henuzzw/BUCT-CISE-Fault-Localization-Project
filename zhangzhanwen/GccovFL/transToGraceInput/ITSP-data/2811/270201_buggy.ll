; ModuleID = 'gcov/../WA_c/270201_buggy.c'
source_filename = "gcov/../WA_c/270201_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%f%f%f%f\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(%.3f,%.3f)\00", align 1
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
  %8 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata float* %4, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %5, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata float* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata float* %7, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata float* %8, metadata !24, metadata !DIExpression()), !dbg !25
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5), !dbg !26
  %10 = load float, float* %4, align 4, !dbg !27
  %11 = load float, float* %3, align 4, !dbg !28
  %12 = fmul float %10, %11, !dbg !29
  %13 = load float, float* %2, align 4, !dbg !30
  %14 = load float, float* %5, align 4, !dbg !31
  %15 = fmul float %13, %14, !dbg !32
  %16 = fsub float %12, %15, !dbg !33
  store float %16, float* %6, align 4, !dbg !34
  %17 = load float, float* %6, align 4, !dbg !35
  %18 = fcmp une float %17, 0.000000e+00, !dbg !37
  br i1 %18, label %19, label %35, !dbg !38

; <label>:19:                                     ; preds = %0
  %20 = load float, float* %5, align 4, !dbg !39
  %21 = load float, float* %3, align 4, !dbg !41
  %22 = fsub float %20, %21, !dbg !42
  %23 = load float, float* %6, align 4, !dbg !43
  %24 = fdiv float %22, %23, !dbg !44
  store float %24, float* %7, align 4, !dbg !45
  %25 = load float, float* %2, align 4, !dbg !46
  %26 = load float, float* %4, align 4, !dbg !47
  %27 = fsub float %25, %26, !dbg !48
  %28 = load float, float* %6, align 4, !dbg !49
  %29 = fdiv float %27, %28, !dbg !50
  store float %29, float* %8, align 4, !dbg !51
  %30 = load float, float* %7, align 4, !dbg !52
  %31 = fpext float %30 to double, !dbg !52
  %32 = load float, float* %8, align 4, !dbg !53
  %33 = fpext float %32 to double, !dbg !53
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), double %31, double %33), !dbg !54
  br label %37, !dbg !55

; <label>:35:                                     ; preds = %0
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !56
  br label %37

; <label>:37:                                     ; preds = %35, %19
  ret i32 0, !dbg !58
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
!1 = !DIFile(filename: "gcov/../WA_c/270201_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2811")
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
!20 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 19, scope: !7)
!22 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 21, scope: !7)
!24 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 5, type: !12)
!25 = !DILocation(line: 5, column: 23, scope: !7)
!26 = !DILocation(line: 6, column: 5, scope: !7)
!27 = !DILocation(line: 7, column: 10, scope: !7)
!28 = !DILocation(line: 7, column: 12, scope: !7)
!29 = !DILocation(line: 7, column: 11, scope: !7)
!30 = !DILocation(line: 7, column: 16, scope: !7)
!31 = !DILocation(line: 7, column: 18, scope: !7)
!32 = !DILocation(line: 7, column: 17, scope: !7)
!33 = !DILocation(line: 7, column: 14, scope: !7)
!34 = !DILocation(line: 7, column: 7, scope: !7)
!35 = !DILocation(line: 8, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 9)
!37 = !DILocation(line: 8, column: 11, scope: !36)
!38 = !DILocation(line: 8, column: 9, scope: !7)
!39 = !DILocation(line: 10, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 9, column: 5)
!41 = !DILocation(line: 10, column: 16, scope: !40)
!42 = !DILocation(line: 10, column: 15, scope: !40)
!43 = !DILocation(line: 10, column: 19, scope: !40)
!44 = !DILocation(line: 10, column: 18, scope: !40)
!45 = !DILocation(line: 10, column: 11, scope: !40)
!46 = !DILocation(line: 11, column: 14, scope: !40)
!47 = !DILocation(line: 11, column: 16, scope: !40)
!48 = !DILocation(line: 11, column: 15, scope: !40)
!49 = !DILocation(line: 11, column: 19, scope: !40)
!50 = !DILocation(line: 11, column: 18, scope: !40)
!51 = !DILocation(line: 11, column: 11, scope: !40)
!52 = !DILocation(line: 12, column: 30, scope: !40)
!53 = !DILocation(line: 12, column: 32, scope: !40)
!54 = !DILocation(line: 12, column: 9, scope: !40)
!55 = !DILocation(line: 13, column: 5, scope: !40)
!56 = !DILocation(line: 16, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !36, file: !1, line: 15, column: 5)
!58 = !DILocation(line: 18, column: 5, scope: !7)
