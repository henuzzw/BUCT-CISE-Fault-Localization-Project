; ModuleID = 'gcov/../WA_c/270048_buggy.c'
source_filename = "gcov/../WA_c/270048_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata float* %3, metadata !14, metadata !DIExpression()), !dbg !15
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), float* %2, float* %3), !dbg !16
  call void @llvm.dbg.declare(metadata float* %4, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load float, float* %2, align 4, !dbg !19
  %7 = fpext float %6 to double, !dbg !19
  %8 = fmul double 5.000000e-01, %7, !dbg !20
  %9 = load float, float* %3, align 4, !dbg !21
  %10 = fpext float %9 to double, !dbg !21
  %11 = fmul double %8, %10, !dbg !22
  %12 = fptrunc double %11 to float, !dbg !23
  store float %12, float* %4, align 4, !dbg !18
  %13 = load float, float* %2, align 4, !dbg !24
  %14 = fpext float %13 to double, !dbg !24
  %15 = load float, float* %3, align 4, !dbg !25
  %16 = fpext float %15 to double, !dbg !25
  %17 = load float, float* %2, align 4, !dbg !26
  %18 = fpext float %17 to double, !dbg !26
  %19 = load float, float* %3, align 4, !dbg !27
  %20 = fpext float %19 to double, !dbg !27
  %21 = load float, float* %4, align 4, !dbg !28
  %22 = fpext float %21 to double, !dbg !28
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), double %14, double %16, double %18, double %20, double %22), !dbg !29
  ret i32 0, !dbg !30
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
!1 = !DIFile(filename: "gcov/../WA_c/270048_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2810")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 8, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 8, column: 11, scope: !7)
!14 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 8, type: !12)
!15 = !DILocation(line: 8, column: 13, scope: !7)
!16 = !DILocation(line: 10, column: 5, scope: !7)
!17 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 12, type: !12)
!18 = !DILocation(line: 12, column: 11, scope: !7)
!19 = !DILocation(line: 12, column: 17, scope: !7)
!20 = !DILocation(line: 12, column: 16, scope: !7)
!21 = !DILocation(line: 12, column: 19, scope: !7)
!22 = !DILocation(line: 12, column: 18, scope: !7)
!23 = !DILocation(line: 12, column: 13, scope: !7)
!24 = !DILocation(line: 14, column: 70, scope: !7)
!25 = !DILocation(line: 14, column: 72, scope: !7)
!26 = !DILocation(line: 14, column: 74, scope: !7)
!27 = !DILocation(line: 14, column: 76, scope: !7)
!28 = !DILocation(line: 14, column: 78, scope: !7)
!29 = !DILocation(line: 14, column: 5, scope: !7)
!30 = !DILocation(line: 17, column: 5, scope: !7)
