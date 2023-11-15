; ModuleID = 'gcov/../WA_c/1741347_buggy.c'
source_filename = "gcov/../WA_c/1741347_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

$_ZSt3maxIlERKT_S2_S2_ = comdat any

$_ZSt3minIlERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_1741347_buggy.c, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !914 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !915
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3, !dbg !915
  ret void, !dbg !915
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline optnone uwtable
define i32 @_Z4gcd2ll(i64, i64) #4 !dbg !916 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !919, metadata !DIExpression()), !dbg !920
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata i64* %6, metadata !923, metadata !DIExpression()), !dbg !924
  %8 = call dereferenceable(8) i64* @_ZSt3maxIlERKT_S2_S2_(i64* dereferenceable(8) %4, i64* dereferenceable(8) %5), !dbg !925
  %9 = load i64, i64* %8, align 8, !dbg !925
  store i64 %9, i64* %6, align 8, !dbg !924
  call void @llvm.dbg.declare(metadata i64* %7, metadata !926, metadata !DIExpression()), !dbg !927
  %10 = call dereferenceable(8) i64* @_ZSt3minIlERKT_S2_S2_(i64* dereferenceable(8) %4, i64* dereferenceable(8) %5), !dbg !928
  %11 = load i64, i64* %10, align 8, !dbg !928
  store i64 %11, i64* %7, align 8, !dbg !927
  %12 = load i64, i64* %6, align 8, !dbg !929
  %13 = load i64, i64* %7, align 8, !dbg !931
  %14 = srem i64 %12, %13, !dbg !932
  %15 = icmp eq i64 %14, 0, !dbg !933
  br i1 %15, label %16, label %19, !dbg !934

; <label>:16:                                     ; preds = %2
  %17 = load i64, i64* %7, align 8, !dbg !935
  %18 = trunc i64 %17 to i32, !dbg !935
  store i32 %18, i32* %3, align 4, !dbg !937
  br label %25, !dbg !937

; <label>:19:                                     ; preds = %2
  %20 = load i64, i64* %6, align 8, !dbg !938
  %21 = load i64, i64* %7, align 8, !dbg !939
  %22 = srem i64 %20, %21, !dbg !940
  %23 = load i64, i64* %7, align 8, !dbg !941
  %24 = call i32 @_Z4gcd2ll(i64 %22, i64 %23), !dbg !942
  store i32 %24, i32* %3, align 4, !dbg !943
  br label %25, !dbg !943

; <label>:25:                                     ; preds = %19, %16
  %26 = load i32, i32* %3, align 4, !dbg !944
  ret i32 %26, !dbg !944
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxIlERKT_S2_S2_(i64* dereferenceable(8), i64* dereferenceable(8)) #6 comdat !dbg !945 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !953, metadata !DIExpression()), !dbg !954
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !955, metadata !DIExpression()), !dbg !956
  %6 = load i64*, i64** %4, align 8, !dbg !957
  %7 = load i64, i64* %6, align 8, !dbg !957
  %8 = load i64*, i64** %5, align 8, !dbg !959
  %9 = load i64, i64* %8, align 8, !dbg !959
  %10 = icmp slt i64 %7, %9, !dbg !960
  br i1 %10, label %11, label %13, !dbg !961

; <label>:11:                                     ; preds = %2
  %12 = load i64*, i64** %5, align 8, !dbg !962
  store i64* %12, i64** %3, align 8, !dbg !963
  br label %15, !dbg !963

; <label>:13:                                     ; preds = %2
  %14 = load i64*, i64** %4, align 8, !dbg !964
  store i64* %14, i64** %3, align 8, !dbg !965
  br label %15, !dbg !965

; <label>:15:                                     ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8, !dbg !966
  ret i64* %16, !dbg !966
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3minIlERKT_S2_S2_(i64* dereferenceable(8), i64* dereferenceable(8)) #6 comdat !dbg !967 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !968, metadata !DIExpression()), !dbg !969
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !970, metadata !DIExpression()), !dbg !971
  %6 = load i64*, i64** %5, align 8, !dbg !972
  %7 = load i64, i64* %6, align 8, !dbg !972
  %8 = load i64*, i64** %4, align 8, !dbg !974
  %9 = load i64, i64* %8, align 8, !dbg !974
  %10 = icmp slt i64 %7, %9, !dbg !975
  br i1 %10, label %11, label %13, !dbg !976

; <label>:11:                                     ; preds = %2
  %12 = load i64*, i64** %5, align 8, !dbg !977
  store i64* %12, i64** %3, align 8, !dbg !978
  br label %15, !dbg !978

; <label>:13:                                     ; preds = %2
  %14 = load i64*, i64** %4, align 8, !dbg !979
  store i64* %14, i64** %3, align 8, !dbg !980
  br label %15, !dbg !980

; <label>:15:                                     ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8, !dbg !981
  ret i64* %16, !dbg !981
}

; Function Attrs: noinline optnone uwtable
define i32 @_Z4gcd1ll(i64, i64) #4 !dbg !982 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !983, metadata !DIExpression()), !dbg !984
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !985, metadata !DIExpression()), !dbg !986
  %8 = load i64, i64* %4, align 8, !dbg !987
  %9 = load i64, i64* %3, align 8, !dbg !989
  %10 = icmp sgt i64 %8, %9, !dbg !990
  br i1 %10, label %11, label %15, !dbg !991

; <label>:11:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %5, metadata !992, metadata !DIExpression()), !dbg !994
  %12 = load i64, i64* %3, align 8, !dbg !995
  store i64 %12, i64* %5, align 8, !dbg !996
  %13 = load i64, i64* %4, align 8, !dbg !997
  store i64 %13, i64* %3, align 8, !dbg !998
  %14 = load i64, i64* %5, align 8, !dbg !999
  store i64 %14, i64* %4, align 8, !dbg !1000
  br label %15, !dbg !1001

; <label>:15:                                     ; preds = %11, %2
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1002, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1004, metadata !DIExpression()), !dbg !1005
  br label %16, !dbg !1006

; <label>:16:                                     ; preds = %19, %15
  %17 = load i64, i64* %4, align 8, !dbg !1007
  %18 = icmp ne i64 %17, 0, !dbg !1008
  br i1 %18, label %19, label %25, !dbg !1006

; <label>:19:                                     ; preds = %16
  %20 = load i64, i64* %3, align 8, !dbg !1009
  %21 = load i64, i64* %4, align 8, !dbg !1011
  %22 = sdiv i64 %20, %21, !dbg !1012
  store i64 %22, i64* %6, align 8, !dbg !1013
  %23 = load i64, i64* %6, align 8, !dbg !1014
  store i64 %23, i64* %3, align 8, !dbg !1015
  %24 = load i64, i64* %7, align 8, !dbg !1016
  store i64 %24, i64* %4, align 8, !dbg !1017
  br label %16, !dbg !1006, !llvm.loop !1018

; <label>:25:                                     ; preds = %16
  %26 = load i64, i64* %3, align 8, !dbg !1020
  %27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* @_ZSt4cout, i64 %26), !dbg !1021
  %28 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %27, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1022
  ret i32 1, !dbg !1023
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"*, i64) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #7 !dbg !1024 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1025, metadata !DIExpression()), !dbg !1026
  %7 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %2), !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1028, metadata !DIExpression()), !dbg !1030
  store i32 0, i32* %3, align 4, !dbg !1030
  br label %8, !dbg !1031

; <label>:8:                                      ; preds = %24, %0
  %9 = load i32, i32* %3, align 4, !dbg !1032
  %10 = load i32, i32* %2, align 4, !dbg !1034
  %11 = icmp slt i32 %9, %10, !dbg !1035
  br i1 %11, label %12, label %27, !dbg !1036

