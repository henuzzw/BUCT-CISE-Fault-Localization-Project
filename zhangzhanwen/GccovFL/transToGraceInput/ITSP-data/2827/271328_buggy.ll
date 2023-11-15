; ModuleID = 'gcov/../WA_c/271328_buggy.c'
source_filename = "gcov/../WA_c/271328_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"All the points are on same line\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"All the points are not on same line\00", align 1

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
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %2), !dbg !28
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %5), !dbg !29
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %3), !dbg !30
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %6), !dbg !31
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %4), !dbg !32
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %7), !dbg !33
  %16 = load float, float* %6, align 4, !dbg !34
  %17 = load float, float* %5, align 4, !dbg !35
  %18 = fsub float %16, %17, !dbg !36
  %19 = load float, float* %3, align 4, !dbg !37
  %20 = load float, float* %2, align 4, !dbg !38
  %21 = fsub float %19, %20, !dbg !39
  %22 = fdiv float %18, %21, !dbg !40
  store float %22, float* %8, align 4, !dbg !41
  %23 = load float, float* %7, align 4, !dbg !42
  %24 = load float, float* %6, align 4, !dbg !43
  %25 = fsub float %23, %24, !dbg !44
  %26 = load float, float* %4, align 4, !dbg !45
  %27 = load float, float* %3, align 4, !dbg !46
  %28 = fsub float %26, %27, !dbg !47
  %29 = fdiv float %25, %28, !dbg !48
  store float %29, float* %9, align 4, !dbg !49
  %30 = load float, float* %8, align 4, !dbg !50
  %31 = load float, float* %9, align 4, !dbg !52
  %32 = fcmp oeq float %30, %31, !dbg !53
  br i1 %32, label %33, label %35, !dbg !54

; <label>:33:                                     ; preds = %0
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)), !dbg !55
  br label %37, !dbg !57

; <label>:35:                                     ; preds = %0
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)), !dbg !58
  br label %37

; <label>:37:                                     ; preds = %35, %33
  ret i32 0, !dbg !60
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
!1 = !DIFile(filename: "gcov/../WA_c/271328_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2827")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x1", scope: !7, file: !1, line: 5, type: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DILocation(line: 5, column: 11, scope: !7)
!14 = !DILocalVariable(name: "x2", scope: !7, file: !1, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 14, scope: !7)
!16 = !DILocalVariable(name: "x3", scope: !7, file: !1, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 17, scope: !7)
!18 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 20, scope: !7)
!20 = !DILocalVariable(name: "y2", scope: !7, file: !1, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 23, scope: !7)
!22 = !DILocalVariable(name: "y3", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 26, scope: !7)
!24 = !DILocalVariable(name: "m1", scope: !7, file: !1, line: 5, type: !12)
!25 = !DILocation(line: 5, column: 29, scope: !7)
!26 = !DILocalVariable(name: "m2", scope: !7, file: !1, line: 5, type: !12)
!27 = !DILocation(line: 5, column: 32, scope: !7)
!28 = !DILocation(line: 7, column: 5, scope: !7)
!29 = !DILocation(line: 8, column: 5, scope: !7)
!30 = !DILocation(line: 9, column: 5, scope: !7)
!31 = !DILocation(line: 10, column: 5, scope: !7)
!32 = !DILocation(line: 11, column: 5, scope: !7)
!33 = !DILocation(line: 12, column: 5, scope: !7)
!34 = !DILocation(line: 13, column: 10, scope: !7)
!35 = !DILocation(line: 13, column: 13, scope: !7)
!36 = !DILocation(line: 13, column: 12, scope: !7)
!37 = !DILocation(line: 13, column: 18, scope: !7)
!38 = !DILocation(line: 13, column: 21, scope: !7)
!39 = !DILocation(line: 13, column: 20, scope: !7)
!40 = !DILocation(line: 13, column: 16, scope: !7)
!41 = !DILocation(line: 13, column: 7, scope: !7)
!42 = !DILocation(line: 14, column: 10, scope: !7)
!43 = !DILocation(line: 14, column: 13, scope: !7)
!44 = !DILocation(line: 14, column: 12, scope: !7)
!45 = !DILocation(line: 14, column: 18, scope: !7)
!46 = !DILocation(line: 14, column: 21, scope: !7)
!47 = !DILocation(line: 14, column: 20, scope: !7)
!48 = !DILocation(line: 14, column: 16, scope: !7)
!49 = !DILocation(line: 14, column: 7, scope: !7)
!50 = !DILocation(line: 15, column: 8, scope: !51)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 8)
!52 = !DILocation(line: 15, column: 12, scope: !51)
!53 = !DILocation(line: 15, column: 10, scope: !51)
!54 = !DILocation(line: 15, column: 8, scope: !7)
!55 = !DILocation(line: 17, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 16, column: 5)
!57 = !DILocation(line: 18, column: 5, scope: !56)
!58 = !DILocation(line: 21, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !1, line: 20, column: 5)
!60 = !DILocation(line: 23, column: 5, scope: !7)
