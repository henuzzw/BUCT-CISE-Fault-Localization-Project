; ModuleID = 'gcov/../WA_c/271163_buggy.c'
source_filename = "gcov/../WA_c/271163_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

$_ZSt4sqrtf = comdat any

@.str = private unnamed_addr constant [15 x i8] c"%f %f %f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Point is outside the Circle\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Point is inside the Circle\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Point is on the Circle\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !381 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata float* %3, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata float* %4, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata float* %5, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata float* %6, metadata !392, metadata !DIExpression()), !dbg !393
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), float* %2, float* %3, float* %4, float* %5, float* %6), !dbg !394
  call void @llvm.dbg.declare(metadata float* %7, metadata !395, metadata !DIExpression()), !dbg !396
  %13 = load float, float* %2, align 4, !dbg !397
  %14 = load float, float* %5, align 4, !dbg !398
  %15 = fsub float %13, %14, !dbg !399
  store float %15, float* %7, align 4, !dbg !396
  call void @llvm.dbg.declare(metadata float* %8, metadata !400, metadata !DIExpression()), !dbg !401
  %16 = load float, float* %3, align 4, !dbg !402
  %17 = load float, float* %6, align 4, !dbg !403
  %18 = fsub float %16, %17, !dbg !404
  store float %18, float* %8, align 4, !dbg !401
  call void @llvm.dbg.declare(metadata float* %9, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata float* %10, metadata !407, metadata !DIExpression()), !dbg !408
  %19 = load float, float* %7, align 4, !dbg !409
  %20 = call double @_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(float %19, i32 2), !dbg !410
  %21 = fptrunc double %20 to float, !dbg !410
  store float %21, float* %9, align 4, !dbg !411
  %22 = load float, float* %8, align 4, !dbg !412
  %23 = call double @_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(float %22, i32 2), !dbg !413
  %24 = fptrunc double %23 to float, !dbg !413
  store float %24, float* %10, align 4, !dbg !414
  call void @llvm.dbg.declare(metadata float* %11, metadata !415, metadata !DIExpression()), !dbg !416
  %25 = load float, float* %9, align 4, !dbg !417
  %26 = load float, float* %10, align 4, !dbg !418
  %27 = fadd float %25, %26, !dbg !419
  %28 = call float @_ZSt4sqrtf(float %27), !dbg !420
  store float %28, float* %11, align 4, !dbg !421
  %29 = load float, float* %11, align 4, !dbg !422
  %30 = load float, float* %4, align 4, !dbg !424
  %31 = fcmp ogt float %29, %30, !dbg !425
  br i1 %31, label %32, label %34, !dbg !426

; <label>:32:                                     ; preds = %0
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)), !dbg !427
  br label %43, !dbg !429

; <label>:34:                                     ; preds = %0
  %35 = load float, float* %11, align 4, !dbg !430
  %36 = load float, float* %4, align 4, !dbg !432
  %37 = fcmp olt float %35, %36, !dbg !433
  br i1 %37, label %38, label %40, !dbg !434

; <label>:38:                                     ; preds = %34
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)), !dbg !435
  br label %42, !dbg !437

; <label>:40:                                     ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)), !dbg !438
  br label %42

; <label>:42:                                     ; preds = %40, %38
  br label %43

