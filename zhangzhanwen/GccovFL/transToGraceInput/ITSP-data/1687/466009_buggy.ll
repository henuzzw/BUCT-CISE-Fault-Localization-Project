; ModuleID = 'gcov/../WA_c/466009_buggy.c'
source_filename = "gcov/../WA_c/466009_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define i32 @_Z3gcdii(i32, i32) #0 !dbg !281 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !286, metadata !DIExpression()), !dbg !287
  %6 = load i32, i32* %5, align 4, !dbg !288
  %7 = icmp eq i32 %6, 0, !dbg !290
  br i1 %7, label %8, label %10, !dbg !291

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4, !dbg !292
  store i32 %9, i32* %3, align 4, !dbg !293
  br label %16, !dbg !293

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4, !dbg !294
  %12 = load i32, i32* %4, align 4, !dbg !295
  %13 = load i32, i32* %5, align 4, !dbg !296
  %14 = srem i32 %12, %13, !dbg !297
  %15 = call i32 @_Z3gcdii(i32 %11, i32 %14), !dbg !298
  store i32 %15, i32* %3, align 4, !dbg !299
  br label %16, !dbg !299

; <label>:16:                                     ; preds = %10, %8
  %17 = load i32, i32* %3, align 4, !dbg !300
  ret i32 %17, !dbg !300
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #2 !dbg !301 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %3, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %4, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i32* %5, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %6, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i32* %7, metadata !312, metadata !DIExpression()), !dbg !313
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %5), !dbg !314
  br label %9, !dbg !315

; <label>:9:                                      ; preds = %13, %0
  %10 = load i32, i32* %5, align 4, !dbg !316
  %11 = add nsw i32 %10, -1, !dbg !316
  store i32 %11, i32* %5, align 4, !dbg !316
  %12 = icmp ne i32 %10, 0, !dbg !317
  br i1 %12, label %13, label %25, !dbg !315

; <label>:13:                                     ; preds = %9
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %2, i32* %3), !dbg !318
  %15 = load i32, i32* %2, align 4, !dbg !320
  %16 = load i32, i32* %3, align 4, !dbg !321
  %17 = call i32 @_Z3gcdii(i32 %15, i32 %16), !dbg !322
  %18 = add nsw i32 %17, 1, !dbg !323
  store i32 %18, i32* %7, align 4, !dbg !324
  %19 = load i32, i32* %2, align 4, !dbg !325
  %20 = load i32, i32* %3, align 4, !dbg !326
  %21 = add nsw i32 %19, %20, !dbg !327
  %22 = load i32, i32* %7, align 4, !dbg !328
  %23 = sdiv i32 %21, %22, !dbg !329
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %23), !dbg !330
  br label %9, !dbg !315, !llvm.loop !331

; <label>:25:                                     ; preds = %9
  %26 = load i32, i32* %1, align 4, !dbg !333
  ret i32 %26, !dbg !333
}

