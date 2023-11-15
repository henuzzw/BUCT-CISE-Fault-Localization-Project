; ModuleID = 'gcov/../WA_c/440467_buggy.c'
source_filename = "gcov/../WA_c/440467_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %3, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 1, i32* %4, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i8* %5, metadata !18, metadata !DIExpression()), !dbg !19
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %51, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %2), !dbg !21
  %8 = icmp ne i32 %7, -1, !dbg !22
  br i1 %8, label %9, label %53, !dbg !20

; <label>:9:                                      ; preds = %6
  %10 = load i8, i8* %2, align 1, !dbg !23
  store i8 %10, i8* %5, align 1, !dbg !25
  store i32 0, i32* %4, align 4, !dbg !26
  br label %11, !dbg !28

; <label>:11:                                     ; preds = %31, %9
  %12 = load i8, i8* %5, align 1, !dbg !29
  %13 = sext i8 %12 to i32, !dbg !29
  %14 = load i32, i32* %4, align 4, !dbg !31
  %15 = sub nsw i32 %13, %14, !dbg !32
  %16 = icmp sgt i32 %15, 65, !dbg !33
  br i1 %16, label %17, label %35, !dbg !34

; <label>:17:                                     ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !35
  br label %18, !dbg !38

; <label>:18:                                     ; preds = %28, %17
  %19 = load i32, i32* %3, align 4, !dbg !39
  %20 = load i32, i32* %4, align 4, !dbg !41
  %21 = icmp sle i32 %19, %20, !dbg !42
  br i1 %21, label %22, label %31, !dbg !43

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %5, align 1, !dbg !44
  %24 = sext i8 %23 to i32, !dbg !44
  %25 = load i32, i32* %3, align 4, !dbg !45
  %26 = sub nsw i32 %24, %25, !dbg !46
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %26), !dbg !47
  br label %28, !dbg !47

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %3, align 4, !dbg !48
  %30 = add nsw i32 %29, 1, !dbg !48
  store i32 %30, i32* %3, align 4, !dbg !48
  br label %18, !dbg !49, !llvm.loop !50

; <label>:31:                                     ; preds = %18
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !52
  %33 = load i32, i32* %4, align 4, !dbg !53
  %34 = add nsw i32 %33, 1, !dbg !53
  store i32 %34, i32* %4, align 4, !dbg !53
  br label %11, !dbg !54, !llvm.loop !55

; <label>:35:                                     ; preds = %11
  store i32 1, i32* %3, align 4, !dbg !57
  br label %36, !dbg !59

; <label>:36:                                     ; preds = %48, %35
  %37 = load i8, i8* %5, align 1, !dbg !60
  %38 = sext i8 %37 to i32, !dbg !60
  %39 = load i32, i32* %3, align 4, !dbg !62
  %40 = sub nsw i32 %38, %39, !dbg !63
  %41 = icmp sge i32 %40, 65, !dbg !64
  br i1 %41, label %42, label %51, !dbg !65

; <label>:42:                                     ; preds = %36
  %43 = load i8, i8* %5, align 1, !dbg !66
  %44 = sext i8 %43 to i32, !dbg !66
  %45 = load i32, i32* %3, align 4, !dbg !67
  %46 = sub nsw i32 %44, %45, !dbg !68
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %46), !dbg !69
  br label %48, !dbg !69

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %3, align 4, !dbg !70
  %50 = add nsw i32 %49, 1, !dbg !70
  store i32 %50, i32* %3, align 4, !dbg !70
  br label %36, !dbg !71, !llvm.loop !72

; <label>:51:                                     ; preds = %36
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)), !dbg !74
  br label %6, !dbg !20, !llvm.loop !75

; <label>:53:                                     ; preds = %6
  %54 = load i32, i32* %1, align 4, !dbg !77
  ret i32 %54, !dbg !77
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
!1 = !DIFile(filename: "gcov/../WA_c/440467_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1912")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 4, type: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 4, column: 10, scope: !7)
!14 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!15 = !DILocation(line: 5, column: 9, scope: !7)
!16 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 16, scope: !7)
!18 = !DILocalVariable(name: "o", scope: !7, file: !1, line: 6, type: !12)
!19 = !DILocation(line: 6, column: 10, scope: !7)
!20 = !DILocation(line: 7, column: 5, scope: !7)
!21 = !DILocation(line: 7, column: 11, scope: !7)
!22 = !DILocation(line: 7, column: 28, scope: !7)
!23 = !DILocation(line: 9, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 5)
!25 = !DILocation(line: 9, column: 11, scope: !24)
!26 = !DILocation(line: 10, column: 15, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 9)
!28 = !DILocation(line: 10, column: 13, scope: !27)
!29 = !DILocation(line: 10, column: 20, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 9)
!31 = !DILocation(line: 10, column: 24, scope: !30)
!32 = !DILocation(line: 10, column: 22, scope: !30)
!33 = !DILocation(line: 10, column: 26, scope: !30)
!34 = !DILocation(line: 10, column: 9, scope: !27)
!35 = !DILocation(line: 13, column: 19, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 13, column: 13)
!37 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 9)
!38 = !DILocation(line: 13, column: 17, scope: !36)
!39 = !DILocation(line: 13, column: 24, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 13, column: 13)
!41 = !DILocation(line: 13, column: 29, scope: !40)
!42 = !DILocation(line: 13, column: 26, scope: !40)
!43 = !DILocation(line: 13, column: 13, scope: !36)
!44 = !DILocation(line: 14, column: 30, scope: !40)
!45 = !DILocation(line: 14, column: 34, scope: !40)
!46 = !DILocation(line: 14, column: 32, scope: !40)
!47 = !DILocation(line: 14, column: 17, scope: !40)
!48 = !DILocation(line: 13, column: 33, scope: !40)
!49 = !DILocation(line: 13, column: 13, scope: !40)
!50 = distinct !{!50, !43, !51}
!51 = !DILocation(line: 14, column: 35, scope: !36)
!52 = !DILocation(line: 16, column: 13, scope: !37)
!53 = !DILocation(line: 17, column: 14, scope: !37)
!54 = !DILocation(line: 10, column: 9, scope: !30)
!55 = distinct !{!55, !34, !56}
!56 = !DILocation(line: 18, column: 9, scope: !27)
!57 = !DILocation(line: 19, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !24, file: !1, line: 19, column: 9)
!59 = !DILocation(line: 19, column: 13, scope: !58)
!60 = !DILocation(line: 19, column: 20, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 19, column: 9)
!62 = !DILocation(line: 19, column: 24, scope: !61)
!63 = !DILocation(line: 19, column: 22, scope: !61)
!64 = !DILocation(line: 19, column: 26, scope: !61)
!65 = !DILocation(line: 19, column: 9, scope: !58)
!66 = !DILocation(line: 20, column: 26, scope: !61)
!67 = !DILocation(line: 20, column: 30, scope: !61)
!68 = !DILocation(line: 20, column: 28, scope: !61)
!69 = !DILocation(line: 20, column: 13, scope: !61)
!70 = !DILocation(line: 19, column: 35, scope: !61)
!71 = !DILocation(line: 19, column: 9, scope: !61)
!72 = distinct !{!72, !65, !73}
!73 = !DILocation(line: 20, column: 31, scope: !58)
!74 = !DILocation(line: 21, column: 9, scope: !24)
!75 = distinct !{!75, !20, !76}
!76 = !DILocation(line: 22, column: 5, scope: !7)
!77 = !DILocation(line: 24, column: 1, scope: !7)
