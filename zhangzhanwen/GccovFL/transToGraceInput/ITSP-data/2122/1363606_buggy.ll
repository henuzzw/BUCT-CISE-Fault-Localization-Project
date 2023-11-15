; ModuleID = 'gcov/../WA_c/1363606_buggy.c'
source_filename = "gcov/../WA_c/1363606_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(0,0)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(%d,%d)\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !367 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %3, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %4, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata i32* %5, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata double* %6, metadata !377, metadata !DIExpression()), !dbg !378
  br label %7, !dbg !379

; <label>:7:                                      ; preds = %75, %69, %54, %39, %13, %0
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3), !dbg !380
  %9 = icmp ne i32 %8, -1, !dbg !381
  br i1 %9, label %10, label %81, !dbg !379

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !382
  %12 = icmp eq i32 %11, 1, !dbg !385
  br i1 %12, label %13, label %15, !dbg !386

; <label>:13:                                     ; preds = %10
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)), !dbg !387
  br label %7, !dbg !389, !llvm.loop !390

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %3, align 4, !dbg !392
  %17 = sub nsw i32 %16, 1, !dbg !393
  %18 = call double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 %17), !dbg !394
  store double %18, double* %6, align 8, !dbg !395
  %19 = load double, double* %6, align 8, !dbg !396
  %20 = fadd double %19, 1.000000e+00, !dbg !397
  %21 = fdiv double %20, 2.000000e+00, !dbg !398
  %22 = fptosi double %21 to i32, !dbg !399
  store i32 %22, i32* %4, align 4, !dbg !400
  %23 = load i32, i32* %4, align 4, !dbg !401
  %24 = mul nsw i32 2, %23, !dbg !402
  %25 = add nsw i32 %24, 1, !dbg !403
  %26 = load i32, i32* %4, align 4, !dbg !404
  %27 = mul nsw i32 2, %26, !dbg !405
  %28 = add nsw i32 %27, 1, !dbg !406
  %29 = mul nsw i32 %25, %28, !dbg !407
  store i32 %29, i32* %2, align 4, !dbg !408
  %30 = load i32, i32* %2, align 4, !dbg !409
  %31 = load i32, i32* %3, align 4, !dbg !410
  %32 = sub nsw i32 %30, %31, !dbg !411
  store i32 %32, i32* %5, align 4, !dbg !412
  %33 = load i32, i32* %4, align 4, !dbg !413
  %34 = mul nsw i32 %33, 2, !dbg !414
  %35 = load i32, i32* %5, align 4, !dbg !415
  %36 = sub nsw i32 %35, %34, !dbg !415
  store i32 %36, i32* %5, align 4, !dbg !415
  %37 = load i32, i32* %5, align 4, !dbg !416
  %38 = icmp slt i32 %37, 0, !dbg !418
  br i1 %38, label %39, label %47, !dbg !419

; <label>:39:                                     ; preds = %15
  %40 = load i32, i32* %4, align 4, !dbg !420
  %41 = mul nsw i32 -1, %40, !dbg !422
  %42 = load i32, i32* %4, align 4, !dbg !423
  %43 = sub nsw i32 0, %42, !dbg !424
  %44 = load i32, i32* %5, align 4, !dbg !425
  %45 = sub nsw i32 %43, %44, !dbg !426
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %41, i32 %45), !dbg !427
  br label %7, !dbg !428, !llvm.loop !390

; <label>:47:                                     ; preds = %15
  %48 = load i32, i32* %4, align 4, !dbg !429
  %49 = mul nsw i32 %48, 2, !dbg !430
  %50 = load i32, i32* %5, align 4, !dbg !431
  %51 = sub nsw i32 %50, %49, !dbg !431
  store i32 %51, i32* %5, align 4, !dbg !431
  %52 = load i32, i32* %5, align 4, !dbg !432
  %53 = icmp slt i32 %52, 0, !dbg !434
  br i1 %53, label %54, label %61, !dbg !435

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %4, align 4, !dbg !436
  %56 = load i32, i32* %5, align 4, !dbg !438
  %57 = add nsw i32 %55, %56, !dbg !439
  %58 = load i32, i32* %4, align 4, !dbg !440
  %59 = mul nsw i32 -1, %58, !dbg !441
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %57, i32 %59), !dbg !442
  br label %7, !dbg !443, !llvm.loop !390

