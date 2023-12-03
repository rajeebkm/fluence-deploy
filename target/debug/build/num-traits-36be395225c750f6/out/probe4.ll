; ModuleID = 'probe4.b3f87bf46a90f315-cgu.0'
source_filename = "probe4.b3f87bf46a90f315-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"

@alloc_37e642b074b419fbdf06b62555091e3e = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/69e97df5ce571a777acd654ec3697ae8d25962ea/library/core/src/num/mod.rs" }>, align 1
@alloc_a9443299ccf07fea8e81ec255c49e7c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_37e642b074b419fbdf06b62555091e3e, [16 x i8] c"K\00\00\00\00\00\00\00w\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe4::probe
; Function Attrs: uwtable
define void @_ZN6probe45probe17h45e3a3300a7c647bE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h7dd42a8e17a3ba6cE.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h066390faa377dc27E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_a9443299ccf07fea8e81ec255c49e7c9) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h7dd42a8e17a3ba6cE.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h066390faa377dc27E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="core2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="core2" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.74.0-nightly (69e97df5c 2023-08-26)"}
