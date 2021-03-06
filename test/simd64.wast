(module
 (memory i64 1 1)
 (func $v128.load (param $0 i64) (result v128)
  (v128.load offset=0 align=16
    (local.get $0)
  )
 )
 (func $v128.store (param $0 i64) (param $1 v128)
  (v128.store offset=0 align=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $v128.load8_splat (param $0 i64) (result v128)
  (v128.load8_splat
   (local.get $0)
  )
 )
 (func $v128.load16_splat (param $0 i64) (result v128)
  (v128.load16_splat
   (local.get $0)
  )
 )
 (func $v128.load32_splat (param $0 i64) (result v128)
  (v128.load32_splat
   (local.get $0)
  )
 )
 (func $v128.load64_splat (param $0 i64) (result v128)
  (v128.load64_splat
   (local.get $0)
  )
 )
 (func $v128.load8x8_u (param $0 i64) (result v128)
  (v128.load8x8_u
   (local.get $0)
  )
 )
 (func $v128.load8x8_s (param $0 i64) (result v128)
  (v128.load8x8_s
   (local.get $0)
  )
 )
 (func $v128.load16x4_s (param $0 i64) (result v128)
  (v128.load16x4_s
   (local.get $0)
  )
 )
 (func $v128.load16x4_u (param $0 i64) (result v128)
  (v128.load16x4_u
   (local.get $0)
  )
 )
 (func $v128.load32x2_s (param $0 i64) (result v128)
  (v128.load32x2_s
   (local.get $0)
  )
 )
 (func $v128.load32x2_u (param $0 i64) (result v128)
  (v128.load32x2_u
   (local.get $0)
  )
 )
 (func $v128.load32_zero (param $0 i64) (result v128)
  (v128.load32_zero
   (local.get $0)
  )
 )
 (func $v128.load64_zero (param $0 i64) (result v128)
  (v128.load64_zero
   (local.get $0)
  )
 )
)