; <label>:61:                                     ; preds = %47
  %62 = load i32, i32* %4, align 4, !dbg !444
  %63 = mul nsw i32 %62, 2, !dbg !445
  %64 = add nsw i32 %63, 1, !dbg !446
  %65 = load i32, i32* %5, align 4, !dbg !447
  %66 = sub nsw i32 %65, %64, !dbg !447
  store i32 %66, i32* %5, align 4, !dbg !447
  %67 = load i32, i32* %5, align 4, !dbg !448
  %68 = icmp slt i32 %67, 0, !dbg !450
  br i1 %68, label %69, label %75, !dbg !451

; <label>:69:                                     ; preds = %61
  %70 = load i32, i32* %4, align 4, !dbg !452
  %71 = load i32, i32* %4, align 4, !dbg !454
  %72 = load i32, i32* %5, align 4, !dbg !455
  %73 = add nsw i32 %71, %72, !dbg !456
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %70, i32 %73), !dbg !457
  br label %7, !dbg !458, !llvm.loop !390

; <label>:75:                                     ; preds = %61
  %76 = load i32, i32* %4, align 4, !dbg !459
  %77 = load i32, i32* %5, align 4, !dbg !460
  %78 = sub nsw i32 %76, %77, !dbg !461
  %79 = load i32, i32* %4, align 4, !dbg !462
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %78, i32 %79), !dbg !463
  br label %7, !dbg !379, !llvm.loop !390

