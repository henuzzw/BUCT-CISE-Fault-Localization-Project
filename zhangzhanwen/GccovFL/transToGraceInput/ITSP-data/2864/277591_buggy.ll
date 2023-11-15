; ModuleID = 'gcov/../WA_c/277591_buggy.c'
source_filename = "gcov/../WA_c/277591_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1

; Function Attrs: noinline optnone uwtable
define i32 @_Z11check_primei(i32) #0 !dbg !366 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !367, metadata !DIExpression()), !dbg !368
  %6 = load i32, i32* %3, align 4, !dbg !369
  %7 = srem i32 %6, 2, !dbg !371
  %8 = icmp eq i32 %7, 0, !dbg !372
  br i1 %8, label %12, label %9, !dbg !373

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !374
  %11 = icmp eq i32 %10, 1, !dbg !375
  br i1 %11, label %12, label %13, !dbg !376

; <label>:12:                                     ; preds = %9, %1
  store i32 0, i32* %2, align 4, !dbg !377
  br label %32, !dbg !377

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %4, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata i32* %5, metadata !381, metadata !DIExpression()), !dbg !382
  %14 = load i32, i32* %3, align 4, !dbg !383
  %15 = call double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 %14), !dbg !384
  %16 = fptosi double %15 to i32, !dbg !384
  store i32 %16, i32* %5, align 4, !dbg !385
  store i32 3, i32* %4, align 4, !dbg !386
  br label %17, !dbg !388

; <label>:17:                                     ; preds = %28, %13
  %18 = load i32, i32* %4, align 4, !dbg !389
  %19 = load i32, i32* %5, align 4, !dbg !391
  %20 = icmp sle i32 %18, %19, !dbg !392
  br i1 %20, label %21, label %31, !dbg !393

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %3, align 4, !dbg !394
  %23 = load i32, i32* %4, align 4, !dbg !397
  %24 = srem i32 %22, %23, !dbg !398
  %25 = icmp eq i32 %24, 0, !dbg !399
  br i1 %25, label %26, label %27, !dbg !400

; <label>:26:                                     ; preds = %21
  store i32 0, i32* %2, align 4, !dbg !401
  br label %32, !dbg !401

; <label>:27:                                     ; preds = %21
  br label %28, !dbg !403

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %4, align 4, !dbg !404
  %30 = add nsw i32 %29, 1, !dbg !404
  store i32 %30, i32* %4, align 4, !dbg !404
  br label %17, !dbg !405, !llvm.loop !406

; <label>:31:                                     ; preds = %17
  store i32 1, i32* %2, align 4, !dbg !408
  br label %32, !dbg !408

; <label>:32:                                     ; preds = %31, %26, %12
  %33 = load i32, i32* %2, align 4, !dbg !409
  ret i32 %33, !dbg !409
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32) #2 comdat !dbg !410 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !423, metadata !DIExpression()), !dbg !424
  %3 = load i32, i32* %2, align 4, !dbg !425
  %4 = sitofp i32 %3 to double, !dbg !425
  %5 = call double @sqrt(double %4) #6, !dbg !426
  ret double %5, !dbg !427
}

; Function Attrs: noinline optnone uwtable
define void @_Z10disp_primei(i32) #0 !dbg !428 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !431, metadata !DIExpression()), !dbg !432
  %3 = load i32, i32* %2, align 4, !dbg !433
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %3), !dbg !434
  ret void, !dbg !435
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline optnone uwtable
define void @_Z7processii(i32, i32) #0 !dbg !436 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !439, metadata !DIExpression()), !dbg !440
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %5, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %6, metadata !445, metadata !DIExpression()), !dbg !446
  %7 = load i32, i32* %3, align 4, !dbg !447
  store i32 %7, i32* %5, align 4, !dbg !449
  br label %8, !dbg !450

; <label>:8:                                      ; preds = %20, %2
  %9 = load i32, i32* %5, align 4, !dbg !451
  %10 = load i32, i32* %4, align 4, !dbg !453
  %11 = icmp sle i32 %9, %10, !dbg !454
  br i1 %11, label %12, label %23, !dbg !455

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %5, align 4, !dbg !456
  %14 = call i32 @_Z11check_primei(i32 %13), !dbg !458
  store i32 %14, i32* %6, align 4, !dbg !459
  %15 = load i32, i32* %6, align 4, !dbg !460
  %16 = icmp ne i32 %15, 0, !dbg !462
  br i1 %16, label %17, label %19, !dbg !463

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %5, align 4, !dbg !464
  call void @_Z10disp_primei(i32 %18), !dbg !466
  br label %19, !dbg !467

