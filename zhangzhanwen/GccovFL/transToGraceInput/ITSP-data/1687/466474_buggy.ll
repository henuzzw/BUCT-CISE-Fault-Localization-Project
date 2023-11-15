; ModuleID = 'gcov/../WA_c/466474_buggy.c'
source_filename = "gcov/../WA_c/466474_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %7, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %9, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %10, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %11, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %12, metadata !31, metadata !DIExpression()), !dbg !32
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %5), !dbg !33
  store i32 0, i32* %4, align 4, !dbg !34
  br label %14, !dbg !36

; <label>:14:                                     ; preds = %45, %0
  %15 = load i32, i32* %4, align 4, !dbg !37
  %16 = load i32, i32* %5, align 4, !dbg !39
  %17 = icmp slt i32 %15, %16, !dbg !40
  br i1 %17, label %18, label %48, !dbg !41

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32* %7, i32* %6), !dbg !42
  %20 = load i32, i32* %7, align 4, !dbg !44
  store i32 %20, i32* %2, align 4, !dbg !45
  %21 = load i32, i32* %6, align 4, !dbg !46
  store i32 %21, i32* %8, align 4, !dbg !47
  %22 = load i32, i32* %7, align 4, !dbg !48
  %23 = load i32, i32* %6, align 4, !dbg !49
  %24 = srem i32 %22, %23, !dbg !50
  %25 = sub nsw i32 %24, 1, !dbg !51
  store i32 %25, i32* %3, align 4, !dbg !52
  br label %26, !dbg !53

; <label>:26:                                     ; preds = %29, %18
  %27 = load i32, i32* %3, align 4, !dbg !54
  %28 = icmp ne i32 %27, 0, !dbg !55
  br i1 %28, label %29, label %35, !dbg !53

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %6, align 4, !dbg !56
  store i32 %30, i32* %7, align 4, !dbg !58
  %31 = load i32, i32* %3, align 4, !dbg !59
  store i32 %31, i32* %6, align 4, !dbg !60
  %32 = load i32, i32* %7, align 4, !dbg !61
  %33 = load i32, i32* %6, align 4, !dbg !62
  %34 = srem i32 %32, %33, !dbg !63
  store i32 %34, i32* %3, align 4, !dbg !64
  br label %26, !dbg !53, !llvm.loop !65

; <label>:35:                                     ; preds = %26
  %36 = load i32, i32* %2, align 4, !dbg !67
  %37 = load i32, i32* %6, align 4, !dbg !68
  %38 = sdiv i32 %36, %37, !dbg !69
  %39 = load i32, i32* %8, align 4, !dbg !70
  %40 = load i32, i32* %6, align 4, !dbg !71
  %41 = sdiv i32 %39, %40, !dbg !72
  %42 = add nsw i32 %38, %41, !dbg !73
  store i32 %42, i32* %12, align 4, !dbg !74
  %43 = load i32, i32* %12, align 4, !dbg !75
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %43), !dbg !76
  br label %45, !dbg !77

; <label>:45:                                     ; preds = %35
  %46 = load i32, i32* %4, align 4, !dbg !78
  %47 = add nsw i32 %46, 1, !dbg !78
  store i32 %47, i32* %4, align 4, !dbg !78
  br label %14, !dbg !79, !llvm.loop !80

; <label>:48:                                     ; preds = %14
  %49 = load i32, i32* %1, align 4, !dbg !82
  ret i32 %49, !dbg !82
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
!1 = !DIFile(filename: "gcov/../WA_c/466474_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "l", scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 9, scope: !7)
!13 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 12, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 15, scope: !7)
!17 = !DILocalVariable(name: "K", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 18, scope: !7)
!19 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 4, type: !10)
!20 = !DILocation(line: 4, column: 21, scope: !7)
!21 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 4, type: !10)
!22 = !DILocation(line: 4, column: 24, scope: !7)
!23 = !DILocalVariable(name: "e", scope: !7, file: !1, line: 4, type: !10)
!24 = !DILocation(line: 4, column: 27, scope: !7)
!25 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 4, type: !10)
!26 = !DILocation(line: 4, column: 30, scope: !7)
!27 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 4, type: !10)
!28 = !DILocation(line: 4, column: 33, scope: !7)
!29 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 4, type: !10)
!30 = !DILocation(line: 4, column: 36, scope: !7)
!31 = !DILocalVariable(name: "re", scope: !7, file: !1, line: 4, type: !10)
!32 = !DILocation(line: 4, column: 39, scope: !7)
!33 = !DILocation(line: 5, column: 5, scope: !7)
!34 = !DILocation(line: 6, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!36 = !DILocation(line: 6, column: 9, scope: !35)
!37 = !DILocation(line: 6, column: 16, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 6, column: 5)
!39 = !DILocation(line: 6, column: 20, scope: !38)
!40 = !DILocation(line: 6, column: 18, scope: !38)
!41 = !DILocation(line: 6, column: 5, scope: !35)
!42 = !DILocation(line: 8, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 7, column: 5)
!44 = !DILocation(line: 9, column: 13, scope: !43)
!45 = !DILocation(line: 9, column: 11, scope: !43)
!46 = !DILocation(line: 9, column: 20, scope: !43)
!47 = !DILocation(line: 9, column: 18, scope: !43)
!48 = !DILocation(line: 10, column: 13, scope: !43)
!49 = !DILocation(line: 10, column: 17, scope: !43)
!50 = !DILocation(line: 10, column: 15, scope: !43)
!51 = !DILocation(line: 10, column: 19, scope: !43)
!52 = !DILocation(line: 10, column: 11, scope: !43)
!53 = !DILocation(line: 11, column: 9, scope: !43)
!54 = !DILocation(line: 11, column: 15, scope: !43)
!55 = !DILocation(line: 11, column: 17, scope: !43)
!56 = !DILocation(line: 13, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !43, file: !1, line: 12, column: 9)
!58 = !DILocation(line: 13, column: 15, scope: !57)
!59 = !DILocation(line: 14, column: 17, scope: !57)
!60 = !DILocation(line: 14, column: 15, scope: !57)
!61 = !DILocation(line: 15, column: 17, scope: !57)
!62 = !DILocation(line: 15, column: 21, scope: !57)
!63 = !DILocation(line: 15, column: 19, scope: !57)
!64 = !DILocation(line: 15, column: 15, scope: !57)
!65 = distinct !{!65, !53, !66}
!66 = !DILocation(line: 16, column: 9, scope: !43)
!67 = !DILocation(line: 17, column: 14, scope: !43)
!68 = !DILocation(line: 17, column: 18, scope: !43)
!69 = !DILocation(line: 17, column: 16, scope: !43)
!70 = !DILocation(line: 17, column: 22, scope: !43)
!71 = !DILocation(line: 17, column: 26, scope: !43)
!72 = !DILocation(line: 17, column: 24, scope: !43)
!73 = !DILocation(line: 17, column: 20, scope: !43)
!74 = !DILocation(line: 17, column: 12, scope: !43)
!75 = !DILocation(line: 18, column: 24, scope: !43)
!76 = !DILocation(line: 18, column: 9, scope: !43)
!77 = !DILocation(line: 19, column: 5, scope: !43)
!78 = !DILocation(line: 6, column: 24, scope: !38)
!79 = !DILocation(line: 6, column: 5, scope: !38)
!80 = distinct !{!80, !41, !81}
!81 = !DILocation(line: 19, column: 5, scope: !35)
!82 = !DILocation(line: 20, column: 1, scope: !7)
