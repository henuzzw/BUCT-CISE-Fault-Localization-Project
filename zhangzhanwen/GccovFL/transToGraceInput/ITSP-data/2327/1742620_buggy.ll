; ModuleID = 'gcov/../WA_c/1742620_buggy.c'
source_filename = "gcov/../WA_c/1742620_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Y\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"N\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !381 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !384, metadata !DIExpression()), !dbg !385
  br label %6, !dbg !386

; <label>:6:                                      ; preds = %35, %0
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2), !dbg !387
  %8 = icmp ne i32 %7, -1, !dbg !388
  br i1 %8, label %9, label %36, !dbg !386

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !389, metadata !DIExpression()), !dbg !391
  store i32 0, i32* %3, align 4, !dbg !391
  call void @llvm.dbg.declare(metadata i32* %4, metadata !392, metadata !DIExpression()), !dbg !393
  %10 = load i32, i32* %2, align 4, !dbg !394
  store i32 %10, i32* %4, align 4, !dbg !395
  call void @llvm.dbg.declare(metadata i32* %5, metadata !396, metadata !DIExpression()), !dbg !398
  store i32 0, i32* %5, align 4, !dbg !398
  br label %11, !dbg !399

; <label>:11:                                     ; preds = %24, %9
  %12 = load i32, i32* %5, align 4, !dbg !400
  %13 = icmp slt i32 %12, 7, !dbg !402
  br i1 %13, label %14, label %27, !dbg !403

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %4, align 4, !dbg !404
  %16 = srem i32 %15, 10, !dbg !406
  %17 = call double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %16, i32 7), !dbg !407
  %18 = load i32, i32* %3, align 4, !dbg !408
  %19 = sitofp i32 %18 to double, !dbg !408
  %20 = fadd double %19, %17, !dbg !408
  %21 = fptosi double %20 to i32, !dbg !408
  store i32 %21, i32* %3, align 4, !dbg !408
  %22 = load i32, i32* %4, align 4, !dbg !409
  %23 = sdiv i32 %22, 5, !dbg !410
  store i32 %23, i32* %4, align 4, !dbg !411
  br label %24, !dbg !412

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %5, align 4, !dbg !413
  %26 = add nsw i32 %25, 1, !dbg !413
  store i32 %26, i32* %5, align 4, !dbg !413
  br label %11, !dbg !414, !llvm.loop !415

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %3, align 4, !dbg !417
  %29 = load i32, i32* %2, align 4, !dbg !419
  %30 = icmp eq i32 %28, %29, !dbg !420
  br i1 %30, label %31, label %33, !dbg !421

; <label>:31:                                     ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !422
  br label %35, !dbg !424

; <label>:33:                                     ; preds = %27
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !425
  br label %35

; <label>:35:                                     ; preds = %33, %31
  br label %6, !dbg !386, !llvm.loop !426