declare i32 @scanf(i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!277, !278, !279}
!llvm.ident = !{!280}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3)
!1 = !DIFile(filename: "gcov/../WA_c/466009_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!2 = !{}
!3 = !{!4, !9, !16, !20, !27, !31, !36, !38, !46, !50, !54, !68, !72, !76, !80, !84, !89, !93, !97, !101, !105, !113, !117, !121, !123, !127, !131, !136, !142, !146, !150, !152, !160, !164, !172, !174, !178, !182, !186, !190, !195, !200, !205, !206, !207, !208, !210, !211, !212, !213, !214, !215, !216, !272, !276}
!4 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !5, entity: !6, file: !8, line: 58)
!5 = !DINamespace(name: "__gnu_debug", scope: null)
!6 = !DINamespace(name: "__debug", scope: !7)
!7 = !DINamespace(name: "std", scope: null)
!8 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/debug/debug.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!9 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !10, file: !15, line: 52)
!10 = !DISubprogram(name: "abs", scope: !11, file: !11, line: 837, type: !12, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!11 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!16 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !17, file: !19, line: 127)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !11, line: 62, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!19 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdlib", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!20 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !21, file: !19, line: 128)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !11, line: 70, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 66, size: 128, elements: !23, identifier: "_ZTS6ldiv_t")
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !22, file: !11, line: 68, baseType: !25, size: 64)
!25 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !22, file: !11, line: 69, baseType: !25, size: 64, offset: 64)
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !28, file: !19, line: 130)
!28 = !DISubprogram(name: "abort", scope: !11, file: !11, line: 588, type: !29, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!29 = !DISubroutineType(types: !30)
!30 = !{null}
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !32, file: !19, line: 134)
!32 = !DISubprogram(name: "atexit", scope: !11, file: !11, line: 592, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!33 = !DISubroutineType(types: !34)
!34 = !{!14, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !37, file: !19, line: 137)
!37 = !DISubprogram(name: "at_quick_exit", scope: !11, file: !11, line: 597, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !39, file: !19, line: 140)
!39 = !DISubprogram(name: "atof", scope: !11, file: !11, line: 101, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43}
!42 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !47, file: !19, line: 141)
!47 = !DISubprogram(name: "atoi", scope: !11, file: !11, line: 104, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DISubroutineType(types: !49)
!49 = !{!14, !43}
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !51, file: !19, line: 142)
!51 = !DISubprogram(name: "atol", scope: !11, file: !11, line: 107, type: !52, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DISubroutineType(types: !53)
!53 = !{!25, !43}
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !55, file: !19, line: 143)
!55 = !DISubprogram(name: "bsearch", scope: !11, file: !11, line: 817, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !59, !61, !61, !64}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 62, baseType: !63)
!62 = !DIFile(filename: "/usr/include/clang/6.0.0/include/stddef.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !11, line: 805, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!14, !59, !59}
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !69, file: !19, line: 144)
!69 = !DISubprogram(name: "calloc", scope: !11, file: !11, line: 541, type: !70, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!70 = !DISubroutineType(types: !71)
!71 = !{!58, !61, !61}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !73, file: !19, line: 145)
!73 = !DISubprogram(name: "div", scope: !11, file: !11, line: 849, type: !74, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!74 = !DISubroutineType(types: !75)
!75 = !{!17, !14, !14}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !77, file: !19, line: 146)
!77 = !DISubprogram(name: "exit", scope: !11, file: !11, line: 614, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !14}
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !81, file: !19, line: 147)
!81 = !DISubprogram(name: "free", scope: !11, file: !11, line: 563, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !58}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !85, file: !19, line: 148)
!85 = !DISubprogram(name: "getenv", scope: !11, file: !11, line: 631, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !43}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !90, file: !19, line: 149)
!90 = !DISubprogram(name: "labs", scope: !11, file: !11, line: 838, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DISubroutineType(types: !92)
!92 = !{!25, !25}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !94, file: !19, line: 150)
!94 = !DISubprogram(name: "ldiv", scope: !11, file: !11, line: 851, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{!21, !25, !25}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !98, file: !19, line: 151)
!98 = !DISubprogram(name: "malloc", scope: !11, file: !11, line: 539, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!58, !61}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !102, file: !19, line: 153)
!102 = !DISubprogram(name: "mblen", scope: !11, file: !11, line: 919, type: !103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DISubroutineType(types: !104)
!104 = !{!14, !43, !61}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !106, file: !19, line: 154)
!106 = !DISubprogram(name: "mbstowcs", scope: !11, file: !11, line: 930, type: !107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DISubroutineType(types: !108)
!108 = !{!61, !109, !112, !61}
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !114, file: !19, line: 155)
!114 = !DISubprogram(name: "mbtowc", scope: !11, file: !11, line: 922, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{!14, !109, !112, !61}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !118, file: !19, line: 157)
!118 = !DISubprogram(name: "qsort", scope: !11, file: !11, line: 827, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !58, !61, !61, !64}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !122, file: !19, line: 160)
!122 = !DISubprogram(name: "quick_exit", scope: !11, file: !11, line: 620, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !124, file: !19, line: 163)
!124 = !DISubprogram(name: "rand", scope: !11, file: !11, line: 453, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!14}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !128, file: !19, line: 164)
!128 = !DISubprogram(name: "realloc", scope: !11, file: !11, line: 549, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!58, !58, !61}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !132, file: !19, line: 165)
!132 = !DISubprogram(name: "srand", scope: !11, file: !11, line: 455, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135}
!135 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !137, file: !19, line: 166)
!137 = !DISubprogram(name: "strtod", scope: !11, file: !11, line: 117, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!42, !112, !140}
!140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !143, file: !19, line: 167)
!143 = !DISubprogram(name: "strtol", scope: !11, file: !11, line: 176, type: !144, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!144 = !DISubroutineType(types: !145)
!145 = !{!25, !112, !140, !14}
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !147, file: !19, line: 168)
!147 = !DISubprogram(name: "strtoul", scope: !11, file: !11, line: 180, type: !148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DISubroutineType(types: !149)
!149 = !{!63, !112, !140, !14}
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !151, file: !19, line: 169)
!151 = !DISubprogram(name: "system", scope: !11, file: !11, line: 781, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !153, file: !19, line: 171)
!153 = !DISubprogram(name: "wcstombs", scope: !11, file: !11, line: 933, type: !154, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DISubroutineType(types: !155)
!155 = !{!61, !156, !157, !61}
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!157 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !161, file: !19, line: 172)
!161 = !DISubprogram(name: "wctomb", scope: !11, file: !11, line: 926, type: !162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{!14, !88, !111}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !166, file: !19, line: 200)
!165 = !DINamespace(name: "__gnu_cxx", scope: null)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !11, line: 80, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 76, size: 128, elements: !168, identifier: "_ZTS7lldiv_t")
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !167, file: !11, line: 78, baseType: !170, size: 64)
!170 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !167, file: !11, line: 79, baseType: !170, size: 64, offset: 64)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !173, file: !19, line: 206)
!173 = !DISubprogram(name: "_Exit", scope: !11, file: !11, line: 626, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !175, file: !19, line: 210)
!175 = !DISubprogram(name: "llabs", scope: !11, file: !11, line: 841, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!170, !170}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !179, file: !19, line: 216)
!179 = !DISubprogram(name: "lldiv", scope: !11, file: !11, line: 855, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{!166, !170, !170}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !183, file: !19, line: 227)
!183 = !DISubprogram(name: "atoll", scope: !11, file: !11, line: 112, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{!170, !43}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !187, file: !19, line: 228)
!187 = !DISubprogram(name: "strtoll", scope: !11, file: !11, line: 200, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!170, !112, !140, !14}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !191, file: !19, line: 229)
!191 = !DISubprogram(name: "strtoull", scope: !11, file: !11, line: 205, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !112, !140, !14}
!194 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !196, file: !19, line: 231)
!196 = !DISubprogram(name: "strtof", scope: !11, file: !11, line: 123, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !112, !140}
!199 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !165, entity: !201, file: !19, line: 232)
!201 = !DISubprogram(name: "strtold", scope: !11, file: !11, line: 126, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !112, !140}
!204 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !166, file: !19, line: 240)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !173, file: !19, line: 242)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !175, file: !19, line: 244)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !209, file: !19, line: 245)
!209 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !165, file: !19, line: 213, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !179, file: !19, line: 246)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !183, file: !19, line: 248)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !196, file: !19, line: 249)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !187, file: !19, line: 250)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !191, file: !19, line: 251)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !201, file: !19, line: 252)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !217, file: !218, line: 57)
!217 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !219, file: !218, line: 79, size: 64, elements: !220, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!218 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/exception_ptr.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!219 = !DINamespace(name: "__exception_ptr", scope: !7)
!220 = !{!221, !222, !226, !229, !230, !235, !236, !240, !246, !250, !254, !257, !258, !261, !265}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !217, file: !218, line: 81, baseType: !58, size: 64)
!222 = !DISubprogram(name: "exception_ptr", scope: !217, file: !218, line: 83, type: !223, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225, !58}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!226 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !217, file: !218, line: 85, type: !227, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !225}
!229 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !217, file: !218, line: 86, type: !227, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !217, file: !218, line: 88, type: !231, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DISubroutineType(types: !232)
!232 = !{!58, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!235 = !DISubprogram(name: "exception_ptr", scope: !217, file: !218, line: 96, type: !227, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!236 = !DISubprogram(name: "exception_ptr", scope: !217, file: !218, line: 98, type: !237, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !225, !239}
!239 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !234, size: 64)
!240 = !DISubprogram(name: "exception_ptr", scope: !217, file: !218, line: 101, type: !241, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !225, !243}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !7, file: !244, line: 235, baseType: !245)
!244 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/x86_64-linux-gnu/c++/7.5.0/bits/c++config.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!245 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!246 = !DISubprogram(name: "exception_ptr", scope: !217, file: !218, line: 105, type: !247, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !225, !249}
!249 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !217, size: 64)
!250 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !217, file: !218, line: 118, type: !251, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !225, !239}
!253 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !217, size: 64)
!254 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !217, file: !218, line: 122, type: !255, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!253, !225, !249}
!257 = !DISubprogram(name: "~exception_ptr", scope: !217, file: !218, line: 129, type: !227, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!258 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !217, file: !218, line: 132, type: !259, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !225, !253}
!261 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !217, file: !218, line: 144, type: !262, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !233}
!264 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!265 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !217, file: !218, line: 153, type: !266, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !233}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !7, file: !271, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!271 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/typeinfo", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1687")
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !219, entity: !273, file: !218, line: 73)
!273 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !7, file: !218, line: 69, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !217}
!276 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !7, file: !1, line: 3)
!277 = !{i32 2, !"Dwarf Version", i32 4}
!278 = !{i32 2, !"Debug Info Version", i32 3}
!279 = !{i32 1, !"wchar_size", i32 4}
!280 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!281 = distinct !DISubprogram(name: "gcd", linkageName: "_Z3gcdii", scope: !1, file: !1, line: 4, type: !282, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!282 = !DISubroutineType(types: !283)
!283 = !{!14, !14, !14}
!284 = !DILocalVariable(name: "a", arg: 1, scope: !281, file: !1, line: 4, type: !14)
!285 = !DILocation(line: 4, column: 13, scope: !281)
!286 = !DILocalVariable(name: "b", arg: 2, scope: !281, file: !1, line: 4, type: !14)
!287 = !DILocation(line: 4, column: 20, scope: !281)
!288 = !DILocation(line: 6, column: 8, scope: !289)
!289 = distinct !DILexicalBlock(scope: !281, file: !1, line: 6, column: 8)
!290 = !DILocation(line: 6, column: 10, scope: !289)
!291 = !DILocation(line: 6, column: 8, scope: !281)
!292 = !DILocation(line: 6, column: 23, scope: !289)
!293 = !DILocation(line: 6, column: 16, scope: !289)
!294 = !DILocation(line: 7, column: 16, scope: !281)
!295 = !DILocation(line: 7, column: 19, scope: !281)
!296 = !DILocation(line: 7, column: 23, scope: !281)
!297 = !DILocation(line: 7, column: 21, scope: !281)
!298 = !DILocation(line: 7, column: 12, scope: !281)
!299 = !DILocation(line: 7, column: 5, scope: !281)
!300 = !DILocation(line: 8, column: 1, scope: !281)
!301 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !125, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!302 = !DILocalVariable(name: "m", scope: !301, file: !1, line: 11, type: !14)
!303 = !DILocation(line: 11, column: 9, scope: !301)
!304 = !DILocalVariable(name: "n", scope: !301, file: !1, line: 11, type: !14)
!305 = !DILocation(line: 11, column: 12, scope: !301)
!306 = !DILocalVariable(name: "i", scope: !301, file: !1, line: 11, type: !14)
!307 = !DILocation(line: 11, column: 15, scope: !301)
!308 = !DILocalVariable(name: "t", scope: !301, file: !1, line: 11, type: !14)
!309 = !DILocation(line: 11, column: 18, scope: !301)
!310 = !DILocalVariable(name: "j", scope: !301, file: !1, line: 11, type: !14)
!311 = !DILocation(line: 11, column: 21, scope: !301)
!312 = !DILocalVariable(name: "k", scope: !301, file: !1, line: 11, type: !14)
!313 = !DILocation(line: 11, column: 24, scope: !301)
!314 = !DILocation(line: 12, column: 5, scope: !301)
!315 = !DILocation(line: 13, column: 5, scope: !301)
!316 = !DILocation(line: 13, column: 12, scope: !301)
!317 = !DILocation(line: 13, column: 11, scope: !301)
!318 = !DILocation(line: 15, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !301, file: !1, line: 14, column: 5)
!320 = !DILocation(line: 16, column: 17, scope: !319)
!321 = !DILocation(line: 16, column: 20, scope: !319)
!322 = !DILocation(line: 16, column: 13, scope: !319)
!323 = !DILocation(line: 16, column: 23, scope: !319)
!324 = !DILocation(line: 16, column: 11, scope: !319)
!325 = !DILocation(line: 17, column: 25, scope: !319)
!326 = !DILocation(line: 17, column: 29, scope: !319)
!327 = !DILocation(line: 17, column: 27, scope: !319)
!328 = !DILocation(line: 17, column: 34, scope: !319)
!329 = !DILocation(line: 17, column: 32, scope: !319)
!330 = !DILocation(line: 17, column: 9, scope: !319)
!331 = distinct !{!331, !315, !332}
!332 = !DILocation(line: 18, column: 5, scope: !301)
!333 = !DILocation(line: 19, column: 1, scope: !301)