; <label>:12:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1037, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1040, metadata !DIExpression()), !dbg !1041
  %13 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERl(%"class.std::basic_istream"* @_ZSt3cin, i64* dereferenceable(8) %4), !dbg !1042
  %14 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERl(%"class.std::basic_istream"* %13, i64* dereferenceable(8) %5), !dbg !1043
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1044, metadata !DIExpression()), !dbg !1045
  %15 = load i64, i64* %4, align 8, !dbg !1046
  %16 = load i64, i64* %5, align 8, !dbg !1047
  %17 = call i32 @_Z4gcd2ll(i64 %15, i64 %16), !dbg !1048
  %18 = sext i32 %17 to i64, !dbg !1048
  %19 = load i64, i64* %4, align 8, !dbg !1049
  %20 = srem i64 %18, %19, !dbg !1050
  store i64 %20, i64* %6, align 8, !dbg !1045
  %21 = load i64, i64* %6, align 8, !dbg !1051
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* @_ZSt4cout, i64 %21), !dbg !1052
  %23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %22, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1053
  br label %24, !dbg !1054

; <label>:24:                                     ; preds = %12
  %25 = load i32, i32* %3, align 4, !dbg !1055
  %26 = add nsw i32 %25, 1, !dbg !1055
  store i32 %26, i32* %3, align 4, !dbg !1055
  br label %8, !dbg !1056, !llvm.loop !1057