; <label>:36:                                     ; preds = %6
  ret i32 0, !dbg !428
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @scanf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32, i32) #3 comdat !dbg !6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !429, metadata !DIExpression()), !dbg !430
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !431, metadata !DIExpression()), !dbg !432
  %5 = load i32, i32* %3, align 4, !dbg !433
  %6 = sitofp i32 %5 to double, !dbg !433
  %7 = load i32, i32* %4, align 4, !dbg !434
  %8 = sitofp i32 %7 to double, !dbg !434
  %9 = call double @pow(double %6, double %8) #5, !dbg !435
  ret double %9, !dbg !436
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
!1 = !DIFile(filename: "gcov/../WA_c/1742620_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !6, file: !5, line: 417, baseType: !10)
!5 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cmath", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!6 = distinct !DISubprogram(name: "pow<int, int>", linkageName: "_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_", scope: !7, file: !5, line: 415, type: !8, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !21, variables: !2)
!7 = !DINamespace(name: "std", scope: null)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !16, !16}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !12, file: !11, line: 195, baseType: !19)
!11 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ext/type_traits.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__promote_2<int, int, double, double>", scope: !13, file: !11, line: 193, size: 8, elements: !2, templateParams: !14, identifier: "_ZTSN9__gnu_cxx11__promote_2IiiddEE")
!13 = !DINamespace(name: "__gnu_cxx", scope: null)
!14 = !{!15, !17, !18, !20}
!15 = !DITemplateTypeParameter(name: "_Tp", type: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DITemplateTypeParameter(name: "_Up", type: !16)
!18 = !DITemplateTypeParameter(name: "_Tp2", type: !19)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DITemplateTypeParameter(name: "_Up2", type: !19)
!21 = !{!15, !17}
!22 = !{!23, !29, !34, !36, !38, !42, !44, !46, !48, !50, !52, !54, !56, !61, !65, !67, !69, !74, !76, !78, !80, !82, !84, !86, !89, !92, !94, !98, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !127, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !165, !169, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !195, !199, !203, !205, !207, !209, !214, !218, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !251, !255, !259, !261, !263, !265, !272, !276, !280, !282, !284, !286, !288, !290, !292, !296, !300, !302, !304, !306, !308, !312, !316, !320, !322, !324, !326, !328, !330, !332, !336, !340, !344, !346, !350, !354, !356, !358, !360, !362, !364, !366, !372}
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !24, file: !28, line: 52)
!24 = !DISubprogram(name: "abs", scope: !25, file: !25, line: 837, type: !26, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!26 = !DISubroutineType(types: !27)
!27 = !{!16, !16}
!28 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !30, file: !5, line: 83)
!30 = !DISubprogram(name: "acos", scope: !31, file: !31, line: 53, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!32 = !DISubroutineType(types: !33)
!33 = !{!19, !19}
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !35, file: !5, line: 102)
!35 = !DISubprogram(name: "asin", scope: !31, file: !31, line: 55, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !37, file: !5, line: 121)
!37 = !DISubprogram(name: "atan", scope: !31, file: !31, line: 57, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !39, file: !5, line: 140)
!39 = !DISubprogram(name: "atan2", scope: !31, file: !31, line: 59, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!40 = !DISubroutineType(types: !41)
!41 = !{!19, !19, !19}
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !43, file: !5, line: 161)
!43 = !DISubprogram(name: "ceil", scope: !31, file: !31, line: 159, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !45, file: !5, line: 180)
!45 = !DISubprogram(name: "cos", scope: !31, file: !31, line: 62, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !47, file: !5, line: 199)
!47 = !DISubprogram(name: "cosh", scope: !31, file: !31, line: 71, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !49, file: !5, line: 218)
!49 = !DISubprogram(name: "exp", scope: !31, file: !31, line: 95, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !51, file: !5, line: 237)
!51 = !DISubprogram(name: "fabs", scope: !31, file: !31, line: 162, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !53, file: !5, line: 256)
!53 = !DISubprogram(name: "floor", scope: !31, file: !31, line: 165, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !55, file: !5, line: 275)
!55 = !DISubprogram(name: "fmod", scope: !31, file: !31, line: 168, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !57, file: !5, line: 296)
!57 = !DISubprogram(name: "frexp", scope: !31, file: !31, line: 98, type: !58, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DISubroutineType(types: !59)
!59 = !{!19, !19, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !62, file: !5, line: 315)
!62 = !DISubprogram(name: "ldexp", scope: !31, file: !31, line: 101, type: !63, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DISubroutineType(types: !64)
!64 = !{!19, !19, !16}
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !66, file: !5, line: 334)
!66 = !DISubprogram(name: "log", scope: !31, file: !31, line: 104, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !68, file: !5, line: 353)
!68 = !DISubprogram(name: "log10", scope: !31, file: !31, line: 107, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !70, file: !5, line: 372)
!70 = !DISubprogram(name: "modf", scope: !31, file: !31, line: 110, type: !71, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DISubroutineType(types: !72)
!72 = !{!19, !19, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !75, file: !5, line: 384)
!75 = !DISubprogram(name: "pow", scope: !31, file: !31, line: 140, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !77, file: !5, line: 421)
!77 = !DISubprogram(name: "sin", scope: !31, file: !31, line: 64, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !79, file: !5, line: 440)
!79 = !DISubprogram(name: "sinh", scope: !31, file: !31, line: 73, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !81, file: !5, line: 459)
!81 = !DISubprogram(name: "sqrt", scope: !31, file: !31, line: 143, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !83, file: !5, line: 478)
!83 = !DISubprogram(name: "tan", scope: !31, file: !31, line: 66, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !85, file: !5, line: 497)
!85 = !DISubprogram(name: "tanh", scope: !31, file: !31, line: 75, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !87, file: !5, line: 1080)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !88, line: 150, baseType: !19)
!88 = !DIFile(filename: "/usr/include/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !90, file: !5, line: 1081)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !88, line: 149, baseType: !91)
!91 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !93, file: !5, line: 1084)
!93 = !DISubprogram(name: "acosh", scope: !31, file: !31, line: 85, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !95, file: !5, line: 1085)
!95 = !DISubprogram(name: "acoshf", scope: !31, file: !31, line: 85, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!96 = !DISubroutineType(types: !97)
!97 = !{!91, !91}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !99, file: !5, line: 1086)
!99 = !DISubprogram(name: "acoshl", scope: !31, file: !31, line: 85, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !102}
!102 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !104, file: !5, line: 1088)
!104 = !DISubprogram(name: "asinh", scope: !31, file: !31, line: 87, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !106, file: !5, line: 1089)
!106 = !DISubprogram(name: "asinhf", scope: !31, file: !31, line: 87, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !108, file: !5, line: 1090)
!108 = !DISubprogram(name: "asinhl", scope: !31, file: !31, line: 87, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !110, file: !5, line: 1092)
!110 = !DISubprogram(name: "atanh", scope: !31, file: !31, line: 89, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !112, file: !5, line: 1093)
!112 = !DISubprogram(name: "atanhf", scope: !31, file: !31, line: 89, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !114, file: !5, line: 1094)
!114 = !DISubprogram(name: "atanhl", scope: !31, file: !31, line: 89, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !116, file: !5, line: 1096)
!116 = !DISubprogram(name: "cbrt", scope: !31, file: !31, line: 152, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !118, file: !5, line: 1097)
!118 = !DISubprogram(name: "cbrtf", scope: !31, file: !31, line: 152, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !120, file: !5, line: 1098)
!120 = !DISubprogram(name: "cbrtl", scope: !31, file: !31, line: 152, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !122, file: !5, line: 1100)
!122 = !DISubprogram(name: "copysign", scope: !31, file: !31, line: 196, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !124, file: !5, line: 1101)
!124 = !DISubprogram(name: "copysignf", scope: !31, file: !31, line: 196, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!91, !91, !91}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !128, file: !5, line: 1102)
!128 = !DISubprogram(name: "copysignl", scope: !31, file: !31, line: 196, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!102, !102, !102}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !132, file: !5, line: 1104)
!132 = !DISubprogram(name: "erf", scope: !31, file: !31, line: 228, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !134, file: !5, line: 1105)
!134 = !DISubprogram(name: "erff", scope: !31, file: !31, line: 228, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !136, file: !5, line: 1106)
!136 = !DISubprogram(name: "erfl", scope: !31, file: !31, line: 228, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !138, file: !5, line: 1108)
!138 = !DISubprogram(name: "erfc", scope: !31, file: !31, line: 229, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !140, file: !5, line: 1109)
!140 = !DISubprogram(name: "erfcf", scope: !31, file: !31, line: 229, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !142, file: !5, line: 1110)
!142 = !DISubprogram(name: "erfcl", scope: !31, file: !31, line: 229, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !144, file: !5, line: 1112)
!144 = !DISubprogram(name: "exp2", scope: !31, file: !31, line: 130, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !146, file: !5, line: 1113)
!146 = !DISubprogram(name: "exp2f", scope: !31, file: !31, line: 130, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !148, file: !5, line: 1114)
!148 = !DISubprogram(name: "exp2l", scope: !31, file: !31, line: 130, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !150, file: !5, line: 1116)
!150 = !DISubprogram(name: "expm1", scope: !31, file: !31, line: 119, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !152, file: !5, line: 1117)
!152 = !DISubprogram(name: "expm1f", scope: !31, file: !31, line: 119, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !154, file: !5, line: 1118)
!154 = !DISubprogram(name: "expm1l", scope: !31, file: !31, line: 119, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !156, file: !5, line: 1120)
!156 = !DISubprogram(name: "fdim", scope: !31, file: !31, line: 326, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !158, file: !5, line: 1121)
!158 = !DISubprogram(name: "fdimf", scope: !31, file: !31, line: 326, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !160, file: !5, line: 1122)
!160 = !DISubprogram(name: "fdiml", scope: !31, file: !31, line: 326, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !162, file: !5, line: 1124)
!162 = !DISubprogram(name: "fma", scope: !31, file: !31, line: 335, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!19, !19, !19, !19}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !166, file: !5, line: 1125)
!166 = !DISubprogram(name: "fmaf", scope: !31, file: !31, line: 335, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!91, !91, !91, !91}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !170, file: !5, line: 1126)
!170 = !DISubprogram(name: "fmal", scope: !31, file: !31, line: 335, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!102, !102, !102, !102}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !174, file: !5, line: 1128)
!174 = !DISubprogram(name: "fmax", scope: !31, file: !31, line: 329, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !176, file: !5, line: 1129)
!176 = !DISubprogram(name: "fmaxf", scope: !31, file: !31, line: 329, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !178, file: !5, line: 1130)
!178 = !DISubprogram(name: "fmaxl", scope: !31, file: !31, line: 329, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !180, file: !5, line: 1132)
!180 = !DISubprogram(name: "fmin", scope: !31, file: !31, line: 332, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !182, file: !5, line: 1133)
!182 = !DISubprogram(name: "fminf", scope: !31, file: !31, line: 332, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !184, file: !5, line: 1134)
!184 = !DISubprogram(name: "fminl", scope: !31, file: !31, line: 332, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !186, file: !5, line: 1136)
!186 = !DISubprogram(name: "hypot", scope: !31, file: !31, line: 147, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, file: !5, line: 1137)
!188 = !DISubprogram(name: "hypotf", scope: !31, file: !31, line: 147, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !190, file: !5, line: 1138)
!190 = !DISubprogram(name: "hypotl", scope: !31, file: !31, line: 147, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !192, file: !5, line: 1140)
!192 = !DISubprogram(name: "ilogb", scope: !31, file: !31, line: 280, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!16, !19}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !196, file: !5, line: 1141)
!196 = !DISubprogram(name: "ilogbf", scope: !31, file: !31, line: 280, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!16, !91}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !200, file: !5, line: 1142)
!200 = !DISubprogram(name: "ilogbl", scope: !31, file: !31, line: 280, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!16, !102}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !204, file: !5, line: 1144)
!204 = !DISubprogram(name: "lgamma", scope: !31, file: !31, line: 230, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !206, file: !5, line: 1145)
!206 = !DISubprogram(name: "lgammaf", scope: !31, file: !31, line: 230, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !208, file: !5, line: 1146)
!208 = !DISubprogram(name: "lgammal", scope: !31, file: !31, line: 230, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !210, file: !5, line: 1149)
!210 = !DISubprogram(name: "llrint", scope: !31, file: !31, line: 316, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !19}
!213 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !215, file: !5, line: 1150)
!215 = !DISubprogram(name: "llrintf", scope: !31, file: !31, line: 316, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!213, !91}
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !219, file: !5, line: 1151)
!219 = !DISubprogram(name: "llrintl", scope: !31, file: !31, line: 316, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{!213, !102}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !223, file: !5, line: 1153)
!223 = !DISubprogram(name: "llround", scope: !31, file: !31, line: 322, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !225, file: !5, line: 1154)
!225 = !DISubprogram(name: "llroundf", scope: !31, file: !31, line: 322, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !227, file: !5, line: 1155)
!227 = !DISubprogram(name: "llroundl", scope: !31, file: !31, line: 322, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !229, file: !5, line: 1158)
!229 = !DISubprogram(name: "log1p", scope: !31, file: !31, line: 122, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !231, file: !5, line: 1159)
!231 = !DISubprogram(name: "log1pf", scope: !31, file: !31, line: 122, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !233, file: !5, line: 1160)
!233 = !DISubprogram(name: "log1pl", scope: !31, file: !31, line: 122, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !235, file: !5, line: 1162)
!235 = !DISubprogram(name: "log2", scope: !31, file: !31, line: 133, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !237, file: !5, line: 1163)
!237 = !DISubprogram(name: "log2f", scope: !31, file: !31, line: 133, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !239, file: !5, line: 1164)
!239 = !DISubprogram(name: "log2l", scope: !31, file: !31, line: 133, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !241, file: !5, line: 1166)
!241 = !DISubprogram(name: "logb", scope: !31, file: !31, line: 125, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !243, file: !5, line: 1167)
!243 = !DISubprogram(name: "logbf", scope: !31, file: !31, line: 125, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !245, file: !5, line: 1168)
!245 = !DISubprogram(name: "logbl", scope: !31, file: !31, line: 125, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !247, file: !5, line: 1170)
!247 = !DISubprogram(name: "lrint", scope: !31, file: !31, line: 314, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !19}
!250 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !252, file: !5, line: 1171)
!252 = !DISubprogram(name: "lrintf", scope: !31, file: !31, line: 314, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{!250, !91}
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !256, file: !5, line: 1172)
!256 = !DISubprogram(name: "lrintl", scope: !31, file: !31, line: 314, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!250, !102}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !260, file: !5, line: 1174)
!260 = !DISubprogram(name: "lround", scope: !31, file: !31, line: 320, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !262, file: !5, line: 1175)
!262 = !DISubprogram(name: "lroundf", scope: !31, file: !31, line: 320, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !264, file: !5, line: 1176)
!264 = !DISubprogram(name: "lroundl", scope: !31, file: !31, line: 320, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !266, file: !5, line: 1178)
!266 = !DISubprogram(name: "nan", scope: !31, file: !31, line: 201, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!19, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !273, file: !5, line: 1179)
!273 = !DISubprogram(name: "nanf", scope: !31, file: !31, line: 201, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{!91, !269}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !277, file: !5, line: 1180)
!277 = !DISubprogram(name: "nanl", scope: !31, file: !31, line: 201, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!102, !269}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !281, file: !5, line: 1182)
!281 = !DISubprogram(name: "nearbyint", scope: !31, file: !31, line: 294, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !283, file: !5, line: 1183)
!283 = !DISubprogram(name: "nearbyintf", scope: !31, file: !31, line: 294, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !285, file: !5, line: 1184)
!285 = !DISubprogram(name: "nearbyintl", scope: !31, file: !31, line: 294, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !287, file: !5, line: 1186)
!287 = !DISubprogram(name: "nextafter", scope: !31, file: !31, line: 259, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !289, file: !5, line: 1187)
!289 = !DISubprogram(name: "nextafterf", scope: !31, file: !31, line: 259, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !291, file: !5, line: 1188)
!291 = !DISubprogram(name: "nextafterl", scope: !31, file: !31, line: 259, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !293, file: !5, line: 1190)
!293 = !DISubprogram(name: "nexttoward", scope: !31, file: !31, line: 261, type: !294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!19, !19, !102}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !297, file: !5, line: 1191)
!297 = !DISubprogram(name: "nexttowardf", scope: !31, file: !31, line: 261, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubroutineType(types: !299)
!299 = !{!91, !91, !102}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !301, file: !5, line: 1192)
!301 = !DISubprogram(name: "nexttowardl", scope: !31, file: !31, line: 261, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !303, file: !5, line: 1194)
!303 = !DISubprogram(name: "remainder", scope: !31, file: !31, line: 272, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !305, file: !5, line: 1195)
!305 = !DISubprogram(name: "remainderf", scope: !31, file: !31, line: 272, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !307, file: !5, line: 1196)
!307 = !DISubprogram(name: "remainderl", scope: !31, file: !31, line: 272, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !309, file: !5, line: 1198)
!309 = !DISubprogram(name: "remquo", scope: !31, file: !31, line: 307, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{!19, !19, !19, !60}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !313, file: !5, line: 1199)
!313 = !DISubprogram(name: "remquof", scope: !31, file: !31, line: 307, type: !314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!91, !91, !91, !60}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !317, file: !5, line: 1200)
!317 = !DISubprogram(name: "remquol", scope: !31, file: !31, line: 307, type: !318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!102, !102, !102, !60}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !321, file: !5, line: 1202)
!321 = !DISubprogram(name: "rint", scope: !31, file: !31, line: 256, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !323, file: !5, line: 1203)
!323 = !DISubprogram(name: "rintf", scope: !31, file: !31, line: 256, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !325, file: !5, line: 1204)
!325 = !DISubprogram(name: "rintl", scope: !31, file: !31, line: 256, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !327, file: !5, line: 1206)
!327 = !DISubprogram(name: "round", scope: !31, file: !31, line: 298, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !329, file: !5, line: 1207)
!329 = !DISubprogram(name: "roundf", scope: !31, file: !31, line: 298, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !331, file: !5, line: 1208)
!331 = !DISubprogram(name: "roundl", scope: !31, file: !31, line: 298, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !333, file: !5, line: 1210)
!333 = !DISubprogram(name: "scalbln", scope: !31, file: !31, line: 290, type: !334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{!19, !19, !250}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !337, file: !5, line: 1211)
!337 = !DISubprogram(name: "scalblnf", scope: !31, file: !31, line: 290, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!91, !91, !250}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !341, file: !5, line: 1212)
!341 = !DISubprogram(name: "scalblnl", scope: !31, file: !31, line: 290, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!102, !102, !250}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !345, file: !5, line: 1214)
!345 = !DISubprogram(name: "scalbn", scope: !31, file: !31, line: 276, type: !63, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !347, file: !5, line: 1215)
!347 = !DISubprogram(name: "scalbnf", scope: !31, file: !31, line: 276, type: !348, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!91, !91, !16}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !351, file: !5, line: 1216)
!351 = !DISubprogram(name: "scalbnl", scope: !31, file: !31, line: 276, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!102, !102, !16}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !355, file: !5, line: 1218)
!355 = !DISubprogram(name: "tgamma", scope: !31, file: !31, line: 235, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !357, file: !5, line: 1219)
!357 = !DISubprogram(name: "tgammaf", scope: !31, file: !31, line: 235, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !359, file: !5, line: 1220)
!359 = !DISubprogram(name: "tgammal", scope: !31, file: !31, line: 235, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !361, file: !5, line: 1222)
!361 = !DISubprogram(name: "trunc", scope: !31, file: !31, line: 302, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !363, file: !5, line: 1223)
!363 = !DISubprogram(name: "truncf", scope: !31, file: !31, line: 302, type: !96, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !365, file: !5, line: 1224)
!365 = !DISubprogram(name: "truncl", scope: !31, file: !31, line: 302, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !367, file: !371, line: 38)
!367 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !7, file: !28, line: 102, type: !368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !370}
!370 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!371 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2327")
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !373, file: !371, line: 54)
!373 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !7, file: !5, line: 380, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!102, !102, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!377 = !{i32 2, !"Dwarf Version", i32 4}
!378 = !{i32 2, !"Debug Info Version", i32 3}
!379 = !{i32 1, !"wchar_size", i32 4}
!380 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!381 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !382, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!382 = !DISubroutineType(types: !383)
!383 = !{!16}
!384 = !DILocalVariable(name: "a", scope: !381, file: !1, line: 5, type: !16)
!385 = !DILocation(line: 5, column: 9, scope: !381)
!386 = !DILocation(line: 6, column: 5, scope: !381)
!387 = !DILocation(line: 6, column: 12, scope: !381)
!388 = !DILocation(line: 6, column: 29, scope: !381)
!389 = !DILocalVariable(name: "sum", scope: !390, file: !1, line: 8, type: !16)
!390 = distinct !DILexicalBlock(scope: !381, file: !1, line: 7, column: 5)
!391 = !DILocation(line: 8, column: 13, scope: !390)
!392 = !DILocalVariable(name: "number", scope: !390, file: !1, line: 9, type: !16)
!393 = !DILocation(line: 9, column: 13, scope: !390)
!394 = !DILocation(line: 10, column: 18, scope: !390)
!395 = !DILocation(line: 10, column: 16, scope: !390)
!396 = !DILocalVariable(name: "i", scope: !397, file: !1, line: 11, type: !16)
!397 = distinct !DILexicalBlock(scope: !390, file: !1, line: 11, column: 9)
!398 = !DILocation(line: 11, column: 18, scope: !397)
!399 = !DILocation(line: 11, column: 14, scope: !397)
!400 = !DILocation(line: 11, column: 25, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !1, line: 11, column: 9)
!402 = !DILocation(line: 11, column: 27, scope: !401)
!403 = !DILocation(line: 11, column: 9, scope: !397)
!404 = !DILocation(line: 13, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 12, column: 9)
!406 = !DILocation(line: 13, column: 31, scope: !405)
!407 = !DILocation(line: 13, column: 20, scope: !405)
!408 = !DILocation(line: 13, column: 17, scope: !405)
!409 = !DILocation(line: 15, column: 22, scope: !405)
!410 = !DILocation(line: 15, column: 29, scope: !405)
!411 = !DILocation(line: 15, column: 20, scope: !405)
!412 = !DILocation(line: 16, column: 9, scope: !405)
!413 = !DILocation(line: 11, column: 33, scope: !401)
!414 = !DILocation(line: 11, column: 9, scope: !401)
!415 = distinct !{!415, !403, !416}
!416 = !DILocation(line: 16, column: 9, scope: !397)
!417 = !DILocation(line: 17, column: 13, scope: !418)
!418 = distinct !DILexicalBlock(scope: !390, file: !1, line: 17, column: 13)
!419 = !DILocation(line: 17, column: 20, scope: !418)
!420 = !DILocation(line: 17, column: 17, scope: !418)
!421 = !DILocation(line: 17, column: 13, scope: !390)
!422 = !DILocation(line: 19, column: 13, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !1, line: 18, column: 9)
!424 = !DILocation(line: 20, column: 9, scope: !423)
!425 = !DILocation(line: 21, column: 14, scope: !418)
!426 = distinct !{!426, !386, !427}
!427 = !DILocation(line: 22, column: 5, scope: !381)
!428 = !DILocation(line: 23, column: 5, scope: !381)
!429 = !DILocalVariable(name: "__x", arg: 1, scope: !6, file: !5, line: 415, type: !16)
!430 = !DILocation(line: 415, column: 13, scope: !6)
!431 = !DILocalVariable(name: "__y", arg: 2, scope: !6, file: !5, line: 415, type: !16)
!432 = !DILocation(line: 415, column: 22, scope: !6)
!433 = !DILocation(line: 418, column: 25, scope: !6)
!434 = !DILocation(line: 418, column: 38, scope: !6)
!435 = !DILocation(line: 418, column: 14, scope: !6)
!436 = !DILocation(line: 418, column: 7, scope: !6)