; <label>:81:                                     ; preds = %7
  ret i32 0, !dbg !464
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32) #3 comdat !dbg !465 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = load i32, i32* %2, align 4, !dbg !480
  %4 = sitofp i32 %3 to double, !dbg !480
  %5 = call double @sqrt(double %4) #5, !dbg !481
  ret double %5, !dbg !482
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!363, !364, !365}
!llvm.ident = !{!366}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !5)
!1 = !DIFile(filename: "gcov/../WA_c/1363606_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6, !13, !20, !22, !24, !28, !30, !32, !34, !36, !38, !40, !42, !47, !51, !53, !55, !60, !62, !64, !66, !68, !70, !72, !75, !78, !80, !84, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !113, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !151, !155, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !181, !185, !189, !191, !193, !195, !200, !204, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !237, !241, !245, !247, !249, !251, !258, !262, !266, !268, !270, !272, !274, !276, !278, !282, !286, !288, !290, !292, !294, !298, !302, !306, !308, !310, !312, !314, !316, !318, !322, !326, !330, !332, !336, !340, !342, !344, !346, !348, !350, !352, !358}
!6 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !8, file: !12, line: 52)
!7 = !DINamespace(name: "std", scope: null)
!8 = !DISubprogram(name: "abs", scope: !9, file: !9, line: 837, type: !10, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!9 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4}
!12 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!13 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !14, file: !19, line: 83)
!14 = !DISubprogram(name: "acos", scope: !15, file: !15, line: 53, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cmath", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!20 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !21, file: !19, line: 102)
!21 = !DISubprogram(name: "asin", scope: !15, file: !15, line: 55, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!22 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !23, file: !19, line: 121)
!23 = !DISubprogram(name: "atan", scope: !15, file: !15, line: 57, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !25, file: !19, line: 140)
!25 = !DISubprogram(name: "atan2", scope: !15, file: !15, line: 59, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!26 = !DISubroutineType(types: !27)
!27 = !{!18, !18, !18}
!28 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !29, file: !19, line: 161)
!29 = !DISubprogram(name: "ceil", scope: !15, file: !15, line: 159, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!30 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !31, file: !19, line: 180)
!31 = !DISubprogram(name: "cos", scope: !15, file: !15, line: 62, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !33, file: !19, line: 199)
!33 = !DISubprogram(name: "cosh", scope: !15, file: !15, line: 71, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !35, file: !19, line: 218)
!35 = !DISubprogram(name: "exp", scope: !15, file: !15, line: 95, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !37, file: !19, line: 237)
!37 = !DISubprogram(name: "fabs", scope: !15, file: !15, line: 162, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !39, file: !19, line: 256)
!39 = !DISubprogram(name: "floor", scope: !15, file: !15, line: 165, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!40 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !41, file: !19, line: 275)
!41 = !DISubprogram(name: "fmod", scope: !15, file: !15, line: 168, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !43, file: !19, line: 296)
!43 = !DISubprogram(name: "frexp", scope: !15, file: !15, line: 98, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DISubroutineType(types: !45)
!45 = !{!18, !18, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !48, file: !19, line: 315)
!48 = !DISubprogram(name: "ldexp", scope: !15, file: !15, line: 101, type: !49, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DISubroutineType(types: !50)
!50 = !{!18, !18, !4}
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !52, file: !19, line: 334)
!52 = !DISubprogram(name: "log", scope: !15, file: !15, line: 104, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !54, file: !19, line: 353)
!54 = !DISubprogram(name: "log10", scope: !15, file: !15, line: 107, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !56, file: !19, line: 372)
!56 = !DISubprogram(name: "modf", scope: !15, file: !15, line: 110, type: !57, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!57 = !DISubroutineType(types: !58)
!58 = !{!18, !18, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !61, file: !19, line: 384)
!61 = !DISubprogram(name: "pow", scope: !15, file: !15, line: 140, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !63, file: !19, line: 421)
!63 = !DISubprogram(name: "sin", scope: !15, file: !15, line: 64, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !65, file: !19, line: 440)
!65 = !DISubprogram(name: "sinh", scope: !15, file: !15, line: 73, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !67, file: !19, line: 459)
!67 = !DISubprogram(name: "sqrt", scope: !15, file: !15, line: 143, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !69, file: !19, line: 478)
!69 = !DISubprogram(name: "tan", scope: !15, file: !15, line: 66, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !71, file: !19, line: 497)
!71 = !DISubprogram(name: "tanh", scope: !15, file: !15, line: 75, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !73, file: !19, line: 1080)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !74, line: 150, baseType: !18)
!74 = !DIFile(filename: "/usr/include/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !76, file: !19, line: 1081)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !74, line: 149, baseType: !77)
!77 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !79, file: !19, line: 1084)
!79 = !DISubprogram(name: "acosh", scope: !15, file: !15, line: 85, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !81, file: !19, line: 1085)
!81 = !DISubprogram(name: "acoshf", scope: !15, file: !15, line: 85, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DISubroutineType(types: !83)
!83 = !{!77, !77}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !85, file: !19, line: 1086)
!85 = !DISubprogram(name: "acoshl", scope: !15, file: !15, line: 85, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !88}
!88 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !90, file: !19, line: 1088)
!90 = !DISubprogram(name: "asinh", scope: !15, file: !15, line: 87, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !92, file: !19, line: 1089)
!92 = !DISubprogram(name: "asinhf", scope: !15, file: !15, line: 87, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !94, file: !19, line: 1090)
!94 = !DISubprogram(name: "asinhl", scope: !15, file: !15, line: 87, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !96, file: !19, line: 1092)
!96 = !DISubprogram(name: "atanh", scope: !15, file: !15, line: 89, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !98, file: !19, line: 1093)
!98 = !DISubprogram(name: "atanhf", scope: !15, file: !15, line: 89, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !100, file: !19, line: 1094)
!100 = !DISubprogram(name: "atanhl", scope: !15, file: !15, line: 89, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !102, file: !19, line: 1096)
!102 = !DISubprogram(name: "cbrt", scope: !15, file: !15, line: 152, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !104, file: !19, line: 1097)
!104 = !DISubprogram(name: "cbrtf", scope: !15, file: !15, line: 152, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !106, file: !19, line: 1098)
!106 = !DISubprogram(name: "cbrtl", scope: !15, file: !15, line: 152, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !108, file: !19, line: 1100)
!108 = !DISubprogram(name: "copysign", scope: !15, file: !15, line: 196, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !110, file: !19, line: 1101)
!110 = !DISubprogram(name: "copysignf", scope: !15, file: !15, line: 196, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DISubroutineType(types: !112)
!112 = !{!77, !77, !77}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !114, file: !19, line: 1102)
!114 = !DISubprogram(name: "copysignl", scope: !15, file: !15, line: 196, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{!88, !88, !88}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !118, file: !19, line: 1104)
!118 = !DISubprogram(name: "erf", scope: !15, file: !15, line: 228, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !120, file: !19, line: 1105)
!120 = !DISubprogram(name: "erff", scope: !15, file: !15, line: 228, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !122, file: !19, line: 1106)
!122 = !DISubprogram(name: "erfl", scope: !15, file: !15, line: 228, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !124, file: !19, line: 1108)
!124 = !DISubprogram(name: "erfc", scope: !15, file: !15, line: 229, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !126, file: !19, line: 1109)
!126 = !DISubprogram(name: "erfcf", scope: !15, file: !15, line: 229, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !128, file: !19, line: 1110)
!128 = !DISubprogram(name: "erfcl", scope: !15, file: !15, line: 229, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !130, file: !19, line: 1112)
!130 = !DISubprogram(name: "exp2", scope: !15, file: !15, line: 130, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !132, file: !19, line: 1113)
!132 = !DISubprogram(name: "exp2f", scope: !15, file: !15, line: 130, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !134, file: !19, line: 1114)
!134 = !DISubprogram(name: "exp2l", scope: !15, file: !15, line: 130, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !136, file: !19, line: 1116)
!136 = !DISubprogram(name: "expm1", scope: !15, file: !15, line: 119, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !138, file: !19, line: 1117)
!138 = !DISubprogram(name: "expm1f", scope: !15, file: !15, line: 119, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !140, file: !19, line: 1118)
!140 = !DISubprogram(name: "expm1l", scope: !15, file: !15, line: 119, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !142, file: !19, line: 1120)
!142 = !DISubprogram(name: "fdim", scope: !15, file: !15, line: 326, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !144, file: !19, line: 1121)
!144 = !DISubprogram(name: "fdimf", scope: !15, file: !15, line: 326, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !146, file: !19, line: 1122)
!146 = !DISubprogram(name: "fdiml", scope: !15, file: !15, line: 326, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !148, file: !19, line: 1124)
!148 = !DISubprogram(name: "fma", scope: !15, file: !15, line: 335, type: !149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{!18, !18, !18, !18}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !152, file: !19, line: 1125)
!152 = !DISubprogram(name: "fmaf", scope: !15, file: !15, line: 335, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{!77, !77, !77, !77}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !156, file: !19, line: 1126)
!156 = !DISubprogram(name: "fmal", scope: !15, file: !15, line: 335, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!88, !88, !88, !88}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !160, file: !19, line: 1128)
!160 = !DISubprogram(name: "fmax", scope: !15, file: !15, line: 329, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !162, file: !19, line: 1129)
!162 = !DISubprogram(name: "fmaxf", scope: !15, file: !15, line: 329, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !164, file: !19, line: 1130)
!164 = !DISubprogram(name: "fmaxl", scope: !15, file: !15, line: 329, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !166, file: !19, line: 1132)
!166 = !DISubprogram(name: "fmin", scope: !15, file: !15, line: 332, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !168, file: !19, line: 1133)
!168 = !DISubprogram(name: "fminf", scope: !15, file: !15, line: 332, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !170, file: !19, line: 1134)
!170 = !DISubprogram(name: "fminl", scope: !15, file: !15, line: 332, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !172, file: !19, line: 1136)
!172 = !DISubprogram(name: "hypot", scope: !15, file: !15, line: 147, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !174, file: !19, line: 1137)
!174 = !DISubprogram(name: "hypotf", scope: !15, file: !15, line: 147, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !176, file: !19, line: 1138)
!176 = !DISubprogram(name: "hypotl", scope: !15, file: !15, line: 147, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !178, file: !19, line: 1140)
!178 = !DISubprogram(name: "ilogb", scope: !15, file: !15, line: 280, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!4, !18}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !182, file: !19, line: 1141)
!182 = !DISubprogram(name: "ilogbf", scope: !15, file: !15, line: 280, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!4, !77}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !186, file: !19, line: 1142)
!186 = !DISubprogram(name: "ilogbl", scope: !15, file: !15, line: 280, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!4, !88}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !190, file: !19, line: 1144)
!190 = !DISubprogram(name: "lgamma", scope: !15, file: !15, line: 230, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !192, file: !19, line: 1145)
!192 = !DISubprogram(name: "lgammaf", scope: !15, file: !15, line: 230, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !194, file: !19, line: 1146)
!194 = !DISubprogram(name: "lgammal", scope: !15, file: !15, line: 230, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !196, file: !19, line: 1149)
!196 = !DISubprogram(name: "llrint", scope: !15, file: !15, line: 316, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !18}
!199 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !201, file: !19, line: 1150)
!201 = !DISubprogram(name: "llrintf", scope: !15, file: !15, line: 316, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!199, !77}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !205, file: !19, line: 1151)
!205 = !DISubprogram(name: "llrintl", scope: !15, file: !15, line: 316, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!199, !88}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !209, file: !19, line: 1153)
!209 = !DISubprogram(name: "llround", scope: !15, file: !15, line: 322, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !211, file: !19, line: 1154)
!211 = !DISubprogram(name: "llroundf", scope: !15, file: !15, line: 322, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !213, file: !19, line: 1155)
!213 = !DISubprogram(name: "llroundl", scope: !15, file: !15, line: 322, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !215, file: !19, line: 1158)
!215 = !DISubprogram(name: "log1p", scope: !15, file: !15, line: 122, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !217, file: !19, line: 1159)
!217 = !DISubprogram(name: "log1pf", scope: !15, file: !15, line: 122, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !219, file: !19, line: 1160)
!219 = !DISubprogram(name: "log1pl", scope: !15, file: !15, line: 122, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !221, file: !19, line: 1162)
!221 = !DISubprogram(name: "log2", scope: !15, file: !15, line: 133, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !223, file: !19, line: 1163)
!223 = !DISubprogram(name: "log2f", scope: !15, file: !15, line: 133, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !225, file: !19, line: 1164)
!225 = !DISubprogram(name: "log2l", scope: !15, file: !15, line: 133, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !227, file: !19, line: 1166)
!227 = !DISubprogram(name: "logb", scope: !15, file: !15, line: 125, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !229, file: !19, line: 1167)
!229 = !DISubprogram(name: "logbf", scope: !15, file: !15, line: 125, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !231, file: !19, line: 1168)
!231 = !DISubprogram(name: "logbl", scope: !15, file: !15, line: 125, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !233, file: !19, line: 1170)
!233 = !DISubprogram(name: "lrint", scope: !15, file: !15, line: 314, type: !234, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !18}
!236 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !238, file: !19, line: 1171)
!238 = !DISubprogram(name: "lrintf", scope: !15, file: !15, line: 314, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!236, !77}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !242, file: !19, line: 1172)
!242 = !DISubprogram(name: "lrintl", scope: !15, file: !15, line: 314, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!236, !88}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !246, file: !19, line: 1174)
!246 = !DISubprogram(name: "lround", scope: !15, file: !15, line: 320, type: !234, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !248, file: !19, line: 1175)
!248 = !DISubprogram(name: "lroundf", scope: !15, file: !15, line: 320, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !250, file: !19, line: 1176)
!250 = !DISubprogram(name: "lroundl", scope: !15, file: !15, line: 320, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !252, file: !19, line: 1178)
!252 = !DISubprogram(name: "nan", scope: !15, file: !15, line: 201, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{!18, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !259, file: !19, line: 1179)
!259 = !DISubprogram(name: "nanf", scope: !15, file: !15, line: 201, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!77, !255}
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !263, file: !19, line: 1180)
!263 = !DISubprogram(name: "nanl", scope: !15, file: !15, line: 201, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!88, !255}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !267, file: !19, line: 1182)
!267 = !DISubprogram(name: "nearbyint", scope: !15, file: !15, line: 294, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !269, file: !19, line: 1183)
!269 = !DISubprogram(name: "nearbyintf", scope: !15, file: !15, line: 294, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !271, file: !19, line: 1184)
!271 = !DISubprogram(name: "nearbyintl", scope: !15, file: !15, line: 294, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !273, file: !19, line: 1186)
!273 = !DISubprogram(name: "nextafter", scope: !15, file: !15, line: 259, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !275, file: !19, line: 1187)
!275 = !DISubprogram(name: "nextafterf", scope: !15, file: !15, line: 259, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !277, file: !19, line: 1188)
!277 = !DISubprogram(name: "nextafterl", scope: !15, file: !15, line: 259, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !279, file: !19, line: 1190)
!279 = !DISubprogram(name: "nexttoward", scope: !15, file: !15, line: 261, type: !280, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DISubroutineType(types: !281)
!281 = !{!18, !18, !88}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !283, file: !19, line: 1191)
!283 = !DISubprogram(name: "nexttowardf", scope: !15, file: !15, line: 261, type: !284, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!77, !77, !88}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !287, file: !19, line: 1192)
!287 = !DISubprogram(name: "nexttowardl", scope: !15, file: !15, line: 261, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !289, file: !19, line: 1194)
!289 = !DISubprogram(name: "remainder", scope: !15, file: !15, line: 272, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !291, file: !19, line: 1195)
!291 = !DISubprogram(name: "remainderf", scope: !15, file: !15, line: 272, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !293, file: !19, line: 1196)
!293 = !DISubprogram(name: "remainderl", scope: !15, file: !15, line: 272, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !295, file: !19, line: 1198)
!295 = !DISubprogram(name: "remquo", scope: !15, file: !15, line: 307, type: !296, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DISubroutineType(types: !297)
!297 = !{!18, !18, !18, !46}
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !299, file: !19, line: 1199)
!299 = !DISubprogram(name: "remquof", scope: !15, file: !15, line: 307, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!77, !77, !77, !46}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !303, file: !19, line: 1200)
!303 = !DISubprogram(name: "remquol", scope: !15, file: !15, line: 307, type: !304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{!88, !88, !88, !46}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !307, file: !19, line: 1202)
!307 = !DISubprogram(name: "rint", scope: !15, file: !15, line: 256, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !309, file: !19, line: 1203)
!309 = !DISubprogram(name: "rintf", scope: !15, file: !15, line: 256, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !311, file: !19, line: 1204)
!311 = !DISubprogram(name: "rintl", scope: !15, file: !15, line: 256, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !313, file: !19, line: 1206)
!313 = !DISubprogram(name: "round", scope: !15, file: !15, line: 298, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !315, file: !19, line: 1207)
!315 = !DISubprogram(name: "roundf", scope: !15, file: !15, line: 298, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !317, file: !19, line: 1208)
!317 = !DISubprogram(name: "roundl", scope: !15, file: !15, line: 298, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !319, file: !19, line: 1210)
!319 = !DISubprogram(name: "scalbln", scope: !15, file: !15, line: 290, type: !320, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DISubroutineType(types: !321)
!321 = !{!18, !18, !236}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !323, file: !19, line: 1211)
!323 = !DISubprogram(name: "scalblnf", scope: !15, file: !15, line: 290, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!77, !77, !236}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !327, file: !19, line: 1212)
!327 = !DISubprogram(name: "scalblnl", scope: !15, file: !15, line: 290, type: !328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!88, !88, !236}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !331, file: !19, line: 1214)
!331 = !DISubprogram(name: "scalbn", scope: !15, file: !15, line: 276, type: !49, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !333, file: !19, line: 1215)
!333 = !DISubprogram(name: "scalbnf", scope: !15, file: !15, line: 276, type: !334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{!77, !77, !4}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !337, file: !19, line: 1216)
!337 = !DISubprogram(name: "scalbnl", scope: !15, file: !15, line: 276, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!88, !88, !4}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !341, file: !19, line: 1218)
!341 = !DISubprogram(name: "tgamma", scope: !15, file: !15, line: 235, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !343, file: !19, line: 1219)
!343 = !DISubprogram(name: "tgammaf", scope: !15, file: !15, line: 235, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !345, file: !19, line: 1220)
!345 = !DISubprogram(name: "tgammal", scope: !15, file: !15, line: 235, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !347, file: !19, line: 1222)
!347 = !DISubprogram(name: "trunc", scope: !15, file: !15, line: 302, type: !16, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !349, file: !19, line: 1223)
!349 = !DISubprogram(name: "truncf", scope: !15, file: !15, line: 302, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !351, file: !19, line: 1224)
!351 = !DISubprogram(name: "truncl", scope: !15, file: !15, line: 302, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !353, file: !357, line: 38)
!353 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !7, file: !12, line: 102, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !356}
!356 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!357 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !359, file: !357, line: 54)
!359 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !7, file: !19, line: 380, type: !360, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{!88, !88, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!363 = !{i32 2, !"Dwarf Version", i32 4}
!364 = !{i32 2, !"Debug Info Version", i32 3}
!365 = !{i32 1, !"wchar_size", i32 4}
!366 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!367 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !368, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!368 = !DISubroutineType(types: !3)
!369 = !DILocalVariable(name: "a", scope: !367, file: !1, line: 5, type: !4)
!370 = !DILocation(line: 5, column: 9, scope: !367)
!371 = !DILocalVariable(name: "n", scope: !367, file: !1, line: 5, type: !4)
!372 = !DILocation(line: 5, column: 12, scope: !367)
!373 = !DILocalVariable(name: "m", scope: !367, file: !1, line: 5, type: !4)
!374 = !DILocation(line: 5, column: 15, scope: !367)
!375 = !DILocalVariable(name: "k", scope: !367, file: !1, line: 5, type: !4)
!376 = !DILocation(line: 5, column: 18, scope: !367)
!377 = !DILocalVariable(name: "t", scope: !367, file: !1, line: 6, type: !18)
!378 = !DILocation(line: 6, column: 12, scope: !367)
!379 = !DILocation(line: 7, column: 5, scope: !367)
!380 = !DILocation(line: 7, column: 11, scope: !367)
!381 = !DILocation(line: 7, column: 27, scope: !367)
!382 = !DILocation(line: 9, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 9, column: 13)
!384 = distinct !DILexicalBlock(scope: !367, file: !1, line: 8, column: 5)
!385 = !DILocation(line: 9, column: 15, scope: !383)
!386 = !DILocation(line: 9, column: 13, scope: !384)
!387 = !DILocation(line: 11, column: 13, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !1, line: 10, column: 9)
!389 = !DILocation(line: 12, column: 13, scope: !388)
!390 = distinct !{!390, !379, !391}
!391 = !DILocation(line: 37, column: 5, scope: !367)
!392 = !DILocation(line: 14, column: 18, scope: !384)
!393 = !DILocation(line: 14, column: 20, scope: !384)
!394 = !DILocation(line: 14, column: 13, scope: !384)
!395 = !DILocation(line: 14, column: 11, scope: !384)
!396 = !DILocation(line: 15, column: 20, scope: !384)
!397 = !DILocation(line: 15, column: 22, scope: !384)
!398 = !DILocation(line: 15, column: 27, scope: !384)
!399 = !DILocation(line: 15, column: 18, scope: !384)
!400 = !DILocation(line: 15, column: 11, scope: !384)
!401 = !DILocation(line: 16, column: 18, scope: !384)
!402 = !DILocation(line: 16, column: 16, scope: !384)
!403 = !DILocation(line: 16, column: 20, scope: !384)
!404 = !DILocation(line: 16, column: 32, scope: !384)
!405 = !DILocation(line: 16, column: 30, scope: !384)
!406 = !DILocation(line: 16, column: 34, scope: !384)
!407 = !DILocation(line: 16, column: 25, scope: !384)
!408 = !DILocation(line: 16, column: 11, scope: !384)
!409 = !DILocation(line: 17, column: 13, scope: !384)
!410 = !DILocation(line: 17, column: 17, scope: !384)
!411 = !DILocation(line: 17, column: 15, scope: !384)
!412 = !DILocation(line: 17, column: 11, scope: !384)
!413 = !DILocation(line: 18, column: 14, scope: !384)
!414 = !DILocation(line: 18, column: 16, scope: !384)
!415 = !DILocation(line: 18, column: 11, scope: !384)
!416 = !DILocation(line: 19, column: 13, scope: !417)
!417 = distinct !DILexicalBlock(scope: !384, file: !1, line: 19, column: 13)
!418 = !DILocation(line: 19, column: 15, scope: !417)
!419 = !DILocation(line: 19, column: 13, scope: !384)
!420 = !DILocation(line: 21, column: 38, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !1, line: 20, column: 9)
!422 = !DILocation(line: 21, column: 36, scope: !421)
!423 = !DILocation(line: 21, column: 42, scope: !421)
!424 = !DILocation(line: 21, column: 41, scope: !421)
!425 = !DILocation(line: 21, column: 46, scope: !421)
!426 = !DILocation(line: 21, column: 44, scope: !421)
!427 = !DILocation(line: 21, column: 13, scope: !421)
!428 = !DILocation(line: 22, column: 13, scope: !421)
!429 = !DILocation(line: 24, column: 14, scope: !384)
!430 = !DILocation(line: 24, column: 16, scope: !384)
!431 = !DILocation(line: 24, column: 11, scope: !384)
!432 = !DILocation(line: 25, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !384, file: !1, line: 25, column: 13)
!434 = !DILocation(line: 25, column: 15, scope: !433)
!435 = !DILocation(line: 25, column: 13, scope: !384)
!436 = !DILocation(line: 27, column: 33, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !1, line: 26, column: 9)
!438 = !DILocation(line: 27, column: 37, scope: !437)
!439 = !DILocation(line: 27, column: 35, scope: !437)
!440 = !DILocation(line: 27, column: 45, scope: !437)
!441 = !DILocation(line: 27, column: 43, scope: !437)
!442 = !DILocation(line: 27, column: 13, scope: !437)
!443 = !DILocation(line: 28, column: 13, scope: !437)
!444 = !DILocation(line: 30, column: 14, scope: !384)
!445 = !DILocation(line: 30, column: 16, scope: !384)
!446 = !DILocation(line: 30, column: 20, scope: !384)
!447 = !DILocation(line: 30, column: 11, scope: !384)
!448 = !DILocation(line: 31, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !384, file: !1, line: 31, column: 13)
!450 = !DILocation(line: 31, column: 15, scope: !449)
!451 = !DILocation(line: 31, column: 13, scope: !384)
!452 = !DILocation(line: 33, column: 33, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 32, column: 9)
!454 = !DILocation(line: 33, column: 36, scope: !453)
!455 = !DILocation(line: 33, column: 40, scope: !453)
!456 = !DILocation(line: 33, column: 38, scope: !453)
!457 = !DILocation(line: 33, column: 13, scope: !453)
!458 = !DILocation(line: 34, column: 13, scope: !453)
!459 = !DILocation(line: 36, column: 29, scope: !384)
!460 = !DILocation(line: 36, column: 33, scope: !384)
!461 = !DILocation(line: 36, column: 31, scope: !384)
!462 = !DILocation(line: 36, column: 36, scope: !384)
!463 = !DILocation(line: 36, column: 9, scope: !384)
!464 = !DILocation(line: 38, column: 5, scope: !367)
!465 = distinct !DISubprogram(name: "sqrt<int>", linkageName: "_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_", scope: !7, file: !19, line: 475, type: !466, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !476, variables: !2)
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !4}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !470, file: !469, line: 50, baseType: !18)
!469 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ext/type_traits.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2122")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, double>", scope: !471, file: !469, line: 49, size: 8, elements: !2, templateParams: !472, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EdEE")
!471 = !DINamespace(name: "__gnu_cxx", scope: null)
!472 = !{!473, !475}
!473 = !DITemplateValueParameter(type: !474, value: i8 1)
!474 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!475 = !DITemplateTypeParameter(type: !18)
!476 = !{!477}
!477 = !DITemplateTypeParameter(name: "_Tp", type: !4)
!478 = !DILocalVariable(name: "__x", arg: 1, scope: !465, file: !19, line: 475, type: !4)
!479 = !DILocation(line: 475, column: 14, scope: !465)
!480 = !DILocation(line: 476, column: 29, scope: !465)
!481 = !DILocation(line: 476, column: 14, scope: !465)
!482 = !DILocation(line: 476, column: 7, scope: !465)
