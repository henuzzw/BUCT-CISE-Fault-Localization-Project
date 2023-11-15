; ModuleID = 'gcov/../WA_c/271565_buggy.c'
source_filename = "gcov/../WA_c/271565_buggy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"The second largest number is %d\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* %2, i32* %3, i32* %4, i32* %5), !dbg !19
  %7 = load i32, i32* %2, align 4, !dbg !20
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = icmp sge i32 %7, %8, !dbg !23
  br i1 %9, label %10, label %29, !dbg !24

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !25
  %12 = load i32, i32* %4, align 4, !dbg !26
  %13 = icmp sge i32 %11, %12, !dbg !27
  br i1 %13, label %14, label %29, !dbg !28

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %2, align 4, !dbg !29
  %16 = load i32, i32* %5, align 4, !dbg !30
  %17 = icmp sge i32 %15, %16, !dbg !31
  br i1 %17, label %18, label %29, !dbg !32

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %3, align 4, !dbg !33
  %20 = load i32, i32* %4, align 4, !dbg !34
  %21 = icmp sge i32 %19, %20, !dbg !35
  br i1 %21, label %22, label %29, !dbg !36

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %3, align 4, !dbg !37
  %24 = load i32, i32* %5, align 4, !dbg !38
  %25 = icmp sge i32 %23, %24, !dbg !39
  br i1 %25, label %26, label %29, !dbg !40

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %3, align 4, !dbg !41
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %27), !dbg !43
  br label %29, !dbg !44

; <label>:29:                                     ; preds = %26, %22, %18, %14, %10, %0
  %30 = load i32, i32* %2, align 4, !dbg !45
  %31 = load i32, i32* %3, align 4, !dbg !47
  %32 = icmp sge i32 %30, %31, !dbg !48
  br i1 %32, label %33, label %52, !dbg !49

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %2, align 4, !dbg !50
  %35 = load i32, i32* %4, align 4, !dbg !51
  %36 = icmp sge i32 %34, %35, !dbg !52
  br i1 %36, label %37, label %52, !dbg !53

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %2, align 4, !dbg !54
  %39 = load i32, i32* %5, align 4, !dbg !55
  %40 = icmp sge i32 %38, %39, !dbg !56
  br i1 %40, label %41, label %52, !dbg !57

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %4, align 4, !dbg !58
  %43 = load i32, i32* %5, align 4, !dbg !59
  %44 = icmp sge i32 %42, %43, !dbg !60
  br i1 %44, label %45, label %52, !dbg !61

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %4, align 4, !dbg !62
  %47 = load i32, i32* %3, align 4, !dbg !63
  %48 = icmp sge i32 %46, %47, !dbg !64
  br i1 %48, label %49, label %52, !dbg !65

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %4, align 4, !dbg !66
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %50), !dbg !68
  br label %52, !dbg !69

; <label>:52:                                     ; preds = %49, %45, %41, %37, %33, %29
  %53 = load i32, i32* %2, align 4, !dbg !70
  %54 = load i32, i32* %3, align 4, !dbg !72
  %55 = icmp sge i32 %53, %54, !dbg !73
  br i1 %55, label %56, label %75, !dbg !74

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %2, align 4, !dbg !75
  %58 = load i32, i32* %4, align 4, !dbg !76
  %59 = icmp sge i32 %57, %58, !dbg !77
  br i1 %59, label %60, label %75, !dbg !78

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %2, align 4, !dbg !79
  %62 = load i32, i32* %5, align 4, !dbg !80
  %63 = icmp sge i32 %61, %62, !dbg !81
  br i1 %63, label %64, label %75, !dbg !82

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %5, align 4, !dbg !83
  %66 = load i32, i32* %3, align 4, !dbg !84
  %67 = icmp sge i32 %65, %66, !dbg !85
  br i1 %67, label %68, label %75, !dbg !86

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %5, align 4, !dbg !87
  %70 = load i32, i32* %4, align 4, !dbg !88
  %71 = icmp sge i32 %69, %70, !dbg !89
  br i1 %71, label %72, label %75, !dbg !90

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* %5, align 4, !dbg !91
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %73), !dbg !93
  br label %75, !dbg !94

; <label>:75:                                     ; preds = %72, %68, %64, %60, %56, %52
  %76 = load i32, i32* %3, align 4, !dbg !95
  %77 = load i32, i32* %2, align 4, !dbg !97
  %78 = icmp sge i32 %76, %77, !dbg !98
  br i1 %78, label %79, label %98, !dbg !99

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* %3, align 4, !dbg !100
  %81 = load i32, i32* %4, align 4, !dbg !101
  %82 = icmp sge i32 %80, %81, !dbg !102
  br i1 %82, label %83, label %98, !dbg !103

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* %3, align 4, !dbg !104
  %85 = load i32, i32* %5, align 4, !dbg !105
  %86 = icmp sge i32 %84, %85, !dbg !106
  br i1 %86, label %87, label %98, !dbg !107

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* %2, align 4, !dbg !108
  %89 = load i32, i32* %4, align 4, !dbg !109
  %90 = icmp sge i32 %88, %89, !dbg !110
  br i1 %90, label %91, label %98, !dbg !111

