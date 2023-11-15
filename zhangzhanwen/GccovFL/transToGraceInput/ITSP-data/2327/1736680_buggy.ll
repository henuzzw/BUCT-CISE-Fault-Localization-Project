; ModuleID = 'gcov/../WA_c/1736680_buggy.c'
source_filename = "gcov/../WA_c/1736680_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Y\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"N\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !381 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata double* %3, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %4, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %5, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %6, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %7, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %8, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %9, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %10, metadata !400, metadata !DIExpression()), !dbg !401
  br label %11, !dbg !402

; <label>:11:                                     ; preds = %73, %0
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !403
  %13 = xor i32 %12, -1, !dbg !404
  %14 = icmp ne i32 %13, 0, !dbg !404
  br i1 %14, label %15, label %74, !dbg !402

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %2, align 4, !dbg !405
  %17 = srem i32 %16, 10, !dbg !407
  store i32 %17, i32* %4, align 4, !dbg !408
  %18 = load i32, i32* %2, align 4, !dbg !409
  %19 = sdiv i32 %18, 10, !dbg !410
  %20 = srem i32 %19, 10, !dbg !411
  store i32 %20, i32* %5, align 4, !dbg !412
  %21 = load i32, i32* %2, align 4, !dbg !413
  %22 = sdiv i32 %21, 100, !dbg !414
  %23 = srem i32 %22, 10, !dbg !415
  store i32 %23, i32* %6, align 4, !dbg !416
  %24 = load i32, i32* %2, align 4, !dbg !417
  %25 = sdiv i32 %24, 1000, !dbg !418
  %26 = srem i32 %25, 10, !dbg !419
  store i32 %26, i32* %7, align 4, !dbg !420
  %27 = load i32, i32* %2, align 4, !dbg !421
  %28 = sdiv i32 %27, 10000, !dbg !422
  %29 = srem i32 %28, 10, !dbg !423
  store i32 %29, i32* %8, align 4, !dbg !424
  %30 = load i32, i32* %2, align 4, !dbg !425
  %31 = sdiv i32 %30, 100000, !dbg !426
  %32 = srem i32 %31, 10, !dbg !427
  store i32 %32, i32* %9, align 4, !dbg !428
  %33 = load i32, i32* %2, align 4, !dbg !429
  %34 = sdiv i32 %33, 1000000, !dbg !430
  %35 = srem i32 %34, 10, !dbg !431
  store i32 %35, i32* %10, align 4, !dbg !432
  %36 = load i32, i32* %4, align 4, !dbg !433
  %37 = sitofp i32 %36 to double, !dbg !433
  %38 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %37, i32 7), !dbg !434
  %39 = load i32, i32* %5, align 4, !dbg !435
  %40 = sitofp i32 %39 to double, !dbg !435
  %41 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %40, i32 7), !dbg !436
  %42 = fadd double %38, %41, !dbg !437
  %43 = load i32, i32* %6, align 4, !dbg !438
  %44 = sitofp i32 %43 to double, !dbg !438
  %45 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %44, i32 7), !dbg !439
  %46 = fadd double %42, %45, !dbg !440
  %47 = load i32, i32* %7, align 4, !dbg !441
  %48 = sitofp i32 %47 to double, !dbg !441
  %49 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %48, i32 7), !dbg !442
  %50 = fadd double %46, %49, !dbg !443
  %51 = load i32, i32* %8, align 4, !dbg !444
  %52 = sitofp i32 %51 to double, !dbg !444
  %53 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %52, i32 7), !dbg !445
  %54 = fadd double %50, %53, !dbg !446
  %55 = load i32, i32* %9, align 4, !dbg !447
  %56 = sitofp i32 %55 to double, !dbg !447
  %57 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %56, i32 7), !dbg !448
  %58 = fadd double %54, %57, !dbg !449
  %59 = load i32, i32* %10, align 4, !dbg !450
  %60 = sitofp i32 %59 to double, !dbg !450
  %61 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %60, i32 7), !dbg !451
  %62 = fadd double %58, %61, !dbg !452
  store double %62, double* %3, align 8, !dbg !453
  %63 = load double, double* %3, align 8, !dbg !454
  %64 = fadd double %63, 1.000000e+00, !dbg !454
  store double %64, double* %3, align 8, !dbg !454
  %65 = load double, double* %3, align 8, !dbg !455
  %66 = load i32, i32* %2, align 4, !dbg !457
  %67 = sitofp i32 %66 to double, !dbg !457
  %68 = fcmp oeq double %65, %67, !dbg !458
  br i1 %68, label %69, label %71, !dbg !459

