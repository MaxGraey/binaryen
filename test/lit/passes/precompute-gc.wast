;; NOTE: Assertions have been generated by update_lit_checks.py and should not be edited.
;; RUN: wasm-opt %s --remove-unused-names --precompute-propagate -all -S -o - \
;; RUN:   | filecheck %s

(module
 ;; CHECK:      (func $test-fallthrough (result i32)
 ;; CHECK-NEXT:  (local $x funcref)
 ;; CHECK-NEXT:  (local.set $x
 ;; CHECK-NEXT:   (block (result funcref)
 ;; CHECK-NEXT:    (drop
 ;; CHECK-NEXT:     (call $test-fallthrough)
 ;; CHECK-NEXT:    )
 ;; CHECK-NEXT:    (ref.null func)
 ;; CHECK-NEXT:   )
 ;; CHECK-NEXT:  )
 ;; CHECK-NEXT:  (i32.const 1)
 ;; CHECK-NEXT: )
 (func $test-fallthrough (result i32)
  (local $x funcref)
  (local.set $x
   ;; the fallthrough value should be used. for that to be possible with a block
   ;; we need for it not to have a name, which is why --remove-unused-names is
   ;; run
   (block (result (funcref))
    ;; make a call so the block is not trivially removable
    (drop
     (call $test-fallthrough)
    )
    (ref.null func)
   )
  )
  ;; the null in the local should be propagated to here
  (ref.is_null
   (local.get $x)
  )
 )
)