; <label>:91:                                     ; preds = %87
  %92 = load i32, i32* %2, align 4, !dbg !112
  %93 = load i32, i32* %5, align 4, !dbg !113
  %94 = icmp sge i32 %92, %93, !dbg !114
  br i1 %94, label %95, label %98, !dbg !115

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* %2, align 4, !dbg !116
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %96), !dbg !118
  br label %98, !dbg !119

; <label>:98:                                     ; preds = %95, %91, %87, %83, %79, %75
  %99 = load i32, i32* %3, align 4, !dbg !120
  %100 = load i32, i32* %2, align 4, !dbg !122
  %101 = icmp sge i32 %99, %100, !dbg !123
  br i1 %101, label %102, label %121, !dbg !124

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %3, align 4, !dbg !125
  %104 = load i32, i32* %4, align 4, !dbg !126
  %105 = icmp sge i32 %103, %104, !dbg !127
  br i1 %105, label %106, label %121, !dbg !128

; <label>:106:                                    ; preds = %102
  %107 = load i32, i32* %3, align 4, !dbg !129
  %108 = load i32, i32* %5, align 4, !dbg !130
  %109 = icmp sge i32 %107, %108, !dbg !131
  br i1 %109, label %110, label %121, !dbg !132

; <label>:110:                                    ; preds = %106
  %111 = load i32, i32* %4, align 4, !dbg !133
  %112 = load i32, i32* %2, align 4, !dbg !134
  %113 = icmp sge i32 %111, %112, !dbg !135
  br i1 %113, label %114, label %121, !dbg !136

; <label>:114:                                    ; preds = %110
  %115 = load i32, i32* %4, align 4, !dbg !137
  %116 = load i32, i32* %5, align 4, !dbg !138
  %117 = icmp sge i32 %115, %116, !dbg !139
  br i1 %117, label %118, label %121, !dbg !140

; <label>:118:                                    ; preds = %114
  %119 = load i32, i32* %4, align 4, !dbg !141
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %119), !dbg !143
  br label %121, !dbg !144

; <label>:121:                                    ; preds = %118, %114, %110, %106, %102, %98
  %122 = load i32, i32* %3, align 4, !dbg !145
  %123 = load i32, i32* %2, align 4, !dbg !147
  %124 = icmp sge i32 %122, %123, !dbg !148
  br i1 %124, label %125, label %144, !dbg !149

; <label>:125:                                    ; preds = %121
  %126 = load i32, i32* %3, align 4, !dbg !150
  %127 = load i32, i32* %4, align 4, !dbg !151
  %128 = icmp sge i32 %126, %127, !dbg !152
  br i1 %128, label %129, label %144, !dbg !153

; <label>:129:                                    ; preds = %125
  %130 = load i32, i32* %3, align 4, !dbg !154
  %131 = load i32, i32* %5, align 4, !dbg !155
  %132 = icmp sge i32 %130, %131, !dbg !156
  br i1 %132, label %133, label %144, !dbg !157

; <label>:133:                                    ; preds = %129
  %134 = load i32, i32* %5, align 4, !dbg !158
  %135 = load i32, i32* %4, align 4, !dbg !159
  %136 = icmp sge i32 %134, %135, !dbg !160
  br i1 %136, label %137, label %144, !dbg !161

; <label>:137:                                    ; preds = %133
  %138 = load i32, i32* %5, align 4, !dbg !162
  %139 = load i32, i32* %2, align 4, !dbg !163
  %140 = icmp sge i32 %138, %139, !dbg !164
  br i1 %140, label %141, label %144, !dbg !165

; <label>:141:                                    ; preds = %137
  %142 = load i32, i32* %5, align 4, !dbg !166
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %142), !dbg !168
  br label %144, !dbg !169

; <label>:144:                                    ; preds = %141, %137, %133, %129, %125, %121
  %145 = load i32, i32* %4, align 4, !dbg !170
  %146 = load i32, i32* %2, align 4, !dbg !172
  %147 = icmp sge i32 %145, %146, !dbg !173
  br i1 %147, label %148, label %167, !dbg !174

; <label>:148:                                    ; preds = %144
  %149 = load i32, i32* %4, align 4, !dbg !175
  %150 = load i32, i32* %3, align 4, !dbg !176
  %151 = icmp sge i32 %149, %150, !dbg !177
  br i1 %151, label %152, label %167, !dbg !178