; <label>:69:                                     ; preds = %15
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !460
  store double 0.000000e+00, double* %3, align 8, !dbg !462
  br label %73, !dbg !463

; <label>:71:                                     ; preds = %15
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !464
  store double 0.000000e+00, double* %3, align 8, !dbg !466
  br label %73

; <label>:73:                                     ; preds = %71, %69
  br label %11, !dbg !402, !llvm.loop !467

; <label>:74:                                     ; preds = %11
  ret i32 0, !dbg !469
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double, i32) #3 comdat !dbg !7 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !470, metadata !DIExpression()), !dbg !471
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !472, metadata !DIExpression()), !dbg !473
  %5 = load double, double* %3, align 8, !dbg !474
  %6 = load i32, i32* %4, align 4, !dbg !475
  %7 = sitofp i32 %6 to double, !dbg !475
  %8 = call double @pow(double %5, double %7) #5, !dbg !476
  ret double %8, !dbg !477
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @pow(double, double) #4

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!377, !378, !379}
!llvm.ident = !{!380}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !22)
!1 = !DIFile(filename: "gcov/../WA_c/1736680_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !7, file: !6, line: 417, baseType: !11)
!6 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cmath", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!7 = distinct !DISubprogram(name: "pow<double, int>", linkageName: "_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_", scope: !8, file: !6, line: 415, type: !9, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !21, variables: !2)
!8 = !DINamespace(name: "std", scope: null)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !4, !18}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !13, file: !12, line: 195, baseType: !4)
!12 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ext/type_traits.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__promote_2<double, int, double, double>", scope: !14, file: !12, line: 193, size: 8, elements: !2, templateParams: !15, identifier: "_ZTSN9__gnu_cxx11__promote_2IdiddEE")
!14 = !DINamespace(name: "__gnu_cxx", scope: null)
!15 = !{!16, !17, !19, !20}
!16 = !DITemplateTypeParameter(name: "_Tp", type: !4)
!17 = !DITemplateTypeParameter(name: "_Up", type: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DITemplateTypeParameter(name: "_Tp2", type: !4)
!20 = !DITemplateTypeParameter(name: "_Up2", type: !4)
!21 = !{!16, !17}
!22 = !{!23, !29, !34, !36, !38, !42, !44, !46, !48, !50, !52, !54, !56, !61, !65, !67, !69, !74, !76, !78, !80, !82, !84, !86, !89, !92, !94, !98, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !127, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !165, !169, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !195, !199, !203, !205, !207, !209, !214, !218, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !251, !255, !259, !261, !263, !265, !272, !276, !280, !282, !284, !286, !288, !290, !292, !296, !300, !302, !304, !306, !308, !312, !316, !320, !322, !324, !326, !328, !330, !332, !336, !340, !344, !346, !350, !354, !356, !358, !360, !362, !364, !366, !372}
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !24, file: !28, line: 52)
!24 = !DISubprogram(name: "abs", scope: !25, file: !25, line: 837, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!26 = !DISubroutineType(types: !27)
!27 = !{!18, !18}
!28 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !30, file: !6, line: 83)
!30 = !DISubprogram(name: "acos", scope: !31, file: !31, line: 53, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!32 = !DISubroutineType(types: !33)
!33 = !{!4, !4}
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !35, file: !6, line: 102)
!35 = !DISubprogram(name: "asin", scope: !31, file: !31, line: 55, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !37, file: !6, line: 121)
!37 = !DISubprogram(name: "atan", scope: !31, file: !31, line: 57, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !39, file: !6, line: 140)
!39 = !DISubprogram(name: "atan2", scope: !31, file: !31, line: 59, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!40 = !DISubroutineType(types: !41)
!41 = !{!4, !4, !4}
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !43, file: !6, line: 161)
!43 = !DISubprogram(name: "ceil", scope: !31, file: !31, line: 159, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !45, file: !6, line: 180)
!45 = !DISubprogram(name: "cos", scope: !31, file: !31, line: 62, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !47, file: !6, line: 199)
!47 = !DISubprogram(name: "cosh", scope: !31, file: !31, line: 71, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !49, file: !6, line: 218)
!49 = !DISubprogram(name: "exp", scope: !31, file: !31, line: 95, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !51, file: !6, line: 237)
!51 = !DISubprogram(name: "fabs", scope: !31, file: !31, line: 162, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !53, file: !6, line: 256)
!53 = !DISubprogram(name: "floor", scope: !31, file: !31, line: 165, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !55, file: !6, line: 275)
!55 = !DISubprogram(name: "fmod", scope: !31, file: !31, line: 168, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !57, file: !6, line: 296)
!57 = !DISubprogram(name: "frexp", scope: !31, file: !31, line: 98, type: !58, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DISubroutineType(types: !59)
!59 = !{!4, !4, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !62, file: !6, line: 315)
!62 = !DISubprogram(name: "ldexp", scope: !31, file: !31, line: 101, type: !63, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DISubroutineType(types: !64)
!64 = !{!4, !4, !18}
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !66, file: !6, line: 334)
!66 = !DISubprogram(name: "log", scope: !31, file: !31, line: 104, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !68, file: !6, line: 353)
!68 = !DISubprogram(name: "log10", scope: !31, file: !31, line: 107, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !70, file: !6, line: 372)
!70 = !DISubprogram(name: "modf", scope: !31, file: !31, line: 110, type: !71, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DISubroutineType(types: !72)
!72 = !{!4, !4, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, file: !6, line: 384)
!75 = !DISubprogram(name: "pow", scope: !31, file: !31, line: 140, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !77, file: !6, line: 421)
!77 = !DISubprogram(name: "sin", scope: !31, file: !31, line: 64, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !79, file: !6, line: 440)
!79 = !DISubprogram(name: "sinh", scope: !31, file: !31, line: 73, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !81, file: !6, line: 459)
!81 = !DISubprogram(name: "sqrt", scope: !31, file: !31, line: 143, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !83, file: !6, line: 478)
!83 = !DISubprogram(name: "tan", scope: !31, file: !31, line: 66, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !85, file: !6, line: 497)
!85 = !DISubprogram(name: "tanh", scope: !31, file: !31, line: 75, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !87, file: !6, line: 1080)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !88, line: 150, baseType: !4)
!88 = !DIFile(filename: "/usr/include/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !90, file: !6, line: 1081)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !88, line: 149, baseType: !91)
!91 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !93, file: !6, line: 1084)
!93 = !DISubprogram(name: "acosh", scope: !31, file: !31, line: 85, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !95, file: !6, line: 1085)
!95 = !DISubprogram(name: "acoshf", scope: !31, file: !31, line: 85, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!96 = !DISubroutineType(types: !97)
!97 = !{!91, !91}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !99, file: !6, line: 1086)
!99 = !DISubprogram(name: "acoshl", scope: !31, file: !31, line: 85, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !102}
!102 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !104, file: !6, line: 1088)
!104 = !DISubprogram(name: "asinh", scope: !31, file: !31, line: 87, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !106, file: !6, line: 1089)
!106 = !DISubprogram(name: "asinhf", scope: !31, file: !31, line: 87, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !108, file: !6, line: 1090)
!108 = !DISubprogram(name: "asinhl", scope: !31, file: !31, line: 87, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !110, file: !6, line: 1092)
!110 = !DISubprogram(name: "atanh", scope: !31, file: !31, line: 89, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !112, file: !6, line: 1093)
!112 = !DISubprogram(name: "atanhf", scope: !31, file: !31, line: 89, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !114, file: !6, line: 1094)
!114 = !DISubprogram(name: "atanhl", scope: !31, file: !31, line: 89, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !116, file: !6, line: 1096)
!116 = !DISubprogram(name: "cbrt", scope: !31, file: !31, line: 152, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !118, file: !6, line: 1097)
!118 = !DISubprogram(name: "cbrtf", scope: !31, file: !31, line: 152, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !120, file: !6, line: 1098)
!120 = !DISubprogram(name: "cbrtl", scope: !31, file: !31, line: 152, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !122, file: !6, line: 1100)
!122 = !DISubprogram(name: "copysign", scope: !31, file: !31, line: 196, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !124, file: !6, line: 1101)
!124 = !DISubprogram(name: "copysignf", scope: !31, file: !31, line: 196, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!91, !91, !91}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !128, file: !6, line: 1102)
!128 = !DISubprogram(name: "copysignl", scope: !31, file: !31, line: 196, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!102, !102, !102}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !132, file: !6, line: 1104)
!132 = !DISubprogram(name: "erf", scope: !31, file: !31, line: 228, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !134, file: !6, line: 1105)
!134 = !DISubprogram(name: "erff", scope: !31, file: !31, line: 228, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !136, file: !6, line: 1106)
!136 = !DISubprogram(name: "erfl", scope: !31, file: !31, line: 228, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !138, file: !6, line: 1108)
!138 = !DISubprogram(name: "erfc", scope: !31, file: !31, line: 229, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !140, file: !6, line: 1109)
!140 = !DISubprogram(name: "erfcf", scope: !31, file: !31, line: 229, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !142, file: !6, line: 1110)
!142 = !DISubprogram(name: "erfcl", scope: !31, file: !31, line: 229, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !144, file: !6, line: 1112)
!144 = !DISubprogram(name: "exp2", scope: !31, file: !31, line: 130, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !146, file: !6, line: 1113)
!146 = !DISubprogram(name: "exp2f", scope: !31, file: !31, line: 130, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !148, file: !6, line: 1114)
!148 = !DISubprogram(name: "exp2l", scope: !31, file: !31, line: 130, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !150, file: !6, line: 1116)
!150 = !DISubprogram(name: "expm1", scope: !31, file: !31, line: 119, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !152, file: !6, line: 1117)
!152 = !DISubprogram(name: "expm1f", scope: !31, file: !31, line: 119, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !154, file: !6, line: 1118)
!154 = !DISubprogram(name: "expm1l", scope: !31, file: !31, line: 119, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !156, file: !6, line: 1120)
!156 = !DISubprogram(name: "fdim", scope: !31, file: !31, line: 326, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !158, file: !6, line: 1121)
!158 = !DISubprogram(name: "fdimf", scope: !31, file: !31, line: 326, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !160, file: !6, line: 1122)
!160 = !DISubprogram(name: "fdiml", scope: !31, file: !31, line: 326, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !162, file: !6, line: 1124)
!162 = !DISubprogram(name: "fma", scope: !31, file: !31, line: 335, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!4, !4, !4, !4}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !166, file: !6, line: 1125)
!166 = !DISubprogram(name: "fmaf", scope: !31, file: !31, line: 335, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!91, !91, !91, !91}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !170, file: !6, line: 1126)
!170 = !DISubprogram(name: "fmal", scope: !31, file: !31, line: 335, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!102, !102, !102, !102}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !174, file: !6, line: 1128)
!174 = !DISubprogram(name: "fmax", scope: !31, file: !31, line: 329, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !176, file: !6, line: 1129)
!176 = !DISubprogram(name: "fmaxf", scope: !31, file: !31, line: 329, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !178, file: !6, line: 1130)
!178 = !DISubprogram(name: "fmaxl", scope: !31, file: !31, line: 329, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !180, file: !6, line: 1132)
!180 = !DISubprogram(name: "fmin", scope: !31, file: !31, line: 332, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !182, file: !6, line: 1133)
!182 = !DISubprogram(name: "fminf", scope: !31, file: !31, line: 332, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !184, file: !6, line: 1134)
!184 = !DISubprogram(name: "fminl", scope: !31, file: !31, line: 332, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !186, file: !6, line: 1136)
!186 = !DISubprogram(name: "hypot", scope: !31, file: !31, line: 147, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !188, file: !6, line: 1137)
!188 = !DISubprogram(name: "hypotf", scope: !31, file: !31, line: 147, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !190, file: !6, line: 1138)
!190 = !DISubprogram(name: "hypotl", scope: !31, file: !31, line: 147, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !192, file: !6, line: 1140)
!192 = !DISubprogram(name: "ilogb", scope: !31, file: !31, line: 280, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!18, !4}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !196, file: !6, line: 1141)
!196 = !DISubprogram(name: "ilogbf", scope: !31, file: !31, line: 280, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!18, !91}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !200, file: !6, line: 1142)
!200 = !DISubprogram(name: "ilogbl", scope: !31, file: !31, line: 280, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!18, !102}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !204, file: !6, line: 1144)
!204 = !DISubprogram(name: "lgamma", scope: !31, file: !31, line: 230, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !206, file: !6, line: 1145)
!206 = !DISubprogram(name: "lgammaf", scope: !31, file: !31, line: 230, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !208, file: !6, line: 1146)
!208 = !DISubprogram(name: "lgammal", scope: !31, file: !31, line: 230, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !210, file: !6, line: 1149)
!210 = !DISubprogram(name: "llrint", scope: !31, file: !31, line: 316, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !4}
!213 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !215, file: !6, line: 1150)
!215 = !DISubprogram(name: "llrintf", scope: !31, file: !31, line: 316, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!213, !91}
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !219, file: !6, line: 1151)
!219 = !DISubprogram(name: "llrintl", scope: !31, file: !31, line: 316, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{!213, !102}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !223, file: !6, line: 1153)
!223 = !DISubprogram(name: "llround", scope: !31, file: !31, line: 322, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !225, file: !6, line: 1154)
!225 = !DISubprogram(name: "llroundf", scope: !31, file: !31, line: 322, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !227, file: !6, line: 1155)
!227 = !DISubprogram(name: "llroundl", scope: !31, file: !31, line: 322, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !229, file: !6, line: 1158)
!229 = !DISubprogram(name: "log1p", scope: !31, file: !31, line: 122, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !231, file: !6, line: 1159)
!231 = !DISubprogram(name: "log1pf", scope: !31, file: !31, line: 122, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !233, file: !6, line: 1160)
!233 = !DISubprogram(name: "log1pl", scope: !31, file: !31, line: 122, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !235, file: !6, line: 1162)
!235 = !DISubprogram(name: "log2", scope: !31, file: !31, line: 133, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !237, file: !6, line: 1163)
!237 = !DISubprogram(name: "log2f", scope: !31, file: !31, line: 133, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !239, file: !6, line: 1164)
!239 = !DISubprogram(name: "log2l", scope: !31, file: !31, line: 133, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !241, file: !6, line: 1166)
!241 = !DISubprogram(name: "logb", scope: !31, file: !31, line: 125, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !243, file: !6, line: 1167)
!243 = !DISubprogram(name: "logbf", scope: !31, file: !31, line: 125, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !245, file: !6, line: 1168)
!245 = !DISubprogram(name: "logbl", scope: !31, file: !31, line: 125, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !247, file: !6, line: 1170)
!247 = !DISubprogram(name: "lrint", scope: !31, file: !31, line: 314, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !4}
!250 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !252, file: !6, line: 1171)
!252 = !DISubprogram(name: "lrintf", scope: !31, file: !31, line: 314, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{!250, !91}
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !256, file: !6, line: 1172)
!256 = !DISubprogram(name: "lrintl", scope: !31, file: !31, line: 314, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!250, !102}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !260, file: !6, line: 1174)
!260 = !DISubprogram(name: "lround", scope: !31, file: !31, line: 320, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !262, file: !6, line: 1175)
!262 = !DISubprogram(name: "lroundf", scope: !31, file: !31, line: 320, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !264, file: !6, line: 1176)
!264 = !DISubprogram(name: "lroundl", scope: !31, file: !31, line: 320, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !266, file: !6, line: 1178)
!266 = !DISubprogram(name: "nan", scope: !31, file: !31, line: 201, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!4, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !273, file: !6, line: 1179)
!273 = !DISubprogram(name: "nanf", scope: !31, file: !31, line: 201, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{!91, !269}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !277, file: !6, line: 1180)
!277 = !DISubprogram(name: "nanl", scope: !31, file: !31, line: 201, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!102, !269}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !281, file: !6, line: 1182)
!281 = !DISubprogram(name: "nearbyint", scope: !31, file: !31, line: 294, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !283, file: !6, line: 1183)
!283 = !DISubprogram(name: "nearbyintf", scope: !31, file: !31, line: 294, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !285, file: !6, line: 1184)
!285 = !DISubprogram(name: "nearbyintl", scope: !31, file: !31, line: 294, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !287, file: !6, line: 1186)
!287 = !DISubprogram(name: "nextafter", scope: !31, file: !31, line: 259, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !289, file: !6, line: 1187)
!289 = !DISubprogram(name: "nextafterf", scope: !31, file: !31, line: 259, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !291, file: !6, line: 1188)
!291 = !DISubprogram(name: "nextafterl", scope: !31, file: !31, line: 259, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !293, file: !6, line: 1190)
!293 = !DISubprogram(name: "nexttoward", scope: !31, file: !31, line: 261, type: !294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!4, !4, !102}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !297, file: !6, line: 1191)
!297 = !DISubprogram(name: "nexttowardf", scope: !31, file: !31, line: 261, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubroutineType(types: !299)
!299 = !{!91, !91, !102}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !301, file: !6, line: 1192)
!301 = !DISubprogram(name: "nexttowardl", scope: !31, file: !31, line: 261, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !303, file: !6, line: 1194)
!303 = !DISubprogram(name: "remainder", scope: !31, file: !31, line: 272, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !305, file: !6, line: 1195)
!305 = !DISubprogram(name: "remainderf", scope: !31, file: !31, line: 272, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !307, file: !6, line: 1196)
!307 = !DISubprogram(name: "remainderl", scope: !31, file: !31, line: 272, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !309, file: !6, line: 1198)
!309 = !DISubprogram(name: "remquo", scope: !31, file: !31, line: 307, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{!4, !4, !4, !60}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !313, file: !6, line: 1199)
!313 = !DISubprogram(name: "remquof", scope: !31, file: !31, line: 307, type: !314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!91, !91, !91, !60}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !317, file: !6, line: 1200)
!317 = !DISubprogram(name: "remquol", scope: !31, file: !31, line: 307, type: !318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!102, !102, !102, !60}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !321, file: !6, line: 1202)
!321 = !DISubprogram(name: "rint", scope: !31, file: !31, line: 256, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !323, file: !6, line: 1203)
!323 = !DISubprogram(name: "rintf", scope: !31, file: !31, line: 256, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !325, file: !6, line: 1204)
!325 = !DISubprogram(name: "rintl", scope: !31, file: !31, line: 256, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !327, file: !6, line: 1206)
!327 = !DISubprogram(name: "round", scope: !31, file: !31, line: 298, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !329, file: !6, line: 1207)
!329 = !DISubprogram(name: "roundf", scope: !31, file: !31, line: 298, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !331, file: !6, line: 1208)
!331 = !DISubprogram(name: "roundl", scope: !31, file: !31, line: 298, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !333, file: !6, line: 1210)
!333 = !DISubprogram(name: "scalbln", scope: !31, file: !31, line: 290, type: !334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{!4, !4, !250}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !337, file: !6, line: 1211)
!337 = !DISubprogram(name: "scalblnf", scope: !31, file: !31, line: 290, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!91, !91, !250}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !341, file: !6, line: 1212)
!341 = !DISubprogram(name: "scalblnl", scope: !31, file: !31, line: 290, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!102, !102, !250}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !345, file: !6, line: 1214)
!345 = !DISubprogram(name: "scalbn", scope: !31, file: !31, line: 276, type: !63, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !347, file: !6, line: 1215)
!347 = !DISubprogram(name: "scalbnf", scope: !31, file: !31, line: 276, type: !348, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!91, !91, !18}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !351, file: !6, line: 1216)
!351 = !DISubprogram(name: "scalbnl", scope: !31, file: !31, line: 276, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!102, !102, !18}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !355, file: !6, line: 1218)
!355 = !DISubprogram(name: "tgamma", scope: !31, file: !31, line: 235, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !357, file: !6, line: 1219)
!357 = !DISubprogram(name: "tgammaf", scope: !31, file: !31, line: 235, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !359, file: !6, line: 1220)
!359 = !DISubprogram(name: "tgammal", scope: !31, file: !31, line: 235, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !361, file: !6, line: 1222)
!361 = !DISubprogram(name: "trunc", scope: !31, file: !31, line: 302, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !363, file: !6, line: 1223)
!363 = !DISubprogram(name: "truncf", scope: !31, file: !31, line: 302, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !365, file: !6, line: 1224)
!365 = !DISubprogram(name: "truncl", scope: !31, file: !31, line: 302, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !367, file: !371, line: 38)
!367 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !8, file: !28, line: 102, type: !368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !370}
!370 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!371 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !373, file: !371, line: 54)
!373 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !8, file: !6, line: 380, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!102, !102, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!377 = !{i32 2, !"Dwarf Version", i32 4}
!378 = !{i32 2, !"Debug Info Version", i32 3}
!379 = !{i32 1, !"wchar_size", i32 4}
!380 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!381 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !382, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!382 = !DISubroutineType(types: !383)
!383 = !{!18}
!384 = !DILocalVariable(name: "m", scope: !381, file: !1, line: 6, type: !18)
!385 = !DILocation(line: 6, column: 9, scope: !381)
!386 = !DILocalVariable(name: "sum", scope: !381, file: !1, line: 7, type: !4)
!387 = !DILocation(line: 7, column: 12, scope: !381)
!388 = !DILocalVariable(name: "a", scope: !381, file: !1, line: 8, type: !18)
!389 = !DILocation(line: 8, column: 9, scope: !381)
!390 = !DILocalVariable(name: "b", scope: !381, file: !1, line: 8, type: !18)
!391 = !DILocation(line: 8, column: 12, scope: !381)
!392 = !DILocalVariable(name: "c", scope: !381, file: !1, line: 8, type: !18)
!393 = !DILocation(line: 8, column: 15, scope: !381)
!394 = !DILocalVariable(name: "d", scope: !381, file: !1, line: 8, type: !18)
!395 = !DILocation(line: 8, column: 18, scope: !381)
!396 = !DILocalVariable(name: "e", scope: !381, file: !1, line: 8, type: !18)
!397 = !DILocation(line: 8, column: 21, scope: !381)
!398 = !DILocalVariable(name: "f", scope: !381, file: !1, line: 8, type: !18)
!399 = !DILocation(line: 8, column: 24, scope: !381)
!400 = !DILocalVariable(name: "g", scope: !381, file: !1, line: 8, type: !18)
!401 = !DILocation(line: 8, column: 27, scope: !381)
!402 = !DILocation(line: 9, column: 5, scope: !381)
!403 = !DILocation(line: 9, column: 12, scope: !381)
!404 = !DILocation(line: 9, column: 11, scope: !381)
!405 = !DILocation(line: 11, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !381, file: !1, line: 10, column: 5)
!407 = !DILocation(line: 11, column: 15, scope: !406)
!408 = !DILocation(line: 11, column: 11, scope: !406)
!409 = !DILocation(line: 12, column: 14, scope: !406)
!410 = !DILocation(line: 12, column: 16, scope: !406)
!411 = !DILocation(line: 12, column: 22, scope: !406)
!412 = !DILocation(line: 12, column: 11, scope: !406)
!413 = !DILocation(line: 13, column: 14, scope: !406)
!414 = !DILocation(line: 13, column: 16, scope: !406)
!415 = !DILocation(line: 13, column: 23, scope: !406)
!416 = !DILocation(line: 13, column: 11, scope: !406)
!417 = !DILocation(line: 14, column: 14, scope: !406)
!418 = !DILocation(line: 14, column: 16, scope: !406)
!419 = !DILocation(line: 14, column: 24, scope: !406)
!420 = !DILocation(line: 14, column: 11, scope: !406)
!421 = !DILocation(line: 15, column: 14, scope: !406)
!422 = !DILocation(line: 15, column: 16, scope: !406)
!423 = !DILocation(line: 15, column: 25, scope: !406)
!424 = !DILocation(line: 15, column: 11, scope: !406)
!425 = !DILocation(line: 16, column: 14, scope: !406)
!426 = !DILocation(line: 16, column: 16, scope: !406)
!427 = !DILocation(line: 16, column: 26, scope: !406)
!428 = !DILocation(line: 16, column: 11, scope: !406)
!429 = !DILocation(line: 17, column: 14, scope: !406)
!430 = !DILocation(line: 17, column: 16, scope: !406)
!431 = !DILocation(line: 17, column: 27, scope: !406)
!432 = !DILocation(line: 17, column: 11, scope: !406)
!433 = !DILocation(line: 18, column: 27, scope: !406)
!434 = !DILocation(line: 18, column: 15, scope: !406)
!435 = !DILocation(line: 18, column: 47, scope: !406)
!436 = !DILocation(line: 18, column: 35, scope: !406)
!437 = !DILocation(line: 18, column: 33, scope: !406)
!438 = !DILocation(line: 18, column: 67, scope: !406)
!439 = !DILocation(line: 18, column: 55, scope: !406)
!440 = !DILocation(line: 18, column: 53, scope: !406)
!441 = !DILocation(line: 18, column: 87, scope: !406)
!442 = !DILocation(line: 18, column: 75, scope: !406)
!443 = !DILocation(line: 18, column: 73, scope: !406)
!444 = !DILocation(line: 18, column: 107, scope: !406)
!445 = !DILocation(line: 18, column: 95, scope: !406)
!446 = !DILocation(line: 18, column: 93, scope: !406)
!447 = !DILocation(line: 18, column: 127, scope: !406)
!448 = !DILocation(line: 18, column: 115, scope: !406)
!449 = !DILocation(line: 18, column: 113, scope: !406)
!450 = !DILocation(line: 18, column: 147, scope: !406)
!451 = !DILocation(line: 18, column: 135, scope: !406)
!452 = !DILocation(line: 18, column: 133, scope: !406)
!453 = !DILocation(line: 18, column: 13, scope: !406)
!454 = !DILocation(line: 19, column: 12, scope: !406)
!455 = !DILocation(line: 20, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !406, file: !1, line: 20, column: 6)
!457 = !DILocation(line: 20, column: 13, scope: !456)
!458 = !DILocation(line: 20, column: 10, scope: !456)
!459 = !DILocation(line: 20, column: 6, scope: !406)
!460 = !DILocation(line: 22, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !1, line: 21, column: 9)
!462 = !DILocation(line: 23, column: 17, scope: !461)
!463 = !DILocation(line: 24, column: 9, scope: !461)
!464 = !DILocation(line: 27, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !456, file: !1, line: 26, column: 9)
!466 = !DILocation(line: 28, column: 17, scope: !465)
!467 = distinct !{!467, !402, !468}
!468 = !DILocation(line: 30, column: 5, scope: !381)
!469 = !DILocation(line: 31, column: 5, scope: !381)
!470 = !DILocalVariable(name: "__x", arg: 1, scope: !7, file: !6, line: 415, type: !4)
!471 = !DILocation(line: 415, column: 13, scope: !7)
!472 = !DILocalVariable(name: "__y", arg: 2, scope: !7, file: !6, line: 415, type: !18)
!473 = !DILocation(line: 415, column: 22, scope: !7)
!474 = !DILocation(line: 418, column: 25, scope: !7)
!475 = !DILocation(line: 418, column: 38, scope: !7)
!476 = !DILocation(line: 418, column: 14, scope: !7)
!477 = !DILocation(line: 418, column: 7, scope: !7)