; <label>:27:                                     ; preds = %8
  %28 = load i32, i32* %1, align 4, !dbg !1059
  ret i32 %28, !dbg !1059
}

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERl(%"class.std::basic_istream"*, i64* dereferenceable(8)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_1741347_buggy.c() #0 section ".text.startup" !dbg !1060 {
  call void @__cxx_global_var_init(), !dbg !1062
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!910, !911, !912}
!llvm.ident = !{!913}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/iostream", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 601, size: 8, elements: !7, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/ios_base.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!7 = !{!8, !12, !14, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !4, file: !5, line: 609, baseType: !9, flags: DIFlagStaticMember)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !10, line: 32, baseType: !11)
!10 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/x86_64-linux-gnu/c++/7.5.0/bits/atomic_word.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !4, file: !5, line: 610, baseType: !13, flags: DIFlagStaticMember)
!13 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 605, type: !15, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Init", scope: !4, file: !5, line: 606, type: !15, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!19 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !20, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, globals: !22, imports: !23)
!20 = !DIFile(filename: "gcov/../WA_c/1741347_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!21 = !{}
!22 = !{!0}
!23 = !{!24, !43, !46, !51, !60, !68, !72, !79, !83, !87, !89, !91, !95, !107, !111, !117, !123, !125, !129, !133, !137, !141, !153, !155, !159, !163, !167, !169, !175, !179, !183, !185, !187, !191, !199, !203, !207, !211, !213, !219, !221, !228, !233, !237, !242, !246, !250, !254, !256, !258, !262, !266, !270, !272, !276, !280, !282, !284, !288, !294, !299, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !369, !373, !377, !384, !388, !391, !394, !397, !399, !401, !403, !405, !407, !409, !411, !414, !416, !421, !425, !428, !431, !433, !435, !437, !439, !441, !443, !445, !447, !450, !452, !456, !460, !465, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !500, !502, !506, !510, !516, !520, !525, !527, !531, !535, !539, !549, !553, !557, !561, !565, !569, !573, !577, !581, !585, !589, !593, !597, !599, !603, !607, !611, !617, !621, !625, !627, !631, !635, !641, !643, !647, !651, !655, !659, !663, !667, !671, !672, !673, !674, !676, !677, !678, !679, !680, !681, !682, !686, !692, !697, !701, !703, !705, !707, !709, !716, !720, !724, !728, !732, !736, !741, !745, !747, !751, !757, !761, !766, !768, !770, !774, !778, !780, !782, !784, !786, !790, !792, !794, !798, !802, !806, !810, !814, !818, !820, !824, !828, !832, !836, !838, !840, !844, !848, !849, !850, !851, !852, !853, !859, !862, !863, !865, !867, !869, !871, !875, !877, !879, !881, !883, !885, !887, !889, !891, !895, !899, !901, !905, !909}
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !25, file: !42, line: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !26, line: 6, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 13, size: 64, elements: !30, identifier: "_ZTS11__mbstate_t")
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !29, file: !28, line: 15, baseType: !11, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !29, file: !28, line: 20, baseType: !33, size: 32, offset: 32)
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !29, file: !28, line: 16, size: 32, elements: !34, identifier: "_ZTSN11__mbstate_tUt_E")
!34 = !{!35, !37}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !33, file: !28, line: 18, baseType: !36, size: 32)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !33, file: !28, line: 19, baseType: !38, size: 32)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !40)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !{!41}
!41 = !DISubrange(count: 4)
!42 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cwchar", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !44, file: !42, line: 139)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !45, line: 20, baseType: !36)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !47, file: !42, line: 141)
!47 = !DISubprogram(name: "btowc", scope: !48, file: !48, line: 284, type: !49, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!49 = !DISubroutineType(types: !50)
!50 = !{!44, !11}
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !52, file: !42, line: 142)
!52 = !DISubprogram(name: "fgetwc", scope: !48, file: !48, line: 727, type: !53, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DISubroutineType(types: !54)
!54 = !{!44, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !57, line: 5, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 245, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !61, file: !42, line: 143)
!61 = !DISubprogram(name: "fgetws", scope: !48, file: !48, line: 756, type: !62, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !66, !11, !67}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !69, file: !42, line: 144)
!69 = !DISubprogram(name: "fputwc", scope: !48, file: !48, line: 741, type: !70, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!70 = !DISubroutineType(types: !71)
!71 = !{!44, !65, !55}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !73, file: !42, line: 145)
!73 = !DISubprogram(name: "fputws", scope: !48, file: !48, line: 763, type: !74, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!74 = !DISubroutineType(types: !75)
!75 = !{!11, !76, !67}
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !80, file: !42, line: 146)
!80 = !DISubprogram(name: "fwide", scope: !48, file: !48, line: 573, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DISubroutineType(types: !82)
!82 = !{!11, !55, !11}
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !84, file: !42, line: 147)
!84 = !DISubprogram(name: "fwprintf", scope: !48, file: !48, line: 580, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DISubroutineType(types: !86)
!86 = !{!11, !67, !76, null}
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !88, file: !42, line: 148)
!88 = !DISubprogram(name: "fwscanf", scope: !48, file: !48, line: 621, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !90, file: !42, line: 149)
!90 = !DISubprogram(name: "getwc", scope: !48, file: !48, line: 728, type: !53, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !92, file: !42, line: 150)
!92 = !DISubprogram(name: "getwchar", scope: !48, file: !48, line: 734, type: !93, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!93 = !DISubroutineType(types: !94)
!94 = !{!44}
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !96, file: !42, line: 151)
!96 = !DISubprogram(name: "mbrlen", scope: !48, file: !48, line: 307, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !102, !99, !105}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/usr/include/clang/6.0.0/include/stddef.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !108, file: !42, line: 152)
!108 = !DISubprogram(name: "mbrtowc", scope: !48, file: !48, line: 296, type: !109, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DISubroutineType(types: !110)
!110 = !{!99, !66, !102, !99, !105}
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !112, file: !42, line: 153)
!112 = !DISubprogram(name: "mbsinit", scope: !48, file: !48, line: 292, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DISubroutineType(types: !114)
!114 = !{!11, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !118, file: !42, line: 154)
!118 = !DISubprogram(name: "mbsrtowcs", scope: !48, file: !48, line: 337, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{!99, !66, !121, !99, !105}
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !124, file: !42, line: 155)
!124 = !DISubprogram(name: "putwc", scope: !48, file: !48, line: 742, type: !70, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !126, file: !42, line: 156)
!126 = !DISubprogram(name: "putwchar", scope: !48, file: !48, line: 748, type: !127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DISubroutineType(types: !128)
!128 = !{!44, !65}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !130, file: !42, line: 158)
!130 = !DISubprogram(name: "swprintf", scope: !48, file: !48, line: 590, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DISubroutineType(types: !132)
!132 = !{!11, !66, !99, !76, null}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !134, file: !42, line: 160)
!134 = !DISubprogram(name: "swscanf", scope: !48, file: !48, line: 631, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DISubroutineType(types: !136)
!136 = !{!11, !76, !76, null}
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !138, file: !42, line: 161)
!138 = !DISubprogram(name: "ungetwc", scope: !48, file: !48, line: 771, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DISubroutineType(types: !140)
!140 = !{!44, !44, !55}
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !142, file: !42, line: 162)
!142 = !DISubprogram(name: "vfwprintf", scope: !48, file: !48, line: 598, type: !143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DISubroutineType(types: !144)
!144 = !{!11, !67, !76, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !20, size: 192, elements: !147, identifier: "_ZTS13__va_list_tag")
!147 = !{!148, !149, !150, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !146, file: !20, baseType: !36, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !146, file: !20, baseType: !36, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !146, file: !20, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !146, file: !20, baseType: !151, size: 64, offset: 128)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !154, file: !42, line: 164)
!154 = !DISubprogram(name: "vfwscanf", scope: !48, file: !48, line: 673, type: !143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !156, file: !42, line: 167)
!156 = !DISubprogram(name: "vswprintf", scope: !48, file: !48, line: 611, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !66, !99, !76, !145}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !160, file: !42, line: 170)
!160 = !DISubprogram(name: "vswscanf", scope: !48, file: !48, line: 685, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{!11, !76, !76, !145}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !164, file: !42, line: 172)
!164 = !DISubprogram(name: "vwprintf", scope: !48, file: !48, line: 606, type: !165, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DISubroutineType(types: !166)
!166 = !{!11, !76, !145}
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !168, file: !42, line: 174)
!168 = !DISubprogram(name: "vwscanf", scope: !48, file: !48, line: 681, type: !165, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !170, file: !42, line: 176)
!170 = !DISubprogram(name: "wcrtomb", scope: !48, file: !48, line: 301, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!99, !173, !65, !105}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !176, file: !42, line: 177)
!176 = !DISubprogram(name: "wcscat", scope: !48, file: !48, line: 97, type: !177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{!64, !66, !76}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !180, file: !42, line: 178)
!180 = !DISubprogram(name: "wcscmp", scope: !48, file: !48, line: 106, type: !181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DISubroutineType(types: !182)
!182 = !{!11, !77, !77}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !184, file: !42, line: 179)
!184 = !DISubprogram(name: "wcscoll", scope: !48, file: !48, line: 131, type: !181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !186, file: !42, line: 180)
!186 = !DISubprogram(name: "wcscpy", scope: !48, file: !48, line: 87, type: !177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !188, file: !42, line: 181)
!188 = !DISubprogram(name: "wcscspn", scope: !48, file: !48, line: 187, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!99, !77, !77}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !192, file: !42, line: 182)
!192 = !DISubprogram(name: "wcsftime", scope: !48, file: !48, line: 835, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!99, !66, !99, !76, !195}
!195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !48, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !200, file: !42, line: 183)
!200 = !DISubprogram(name: "wcslen", scope: !48, file: !48, line: 222, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!99, !77}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !204, file: !42, line: 184)
!204 = !DISubprogram(name: "wcsncat", scope: !48, file: !48, line: 101, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!64, !66, !76, !99}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !208, file: !42, line: 185)
!208 = !DISubprogram(name: "wcsncmp", scope: !48, file: !48, line: 109, type: !209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DISubroutineType(types: !210)
!210 = !{!11, !77, !77, !99}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !212, file: !42, line: 186)
!212 = !DISubprogram(name: "wcsncpy", scope: !48, file: !48, line: 92, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !214, file: !42, line: 187)
!214 = !DISubprogram(name: "wcsrtombs", scope: !48, file: !48, line: 343, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{!99, !173, !217, !99, !105}
!217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !220, file: !42, line: 188)
!220 = !DISubprogram(name: "wcsspn", scope: !48, file: !48, line: 191, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !222, file: !42, line: 189)
!222 = !DISubprogram(name: "wcstod", scope: !48, file: !48, line: 377, type: !223, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !76, !226}
!225 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!226 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !229, file: !42, line: 191)
!229 = !DISubprogram(name: "wcstof", scope: !48, file: !48, line: 382, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !76, !226}
!232 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !234, file: !42, line: 193)
!234 = !DISubprogram(name: "wcstok", scope: !48, file: !48, line: 217, type: !235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DISubroutineType(types: !236)
!236 = !{!64, !66, !76, !226}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !238, file: !42, line: 194)
!238 = !DISubprogram(name: "wcstol", scope: !48, file: !48, line: 428, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !76, !226, !11}
!241 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !243, file: !42, line: 195)
!243 = !DISubprogram(name: "wcstoul", scope: !48, file: !48, line: 433, type: !244, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DISubroutineType(types: !245)
!245 = !{!101, !76, !226, !11}
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !247, file: !42, line: 196)
!247 = !DISubprogram(name: "wcsxfrm", scope: !48, file: !48, line: 135, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!99, !66, !76, !99}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !251, file: !42, line: 197)
!251 = !DISubprogram(name: "wctob", scope: !48, file: !48, line: 288, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{!11, !44}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !255, file: !42, line: 198)
!255 = !DISubprogram(name: "wmemcmp", scope: !48, file: !48, line: 258, type: !209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !257, file: !42, line: 199)
!257 = !DISubprogram(name: "wmemcpy", scope: !48, file: !48, line: 262, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !259, file: !42, line: 200)
!259 = !DISubprogram(name: "wmemmove", scope: !48, file: !48, line: 267, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!64, !64, !77, !99}
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !263, file: !42, line: 201)
!263 = !DISubprogram(name: "wmemset", scope: !48, file: !48, line: 271, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!64, !64, !65, !99}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !267, file: !42, line: 202)
!267 = !DISubprogram(name: "wprintf", scope: !48, file: !48, line: 587, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!11, !76, null}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !271, file: !42, line: 203)
!271 = !DISubprogram(name: "wscanf", scope: !48, file: !48, line: 628, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !273, file: !42, line: 204)
!273 = !DISubprogram(name: "wcschr", scope: !48, file: !48, line: 164, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{!64, !77, !65}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !277, file: !42, line: 205)
!277 = !DISubprogram(name: "wcspbrk", scope: !48, file: !48, line: 201, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!64, !77, !77}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !281, file: !42, line: 206)
!281 = !DISubprogram(name: "wcsrchr", scope: !48, file: !48, line: 174, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !283, file: !42, line: 207)
!283 = !DISubprogram(name: "wcsstr", scope: !48, file: !48, line: 212, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !285, file: !42, line: 208)
!285 = !DISubprogram(name: "wmemchr", scope: !48, file: !48, line: 253, type: !286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DISubroutineType(types: !287)
!287 = !{!64, !77, !65, !99}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !290, file: !42, line: 248)
!289 = !DINamespace(name: "__gnu_cxx", scope: null)
!290 = !DISubprogram(name: "wcstold", scope: !48, file: !48, line: 384, type: !291, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !76, !226}
!293 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !295, file: !42, line: 257)
!295 = !DISubprogram(name: "wcstoll", scope: !48, file: !48, line: 441, type: !296, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !76, !226, !11}
!298 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !300, file: !42, line: 258)
!300 = !DISubprogram(name: "wcstoull", scope: !48, file: !48, line: 448, type: !301, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !76, !226, !11}
!303 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !290, file: !42, line: 264)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !42, line: 265)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !300, file: !42, line: 266)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !229, file: !42, line: 280)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !154, file: !42, line: 283)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !160, file: !42, line: 286)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !168, file: !42, line: 289)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !290, file: !42, line: 293)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !42, line: 294)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !300, file: !42, line: 295)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !315, file: !316, line: 57)
!315 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !317, file: !316, line: 79, size: 64, elements: !318, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!316 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/exception_ptr.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!317 = !DINamespace(name: "__exception_ptr", scope: !2)
!318 = !{!319, !320, !324, !327, !328, !333, !334, !338, !344, !348, !352, !355, !356, !359, !362}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !315, file: !316, line: 81, baseType: !151, size: 64)
!320 = !DISubprogram(name: "exception_ptr", scope: !315, file: !316, line: 83, type: !321, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323, !151}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!324 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !315, file: !316, line: 85, type: !325, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !323}
!327 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !315, file: !316, line: 86, type: !325, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !315, file: !316, line: 88, type: !329, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!151, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!333 = !DISubprogram(name: "exception_ptr", scope: !315, file: !316, line: 96, type: !325, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!334 = !DISubprogram(name: "exception_ptr", scope: !315, file: !316, line: 98, type: !335, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !323, !337}
!337 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !332, size: 64)
!338 = !DISubprogram(name: "exception_ptr", scope: !315, file: !316, line: 101, type: !339, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !323, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !342, line: 235, baseType: !343)
!342 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/x86_64-linux-gnu/c++/7.5.0/bits/c++config.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!343 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!344 = !DISubprogram(name: "exception_ptr", scope: !315, file: !316, line: 105, type: !345, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !323, !347}
!347 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !315, size: 64)
!348 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !315, file: !316, line: 118, type: !349, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !323, !337}
!351 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !315, size: 64)
!352 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !315, file: !316, line: 122, type: !353, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!353 = !DISubroutineType(types: !354)
!354 = !{!351, !323, !347}
!355 = !DISubprogram(name: "~exception_ptr", scope: !315, file: !316, line: 129, type: !325, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!356 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !315, file: !316, line: 132, type: !357, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !323, !351}
!359 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !315, file: !316, line: 144, type: !360, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{!13, !331}
!362 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !315, file: !316, line: 153, type: !363, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !331}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !368, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!368 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/typeinfo", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !370, file: !316, line: 73)
!370 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !316, line: 69, type: !371, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !315}
!373 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !374, entity: !375, file: !376, line: 58)
!374 = !DINamespace(name: "__gnu_debug", scope: null)
!375 = !DINamespace(name: "__debug", scope: !2)
!376 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/debug/debug.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !378, file: !383, line: 48)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !379, line: 24, baseType: !380)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !381, line: 36, baseType: !382)
!381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!382 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!383 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdint", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !385, file: !383, line: 49)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !379, line: 25, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !381, line: 38, baseType: !387)
!387 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !389, file: !383, line: 50)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !379, line: 26, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !381, line: 40, baseType: !11)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !392, file: !383, line: 51)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !379, line: 27, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !381, line: 43, baseType: !241)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !395, file: !383, line: 53)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !396, line: 68, baseType: !382)
!396 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !398, file: !383, line: 54)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !396, line: 70, baseType: !241)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !383, line: 55)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !396, line: 71, baseType: !241)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !402, file: !383, line: 56)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !396, line: 72, baseType: !241)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !404, file: !383, line: 58)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !396, line: 43, baseType: !382)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !406, file: !383, line: 59)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !396, line: 44, baseType: !387)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !408, file: !383, line: 60)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !396, line: 45, baseType: !11)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !410, file: !383, line: 61)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !396, line: 47, baseType: !241)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !412, file: !383, line: 63)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !396, line: 111, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !381, line: 61, baseType: !241)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !415, file: !383, line: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !396, line: 97, baseType: !241)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !383, line: 66)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !418, line: 24, baseType: !419)
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !381, line: 37, baseType: !420)
!420 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !422, file: !383, line: 67)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !418, line: 25, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !381, line: 39, baseType: !424)
!424 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !383, line: 68)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !418, line: 26, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !381, line: 41, baseType: !36)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !429, file: !383, line: 69)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !418, line: 27, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !381, line: 44, baseType: !101)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !383, line: 71)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !396, line: 81, baseType: !420)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !434, file: !383, line: 72)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !396, line: 83, baseType: !101)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !383, line: 73)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !396, line: 84, baseType: !101)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !438, file: !383, line: 74)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !396, line: 85, baseType: !101)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !440, file: !383, line: 76)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !396, line: 54, baseType: !420)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !383, line: 77)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !396, line: 55, baseType: !424)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !383, line: 78)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !396, line: 56, baseType: !36)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !383, line: 79)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !396, line: 58, baseType: !101)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !448, file: !383, line: 81)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !396, line: 112, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !381, line: 62, baseType: !101)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !451, file: !383, line: 82)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !396, line: 100, baseType: !101)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !453, file: !455, line: 53)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !454, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!454 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!455 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/clocale", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !457, file: !455, line: 54)
!457 = !DISubprogram(name: "setlocale", scope: !454, file: !454, line: 122, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DISubroutineType(types: !459)
!459 = !{!174, !11, !103}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !461, file: !455, line: 55)
!461 = !DISubprogram(name: "localeconv", scope: !454, file: !454, line: 125, type: !462, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!462 = !DISubroutineType(types: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !470, line: 64)
!466 = !DISubprogram(name: "isalnum", scope: !467, file: !467, line: 108, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!468 = !DISubroutineType(types: !469)
!469 = !{!11, !11}
!470 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cctype", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !470, line: 65)
!472 = !DISubprogram(name: "isalpha", scope: !467, file: !467, line: 109, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !470, line: 66)
!474 = !DISubprogram(name: "iscntrl", scope: !467, file: !467, line: 110, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !476, file: !470, line: 67)
!476 = !DISubprogram(name: "isdigit", scope: !467, file: !467, line: 111, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !470, line: 68)
!478 = !DISubprogram(name: "isgraph", scope: !467, file: !467, line: 113, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !480, file: !470, line: 69)
!480 = !DISubprogram(name: "islower", scope: !467, file: !467, line: 112, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !470, line: 70)
!482 = !DISubprogram(name: "isprint", scope: !467, file: !467, line: 114, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !470, line: 71)
!484 = !DISubprogram(name: "ispunct", scope: !467, file: !467, line: 115, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !470, line: 72)
!486 = !DISubprogram(name: "isspace", scope: !467, file: !467, line: 116, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !470, line: 73)
!488 = !DISubprogram(name: "isupper", scope: !467, file: !467, line: 117, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !490, file: !470, line: 74)
!490 = !DISubprogram(name: "isxdigit", scope: !467, file: !467, line: 118, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !470, line: 75)
!492 = !DISubprogram(name: "tolower", scope: !467, file: !467, line: 122, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !494, file: !470, line: 76)
!494 = !DISubprogram(name: "toupper", scope: !467, file: !467, line: 125, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !496, file: !470, line: 87)
!496 = !DISubprogram(name: "isblank", scope: !467, file: !467, line: 130, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !498, file: !499, line: 44)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !342, line: 231, baseType: !101)
!499 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ext/new_allocator.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !501, file: !499, line: 45)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !342, line: 232, baseType: !241)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !505, line: 52)
!503 = !DISubprogram(name: "abs", scope: !504, file: !504, line: 837, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!504 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!505 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !507, file: !509, line: 127)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !504, line: 62, baseType: !508)
!508 = !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!509 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdlib", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !511, file: !509, line: 128)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !504, line: 70, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 66, size: 128, elements: !513, identifier: "_ZTS6ldiv_t")
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !512, file: !504, line: 68, baseType: !241, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !512, file: !504, line: 69, baseType: !241, size: 64, offset: 64)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !517, file: !509, line: 130)
!517 = !DISubprogram(name: "abort", scope: !504, file: !504, line: 588, type: !518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!518 = !DISubroutineType(types: !519)
!519 = !{null}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !509, line: 134)
!521 = !DISubprogram(name: "atexit", scope: !504, file: !504, line: 592, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!11, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !526, file: !509, line: 137)
!526 = !DISubprogram(name: "at_quick_exit", scope: !504, file: !504, line: 597, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !528, file: !509, line: 140)
!528 = !DISubprogram(name: "atof", scope: !504, file: !504, line: 101, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!225, !103}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !532, file: !509, line: 141)
!532 = !DISubprogram(name: "atoi", scope: !504, file: !504, line: 104, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!11, !103}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !536, file: !509, line: 142)
!536 = !DISubprogram(name: "atol", scope: !504, file: !504, line: 107, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!241, !103}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !540, file: !509, line: 143)
!540 = !DISubprogram(name: "bsearch", scope: !504, file: !504, line: 817, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!151, !543, !543, !99, !99, !545}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !504, line: 805, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!11, !543, !543}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !509, line: 144)
!550 = !DISubprogram(name: "calloc", scope: !504, file: !504, line: 541, type: !551, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DISubroutineType(types: !552)
!552 = !{!151, !99, !99}
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !554, file: !509, line: 145)
!554 = !DISubprogram(name: "div", scope: !504, file: !504, line: 849, type: !555, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!555 = !DISubroutineType(types: !556)
!556 = !{!507, !11, !11}
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !558, file: !509, line: 146)
!558 = !DISubprogram(name: "exit", scope: !504, file: !504, line: 614, type: !559, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !11}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !562, file: !509, line: 147)
!562 = !DISubprogram(name: "free", scope: !504, file: !504, line: 563, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !151}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !566, file: !509, line: 148)
!566 = !DISubprogram(name: "getenv", scope: !504, file: !504, line: 631, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!174, !103}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !509, line: 149)
!570 = !DISubprogram(name: "labs", scope: !504, file: !504, line: 838, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{!241, !241}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !509, line: 150)
!574 = !DISubprogram(name: "ldiv", scope: !504, file: !504, line: 851, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!511, !241, !241}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !509, line: 151)
!578 = !DISubprogram(name: "malloc", scope: !504, file: !504, line: 539, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!151, !99}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !582, file: !509, line: 153)
!582 = !DISubprogram(name: "mblen", scope: !504, file: !504, line: 919, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!11, !103, !99}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !586, file: !509, line: 154)
!586 = !DISubprogram(name: "mbstowcs", scope: !504, file: !504, line: 930, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!99, !66, !102, !99}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !590, file: !509, line: 155)
!590 = !DISubprogram(name: "mbtowc", scope: !504, file: !504, line: 922, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!11, !66, !102, !99}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !594, file: !509, line: 157)
!594 = !DISubprogram(name: "qsort", scope: !504, file: !504, line: 827, type: !595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !151, !99, !99, !545}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !598, file: !509, line: 160)
!598 = !DISubprogram(name: "quick_exit", scope: !504, file: !504, line: 620, type: !559, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !600, file: !509, line: 163)
!600 = !DISubprogram(name: "rand", scope: !504, file: !504, line: 453, type: !601, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!601 = !DISubroutineType(types: !602)
!602 = !{!11}
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !604, file: !509, line: 164)
!604 = !DISubprogram(name: "realloc", scope: !504, file: !504, line: 549, type: !605, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DISubroutineType(types: !606)
!606 = !{!151, !151, !99}
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !608, file: !509, line: 165)
!608 = !DISubprogram(name: "srand", scope: !504, file: !504, line: 455, type: !609, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !36}
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !612, file: !509, line: 166)
!612 = !DISubprogram(name: "strtod", scope: !504, file: !504, line: 117, type: !613, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!613 = !DISubroutineType(types: !614)
!614 = !{!225, !102, !615}
!615 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !618, file: !509, line: 167)
!618 = !DISubprogram(name: "strtol", scope: !504, file: !504, line: 176, type: !619, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!619 = !DISubroutineType(types: !620)
!620 = !{!241, !102, !615, !11}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !622, file: !509, line: 168)
!622 = !DISubprogram(name: "strtoul", scope: !504, file: !504, line: 180, type: !623, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubroutineType(types: !624)
!624 = !{!101, !102, !615, !11}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !509, line: 169)
!626 = !DISubprogram(name: "system", scope: !504, file: !504, line: 781, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !628, file: !509, line: 171)
!628 = !DISubprogram(name: "wcstombs", scope: !504, file: !504, line: 933, type: !629, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!629 = !DISubroutineType(types: !630)
!630 = !{!99, !173, !76, !99}
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !632, file: !509, line: 172)
!632 = !DISubprogram(name: "wctomb", scope: !504, file: !504, line: 926, type: !633, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!633 = !DISubroutineType(types: !634)
!634 = !{!11, !174, !65}
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !636, file: !509, line: 200)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !504, line: 80, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 76, size: 128, elements: !638, identifier: "_ZTS7lldiv_t")
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !637, file: !504, line: 78, baseType: !298, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !637, file: !504, line: 79, baseType: !298, size: 64, offset: 64)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !642, file: !509, line: 206)
!642 = !DISubprogram(name: "_Exit", scope: !504, file: !504, line: 626, type: !559, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !644, file: !509, line: 210)
!644 = !DISubprogram(name: "llabs", scope: !504, file: !504, line: 841, type: !645, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!645 = !DISubroutineType(types: !646)
!646 = !{!298, !298}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !648, file: !509, line: 216)
!648 = !DISubprogram(name: "lldiv", scope: !504, file: !504, line: 855, type: !649, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!649 = !DISubroutineType(types: !650)
!650 = !{!636, !298, !298}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !652, file: !509, line: 227)
!652 = !DISubprogram(name: "atoll", scope: !504, file: !504, line: 112, type: !653, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!653 = !DISubroutineType(types: !654)
!654 = !{!298, !103}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !656, file: !509, line: 228)
!656 = !DISubprogram(name: "strtoll", scope: !504, file: !504, line: 200, type: !657, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!657 = !DISubroutineType(types: !658)
!658 = !{!298, !102, !615, !11}
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !660, file: !509, line: 229)
!660 = !DISubprogram(name: "strtoull", scope: !504, file: !504, line: 205, type: !661, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubroutineType(types: !662)
!662 = !{!303, !102, !615, !11}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !664, file: !509, line: 231)
!664 = !DISubprogram(name: "strtof", scope: !504, file: !504, line: 123, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!232, !102, !615}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !668, file: !509, line: 232)
!668 = !DISubprogram(name: "strtold", scope: !504, file: !504, line: 126, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!293, !102, !615}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !636, file: !509, line: 240)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !509, line: 242)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !509, line: 244)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !675, file: !509, line: 245)
!675 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !289, file: !509, line: 213, type: !649, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !509, line: 246)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !509, line: 248)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !664, file: !509, line: 249)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !656, file: !509, line: 250)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !660, file: !509, line: 251)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !509, line: 252)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !683, file: !685, line: 98)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !684, line: 7, baseType: !58)
!684 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!685 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdio", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !687, file: !685, line: 99)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !688, line: 78, baseType: !689)
!688 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !690, line: 30, baseType: !691)
!690 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!691 = !DICompositeType(tag: DW_TAG_structure_type, file: !690, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !693, file: !685, line: 101)
!693 = !DISubprogram(name: "clearerr", scope: !688, file: !688, line: 757, type: !694, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !685, line: 102)
!698 = !DISubprogram(name: "fclose", scope: !688, file: !688, line: 199, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DISubroutineType(types: !700)
!700 = !{!11, !696}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !702, file: !685, line: 103)
!702 = !DISubprogram(name: "feof", scope: !688, file: !688, line: 759, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !685, line: 104)
!704 = !DISubprogram(name: "ferror", scope: !688, file: !688, line: 761, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !706, file: !685, line: 105)
!706 = !DISubprogram(name: "fflush", scope: !688, file: !688, line: 204, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !708, file: !685, line: 106)
!708 = !DISubprogram(name: "fgetc", scope: !688, file: !688, line: 477, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !685, line: 107)
!710 = !DISubprogram(name: "fgetpos", scope: !688, file: !688, line: 731, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!711 = !DISubroutineType(types: !712)
!712 = !{!11, !713, !714}
!713 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !696)
!714 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !685, line: 108)
!717 = !DISubprogram(name: "fgets", scope: !688, file: !688, line: 564, type: !718, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!718 = !DISubroutineType(types: !719)
!719 = !{!174, !173, !11, !713}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !721, file: !685, line: 109)
!721 = !DISubprogram(name: "fopen", scope: !688, file: !688, line: 232, type: !722, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!722 = !DISubroutineType(types: !723)
!723 = !{!696, !102, !102}
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !685, line: 110)
!725 = !DISubprogram(name: "fprintf", scope: !688, file: !688, line: 312, type: !726, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!726 = !DISubroutineType(types: !727)
!727 = !{!11, !713, !102, null}
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !729, file: !685, line: 111)
!729 = !DISubprogram(name: "fputc", scope: !688, file: !688, line: 517, type: !730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!730 = !DISubroutineType(types: !731)
!731 = !{!11, !11, !696}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !685, line: 112)
!733 = !DISubprogram(name: "fputs", scope: !688, file: !688, line: 626, type: !734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!11, !102, !713}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !685, line: 113)
!737 = !DISubprogram(name: "fread", scope: !688, file: !688, line: 646, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!99, !740, !99, !99, !713}
!740 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !685, line: 114)
!742 = !DISubprogram(name: "freopen", scope: !688, file: !688, line: 238, type: !743, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!743 = !DISubroutineType(types: !744)
!744 = !{!696, !102, !102, !713}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !685, line: 115)
!746 = !DISubprogram(name: "fscanf", scope: !688, file: !688, line: 377, type: !726, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !685, line: 116)
!748 = !DISubprogram(name: "fseek", scope: !688, file: !688, line: 684, type: !749, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{!11, !696, !241, !11}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !685, line: 117)
!752 = !DISubprogram(name: "fsetpos", scope: !688, file: !688, line: 736, type: !753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{!11, !696, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !685, line: 118)
!758 = !DISubprogram(name: "ftell", scope: !688, file: !688, line: 689, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!241, !696}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !685, line: 119)
!762 = !DISubprogram(name: "fwrite", scope: !688, file: !688, line: 652, type: !763, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{!99, !765, !99, !99, !713}
!765 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !543)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !685, line: 120)
!767 = !DISubprogram(name: "getc", scope: !688, file: !688, line: 478, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !685, line: 121)
!769 = !DISubprogram(name: "getchar", scope: !688, file: !688, line: 484, type: !601, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !685, line: 126)
!771 = !DISubprogram(name: "perror", scope: !688, file: !688, line: 775, type: !772, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !103}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !685, line: 127)
!775 = !DISubprogram(name: "printf", scope: !688, file: !688, line: 318, type: !776, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!776 = !DISubroutineType(types: !777)
!777 = !{!11, !102, null}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !685, line: 128)
!779 = !DISubprogram(name: "putc", scope: !688, file: !688, line: 518, type: !730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !685, line: 129)
!781 = !DISubprogram(name: "putchar", scope: !688, file: !688, line: 524, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !685, line: 130)
!783 = !DISubprogram(name: "puts", scope: !688, file: !688, line: 632, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !685, line: 131)
!785 = !DISubprogram(name: "remove", scope: !688, file: !688, line: 144, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !787, file: !685, line: 132)
!787 = !DISubprogram(name: "rename", scope: !688, file: !688, line: 146, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DISubroutineType(types: !789)
!789 = !{!11, !103, !103}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !791, file: !685, line: 133)
!791 = !DISubprogram(name: "rewind", scope: !688, file: !688, line: 694, type: !694, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !793, file: !685, line: 134)
!793 = !DISubprogram(name: "scanf", scope: !688, file: !688, line: 383, type: !776, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !795, file: !685, line: 135)
!795 = !DISubprogram(name: "setbuf", scope: !688, file: !688, line: 290, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !713, !173}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !799, file: !685, line: 136)
!799 = !DISubprogram(name: "setvbuf", scope: !688, file: !688, line: 294, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DISubroutineType(types: !801)
!801 = !{!11, !713, !173, !11, !99}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !803, file: !685, line: 137)
!803 = !DISubprogram(name: "sprintf", scope: !688, file: !688, line: 320, type: !804, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DISubroutineType(types: !805)
!805 = !{!11, !173, !102, null}
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !685, line: 138)
!807 = !DISubprogram(name: "sscanf", scope: !688, file: !688, line: 385, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!11, !102, !102, null}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !811, file: !685, line: 139)
!811 = !DISubprogram(name: "tmpfile", scope: !688, file: !688, line: 159, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!696}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !685, line: 141)
!815 = !DISubprogram(name: "tmpnam", scope: !688, file: !688, line: 173, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DISubroutineType(types: !817)
!817 = !{!174, !174}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !685, line: 143)
!819 = !DISubprogram(name: "ungetc", scope: !688, file: !688, line: 639, type: !730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !821, file: !685, line: 144)
!821 = !DISubprogram(name: "vfprintf", scope: !688, file: !688, line: 327, type: !822, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!822 = !DISubroutineType(types: !823)
!823 = !{!11, !713, !102, !145}
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !685, line: 145)
!825 = !DISubprogram(name: "vprintf", scope: !688, file: !688, line: 333, type: !826, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!826 = !DISubroutineType(types: !827)
!827 = !{!11, !102, !145}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !829, file: !685, line: 146)
!829 = !DISubprogram(name: "vsprintf", scope: !688, file: !688, line: 335, type: !830, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!830 = !DISubroutineType(types: !831)
!831 = !{!11, !173, !102, !145}
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !833, file: !685, line: 175)
!833 = !DISubprogram(name: "snprintf", scope: !688, file: !688, line: 340, type: !834, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!834 = !DISubroutineType(types: !835)
!835 = !{!11, !173, !99, !102, null}
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !837, file: !685, line: 176)
!837 = !DISubprogram(name: "vfscanf", scope: !688, file: !688, line: 420, type: !822, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !839, file: !685, line: 177)
!839 = !DISubprogram(name: "vscanf", scope: !688, file: !688, line: 428, type: !826, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !841, file: !685, line: 178)
!841 = !DISubprogram(name: "vsnprintf", scope: !688, file: !688, line: 344, type: !842, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DISubroutineType(types: !843)
!843 = !{!11, !173, !99, !102, !145}
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !289, entity: !845, file: !685, line: 179)
!845 = !DISubprogram(name: "vsscanf", scope: !688, file: !688, line: 432, type: !846, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!846 = !DISubroutineType(types: !847)
!847 = !{!11, !102, !102, !145}
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !685, line: 185)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !837, file: !685, line: 186)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !685, line: 187)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !841, file: !685, line: 188)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !685, line: 189)
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !858, line: 82)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !855, line: 48, baseType: !856)
!855 = !DIFile(filename: "/usr/include/wctype.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!858 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cwctype", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !858, line: 83)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !861, line: 38, baseType: !101)
!861 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !44, file: !858, line: 84)
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !864, file: !858, line: 86)
!864 = !DISubprogram(name: "iswalnum", scope: !861, file: !861, line: 95, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !866, file: !858, line: 87)
!866 = !DISubprogram(name: "iswalpha", scope: !861, file: !861, line: 101, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !868, file: !858, line: 89)
!868 = !DISubprogram(name: "iswblank", scope: !861, file: !861, line: 146, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !870, file: !858, line: 91)
!870 = !DISubprogram(name: "iswcntrl", scope: !861, file: !861, line: 104, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !872, file: !858, line: 92)
!872 = !DISubprogram(name: "iswctype", scope: !861, file: !861, line: 159, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!873 = !DISubroutineType(types: !874)
!874 = !{!11, !44, !860}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !876, file: !858, line: 93)
!876 = !DISubprogram(name: "iswdigit", scope: !861, file: !861, line: 108, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !878, file: !858, line: 94)
!878 = !DISubprogram(name: "iswgraph", scope: !861, file: !861, line: 112, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !880, file: !858, line: 95)
!880 = !DISubprogram(name: "iswlower", scope: !861, file: !861, line: 117, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !882, file: !858, line: 96)
!882 = !DISubprogram(name: "iswprint", scope: !861, file: !861, line: 120, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !884, file: !858, line: 97)
!884 = !DISubprogram(name: "iswpunct", scope: !861, file: !861, line: 125, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !886, file: !858, line: 98)
!886 = !DISubprogram(name: "iswspace", scope: !861, file: !861, line: 130, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !888, file: !858, line: 99)
!888 = !DISubprogram(name: "iswupper", scope: !861, file: !861, line: 135, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !858, line: 100)
!890 = !DISubprogram(name: "iswxdigit", scope: !861, file: !861, line: 140, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !892, file: !858, line: 101)
!892 = !DISubprogram(name: "towctrans", scope: !855, file: !855, line: 55, type: !893, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!893 = !DISubroutineType(types: !894)
!894 = !{!44, !44, !854}
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !896, file: !858, line: 102)
!896 = !DISubprogram(name: "towlower", scope: !861, file: !861, line: 166, type: !897, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!897 = !DISubroutineType(types: !898)
!898 = !{!44, !44}
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !900, file: !858, line: 103)
!900 = !DISubprogram(name: "towupper", scope: !861, file: !861, line: 169, type: !897, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !902, file: !858, line: 104)
!902 = !DISubprogram(name: "wctrans", scope: !855, file: !855, line: 52, type: !903, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!903 = !DISubroutineType(types: !904)
!904 = !{!854, !103}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !858, line: 105)
!906 = !DISubprogram(name: "wctype", scope: !861, file: !861, line: 155, type: !907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!907 = !DISubroutineType(types: !908)
!908 = !{!860, !103}
!909 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !19, entity: !2, file: !20, line: 3)
!910 = !{i32 2, !"Dwarf Version", i32 4}
!911 = !{i32 2, !"Debug Info Version", i32 3}
!912 = !{i32 1, !"wchar_size", i32 4}
!913 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!914 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !518, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !19, variables: !21)
!915 = !DILocation(line: 74, column: 25, scope: !914)
!916 = distinct !DISubprogram(name: "gcd2", linkageName: "_Z4gcd2ll", scope: !20, file: !20, line: 5, type: !917, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !19, variables: !21)
!917 = !DISubroutineType(types: !918)
!918 = !{!11, !241, !241}
!919 = !DILocalVariable(name: "a", arg: 1, scope: !916, file: !20, line: 5, type: !241)
!920 = !DILocation(line: 5, column: 15, scope: !916)
!921 = !DILocalVariable(name: "b", arg: 2, scope: !916, file: !20, line: 5, type: !241)
!922 = !DILocation(line: 5, column: 23, scope: !916)
!923 = !DILocalVariable(name: "n", scope: !916, file: !20, line: 7, type: !241)
!924 = !DILocation(line: 7, column: 10, scope: !916)
!925 = !DILocation(line: 7, column: 14, scope: !916)
!926 = !DILocalVariable(name: "m", scope: !916, file: !20, line: 8, type: !241)
!927 = !DILocation(line: 8, column: 10, scope: !916)
!928 = !DILocation(line: 8, column: 14, scope: !916)
!929 = !DILocation(line: 9, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !916, file: !20, line: 9, column: 9)
!931 = !DILocation(line: 9, column: 13, scope: !930)
!932 = !DILocation(line: 9, column: 11, scope: !930)
!933 = !DILocation(line: 9, column: 15, scope: !930)
!934 = !DILocation(line: 9, column: 9, scope: !916)
!935 = !DILocation(line: 11, column: 16, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !20, line: 10, column: 5)
!937 = !DILocation(line: 11, column: 9, scope: !936)
!938 = !DILocation(line: 13, column: 17, scope: !916)
!939 = !DILocation(line: 13, column: 21, scope: !916)
!940 = !DILocation(line: 13, column: 19, scope: !916)
!941 = !DILocation(line: 13, column: 24, scope: !916)
!942 = !DILocation(line: 13, column: 12, scope: !916)
!943 = !DILocation(line: 13, column: 5, scope: !916)
!944 = !DILocation(line: 14, column: 1, scope: !916)
!945 = distinct !DISubprogram(name: "max<long>", linkageName: "_ZSt3maxIlERKT_S2_S2_", scope: !2, file: !946, line: 219, type: !947, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !19, templateParams: !951, variables: !21)
!946 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/stl_algobase.h", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1927")
!947 = !DISubroutineType(types: !948)
!948 = !{!949, !949, !949}
!949 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!951 = !{!952}
!952 = !DITemplateTypeParameter(name: "_Tp", type: !241)
!953 = !DILocalVariable(name: "__a", arg: 1, scope: !945, file: !946, line: 219, type: !949)
!954 = !DILocation(line: 219, column: 20, scope: !945)
!955 = !DILocalVariable(name: "__b", arg: 2, scope: !945, file: !946, line: 219, type: !949)
!956 = !DILocation(line: 219, column: 36, scope: !945)
!957 = !DILocation(line: 224, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !945, file: !946, line: 224, column: 11)
!959 = !DILocation(line: 224, column: 17, scope: !958)
!960 = !DILocation(line: 224, column: 15, scope: !958)
!961 = !DILocation(line: 224, column: 11, scope: !945)
!962 = !DILocation(line: 225, column: 9, scope: !958)
!963 = !DILocation(line: 225, column: 2, scope: !958)
!964 = !DILocation(line: 226, column: 14, scope: !945)
!965 = !DILocation(line: 226, column: 7, scope: !945)
!966 = !DILocation(line: 227, column: 5, scope: !945)
!967 = distinct !DISubprogram(name: "min<long>", linkageName: "_ZSt3minIlERKT_S2_S2_", scope: !2, file: !946, line: 195, type: !947, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !19, templateParams: !951, variables: !21)
!968 = !DILocalVariable(name: "__a", arg: 1, scope: !967, file: !946, line: 195, type: !949)
!969 = !DILocation(line: 195, column: 20, scope: !967)
!970 = !DILocalVariable(name: "__b", arg: 2, scope: !967, file: !946, line: 195, type: !949)
!971 = !DILocation(line: 195, column: 36, scope: !967)
!972 = !DILocation(line: 200, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !967, file: !946, line: 200, column: 11)
!974 = !DILocation(line: 200, column: 17, scope: !973)
!975 = !DILocation(line: 200, column: 15, scope: !973)
!976 = !DILocation(line: 200, column: 11, scope: !967)
!977 = !DILocation(line: 201, column: 9, scope: !973)
!978 = !DILocation(line: 201, column: 2, scope: !973)
!979 = !DILocation(line: 202, column: 14, scope: !967)
!980 = !DILocation(line: 202, column: 7, scope: !967)
!981 = !DILocation(line: 203, column: 5, scope: !967)
!982 = distinct !DISubprogram(name: "gcd1", linkageName: "_Z4gcd1ll", scope: !20, file: !20, line: 16, type: !917, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !19, variables: !21)
!983 = !DILocalVariable(name: "m", arg: 1, scope: !982, file: !20, line: 16, type: !241)
!984 = !DILocation(line: 16, column: 15, scope: !982)
!985 = !DILocalVariable(name: "n", arg: 2, scope: !982, file: !20, line: 16, type: !241)
!986 = !DILocation(line: 16, column: 23, scope: !982)
!987 = !DILocation(line: 18, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !982, file: !20, line: 18, column: 9)
!989 = !DILocation(line: 18, column: 13, scope: !988)
!990 = !DILocation(line: 18, column: 11, scope: !988)
!991 = !DILocation(line: 18, column: 9, scope: !982)
!992 = !DILocalVariable(name: "t", scope: !993, file: !20, line: 20, type: !241)
!993 = distinct !DILexicalBlock(scope: !988, file: !20, line: 19, column: 5)
!994 = !DILocation(line: 20, column: 14, scope: !993)
!995 = !DILocation(line: 21, column: 13, scope: !993)
!996 = !DILocation(line: 21, column: 11, scope: !993)
!997 = !DILocation(line: 22, column: 13, scope: !993)
!998 = !DILocation(line: 22, column: 11, scope: !993)
!999 = !DILocation(line: 23, column: 13, scope: !993)
!1000 = !DILocation(line: 23, column: 11, scope: !993)
!1001 = !DILocation(line: 24, column: 5, scope: !993)
!1002 = !DILocalVariable(name: "a", scope: !982, file: !20, line: 25, type: !241)
!1003 = !DILocation(line: 25, column: 10, scope: !982)
!1004 = !DILocalVariable(name: "b", scope: !982, file: !20, line: 25, type: !241)
!1005 = !DILocation(line: 25, column: 13, scope: !982)
!1006 = !DILocation(line: 26, column: 5, scope: !982)
!1007 = !DILocation(line: 26, column: 12, scope: !982)
!1008 = !DILocation(line: 26, column: 14, scope: !982)
!1009 = !DILocation(line: 28, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !982, file: !20, line: 27, column: 5)
!1011 = !DILocation(line: 28, column: 17, scope: !1010)
!1012 = !DILocation(line: 28, column: 15, scope: !1010)
!1013 = !DILocation(line: 28, column: 11, scope: !1010)
!1014 = !DILocation(line: 30, column: 13, scope: !1010)
!1015 = !DILocation(line: 30, column: 11, scope: !1010)
!1016 = !DILocation(line: 30, column: 20, scope: !1010)
!1017 = !DILocation(line: 30, column: 18, scope: !1010)
!1018 = distinct !{!1018, !1006, !1019}
!1019 = !DILocation(line: 31, column: 5, scope: !982)
!1020 = !DILocation(line: 32, column: 13, scope: !982)
!1021 = !DILocation(line: 32, column: 10, scope: !982)
!1022 = !DILocation(line: 32, column: 15, scope: !982)
!1023 = !DILocation(line: 35, column: 5, scope: !982)
!1024 = distinct !DISubprogram(name: "main", scope: !20, file: !20, line: 37, type: !601, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !19, variables: !21)
!1025 = !DILocalVariable(name: "T", scope: !1024, file: !20, line: 39, type: !11)
!1026 = !DILocation(line: 39, column: 9, scope: !1024)
!1027 = !DILocation(line: 40, column: 9, scope: !1024)
!1028 = !DILocalVariable(name: "i", scope: !1029, file: !20, line: 41, type: !11)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !20, line: 41, column: 5)
!1030 = !DILocation(line: 41, column: 14, scope: !1029)
!1031 = !DILocation(line: 41, column: 10, scope: !1029)
!1032 = !DILocation(line: 41, column: 21, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !20, line: 41, column: 5)
!1034 = !DILocation(line: 41, column: 25, scope: !1033)
!1035 = !DILocation(line: 41, column: 23, scope: !1033)
!1036 = !DILocation(line: 41, column: 5, scope: !1029)
!1037 = !DILocalVariable(name: "m", scope: !1038, file: !20, line: 43, type: !241)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !20, line: 42, column: 5)
!1039 = !DILocation(line: 43, column: 14, scope: !1038)
!1040 = !DILocalVariable(name: "n", scope: !1038, file: !20, line: 43, type: !241)
!1041 = !DILocation(line: 43, column: 17, scope: !1038)
!1042 = !DILocation(line: 44, column: 13, scope: !1038)
!1043 = !DILocation(line: 44, column: 18, scope: !1038)
!1044 = !DILocalVariable(name: "ans", scope: !1038, file: !20, line: 45, type: !241)
!1045 = !DILocation(line: 45, column: 14, scope: !1038)
!1046 = !DILocation(line: 45, column: 25, scope: !1038)
!1047 = !DILocation(line: 45, column: 28, scope: !1038)
!1048 = !DILocation(line: 45, column: 20, scope: !1038)
!1049 = !DILocation(line: 45, column: 33, scope: !1038)
!1050 = !DILocation(line: 45, column: 31, scope: !1038)
!1051 = !DILocation(line: 46, column: 17, scope: !1038)
!1052 = !DILocation(line: 46, column: 14, scope: !1038)
!1053 = !DILocation(line: 46, column: 21, scope: !1038)
!1054 = !DILocation(line: 47, column: 5, scope: !1038)
!1055 = !DILocation(line: 41, column: 29, scope: !1033)
!1056 = !DILocation(line: 41, column: 5, scope: !1033)
!1057 = distinct !{!1057, !1036, !1058}
!1058 = !DILocation(line: 47, column: 5, scope: !1029)
!1059 = !DILocation(line: 48, column: 1, scope: !1024)
!1060 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_1741347_buggy.c", scope: !20, file: !20, type: !1061, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, unit: !19, variables: !21)
!1061 = !DISubroutineType(types: !21)
!1062 = !DILocation(line: 0, scope: !1060)