; <label>:152:                                    ; preds = %148
  %153 = load i32, i32* %4, align 4, !dbg !179
  %154 = load i32, i32* %5, align 4, !dbg !180
  %155 = icmp sge i32 %153, %154, !dbg !181
  br i1 %155, label %156, label %167, !dbg !182

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* %2, align 4, !dbg !183
  %158 = load i32, i32* %3, align 4, !dbg !184
  %159 = icmp sge i32 %157, %158, !dbg !185
  br i1 %159, label %160, label %167, !dbg !186

; <label>:160:                                    ; preds = %156
  %161 = load i32, i32* %2, align 4, !dbg !187
  %162 = load i32, i32* %5, align 4, !dbg !188
  %163 = icmp sge i32 %161, %162, !dbg !189
  br i1 %163, label %164, label %167, !dbg !190

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %2, align 4, !dbg !191
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %165), !dbg !193
  br label %167, !dbg !194

; <label>:167:                                    ; preds = %164, %160, %156, %152, %148, %144
  %168 = load i32, i32* %4, align 4, !dbg !195
  %169 = load i32, i32* %2, align 4, !dbg !197
  %170 = icmp sge i32 %168, %169, !dbg !198
  br i1 %170, label %171, label %190, !dbg !199

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %4, align 4, !dbg !200
  %173 = load i32, i32* %3, align 4, !dbg !201
  %174 = icmp sge i32 %172, %173, !dbg !202
  br i1 %174, label %175, label %190, !dbg !203

; <label>:175:                                    ; preds = %171
  %176 = load i32, i32* %4, align 4, !dbg !204
  %177 = load i32, i32* %5, align 4, !dbg !205
  %178 = icmp sge i32 %176, %177, !dbg !206
  br i1 %178, label %179, label %190, !dbg !207

; <label>:179:                                    ; preds = %175
  %180 = load i32, i32* %3, align 4, !dbg !208
  %181 = load i32, i32* %2, align 4, !dbg !209
  %182 = icmp sge i32 %180, %181, !dbg !210
  br i1 %182, label %183, label %190, !dbg !211

; <label>:183:                                    ; preds = %179
  %184 = load i32, i32* %3, align 4, !dbg !212
  %185 = load i32, i32* %5, align 4, !dbg !213
  %186 = icmp sge i32 %184, %185, !dbg !214
  br i1 %186, label %187, label %190, !dbg !215

; <label>:187:                                    ; preds = %183
  %188 = load i32, i32* %3, align 4, !dbg !216
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %188), !dbg !218
  br label %190, !dbg !219

; <label>:190:                                    ; preds = %187, %183, %179, %175, %171, %167
  %191 = load i32, i32* %4, align 4, !dbg !220
  %192 = load i32, i32* %2, align 4, !dbg !222
  %193 = icmp sge i32 %191, %192, !dbg !223
  br i1 %193, label %194, label %213, !dbg !224

; <label>:194:                                    ; preds = %190
  %195 = load i32, i32* %4, align 4, !dbg !225
  %196 = load i32, i32* %3, align 4, !dbg !226
  %197 = icmp sge i32 %195, %196, !dbg !227
  br i1 %197, label %198, label %213, !dbg !228

; <label>:198:                                    ; preds = %194
  %199 = load i32, i32* %4, align 4, !dbg !229
  %200 = load i32, i32* %5, align 4, !dbg !230
  %201 = icmp sge i32 %199, %200, !dbg !231
  br i1 %201, label %202, label %213, !dbg !232

; <label>:202:                                    ; preds = %198
  %203 = load i32, i32* %5, align 4, !dbg !233
  %204 = load i32, i32* %2, align 4, !dbg !234
  %205 = icmp sge i32 %203, %204, !dbg !235
  br i1 %205, label %206, label %213, !dbg !236

; <label>:206:                                    ; preds = %202
  %207 = load i32, i32* %5, align 4, !dbg !237
  %208 = load i32, i32* %3, align 4, !dbg !238
  %209 = icmp sge i32 %207, %208, !dbg !239
  br i1 %209, label %210, label %213, !dbg !240

; <label>:210:                                    ; preds = %206
  %211 = load i32, i32* %5, align 4, !dbg !241
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %211), !dbg !243
  br label %213, !dbg !244

; <label>:213:                                    ; preds = %210, %206, %202, %198, %194, %190
  %214 = load i32, i32* %5, align 4, !dbg !245
  %215 = load i32, i32* %2, align 4, !dbg !247
  %216 = icmp sge i32 %214, %215, !dbg !248
  br i1 %216, label %217, label %236, !dbg !249

; <label>:217:                                    ; preds = %213
  %218 = load i32, i32* %5, align 4, !dbg !250
  %219 = load i32, i32* %3, align 4, !dbg !251
  %220 = icmp sge i32 %218, %219, !dbg !252
  br i1 %220, label %221, label %236, !dbg !253

; <label>:221:                                    ; preds = %217
  %222 = load i32, i32* %5, align 4, !dbg !254
  %223 = load i32, i32* %4, align 4, !dbg !255
  %224 = icmp sge i32 %222, %223, !dbg !256
  br i1 %224, label %225, label %236, !dbg !257