; <label>:43:                                     ; preds = %42, %32
  ret i32 0, !dbg !440
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr double @_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(float, i32) #3 comdat !dbg !6 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float %0, float* %3, align 4
  call void @llvm.dbg.declare(metadata float* %3, metadata !441, metadata !DIExpression()), !dbg !442
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !443, metadata !DIExpression()), !dbg !444
  %5 = load float, float* %3, align 4, !dbg !445
  %6 = fpext float %5 to double, !dbg !445
  %7 = load i32, i32* %4, align 4, !dbg !446
  %8 = sitofp i32 %7 to double, !dbg !446
  %9 = call double @pow(double %6, double %8) #5, !dbg !447
  ret double %9, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr float @_ZSt4sqrtf(float) #3 comdat !dbg !449 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !450, metadata !DIExpression()), !dbg !451
  %3 = load float, float* %2, align 4, !dbg !452
  %4 = call float @sqrtf(float %3) #5, !dbg !453
  ret float %4, !dbg !454
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare float @sqrtf(float) #4

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!377, !378, !379}
!llvm.ident = !{!380}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !23)
!1 = !DIFile(filename: "gcov/../WA_c/271163_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !6, file: !5, line: 417, baseType: !10)
!5 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cmath", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!6 = distinct !DISubprogram(name: "pow<float, int>", linkageName: "_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_", scope: !7, file: !5, line: 415, type: !8, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !22, variables: !2)
!7 = !DINamespace(name: "std", scope: null)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !16, !18}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !12, file: !11, line: 195, baseType: !21)
!11 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ext/type_traits.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__promote_2<float, int, float, double>", scope: !13, file: !11, line: 193, size: 8, elements: !2, templateParams: !14, identifier: "_ZTSN9__gnu_cxx11__promote_2IfifdEE")
!13 = !DINamespace(name: "__gnu_cxx", scope: null)
!14 = !{!15, !17, !19, !20}
!15 = !DITemplateTypeParameter(name: "_Tp", type: !16)
!16 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!17 = !DITemplateTypeParameter(name: "_Up", type: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DITemplateTypeParameter(name: "_Tp2", type: !16)
!20 = !DITemplateTypeParameter(name: "_Up2", type: !21)
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{!15, !17}
!23 = !{!24, !30, !35, !37, !39, !43, !45, !47, !49, !51, !53, !55, !57, !62, !66, !68, !70, !75, !77, !79, !81, !83, !85, !87, !90, !92, !94, !98, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !127, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !165, !169, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !195, !199, !203, !205, !207, !209, !214, !218, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !251, !255, !259, !261, !263, !265, !272, !276, !280, !282, !284, !286, !288, !290, !292, !296, !300, !302, !304, !306, !308, !312, !316, !320, !322, !324, !326, !328, !330, !332, !336, !340, !344, !346, !350, !354, !356, !358, !360, !362, !364, !366, !372}
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !25, file: !29, line: 52)
!25 = !DISubprogram(name: "abs", scope: !26, file: !26, line: 837, type: !27, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!26 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!27 = !DISubroutineType(types: !28)
!28 = !{!18, !18}
!29 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!30 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !31, file: !5, line: 83)
!31 = !DISubprogram(name: "acos", scope: !32, file: !32, line: 53, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!33 = !DISubroutineType(types: !34)
!34 = !{!21, !21}
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !36, file: !5, line: 102)
!36 = !DISubprogram(name: "asin", scope: !32, file: !32, line: 55, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !38, file: !5, line: 121)
!38 = !DISubprogram(name: "atan", scope: !32, file: !32, line: 57, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !40, file: !5, line: 140)
!40 = !DISubprogram(name: "atan2", scope: !32, file: !32, line: 59, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!41 = !DISubroutineType(types: !42)
!42 = !{!21, !21, !21}
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !44, file: !5, line: 161)
!44 = !DISubprogram(name: "ceil", scope: !32, file: !32, line: 159, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !46, file: !5, line: 180)
!46 = !DISubprogram(name: "cos", scope: !32, file: !32, line: 62, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !48, file: !5, line: 199)
!48 = !DISubprogram(name: "cosh", scope: !32, file: !32, line: 71, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !50, file: !5, line: 218)
!50 = !DISubprogram(name: "exp", scope: !32, file: !32, line: 95, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !52, file: !5, line: 237)
!52 = !DISubprogram(name: "fabs", scope: !32, file: !32, line: 162, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !54, file: !5, line: 256)
!54 = !DISubprogram(name: "floor", scope: !32, file: !32, line: 165, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !56, file: !5, line: 275)
!56 = !DISubprogram(name: "fmod", scope: !32, file: !32, line: 168, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !58, file: !5, line: 296)
!58 = !DISubprogram(name: "frexp", scope: !32, file: !32, line: 98, type: !59, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!59 = !DISubroutineType(types: !60)
!60 = !{!21, !21, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !63, file: !5, line: 315)
!63 = !DISubprogram(name: "ldexp", scope: !32, file: !32, line: 101, type: !64, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DISubroutineType(types: !65)
!65 = !{!21, !21, !18}
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !67, file: !5, line: 334)
!67 = !DISubprogram(name: "log", scope: !32, file: !32, line: 104, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !69, file: !5, line: 353)
!69 = !DISubprogram(name: "log10", scope: !32, file: !32, line: 107, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !71, file: !5, line: 372)
!71 = !DISubprogram(name: "modf", scope: !32, file: !32, line: 110, type: !72, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!72 = !DISubroutineType(types: !73)
!73 = !{!21, !21, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !76, file: !5, line: 384)
!76 = !DISubprogram(name: "pow", scope: !32, file: !32, line: 140, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !78, file: !5, line: 421)
!78 = !DISubprogram(name: "sin", scope: !32, file: !32, line: 64, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !80, file: !5, line: 440)
!80 = !DISubprogram(name: "sinh", scope: !32, file: !32, line: 73, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !82, file: !5, line: 459)
!82 = !DISubprogram(name: "sqrt", scope: !32, file: !32, line: 143, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, file: !5, line: 478)
!84 = !DISubprogram(name: "tan", scope: !32, file: !32, line: 66, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !86, file: !5, line: 497)
!86 = !DISubprogram(name: "tanh", scope: !32, file: !32, line: 75, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !88, file: !5, line: 1080)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !89, line: 150, baseType: !21)
!89 = !DIFile(filename: "/usr/include/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !91, file: !5, line: 1081)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !89, line: 149, baseType: !16)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !93, file: !5, line: 1084)
!93 = !DISubprogram(name: "acosh", scope: !32, file: !32, line: 85, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !95, file: !5, line: 1085)
!95 = !DISubprogram(name: "acoshf", scope: !32, file: !32, line: 85, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!96 = !DISubroutineType(types: !97)
!97 = !{!16, !16}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !99, file: !5, line: 1086)
!99 = !DISubprogram(name: "acoshl", scope: !32, file: !32, line: 85, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !102}
!102 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !104, file: !5, line: 1088)
!104 = !DISubprogram(name: "asinh", scope: !32, file: !32, line: 87, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !106, file: !5, line: 1089)
!106 = !DISubprogram(name: "asinhf", scope: !32, file: !32, line: 87, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !108, file: !5, line: 1090)
!108 = !DISubprogram(name: "asinhl", scope: !32, file: !32, line: 87, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !110, file: !5, line: 1092)
!110 = !DISubprogram(name: "atanh", scope: !32, file: !32, line: 89, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !112, file: !5, line: 1093)
!112 = !DISubprogram(name: "atanhf", scope: !32, file: !32, line: 89, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !114, file: !5, line: 1094)
!114 = !DISubprogram(name: "atanhl", scope: !32, file: !32, line: 89, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !116, file: !5, line: 1096)
!116 = !DISubprogram(name: "cbrt", scope: !32, file: !32, line: 152, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !118, file: !5, line: 1097)
!118 = !DISubprogram(name: "cbrtf", scope: !32, file: !32, line: 152, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !120, file: !5, line: 1098)
!120 = !DISubprogram(name: "cbrtl", scope: !32, file: !32, line: 152, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !122, file: !5, line: 1100)
!122 = !DISubprogram(name: "copysign", scope: !32, file: !32, line: 196, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !124, file: !5, line: 1101)
!124 = !DISubprogram(name: "copysignf", scope: !32, file: !32, line: 196, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!16, !16, !16}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !128, file: !5, line: 1102)
!128 = !DISubprogram(name: "copysignl", scope: !32, file: !32, line: 196, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!102, !102, !102}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !132, file: !5, line: 1104)
!132 = !DISubprogram(name: "erf", scope: !32, file: !32, line: 228, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !134, file: !5, line: 1105)
!134 = !DISubprogram(name: "erff", scope: !32, file: !32, line: 228, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !136, file: !5, line: 1106)
!136 = !DISubprogram(name: "erfl", scope: !32, file: !32, line: 228, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !138, file: !5, line: 1108)
!138 = !DISubprogram(name: "erfc", scope: !32, file: !32, line: 229, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !140, file: !5, line: 1109)
!140 = !DISubprogram(name: "erfcf", scope: !32, file: !32, line: 229, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !142, file: !5, line: 1110)
!142 = !DISubprogram(name: "erfcl", scope: !32, file: !32, line: 229, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !144, file: !5, line: 1112)
!144 = !DISubprogram(name: "exp2", scope: !32, file: !32, line: 130, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !146, file: !5, line: 1113)
!146 = !DISubprogram(name: "exp2f", scope: !32, file: !32, line: 130, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !148, file: !5, line: 1114)
!148 = !DISubprogram(name: "exp2l", scope: !32, file: !32, line: 130, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !150, file: !5, line: 1116)
!150 = !DISubprogram(name: "expm1", scope: !32, file: !32, line: 119, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !152, file: !5, line: 1117)
!152 = !DISubprogram(name: "expm1f", scope: !32, file: !32, line: 119, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !154, file: !5, line: 1118)
!154 = !DISubprogram(name: "expm1l", scope: !32, file: !32, line: 119, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !156, file: !5, line: 1120)
!156 = !DISubprogram(name: "fdim", scope: !32, file: !32, line: 326, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !158, file: !5, line: 1121)
!158 = !DISubprogram(name: "fdimf", scope: !32, file: !32, line: 326, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !160, file: !5, line: 1122)
!160 = !DISubprogram(name: "fdiml", scope: !32, file: !32, line: 326, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !162, file: !5, line: 1124)
!162 = !DISubprogram(name: "fma", scope: !32, file: !32, line: 335, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!21, !21, !21, !21}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !166, file: !5, line: 1125)
!166 = !DISubprogram(name: "fmaf", scope: !32, file: !32, line: 335, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!16, !16, !16, !16}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !170, file: !5, line: 1126)
!170 = !DISubprogram(name: "fmal", scope: !32, file: !32, line: 335, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!102, !102, !102, !102}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !174, file: !5, line: 1128)
!174 = !DISubprogram(name: "fmax", scope: !32, file: !32, line: 329, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !176, file: !5, line: 1129)
!176 = !DISubprogram(name: "fmaxf", scope: !32, file: !32, line: 329, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !178, file: !5, line: 1130)
!178 = !DISubprogram(name: "fmaxl", scope: !32, file: !32, line: 329, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !180, file: !5, line: 1132)
!180 = !DISubprogram(name: "fmin", scope: !32, file: !32, line: 332, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !182, file: !5, line: 1133)
!182 = !DISubprogram(name: "fminf", scope: !32, file: !32, line: 332, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !184, file: !5, line: 1134)
!184 = !DISubprogram(name: "fminl", scope: !32, file: !32, line: 332, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !186, file: !5, line: 1136)
!186 = !DISubprogram(name: "hypot", scope: !32, file: !32, line: 147, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, file: !5, line: 1137)
!188 = !DISubprogram(name: "hypotf", scope: !32, file: !32, line: 147, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !190, file: !5, line: 1138)
!190 = !DISubprogram(name: "hypotl", scope: !32, file: !32, line: 147, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !192, file: !5, line: 1140)
!192 = !DISubprogram(name: "ilogb", scope: !32, file: !32, line: 280, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!18, !21}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !196, file: !5, line: 1141)
!196 = !DISubprogram(name: "ilogbf", scope: !32, file: !32, line: 280, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!18, !16}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !200, file: !5, line: 1142)
!200 = !DISubprogram(name: "ilogbl", scope: !32, file: !32, line: 280, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!18, !102}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !204, file: !5, line: 1144)
!204 = !DISubprogram(name: "lgamma", scope: !32, file: !32, line: 230, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !206, file: !5, line: 1145)
!206 = !DISubprogram(name: "lgammaf", scope: !32, file: !32, line: 230, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !208, file: !5, line: 1146)
!208 = !DISubprogram(name: "lgammal", scope: !32, file: !32, line: 230, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !210, file: !5, line: 1149)
!210 = !DISubprogram(name: "llrint", scope: !32, file: !32, line: 316, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !21}
!213 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !215, file: !5, line: 1150)
!215 = !DISubprogram(name: "llrintf", scope: !32, file: !32, line: 316, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!213, !16}
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !219, file: !5, line: 1151)
!219 = !DISubprogram(name: "llrintl", scope: !32, file: !32, line: 316, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{!213, !102}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !223, file: !5, line: 1153)
!223 = !DISubprogram(name: "llround", scope: !32, file: !32, line: 322, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !225, file: !5, line: 1154)
!225 = !DISubprogram(name: "llroundf", scope: !32, file: !32, line: 322, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !227, file: !5, line: 1155)
!227 = !DISubprogram(name: "llroundl", scope: !32, file: !32, line: 322, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !229, file: !5, line: 1158)
!229 = !DISubprogram(name: "log1p", scope: !32, file: !32, line: 122, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !231, file: !5, line: 1159)
!231 = !DISubprogram(name: "log1pf", scope: !32, file: !32, line: 122, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !233, file: !5, line: 1160)
!233 = !DISubprogram(name: "log1pl", scope: !32, file: !32, line: 122, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !235, file: !5, line: 1162)
!235 = !DISubprogram(name: "log2", scope: !32, file: !32, line: 133, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !237, file: !5, line: 1163)
!237 = !DISubprogram(name: "log2f", scope: !32, file: !32, line: 133, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !239, file: !5, line: 1164)
!239 = !DISubprogram(name: "log2l", scope: !32, file: !32, line: 133, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !241, file: !5, line: 1166)
!241 = !DISubprogram(name: "logb", scope: !32, file: !32, line: 125, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !243, file: !5, line: 1167)
!243 = !DISubprogram(name: "logbf", scope: !32, file: !32, line: 125, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !245, file: !5, line: 1168)
!245 = !DISubprogram(name: "logbl", scope: !32, file: !32, line: 125, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !247, file: !5, line: 1170)
!247 = !DISubprogram(name: "lrint", scope: !32, file: !32, line: 314, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !21}
!250 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !252, file: !5, line: 1171)
!252 = !DISubprogram(name: "lrintf", scope: !32, file: !32, line: 314, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{!250, !16}
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !256, file: !5, line: 1172)
!256 = !DISubprogram(name: "lrintl", scope: !32, file: !32, line: 314, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!250, !102}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !260, file: !5, line: 1174)
!260 = !DISubprogram(name: "lround", scope: !32, file: !32, line: 320, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !262, file: !5, line: 1175)
!262 = !DISubprogram(name: "lroundf", scope: !32, file: !32, line: 320, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !264, file: !5, line: 1176)
!264 = !DISubprogram(name: "lroundl", scope: !32, file: !32, line: 320, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !266, file: !5, line: 1178)
!266 = !DISubprogram(name: "nan", scope: !32, file: !32, line: 201, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!21, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !273, file: !5, line: 1179)
!273 = !DISubprogram(name: "nanf", scope: !32, file: !32, line: 201, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{!16, !269}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !277, file: !5, line: 1180)
!277 = !DISubprogram(name: "nanl", scope: !32, file: !32, line: 201, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!102, !269}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !281, file: !5, line: 1182)
!281 = !DISubprogram(name: "nearbyint", scope: !32, file: !32, line: 294, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !283, file: !5, line: 1183)
!283 = !DISubprogram(name: "nearbyintf", scope: !32, file: !32, line: 294, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !285, file: !5, line: 1184)
!285 = !DISubprogram(name: "nearbyintl", scope: !32, file: !32, line: 294, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !287, file: !5, line: 1186)
!287 = !DISubprogram(name: "nextafter", scope: !32, file: !32, line: 259, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !289, file: !5, line: 1187)
!289 = !DISubprogram(name: "nextafterf", scope: !32, file: !32, line: 259, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !291, file: !5, line: 1188)
!291 = !DISubprogram(name: "nextafterl", scope: !32, file: !32, line: 259, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !293, file: !5, line: 1190)
!293 = !DISubprogram(name: "nexttoward", scope: !32, file: !32, line: 261, type: !294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!21, !21, !102}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !297, file: !5, line: 1191)
!297 = !DISubprogram(name: "nexttowardf", scope: !32, file: !32, line: 261, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubroutineType(types: !299)
!299 = !{!16, !16, !102}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !301, file: !5, line: 1192)
!301 = !DISubprogram(name: "nexttowardl", scope: !32, file: !32, line: 261, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !303, file: !5, line: 1194)
!303 = !DISubprogram(name: "remainder", scope: !32, file: !32, line: 272, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !305, file: !5, line: 1195)
!305 = !DISubprogram(name: "remainderf", scope: !32, file: !32, line: 272, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !307, file: !5, line: 1196)
!307 = !DISubprogram(name: "remainderl", scope: !32, file: !32, line: 272, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !309, file: !5, line: 1198)
!309 = !DISubprogram(name: "remquo", scope: !32, file: !32, line: 307, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{!21, !21, !21, !61}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !313, file: !5, line: 1199)
!313 = !DISubprogram(name: "remquof", scope: !32, file: !32, line: 307, type: !314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!16, !16, !16, !61}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !317, file: !5, line: 1200)
!317 = !DISubprogram(name: "remquol", scope: !32, file: !32, line: 307, type: !318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!102, !102, !102, !61}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !321, file: !5, line: 1202)
!321 = !DISubprogram(name: "rint", scope: !32, file: !32, line: 256, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !323, file: !5, line: 1203)
!323 = !DISubprogram(name: "rintf", scope: !32, file: !32, line: 256, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !325, file: !5, line: 1204)
!325 = !DISubprogram(name: "rintl", scope: !32, file: !32, line: 256, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !327, file: !5, line: 1206)
!327 = !DISubprogram(name: "round", scope: !32, file: !32, line: 298, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !329, file: !5, line: 1207)
!329 = !DISubprogram(name: "roundf", scope: !32, file: !32, line: 298, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !331, file: !5, line: 1208)
!331 = !DISubprogram(name: "roundl", scope: !32, file: !32, line: 298, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !333, file: !5, line: 1210)
!333 = !DISubprogram(name: "scalbln", scope: !32, file: !32, line: 290, type: !334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{!21, !21, !250}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !337, file: !5, line: 1211)
!337 = !DISubprogram(name: "scalblnf", scope: !32, file: !32, line: 290, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!16, !16, !250}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !341, file: !5, line: 1212)
!341 = !DISubprogram(name: "scalblnl", scope: !32, file: !32, line: 290, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!102, !102, !250}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !345, file: !5, line: 1214)
!345 = !DISubprogram(name: "scalbn", scope: !32, file: !32, line: 276, type: !64, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !347, file: !5, line: 1215)
!347 = !DISubprogram(name: "scalbnf", scope: !32, file: !32, line: 276, type: !348, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!16, !16, !18}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !351, file: !5, line: 1216)
!351 = !DISubprogram(name: "scalbnl", scope: !32, file: !32, line: 276, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!102, !102, !18}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !355, file: !5, line: 1218)
!355 = !DISubprogram(name: "tgamma", scope: !32, file: !32, line: 235, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !357, file: !5, line: 1219)
!357 = !DISubprogram(name: "tgammaf", scope: !32, file: !32, line: 235, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !359, file: !5, line: 1220)
!359 = !DISubprogram(name: "tgammal", scope: !32, file: !32, line: 235, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !361, file: !5, line: 1222)
!361 = !DISubprogram(name: "trunc", scope: !32, file: !32, line: 302, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !363, file: !5, line: 1223)
!363 = !DISubprogram(name: "truncf", scope: !32, file: !32, line: 302, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !365, file: !5, line: 1224)
!365 = !DISubprogram(name: "truncl", scope: !32, file: !32, line: 302, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !367, file: !371, line: 38)
!367 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !7, file: !29, line: 102, type: !368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !370}
!370 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!371 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2825")
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !373, file: !371, line: 54)
!373 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !7, file: !5, line: 380, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
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
!384 = !DILocalVariable(name: "x", scope: !381, file: !1, line: 6, type: !16)
!385 = !DILocation(line: 6, column: 11, scope: !381)
!386 = !DILocalVariable(name: "y", scope: !381, file: !1, line: 6, type: !16)
!387 = !DILocation(line: 6, column: 14, scope: !381)
!388 = !DILocalVariable(name: "r", scope: !381, file: !1, line: 6, type: !16)
!389 = !DILocation(line: 6, column: 17, scope: !381)
!390 = !DILocalVariable(name: "x1", scope: !381, file: !1, line: 6, type: !16)
!391 = !DILocation(line: 6, column: 20, scope: !381)
!392 = !DILocalVariable(name: "y1", scope: !381, file: !1, line: 6, type: !16)
!393 = !DILocation(line: 6, column: 24, scope: !381)
!394 = !DILocation(line: 7, column: 5, scope: !381)
!395 = !DILocalVariable(name: "A", scope: !381, file: !1, line: 8, type: !16)
!396 = !DILocation(line: 8, column: 11, scope: !381)
!397 = !DILocation(line: 8, column: 13, scope: !381)
!398 = !DILocation(line: 8, column: 15, scope: !381)
!399 = !DILocation(line: 8, column: 14, scope: !381)
!400 = !DILocalVariable(name: "B", scope: !381, file: !1, line: 9, type: !16)
!401 = !DILocation(line: 9, column: 11, scope: !381)
!402 = !DILocation(line: 9, column: 13, scope: !381)
!403 = !DILocation(line: 9, column: 15, scope: !381)
!404 = !DILocation(line: 9, column: 14, scope: !381)
!405 = !DILocalVariable(name: "D", scope: !381, file: !1, line: 10, type: !16)
!406 = !DILocation(line: 10, column: 11, scope: !381)
!407 = !DILocalVariable(name: "E", scope: !381, file: !1, line: 10, type: !16)
!408 = !DILocation(line: 10, column: 13, scope: !381)
!409 = !DILocation(line: 11, column: 11, scope: !381)
!410 = !DILocation(line: 11, column: 7, scope: !381)
!411 = !DILocation(line: 11, column: 6, scope: !381)
!412 = !DILocation(line: 12, column: 11, scope: !381)
!413 = !DILocation(line: 12, column: 7, scope: !381)
!414 = !DILocation(line: 12, column: 6, scope: !381)
!415 = !DILocalVariable(name: "F", scope: !381, file: !1, line: 13, type: !16)
!416 = !DILocation(line: 13, column: 11, scope: !381)
!417 = !DILocation(line: 14, column: 12, scope: !381)
!418 = !DILocation(line: 14, column: 14, scope: !381)
!419 = !DILocation(line: 14, column: 13, scope: !381)
!420 = !DILocation(line: 14, column: 7, scope: !381)
!421 = !DILocation(line: 14, column: 6, scope: !381)
!422 = !DILocation(line: 15, column: 8, scope: !423)
!423 = distinct !DILexicalBlock(scope: !381, file: !1, line: 15, column: 8)
!424 = !DILocation(line: 15, column: 10, scope: !423)
!425 = !DILocation(line: 15, column: 9, scope: !423)
!426 = !DILocation(line: 15, column: 8, scope: !381)
!427 = !DILocation(line: 17, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !1, line: 16, column: 5)
!429 = !DILocation(line: 18, column: 5, scope: !428)
!430 = !DILocation(line: 19, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !1, line: 19, column: 13)
!432 = !DILocation(line: 19, column: 15, scope: !431)
!433 = !DILocation(line: 19, column: 14, scope: !431)
!434 = !DILocation(line: 19, column: 13, scope: !423)
!435 = !DILocation(line: 21, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !1, line: 20, column: 5)
!437 = !DILocation(line: 22, column: 5, scope: !436)
!438 = !DILocation(line: 25, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !431, file: !1, line: 24, column: 5)
!440 = !DILocation(line: 27, column: 5, scope: !381)
!441 = !DILocalVariable(name: "__x", arg: 1, scope: !6, file: !5, line: 415, type: !16)
!442 = !DILocation(line: 415, column: 13, scope: !6)
!443 = !DILocalVariable(name: "__y", arg: 2, scope: !6, file: !5, line: 415, type: !18)
!444 = !DILocation(line: 415, column: 22, scope: !6)
!445 = !DILocation(line: 418, column: 25, scope: !6)
!446 = !DILocation(line: 418, column: 38, scope: !6)
!447 = !DILocation(line: 418, column: 14, scope: !6)
!448 = !DILocation(line: 418, column: 7, scope: !6)
!449 = distinct !DISubprogram(name: "sqrt", linkageName: "_ZSt4sqrtf", scope: !7, file: !5, line: 463, type: !96, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!450 = !DILocalVariable(name: "__x", arg: 1, scope: !449, file: !5, line: 463, type: !16)
!451 = !DILocation(line: 463, column: 14, scope: !449)
!452 = !DILocation(line: 464, column: 28, scope: !449)
!453 = !DILocation(line: 464, column: 12, scope: !449)
!454 = !DILocation(line: 464, column: 5, scope: !449)