; <label>:19:                                     ; preds = %17, %12
  br label %20, !dbg !468

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %5, align 4, !dbg !469
  %22 = add nsw i32 %21, 1, !dbg !469
  store i32 %22, i32* %5, align 4, !dbg !469
  br label %8, !dbg !470, !llvm.loop !471

; <label>:23:                                     ; preds = %8
  ret void, !dbg !473
}

; Function Attrs: noinline optnone uwtable
define void @_Z7ent_numv() #0 !dbg !474 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %2, metadata !479, metadata !DIExpression()), !dbg !480
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %1, i32* %2), !dbg !481
  %4 = load i32, i32* %1, align 4, !dbg !482
  %5 = load i32, i32* %2, align 4, !dbg !483
  call void @_Z7processii(i32 %4, i32 %5), !dbg !484
  ret void, !dbg !485
}

declare i32 @scanf(i8*, ...) #3

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #4 !dbg !486 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z7ent_numv(), !dbg !489
  ret i32 0, !dbg !490
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!362, !363, !364}
!llvm.ident = !{!365}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3)
!1 = !DIFile(filename: "gcov/../WA_c/277591_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!2 = !{}
!3 = !{!4, !12, !19, !21, !23, !27, !29, !31, !33, !35, !37, !39, !41, !46, !50, !52, !54, !59, !61, !63, !65, !67, !69, !71, !74, !77, !79, !83, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !112, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !150, !154, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !180, !184, !188, !190, !192, !194, !199, !203, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !236, !240, !244, !246, !248, !250, !257, !261, !265, !267, !269, !271, !273, !275, !277, !281, !285, !287, !289, !291, !293, !297, !301, !305, !307, !309, !311, !313, !315, !317, !321, !325, !329, !331, !335, !339, !341, !343, !345, !347, !349, !351, !357}
!4 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !6, file: !11, line: 52)
!5 = !DINamespace(name: "std", scope: null)
!6 = !DISubprogram(name: "abs", scope: !7, file: !7, line: 837, type: !8, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!7 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!12 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !13, file: !18, line: 83)
!13 = !DISubprogram(name: "acos", scope: !14, file: !14, line: 53, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17}
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cmath", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!19 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !20, file: !18, line: 102)
!20 = !DISubprogram(name: "asin", scope: !14, file: !14, line: 55, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!21 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !22, file: !18, line: 121)
!22 = !DISubprogram(name: "atan", scope: !14, file: !14, line: 57, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !24, file: !18, line: 140)
!24 = !DISubprogram(name: "atan2", scope: !14, file: !14, line: 59, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!25 = !DISubroutineType(types: !26)
!26 = !{!17, !17, !17}
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !28, file: !18, line: 161)
!28 = !DISubprogram(name: "ceil", scope: !14, file: !14, line: 159, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !30, file: !18, line: 180)
!30 = !DISubprogram(name: "cos", scope: !14, file: !14, line: 62, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !32, file: !18, line: 199)
!32 = !DISubprogram(name: "cosh", scope: !14, file: !14, line: 71, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !34, file: !18, line: 218)
!34 = !DISubprogram(name: "exp", scope: !14, file: !14, line: 95, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !36, file: !18, line: 237)
!36 = !DISubprogram(name: "fabs", scope: !14, file: !14, line: 162, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !38, file: !18, line: 256)
!38 = !DISubprogram(name: "floor", scope: !14, file: !14, line: 165, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !40, file: !18, line: 275)
!40 = !DISubprogram(name: "fmod", scope: !14, file: !14, line: 168, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !42, file: !18, line: 296)
!42 = !DISubprogram(name: "frexp", scope: !14, file: !14, line: 98, type: !43, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!43 = !DISubroutineType(types: !44)
!44 = !{!17, !17, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !47, file: !18, line: 315)
!47 = !DISubprogram(name: "ldexp", scope: !14, file: !14, line: 101, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DISubroutineType(types: !49)
!49 = !{!17, !17, !10}
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !51, file: !18, line: 334)
!51 = !DISubprogram(name: "log", scope: !14, file: !14, line: 104, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !53, file: !18, line: 353)
!53 = !DISubprogram(name: "log10", scope: !14, file: !14, line: 107, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !55, file: !18, line: 372)
!55 = !DISubprogram(name: "modf", scope: !14, file: !14, line: 110, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DISubroutineType(types: !57)
!57 = !{!17, !17, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !60, file: !18, line: 384)
!60 = !DISubprogram(name: "pow", scope: !14, file: !14, line: 140, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !62, file: !18, line: 421)
!62 = !DISubprogram(name: "sin", scope: !14, file: !14, line: 64, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !64, file: !18, line: 440)
!64 = !DISubprogram(name: "sinh", scope: !14, file: !14, line: 73, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !66, file: !18, line: 459)
!66 = !DISubprogram(name: "sqrt", scope: !14, file: !14, line: 143, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !68, file: !18, line: 478)
!68 = !DISubprogram(name: "tan", scope: !14, file: !14, line: 66, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !70, file: !18, line: 497)
!70 = !DISubprogram(name: "tanh", scope: !14, file: !14, line: 75, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !72, file: !18, line: 1080)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !73, line: 150, baseType: !17)
!73 = !DIFile(filename: "/usr/include/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !75, file: !18, line: 1081)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !73, line: 149, baseType: !76)
!76 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !78, file: !18, line: 1084)
!78 = !DISubprogram(name: "acosh", scope: !14, file: !14, line: 85, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !80, file: !18, line: 1085)
!80 = !DISubprogram(name: "acoshf", scope: !14, file: !14, line: 85, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DISubroutineType(types: !82)
!82 = !{!76, !76}
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !84, file: !18, line: 1086)
!84 = !DISubprogram(name: "acoshl", scope: !14, file: !14, line: 85, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !87}
!87 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !89, file: !18, line: 1088)
!89 = !DISubprogram(name: "asinh", scope: !14, file: !14, line: 87, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !91, file: !18, line: 1089)
!91 = !DISubprogram(name: "asinhf", scope: !14, file: !14, line: 87, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !93, file: !18, line: 1090)
!93 = !DISubprogram(name: "asinhl", scope: !14, file: !14, line: 87, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !95, file: !18, line: 1092)
!95 = !DISubprogram(name: "atanh", scope: !14, file: !14, line: 89, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !97, file: !18, line: 1093)
!97 = !DISubprogram(name: "atanhf", scope: !14, file: !14, line: 89, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !99, file: !18, line: 1094)
!99 = !DISubprogram(name: "atanhl", scope: !14, file: !14, line: 89, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !101, file: !18, line: 1096)
!101 = !DISubprogram(name: "cbrt", scope: !14, file: !14, line: 152, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !103, file: !18, line: 1097)
!103 = !DISubprogram(name: "cbrtf", scope: !14, file: !14, line: 152, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !105, file: !18, line: 1098)
!105 = !DISubprogram(name: "cbrtl", scope: !14, file: !14, line: 152, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !107, file: !18, line: 1100)
!107 = !DISubprogram(name: "copysign", scope: !14, file: !14, line: 196, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !109, file: !18, line: 1101)
!109 = !DISubprogram(name: "copysignf", scope: !14, file: !14, line: 196, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DISubroutineType(types: !111)
!111 = !{!76, !76, !76}
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !113, file: !18, line: 1102)
!113 = !DISubprogram(name: "copysignl", scope: !14, file: !14, line: 196, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!87, !87, !87}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !117, file: !18, line: 1104)
!117 = !DISubprogram(name: "erf", scope: !14, file: !14, line: 228, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !119, file: !18, line: 1105)
!119 = !DISubprogram(name: "erff", scope: !14, file: !14, line: 228, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !121, file: !18, line: 1106)
!121 = !DISubprogram(name: "erfl", scope: !14, file: !14, line: 228, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !123, file: !18, line: 1108)
!123 = !DISubprogram(name: "erfc", scope: !14, file: !14, line: 229, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !125, file: !18, line: 1109)
!125 = !DISubprogram(name: "erfcf", scope: !14, file: !14, line: 229, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !127, file: !18, line: 1110)
!127 = !DISubprogram(name: "erfcl", scope: !14, file: !14, line: 229, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !129, file: !18, line: 1112)
!129 = !DISubprogram(name: "exp2", scope: !14, file: !14, line: 130, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !131, file: !18, line: 1113)
!131 = !DISubprogram(name: "exp2f", scope: !14, file: !14, line: 130, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !133, file: !18, line: 1114)
!133 = !DISubprogram(name: "exp2l", scope: !14, file: !14, line: 130, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !135, file: !18, line: 1116)
!135 = !DISubprogram(name: "expm1", scope: !14, file: !14, line: 119, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !137, file: !18, line: 1117)
!137 = !DISubprogram(name: "expm1f", scope: !14, file: !14, line: 119, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !139, file: !18, line: 1118)
!139 = !DISubprogram(name: "expm1l", scope: !14, file: !14, line: 119, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !141, file: !18, line: 1120)
!141 = !DISubprogram(name: "fdim", scope: !14, file: !14, line: 326, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !143, file: !18, line: 1121)
!143 = !DISubprogram(name: "fdimf", scope: !14, file: !14, line: 326, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !145, file: !18, line: 1122)
!145 = !DISubprogram(name: "fdiml", scope: !14, file: !14, line: 326, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !147, file: !18, line: 1124)
!147 = !DISubprogram(name: "fma", scope: !14, file: !14, line: 335, type: !148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DISubroutineType(types: !149)
!149 = !{!17, !17, !17, !17}
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !151, file: !18, line: 1125)
!151 = !DISubprogram(name: "fmaf", scope: !14, file: !14, line: 335, type: !152, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DISubroutineType(types: !153)
!153 = !{!76, !76, !76, !76}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !155, file: !18, line: 1126)
!155 = !DISubprogram(name: "fmal", scope: !14, file: !14, line: 335, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DISubroutineType(types: !157)
!157 = !{!87, !87, !87, !87}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !159, file: !18, line: 1128)
!159 = !DISubprogram(name: "fmax", scope: !14, file: !14, line: 329, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !161, file: !18, line: 1129)
!161 = !DISubprogram(name: "fmaxf", scope: !14, file: !14, line: 329, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !163, file: !18, line: 1130)
!163 = !DISubprogram(name: "fmaxl", scope: !14, file: !14, line: 329, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !165, file: !18, line: 1132)
!165 = !DISubprogram(name: "fmin", scope: !14, file: !14, line: 332, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !167, file: !18, line: 1133)
!167 = !DISubprogram(name: "fminf", scope: !14, file: !14, line: 332, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !169, file: !18, line: 1134)
!169 = !DISubprogram(name: "fminl", scope: !14, file: !14, line: 332, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !171, file: !18, line: 1136)
!171 = !DISubprogram(name: "hypot", scope: !14, file: !14, line: 147, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !173, file: !18, line: 1137)
!173 = !DISubprogram(name: "hypotf", scope: !14, file: !14, line: 147, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !175, file: !18, line: 1138)
!175 = !DISubprogram(name: "hypotl", scope: !14, file: !14, line: 147, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !177, file: !18, line: 1140)
!177 = !DISubprogram(name: "ilogb", scope: !14, file: !14, line: 280, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!10, !17}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !181, file: !18, line: 1141)
!181 = !DISubprogram(name: "ilogbf", scope: !14, file: !14, line: 280, type: !182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DISubroutineType(types: !183)
!183 = !{!10, !76}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !185, file: !18, line: 1142)
!185 = !DISubprogram(name: "ilogbl", scope: !14, file: !14, line: 280, type: !186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DISubroutineType(types: !187)
!187 = !{!10, !87}
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !189, file: !18, line: 1144)
!189 = !DISubprogram(name: "lgamma", scope: !14, file: !14, line: 230, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !191, file: !18, line: 1145)
!191 = !DISubprogram(name: "lgammaf", scope: !14, file: !14, line: 230, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !193, file: !18, line: 1146)
!193 = !DISubprogram(name: "lgammal", scope: !14, file: !14, line: 230, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !195, file: !18, line: 1149)
!195 = !DISubprogram(name: "llrint", scope: !14, file: !14, line: 316, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !17}
!198 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !200, file: !18, line: 1150)
!200 = !DISubprogram(name: "llrintf", scope: !14, file: !14, line: 316, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!198, !76}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !204, file: !18, line: 1151)
!204 = !DISubprogram(name: "llrintl", scope: !14, file: !14, line: 316, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!198, !87}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !208, file: !18, line: 1153)
!208 = !DISubprogram(name: "llround", scope: !14, file: !14, line: 322, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !210, file: !18, line: 1154)
!210 = !DISubprogram(name: "llroundf", scope: !14, file: !14, line: 322, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !212, file: !18, line: 1155)
!212 = !DISubprogram(name: "llroundl", scope: !14, file: !14, line: 322, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !214, file: !18, line: 1158)
!214 = !DISubprogram(name: "log1p", scope: !14, file: !14, line: 122, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !216, file: !18, line: 1159)
!216 = !DISubprogram(name: "log1pf", scope: !14, file: !14, line: 122, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !218, file: !18, line: 1160)
!218 = !DISubprogram(name: "log1pl", scope: !14, file: !14, line: 122, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !220, file: !18, line: 1162)
!220 = !DISubprogram(name: "log2", scope: !14, file: !14, line: 133, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !222, file: !18, line: 1163)
!222 = !DISubprogram(name: "log2f", scope: !14, file: !14, line: 133, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !224, file: !18, line: 1164)
!224 = !DISubprogram(name: "log2l", scope: !14, file: !14, line: 133, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !226, file: !18, line: 1166)
!226 = !DISubprogram(name: "logb", scope: !14, file: !14, line: 125, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !228, file: !18, line: 1167)
!228 = !DISubprogram(name: "logbf", scope: !14, file: !14, line: 125, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !230, file: !18, line: 1168)
!230 = !DISubprogram(name: "logbl", scope: !14, file: !14, line: 125, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !232, file: !18, line: 1170)
!232 = !DISubprogram(name: "lrint", scope: !14, file: !14, line: 314, type: !233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !17}
!235 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !237, file: !18, line: 1171)
!237 = !DISubprogram(name: "lrintf", scope: !14, file: !14, line: 314, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!235, !76}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !241, file: !18, line: 1172)
!241 = !DISubprogram(name: "lrintl", scope: !14, file: !14, line: 314, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubroutineType(types: !243)
!243 = !{!235, !87}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !245, file: !18, line: 1174)
!245 = !DISubprogram(name: "lround", scope: !14, file: !14, line: 320, type: !233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !247, file: !18, line: 1175)
!247 = !DISubprogram(name: "lroundf", scope: !14, file: !14, line: 320, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !249, file: !18, line: 1176)
!249 = !DISubprogram(name: "lroundl", scope: !14, file: !14, line: 320, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !251, file: !18, line: 1178)
!251 = !DISubprogram(name: "nan", scope: !14, file: !14, line: 201, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{!17, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !258, file: !18, line: 1179)
!258 = !DISubprogram(name: "nanf", scope: !14, file: !14, line: 201, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{!76, !254}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !262, file: !18, line: 1180)
!262 = !DISubprogram(name: "nanl", scope: !14, file: !14, line: 201, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{!87, !254}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !266, file: !18, line: 1182)
!266 = !DISubprogram(name: "nearbyint", scope: !14, file: !14, line: 294, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !268, file: !18, line: 1183)
!268 = !DISubprogram(name: "nearbyintf", scope: !14, file: !14, line: 294, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !270, file: !18, line: 1184)
!270 = !DISubprogram(name: "nearbyintl", scope: !14, file: !14, line: 294, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !272, file: !18, line: 1186)
!272 = !DISubprogram(name: "nextafter", scope: !14, file: !14, line: 259, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !274, file: !18, line: 1187)
!274 = !DISubprogram(name: "nextafterf", scope: !14, file: !14, line: 259, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !276, file: !18, line: 1188)
!276 = !DISubprogram(name: "nextafterl", scope: !14, file: !14, line: 259, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !278, file: !18, line: 1190)
!278 = !DISubprogram(name: "nexttoward", scope: !14, file: !14, line: 261, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!17, !17, !87}
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !282, file: !18, line: 1191)
!282 = !DISubprogram(name: "nexttowardf", scope: !14, file: !14, line: 261, type: !283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DISubroutineType(types: !284)
!284 = !{!76, !76, !87}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !286, file: !18, line: 1192)
!286 = !DISubprogram(name: "nexttowardl", scope: !14, file: !14, line: 261, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !288, file: !18, line: 1194)
!288 = !DISubprogram(name: "remainder", scope: !14, file: !14, line: 272, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !290, file: !18, line: 1195)
!290 = !DISubprogram(name: "remainderf", scope: !14, file: !14, line: 272, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !292, file: !18, line: 1196)
!292 = !DISubprogram(name: "remainderl", scope: !14, file: !14, line: 272, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !294, file: !18, line: 1198)
!294 = !DISubprogram(name: "remquo", scope: !14, file: !14, line: 307, type: !295, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!17, !17, !17, !45}
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !298, file: !18, line: 1199)
!298 = !DISubprogram(name: "remquof", scope: !14, file: !14, line: 307, type: !299, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DISubroutineType(types: !300)
!300 = !{!76, !76, !76, !45}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !302, file: !18, line: 1200)
!302 = !DISubprogram(name: "remquol", scope: !14, file: !14, line: 307, type: !303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{!87, !87, !87, !45}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !306, file: !18, line: 1202)
!306 = !DISubprogram(name: "rint", scope: !14, file: !14, line: 256, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !308, file: !18, line: 1203)
!308 = !DISubprogram(name: "rintf", scope: !14, file: !14, line: 256, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !310, file: !18, line: 1204)
!310 = !DISubprogram(name: "rintl", scope: !14, file: !14, line: 256, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !312, file: !18, line: 1206)
!312 = !DISubprogram(name: "round", scope: !14, file: !14, line: 298, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !314, file: !18, line: 1207)
!314 = !DISubprogram(name: "roundf", scope: !14, file: !14, line: 298, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !316, file: !18, line: 1208)
!316 = !DISubprogram(name: "roundl", scope: !14, file: !14, line: 298, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !318, file: !18, line: 1210)
!318 = !DISubprogram(name: "scalbln", scope: !14, file: !14, line: 290, type: !319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DISubroutineType(types: !320)
!320 = !{!17, !17, !235}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !322, file: !18, line: 1211)
!322 = !DISubprogram(name: "scalblnf", scope: !14, file: !14, line: 290, type: !323, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DISubroutineType(types: !324)
!324 = !{!76, !76, !235}
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !326, file: !18, line: 1212)
!326 = !DISubprogram(name: "scalblnl", scope: !14, file: !14, line: 290, type: !327, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{!87, !87, !235}
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !330, file: !18, line: 1214)
!330 = !DISubprogram(name: "scalbn", scope: !14, file: !14, line: 276, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !332, file: !18, line: 1215)
!332 = !DISubprogram(name: "scalbnf", scope: !14, file: !14, line: 276, type: !333, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DISubroutineType(types: !334)
!334 = !{!76, !76, !10}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !336, file: !18, line: 1216)
!336 = !DISubprogram(name: "scalbnl", scope: !14, file: !14, line: 276, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{!87, !87, !10}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !340, file: !18, line: 1218)
!340 = !DISubprogram(name: "tgamma", scope: !14, file: !14, line: 235, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !342, file: !18, line: 1219)
!342 = !DISubprogram(name: "tgammaf", scope: !14, file: !14, line: 235, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !344, file: !18, line: 1220)
!344 = !DISubprogram(name: "tgammal", scope: !14, file: !14, line: 235, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !346, file: !18, line: 1222)
!346 = !DISubprogram(name: "trunc", scope: !14, file: !14, line: 302, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !348, file: !18, line: 1223)
!348 = !DISubprogram(name: "truncf", scope: !14, file: !14, line: 302, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !350, file: !18, line: 1224)
!350 = !DISubprogram(name: "truncl", scope: !14, file: !14, line: 302, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !352, file: !356, line: 38)
!352 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !5, file: !11, line: 102, type: !353, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !355}
!355 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!356 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/math.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !358, file: !356, line: 54)
!358 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !5, file: !18, line: 380, type: !359, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{!87, !87, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!362 = !{i32 2, !"Dwarf Version", i32 4}
!363 = !{i32 2, !"Debug Info Version", i32 3}
!364 = !{i32 1, !"wchar_size", i32 4}
!365 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!366 = distinct !DISubprogram(name: "check_prime", linkageName: "_Z11check_primei", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!367 = !DILocalVariable(name: "num", arg: 1, scope: !366, file: !1, line: 3, type: !10)
!368 = !DILocation(line: 3, column: 21, scope: !366)
!369 = !DILocation(line: 5, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !1, line: 5, column: 8)
!371 = !DILocation(line: 5, column: 11, scope: !370)
!372 = !DILocation(line: 5, column: 13, scope: !370)
!373 = !DILocation(line: 5, column: 16, scope: !370)
!374 = !DILocation(line: 5, column: 18, scope: !370)
!375 = !DILocation(line: 5, column: 21, scope: !370)
!376 = !DILocation(line: 5, column: 8, scope: !366)
!377 = !DILocation(line: 7, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !1, line: 6, column: 5)
!379 = !DILocalVariable(name: "j", scope: !366, file: !1, line: 9, type: !10)
!380 = !DILocation(line: 9, column: 9, scope: !366)
!381 = !DILocalVariable(name: "k", scope: !366, file: !1, line: 9, type: !10)
!382 = !DILocation(line: 9, column: 11, scope: !366)
!383 = !DILocation(line: 10, column: 12, scope: !366)
!384 = !DILocation(line: 10, column: 7, scope: !366)
!385 = !DILocation(line: 10, column: 6, scope: !366)
!386 = !DILocation(line: 11, column: 10, scope: !387)
!387 = distinct !DILexicalBlock(scope: !366, file: !1, line: 11, column: 5)
!388 = !DILocation(line: 11, column: 9, scope: !387)
!389 = !DILocation(line: 11, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 11, column: 5)
!391 = !DILocation(line: 11, column: 17, scope: !390)
!392 = !DILocation(line: 11, column: 15, scope: !390)
!393 = !DILocation(line: 11, column: 5, scope: !387)
!394 = !DILocation(line: 13, column: 12, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 13, column: 12)
!396 = distinct !DILexicalBlock(scope: !390, file: !1, line: 12, column: 5)
!397 = !DILocation(line: 13, column: 16, scope: !395)
!398 = !DILocation(line: 13, column: 15, scope: !395)
!399 = !DILocation(line: 13, column: 17, scope: !395)
!400 = !DILocation(line: 13, column: 12, scope: !396)
!401 = !DILocation(line: 15, column: 13, scope: !402)
!402 = distinct !DILexicalBlock(scope: !395, file: !1, line: 14, column: 9)
!403 = !DILocation(line: 17, column: 5, scope: !396)
!404 = !DILocation(line: 11, column: 21, scope: !390)
!405 = !DILocation(line: 11, column: 5, scope: !390)
!406 = distinct !{!406, !393, !407}
!407 = !DILocation(line: 17, column: 5, scope: !387)
!408 = !DILocation(line: 18, column: 5, scope: !366)
!409 = !DILocation(line: 19, column: 1, scope: !366)
!410 = distinct !DISubprogram(name: "sqrt<int>", linkageName: "_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_", scope: !5, file: !18, line: 475, type: !411, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !421, variables: !2)
!411 = !DISubroutineType(types: !412)
!412 = !{!413, !10}
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !415, file: !414, line: 50, baseType: !17)
!414 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ext/type_traits.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2864")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, double>", scope: !416, file: !414, line: 49, size: 8, elements: !2, templateParams: !417, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EdEE")
!416 = !DINamespace(name: "__gnu_cxx", scope: null)
!417 = !{!418, !420}
!418 = !DITemplateValueParameter(type: !419, value: i8 1)
!419 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!420 = !DITemplateTypeParameter(type: !17)
!421 = !{!422}
!422 = !DITemplateTypeParameter(name: "_Tp", type: !10)
!423 = !DILocalVariable(name: "__x", arg: 1, scope: !410, file: !18, line: 475, type: !10)
!424 = !DILocation(line: 475, column: 14, scope: !410)
!425 = !DILocation(line: 476, column: 29, scope: !410)
!426 = !DILocation(line: 476, column: 14, scope: !410)
!427 = !DILocation(line: 476, column: 7, scope: !410)
!428 = distinct !DISubprogram(name: "disp_prime", linkageName: "_Z10disp_primei", scope: !1, file: !1, line: 20, type: !429, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !10}
!431 = !DILocalVariable(name: "a", arg: 1, scope: !428, file: !1, line: 20, type: !10)
!432 = !DILocation(line: 20, column: 21, scope: !428)
!433 = !DILocation(line: 22, column: 18, scope: !428)
!434 = !DILocation(line: 22, column: 5, scope: !428)
!435 = !DILocation(line: 23, column: 1, scope: !428)
!436 = distinct !DISubprogram(name: "process", linkageName: "_Z7processii", scope: !1, file: !1, line: 24, type: !437, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !10, !10}
!439 = !DILocalVariable(name: "n1", arg: 1, scope: !436, file: !1, line: 24, type: !10)
!440 = !DILocation(line: 24, column: 18, scope: !436)
!441 = !DILocalVariable(name: "n2", arg: 2, scope: !436, file: !1, line: 24, type: !10)
!442 = !DILocation(line: 24, column: 25, scope: !436)
!443 = !DILocalVariable(name: "i", scope: !436, file: !1, line: 26, type: !10)
!444 = !DILocation(line: 26, column: 9, scope: !436)
!445 = !DILocalVariable(name: "c", scope: !436, file: !1, line: 26, type: !10)
!446 = !DILocation(line: 26, column: 11, scope: !436)
!447 = !DILocation(line: 27, column: 11, scope: !448)
!448 = distinct !DILexicalBlock(scope: !436, file: !1, line: 27, column: 5)
!449 = !DILocation(line: 27, column: 10, scope: !448)
!450 = !DILocation(line: 27, column: 9, scope: !448)
!451 = !DILocation(line: 27, column: 15, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !1, line: 27, column: 5)
!453 = !DILocation(line: 27, column: 18, scope: !452)
!454 = !DILocation(line: 27, column: 16, scope: !452)
!455 = !DILocation(line: 27, column: 5, scope: !448)
!456 = !DILocation(line: 29, column: 23, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !1, line: 28, column: 5)
!458 = !DILocation(line: 29, column: 11, scope: !457)
!459 = !DILocation(line: 29, column: 10, scope: !457)
!460 = !DILocation(line: 31, column: 12, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !1, line: 31, column: 12)
!462 = !DILocation(line: 31, column: 13, scope: !461)
!463 = !DILocation(line: 31, column: 12, scope: !457)
!464 = !DILocation(line: 33, column: 24, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !1, line: 32, column: 9)
!466 = !DILocation(line: 33, column: 13, scope: !465)
!467 = !DILocation(line: 34, column: 9, scope: !465)
!468 = !DILocation(line: 35, column: 5, scope: !457)
!469 = !DILocation(line: 27, column: 23, scope: !452)
!470 = !DILocation(line: 27, column: 5, scope: !452)
!471 = distinct !{!471, !455, !472}
!472 = !DILocation(line: 35, column: 5, scope: !448)
!473 = !DILocation(line: 36, column: 1, scope: !436)
!474 = distinct !DISubprogram(name: "ent_num", linkageName: "_Z7ent_numv", scope: !1, file: !1, line: 37, type: !475, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!475 = !DISubroutineType(types: !476)
!476 = !{null}
!477 = !DILocalVariable(name: "n1", scope: !474, file: !1, line: 39, type: !10)
!478 = !DILocation(line: 39, column: 9, scope: !474)
!479 = !DILocalVariable(name: "n2", scope: !474, file: !1, line: 39, type: !10)
!480 = !DILocation(line: 39, column: 12, scope: !474)
!481 = !DILocation(line: 40, column: 5, scope: !474)
!482 = !DILocation(line: 41, column: 13, scope: !474)
!483 = !DILocation(line: 41, column: 16, scope: !474)
!484 = !DILocation(line: 41, column: 5, scope: !474)
!485 = !DILocation(line: 42, column: 1, scope: !474)
!486 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 44, type: !487, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!487 = !DISubroutineType(types: !488)
!488 = !{!10}
!489 = !DILocation(line: 46, column: 5, scope: !486)
!490 = !DILocation(line: 47, column: 5, scope: !486)