; <label>:225:                                    ; preds = %221
  %226 = load i32, i32* %2, align 4, !dbg !258
  %227 = load i32, i32* %3, align 4, !dbg !259
  %228 = icmp sge i32 %226, %227, !dbg !260
  br i1 %228, label %229, label %236, !dbg !261

; <label>:229:                                    ; preds = %225
  %230 = load i32, i32* %2, align 4, !dbg !262
  %231 = load i32, i32* %4, align 4, !dbg !263
  %232 = icmp sge i32 %230, %231, !dbg !264
  br i1 %232, label %233, label %236, !dbg !265

; <label>:233:                                    ; preds = %229
  %234 = load i32, i32* %2, align 4, !dbg !266
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %234), !dbg !268
  br label %236, !dbg !269

; <label>:236:                                    ; preds = %233, %229, %225, %221, %217, %213
  %237 = load i32, i32* %5, align 4, !dbg !270
  %238 = load i32, i32* %2, align 4, !dbg !272
  %239 = icmp sge i32 %237, %238, !dbg !273
  br i1 %239, label %240, label %259, !dbg !274

; <label>:240:                                    ; preds = %236
  %241 = load i32, i32* %5, align 4, !dbg !275
  %242 = load i32, i32* %3, align 4, !dbg !276
  %243 = icmp sge i32 %241, %242, !dbg !277
  br i1 %243, label %244, label %259, !dbg !278

; <label>:244:                                    ; preds = %240
  %245 = load i32, i32* %5, align 4, !dbg !279
  %246 = load i32, i32* %4, align 4, !dbg !280
  %247 = icmp sge i32 %245, %246, !dbg !281
  br i1 %247, label %248, label %259, !dbg !282

; <label>:248:                                    ; preds = %244
  %249 = load i32, i32* %3, align 4, !dbg !283
  %250 = load i32, i32* %2, align 4, !dbg !284
  %251 = icmp sge i32 %249, %250, !dbg !285
  br i1 %251, label %252, label %259, !dbg !286

; <label>:252:                                    ; preds = %248
  %253 = load i32, i32* %3, align 4, !dbg !287
  %254 = load i32, i32* %4, align 4, !dbg !288
  %255 = icmp sge i32 %253, %254, !dbg !289
  br i1 %255, label %256, label %259, !dbg !290

; <label>:256:                                    ; preds = %252
  %257 = load i32, i32* %3, align 4, !dbg !291
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %257), !dbg !293
  br label %259, !dbg !294

; <label>:259:                                    ; preds = %256, %252, %248, %244, %240, %236
  %260 = load i32, i32* %5, align 4, !dbg !295
  %261 = load i32, i32* %2, align 4, !dbg !297
  %262 = icmp sge i32 %260, %261, !dbg !298
  br i1 %262, label %263, label %282, !dbg !299

; <label>:263:                                    ; preds = %259
  %264 = load i32, i32* %5, align 4, !dbg !300
  %265 = load i32, i32* %3, align 4, !dbg !301
  %266 = icmp sge i32 %264, %265, !dbg !302
  br i1 %266, label %267, label %282, !dbg !303

; <label>:267:                                    ; preds = %263
  %268 = load i32, i32* %5, align 4, !dbg !304
  %269 = load i32, i32* %4, align 4, !dbg !305
  %270 = icmp sge i32 %268, %269, !dbg !306
  br i1 %270, label %271, label %282, !dbg !307

; <label>:271:                                    ; preds = %267
  %272 = load i32, i32* %4, align 4, !dbg !308
  %273 = load i32, i32* %2, align 4, !dbg !309
  %274 = icmp sge i32 %272, %273, !dbg !310
  br i1 %274, label %275, label %282, !dbg !311

; <label>:275:                                    ; preds = %271
  %276 = load i32, i32* %4, align 4, !dbg !312
  %277 = load i32, i32* %3, align 4, !dbg !313
  %278 = icmp sge i32 %276, %277, !dbg !314
  br i1 %278, label %279, label %282, !dbg !315

; <label>:279:                                    ; preds = %275
  %280 = load i32, i32* %4, align 4, !dbg !316
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %280), !dbg !318
  br label %282, !dbg !319

