; ModuleID = 'gcov/../WA_c/271152_buggy.c'
source_filename = "gcov/../WA_c/271152_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%f%f%f%f%f\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Point is inside the Circle.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Point is outside the Circle.\00", align 1

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
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5, float* %6), !dbg !22
  %8 = load float, float* %5, align 4, !dbg !23
  %9 = load float, float* %2, align 4, !dbg !25
  %10 = fsub float %8, %9, !dbg !26
  %11 = load float, float* %5, align 4, !dbg !27
  %12 = load float, float* %2, align 4, !dbg !28
  %13 = fsub float %11, %12, !dbg !29
  %14 = fmul float %10, %13, !dbg !30
  %15 = load float, float* %6, align 4, !dbg !31
  %16 = load float, float* %3, align 4, !dbg !32
  %17 = fsub float %15, %16, !dbg !33
  %18 = load float, float* %6, align 4, !dbg !34
  %19 = load float, float* %3, align 4, !dbg !35
  %20 = fsub float %18, %19, !dbg !36
  %21 = fmul float %17, %20, !dbg !37
  %22 = fadd float %14, %21, !dbg !38
  %23 = load float, float* %4, align 4, !dbg !39
  %24 = load float, float* %4, align 4, !dbg !40
  %25 = fmul float %23, %24, !dbg !41
  %26 = fsub float %22, %25, !dbg !42
  %27 = fcmp olt float %26, 0.000000e+00, !dbg !43
  br i1 %27, label %28, label %30, !dbg !44

; <label>:28:                                     ; preds = %0
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)), !dbg !45
  br label %32, !dbg !47

; <label>:30:                                     ; preds = %0
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !48
  br label %32

; <label>:32:                                     ; preds = %30, %28
  ret i32 0, !dbg !50
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
!1 = !DIFile(filename: "gcov/../WA_c/271152_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
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
!16 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 15, scope: !7)
!18 = !DILocalVariable(name: "x1", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 17, scope: !7)
!20 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 20, scope: !7)
!22 = !DILocation(line: 6, column: 5, scope: !7)
!23 = !DILocation(line: 7, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!25 = !DILocation(line: 7, column: 12, scope: !24)
!26 = !DILocation(line: 7, column: 11, scope: !24)
!27 = !DILocation(line: 7, column: 16, scope: !24)
!28 = !DILocation(line: 7, column: 19, scope: !24)
!29 = !DILocation(line: 7, column: 18, scope: !24)
!30 = !DILocation(line: 7, column: 14, scope: !24)
!31 = !DILocation(line: 7, column: 23, scope: !24)
!32 = !DILocation(line: 7, column: 26, scope: !24)
!33 = !DILocation(line: 7, column: 25, scope: !24)
!34 = !DILocation(line: 7, column: 30, scope: !24)
!35 = !DILocation(line: 7, column: 33, scope: !24)
!36 = !DILocation(line: 7, column: 32, scope: !24)
!37 = !DILocation(line: 7, column: 28, scope: !24)
!38 = !DILocation(line: 7, column: 21, scope: !24)
!39 = !DILocation(line: 7, column: 36, scope: !24)
!40 = !DILocation(line: 7, column: 38, scope: !24)
!41 = !DILocation(line: 7, column: 37, scope: !24)
!42 = !DILocation(line: 7, column: 35, scope: !24)
!43 = !DILocation(line: 7, column: 39, scope: !24)
!44 = !DILocation(line: 7, column: 8, scope: !7)
!45 = !DILocation(line: 9, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 5)
!47 = !DILocation(line: 10, column: 5, scope: !46)
!48 = !DILocation(line: 14, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !24, file: !1, line: 13, column: 5)
!50 = !DILocation(line: 16, column: 5, scope: !7)