; <label>:282:                                    ; preds = %279, %275, %271, %267, %263, %259
  ret i32 0, !dbg !320
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
!1 = !DIFile(filename: "gcov/../WA_c/271565_buggy.c", directory: "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/2830")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 9, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 11, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 5, type: !10)
!18 = !DILocation(line: 5, column: 15, scope: !7)
!19 = !DILocation(line: 6, column: 5, scope: !7)
!20 = !DILocation(line: 7, column: 8, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 8)
!22 = !DILocation(line: 7, column: 11, scope: !21)
!23 = !DILocation(line: 7, column: 9, scope: !21)
!24 = !DILocation(line: 7, column: 12, scope: !21)
!25 = !DILocation(line: 7, column: 14, scope: !21)
!26 = !DILocation(line: 7, column: 17, scope: !21)
!27 = !DILocation(line: 7, column: 15, scope: !21)
!28 = !DILocation(line: 7, column: 18, scope: !21)
!29 = !DILocation(line: 7, column: 20, scope: !21)
!30 = !DILocation(line: 7, column: 23, scope: !21)
!31 = !DILocation(line: 7, column: 21, scope: !21)
!32 = !DILocation(line: 7, column: 24, scope: !21)
!33 = !DILocation(line: 7, column: 26, scope: !21)
!34 = !DILocation(line: 7, column: 29, scope: !21)
!35 = !DILocation(line: 7, column: 27, scope: !21)
!36 = !DILocation(line: 7, column: 30, scope: !21)
!37 = !DILocation(line: 7, column: 32, scope: !21)
!38 = !DILocation(line: 7, column: 35, scope: !21)
!39 = !DILocation(line: 7, column: 33, scope: !21)
!40 = !DILocation(line: 7, column: 8, scope: !7)
!41 = !DILocation(line: 9, column: 50, scope: !42)
!42 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 5)
!43 = !DILocation(line: 9, column: 9, scope: !42)
!44 = !DILocation(line: 10, column: 5, scope: !42)
!45 = !DILocation(line: 11, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 8)
!47 = !DILocation(line: 11, column: 11, scope: !46)
!48 = !DILocation(line: 11, column: 9, scope: !46)
!49 = !DILocation(line: 11, column: 12, scope: !46)
!50 = !DILocation(line: 11, column: 14, scope: !46)
!51 = !DILocation(line: 11, column: 17, scope: !46)
!52 = !DILocation(line: 11, column: 15, scope: !46)
!53 = !DILocation(line: 11, column: 18, scope: !46)
!54 = !DILocation(line: 11, column: 20, scope: !46)
!55 = !DILocation(line: 11, column: 23, scope: !46)
!56 = !DILocation(line: 11, column: 21, scope: !46)
!57 = !DILocation(line: 11, column: 24, scope: !46)
!58 = !DILocation(line: 11, column: 26, scope: !46)
!59 = !DILocation(line: 11, column: 29, scope: !46)
!60 = !DILocation(line: 11, column: 27, scope: !46)
!61 = !DILocation(line: 11, column: 30, scope: !46)
!62 = !DILocation(line: 11, column: 32, scope: !46)
!63 = !DILocation(line: 11, column: 35, scope: !46)
!64 = !DILocation(line: 11, column: 33, scope: !46)
!65 = !DILocation(line: 11, column: 8, scope: !7)
!66 = !DILocation(line: 13, column: 50, scope: !67)
!67 = distinct !DILexicalBlock(scope: !46, file: !1, line: 12, column: 5)
!68 = !DILocation(line: 13, column: 9, scope: !67)
!69 = !DILocation(line: 14, column: 5, scope: !67)
!70 = !DILocation(line: 15, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 8)
!72 = !DILocation(line: 15, column: 11, scope: !71)
!73 = !DILocation(line: 15, column: 9, scope: !71)
!74 = !DILocation(line: 15, column: 12, scope: !71)
!75 = !DILocation(line: 15, column: 14, scope: !71)
!76 = !DILocation(line: 15, column: 17, scope: !71)
!77 = !DILocation(line: 15, column: 15, scope: !71)
!78 = !DILocation(line: 15, column: 18, scope: !71)
!79 = !DILocation(line: 15, column: 20, scope: !71)
!80 = !DILocation(line: 15, column: 23, scope: !71)
!81 = !DILocation(line: 15, column: 21, scope: !71)
!82 = !DILocation(line: 15, column: 24, scope: !71)
!83 = !DILocation(line: 15, column: 26, scope: !71)
!84 = !DILocation(line: 15, column: 29, scope: !71)
!85 = !DILocation(line: 15, column: 27, scope: !71)
!86 = !DILocation(line: 15, column: 30, scope: !71)
!87 = !DILocation(line: 15, column: 32, scope: !71)
!88 = !DILocation(line: 15, column: 35, scope: !71)
!89 = !DILocation(line: 15, column: 33, scope: !71)
!90 = !DILocation(line: 15, column: 8, scope: !7)
!91 = !DILocation(line: 17, column: 50, scope: !92)
!92 = distinct !DILexicalBlock(scope: !71, file: !1, line: 16, column: 5)
!93 = !DILocation(line: 17, column: 9, scope: !92)
!94 = !DILocation(line: 18, column: 5, scope: !92)
!95 = !DILocation(line: 19, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 8)
!97 = !DILocation(line: 19, column: 11, scope: !96)
!98 = !DILocation(line: 19, column: 9, scope: !96)
!99 = !DILocation(line: 19, column: 12, scope: !96)
!100 = !DILocation(line: 19, column: 14, scope: !96)
!101 = !DILocation(line: 19, column: 17, scope: !96)
!102 = !DILocation(line: 19, column: 15, scope: !96)
!103 = !DILocation(line: 19, column: 18, scope: !96)
!104 = !DILocation(line: 19, column: 20, scope: !96)
!105 = !DILocation(line: 19, column: 23, scope: !96)
!106 = !DILocation(line: 19, column: 21, scope: !96)
!107 = !DILocation(line: 19, column: 24, scope: !96)
!108 = !DILocation(line: 19, column: 26, scope: !96)
!109 = !DILocation(line: 19, column: 29, scope: !96)
!110 = !DILocation(line: 19, column: 27, scope: !96)
!111 = !DILocation(line: 19, column: 30, scope: !96)
!112 = !DILocation(line: 19, column: 32, scope: !96)
!113 = !DILocation(line: 19, column: 35, scope: !96)
!114 = !DILocation(line: 19, column: 33, scope: !96)
!115 = !DILocation(line: 19, column: 8, scope: !7)
!116 = !DILocation(line: 21, column: 50, scope: !117)
!117 = distinct !DILexicalBlock(scope: !96, file: !1, line: 20, column: 5)
!118 = !DILocation(line: 21, column: 9, scope: !117)
!119 = !DILocation(line: 22, column: 5, scope: !117)
!120 = !DILocation(line: 23, column: 8, scope: !121)
!121 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 8)
!122 = !DILocation(line: 23, column: 11, scope: !121)
!123 = !DILocation(line: 23, column: 9, scope: !121)
!124 = !DILocation(line: 23, column: 12, scope: !121)
!125 = !DILocation(line: 23, column: 14, scope: !121)
!126 = !DILocation(line: 23, column: 17, scope: !121)
!127 = !DILocation(line: 23, column: 15, scope: !121)
!128 = !DILocation(line: 23, column: 18, scope: !121)
!129 = !DILocation(line: 23, column: 20, scope: !121)
!130 = !DILocation(line: 23, column: 23, scope: !121)
!131 = !DILocation(line: 23, column: 21, scope: !121)
!132 = !DILocation(line: 23, column: 24, scope: !121)
!133 = !DILocation(line: 23, column: 26, scope: !121)
!134 = !DILocation(line: 23, column: 29, scope: !121)
!135 = !DILocation(line: 23, column: 27, scope: !121)
!136 = !DILocation(line: 23, column: 30, scope: !121)
!137 = !DILocation(line: 23, column: 32, scope: !121)
!138 = !DILocation(line: 23, column: 35, scope: !121)
!139 = !DILocation(line: 23, column: 33, scope: !121)
!140 = !DILocation(line: 23, column: 8, scope: !7)
!141 = !DILocation(line: 25, column: 50, scope: !142)
!142 = distinct !DILexicalBlock(scope: !121, file: !1, line: 24, column: 5)
!143 = !DILocation(line: 25, column: 9, scope: !142)
!144 = !DILocation(line: 26, column: 5, scope: !142)
!145 = !DILocation(line: 27, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !7, file: !1, line: 27, column: 8)
!147 = !DILocation(line: 27, column: 11, scope: !146)
!148 = !DILocation(line: 27, column: 9, scope: !146)
!149 = !DILocation(line: 27, column: 12, scope: !146)
!150 = !DILocation(line: 27, column: 14, scope: !146)
!151 = !DILocation(line: 27, column: 17, scope: !146)
!152 = !DILocation(line: 27, column: 15, scope: !146)
!153 = !DILocation(line: 27, column: 18, scope: !146)
!154 = !DILocation(line: 27, column: 20, scope: !146)
!155 = !DILocation(line: 27, column: 23, scope: !146)
!156 = !DILocation(line: 27, column: 21, scope: !146)
!157 = !DILocation(line: 27, column: 24, scope: !146)
!158 = !DILocation(line: 27, column: 26, scope: !146)
!159 = !DILocation(line: 27, column: 29, scope: !146)
!160 = !DILocation(line: 27, column: 27, scope: !146)
!161 = !DILocation(line: 27, column: 30, scope: !146)
!162 = !DILocation(line: 27, column: 32, scope: !146)
!163 = !DILocation(line: 27, column: 35, scope: !146)
!164 = !DILocation(line: 27, column: 33, scope: !146)
!165 = !DILocation(line: 27, column: 8, scope: !7)
!166 = !DILocation(line: 29, column: 50, scope: !167)
!167 = distinct !DILexicalBlock(scope: !146, file: !1, line: 28, column: 5)
!168 = !DILocation(line: 29, column: 9, scope: !167)
!169 = !DILocation(line: 30, column: 5, scope: !167)
!170 = !DILocation(line: 31, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 8)
!172 = !DILocation(line: 31, column: 11, scope: !171)
!173 = !DILocation(line: 31, column: 9, scope: !171)
!174 = !DILocation(line: 31, column: 12, scope: !171)
!175 = !DILocation(line: 31, column: 14, scope: !171)
!176 = !DILocation(line: 31, column: 17, scope: !171)
!177 = !DILocation(line: 31, column: 15, scope: !171)
!178 = !DILocation(line: 31, column: 18, scope: !171)
!179 = !DILocation(line: 31, column: 20, scope: !171)
!180 = !DILocation(line: 31, column: 23, scope: !171)
!181 = !DILocation(line: 31, column: 21, scope: !171)
!182 = !DILocation(line: 31, column: 24, scope: !171)
!183 = !DILocation(line: 31, column: 26, scope: !171)
!184 = !DILocation(line: 31, column: 29, scope: !171)
!185 = !DILocation(line: 31, column: 27, scope: !171)
!186 = !DILocation(line: 31, column: 30, scope: !171)
!187 = !DILocation(line: 31, column: 32, scope: !171)
!188 = !DILocation(line: 31, column: 35, scope: !171)
!189 = !DILocation(line: 31, column: 33, scope: !171)
!190 = !DILocation(line: 31, column: 8, scope: !7)
!191 = !DILocation(line: 33, column: 50, scope: !192)
!192 = distinct !DILexicalBlock(scope: !171, file: !1, line: 32, column: 5)
!193 = !DILocation(line: 33, column: 9, scope: !192)
!194 = !DILocation(line: 34, column: 5, scope: !192)
!195 = !DILocation(line: 35, column: 8, scope: !196)
!196 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 8)
!197 = !DILocation(line: 35, column: 11, scope: !196)
!198 = !DILocation(line: 35, column: 9, scope: !196)
!199 = !DILocation(line: 35, column: 12, scope: !196)
!200 = !DILocation(line: 35, column: 14, scope: !196)
!201 = !DILocation(line: 35, column: 17, scope: !196)
!202 = !DILocation(line: 35, column: 15, scope: !196)
!203 = !DILocation(line: 35, column: 18, scope: !196)
!204 = !DILocation(line: 35, column: 20, scope: !196)
!205 = !DILocation(line: 35, column: 23, scope: !196)
!206 = !DILocation(line: 35, column: 21, scope: !196)
!207 = !DILocation(line: 35, column: 24, scope: !196)
!208 = !DILocation(line: 35, column: 26, scope: !196)
!209 = !DILocation(line: 35, column: 29, scope: !196)
!210 = !DILocation(line: 35, column: 27, scope: !196)
!211 = !DILocation(line: 35, column: 30, scope: !196)
!212 = !DILocation(line: 35, column: 32, scope: !196)
!213 = !DILocation(line: 35, column: 35, scope: !196)
!214 = !DILocation(line: 35, column: 33, scope: !196)
!215 = !DILocation(line: 35, column: 8, scope: !7)
!216 = !DILocation(line: 37, column: 50, scope: !217)
!217 = distinct !DILexicalBlock(scope: !196, file: !1, line: 36, column: 5)
!218 = !DILocation(line: 37, column: 9, scope: !217)
!219 = !DILocation(line: 38, column: 5, scope: !217)
!220 = !DILocation(line: 39, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !7, file: !1, line: 39, column: 8)
!222 = !DILocation(line: 39, column: 11, scope: !221)
!223 = !DILocation(line: 39, column: 9, scope: !221)
!224 = !DILocation(line: 39, column: 12, scope: !221)
!225 = !DILocation(line: 39, column: 14, scope: !221)
!226 = !DILocation(line: 39, column: 17, scope: !221)
!227 = !DILocation(line: 39, column: 15, scope: !221)
!228 = !DILocation(line: 39, column: 18, scope: !221)
!229 = !DILocation(line: 39, column: 20, scope: !221)
!230 = !DILocation(line: 39, column: 23, scope: !221)
!231 = !DILocation(line: 39, column: 21, scope: !221)
!232 = !DILocation(line: 39, column: 24, scope: !221)
!233 = !DILocation(line: 39, column: 26, scope: !221)
!234 = !DILocation(line: 39, column: 29, scope: !221)
!235 = !DILocation(line: 39, column: 27, scope: !221)
!236 = !DILocation(line: 39, column: 30, scope: !221)
!237 = !DILocation(line: 39, column: 32, scope: !221)
!238 = !DILocation(line: 39, column: 35, scope: !221)
!239 = !DILocation(line: 39, column: 33, scope: !221)
!240 = !DILocation(line: 39, column: 8, scope: !7)
!241 = !DILocation(line: 41, column: 50, scope: !242)
!242 = distinct !DILexicalBlock(scope: !221, file: !1, line: 40, column: 5)
!243 = !DILocation(line: 41, column: 9, scope: !242)
!244 = !DILocation(line: 42, column: 5, scope: !242)
!245 = !DILocation(line: 43, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !7, file: !1, line: 43, column: 8)
!247 = !DILocation(line: 43, column: 11, scope: !246)
!248 = !DILocation(line: 43, column: 9, scope: !246)
!249 = !DILocation(line: 43, column: 12, scope: !246)
!250 = !DILocation(line: 43, column: 14, scope: !246)
!251 = !DILocation(line: 43, column: 17, scope: !246)
!252 = !DILocation(line: 43, column: 15, scope: !246)
!253 = !DILocation(line: 43, column: 18, scope: !246)
!254 = !DILocation(line: 43, column: 20, scope: !246)
!255 = !DILocation(line: 43, column: 23, scope: !246)
!256 = !DILocation(line: 43, column: 21, scope: !246)
!257 = !DILocation(line: 43, column: 24, scope: !246)
!258 = !DILocation(line: 43, column: 26, scope: !246)
!259 = !DILocation(line: 43, column: 29, scope: !246)
!260 = !DILocation(line: 43, column: 27, scope: !246)
!261 = !DILocation(line: 43, column: 30, scope: !246)
!262 = !DILocation(line: 43, column: 32, scope: !246)
!263 = !DILocation(line: 43, column: 35, scope: !246)
!264 = !DILocation(line: 43, column: 33, scope: !246)
!265 = !DILocation(line: 43, column: 8, scope: !7)
!266 = !DILocation(line: 45, column: 50, scope: !267)
!267 = distinct !DILexicalBlock(scope: !246, file: !1, line: 44, column: 5)
!268 = !DILocation(line: 45, column: 9, scope: !267)
!269 = !DILocation(line: 46, column: 5, scope: !267)
!270 = !DILocation(line: 47, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !7, file: !1, line: 47, column: 8)
!272 = !DILocation(line: 47, column: 11, scope: !271)
!273 = !DILocation(line: 47, column: 9, scope: !271)
!274 = !DILocation(line: 47, column: 12, scope: !271)
!275 = !DILocation(line: 47, column: 14, scope: !271)
!276 = !DILocation(line: 47, column: 17, scope: !271)
!277 = !DILocation(line: 47, column: 15, scope: !271)
!278 = !DILocation(line: 47, column: 18, scope: !271)
!279 = !DILocation(line: 47, column: 20, scope: !271)
!280 = !DILocation(line: 47, column: 23, scope: !271)
!281 = !DILocation(line: 47, column: 21, scope: !271)
!282 = !DILocation(line: 47, column: 24, scope: !271)
!283 = !DILocation(line: 47, column: 26, scope: !271)
!284 = !DILocation(line: 47, column: 29, scope: !271)
!285 = !DILocation(line: 47, column: 27, scope: !271)
!286 = !DILocation(line: 47, column: 30, scope: !271)
!287 = !DILocation(line: 47, column: 32, scope: !271)
!288 = !DILocation(line: 47, column: 35, scope: !271)
!289 = !DILocation(line: 47, column: 33, scope: !271)
!290 = !DILocation(line: 47, column: 8, scope: !7)
!291 = !DILocation(line: 49, column: 50, scope: !292)
!292 = distinct !DILexicalBlock(scope: !271, file: !1, line: 48, column: 5)
!293 = !DILocation(line: 49, column: 9, scope: !292)
!294 = !DILocation(line: 50, column: 5, scope: !292)
!295 = !DILocation(line: 51, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 8)
!297 = !DILocation(line: 51, column: 11, scope: !296)
!298 = !DILocation(line: 51, column: 9, scope: !296)
!299 = !DILocation(line: 51, column: 12, scope: !296)
!300 = !DILocation(line: 51, column: 14, scope: !296)
!301 = !DILocation(line: 51, column: 17, scope: !296)
!302 = !DILocation(line: 51, column: 15, scope: !296)
!303 = !DILocation(line: 51, column: 18, scope: !296)
!304 = !DILocation(line: 51, column: 20, scope: !296)
!305 = !DILocation(line: 51, column: 23, scope: !296)
!306 = !DILocation(line: 51, column: 21, scope: !296)
!307 = !DILocation(line: 51, column: 24, scope: !296)
!308 = !DILocation(line: 51, column: 26, scope: !296)
!309 = !DILocation(line: 51, column: 29, scope: !296)
!310 = !DILocation(line: 51, column: 27, scope: !296)
!311 = !DILocation(line: 51, column: 30, scope: !296)
!312 = !DILocation(line: 51, column: 32, scope: !296)
!313 = !DILocation(line: 51, column: 35, scope: !296)
!314 = !DILocation(line: 51, column: 33, scope: !296)
!315 = !DILocation(line: 51, column: 8, scope: !7)
!316 = !DILocation(line: 53, column: 50, scope: !317)
!317 = distinct !DILexicalBlock(scope: !296, file: !1, line: 52, column: 5)
!318 = !DILocation(line: 53, column: 9, scope: !317)
!319 = !DILocation(line: 54, column: 5, scope: !317)
!320 = !DILocation(line: 55, column: 5, scope: !7)
