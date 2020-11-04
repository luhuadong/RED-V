# 1 "freedom-e-sdk/bsp/drivers/plic/plic_driver.c"
# 1 "/home/rudy/workspace/Projects/rt-thread/bsp/sparkfun-redv//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 201710L
#define __STDC_UTF_16__ 1
#define __STDC_UTF_32__ 1
#define __STDC_HOSTED__ 1
#define __GNUC__ 8
#define __GNUC_MINOR__ 3
#define __GNUC_PATCHLEVEL__ 0
#define __VERSION__ "8.3.0"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 16
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 16
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __SIZE_TYPE__ unsigned int
#define __PTRDIFF_TYPE__ int
#define __WCHAR_TYPE__ int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long long int
#define __UINTMAX_TYPE__ long long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ long unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ long int
#define __INT64_TYPE__ long long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ long unsigned int
#define __UINT64_TYPE__ long long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ long int
#define __INT_LEAST64_TYPE__ long long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ long unsigned int
#define __UINT_LEAST64_TYPE__ long long unsigned int
#define __INT_FAST8_TYPE__ int
#define __INT_FAST16_TYPE__ int
#define __INT_FAST32_TYPE__ int
#define __INT_FAST64_TYPE__ long long int
#define __UINT_FAST8_TYPE__ unsigned int
#define __UINT_FAST16_TYPE__ unsigned int
#define __UINT_FAST32_TYPE__ unsigned int
#define __UINT_FAST64_TYPE__ long long unsigned int
#define __INTPTR_TYPE__ int
#define __UINTPTR_TYPE__ unsigned int
#define __has_include(STR) __has_include__(STR)
#define __has_include_next(STR) __has_include_next__(STR)
#define __GXX_ABI_VERSION 1013
#define __SCHAR_MAX__ 0x7f
#define __SHRT_MAX__ 0x7fff
#define __INT_MAX__ 0x7fffffff
#define __LONG_MAX__ 0x7fffffffL
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __WCHAR_MAX__ 0x7fffffff
#define __WCHAR_MIN__ (-__WCHAR_MAX__ - 1)
#define __WINT_MAX__ 0xffffffffU
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 0x7fffffff
#define __SIZE_MAX__ 0xffffffffU
#define __SCHAR_WIDTH__ 8
#define __SHRT_WIDTH__ 16
#define __INT_WIDTH__ 32
#define __LONG_WIDTH__ 32
#define __LONG_LONG_WIDTH__ 64
#define __WCHAR_WIDTH__ 32
#define __WINT_WIDTH__ 32
#define __PTRDIFF_WIDTH__ 32
#define __SIZE_WIDTH__ 32
#define __INTMAX_MAX__ 0x7fffffffffffffffLL
#define __INTMAX_C(c) c ## LL
#define __UINTMAX_MAX__ 0xffffffffffffffffULL
#define __UINTMAX_C(c) c ## ULL
#define __INTMAX_WIDTH__ 64
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __SIG_ATOMIC_WIDTH__ 32
#define __INT8_MAX__ 0x7f
#define __INT16_MAX__ 0x7fff
#define __INT32_MAX__ 0x7fffffffL
#define __INT64_MAX__ 0x7fffffffffffffffLL
#define __UINT8_MAX__ 0xff
#define __UINT16_MAX__ 0xffff
#define __UINT32_MAX__ 0xffffffffUL
#define __UINT64_MAX__ 0xffffffffffffffffULL
#define __INT_LEAST8_MAX__ 0x7f
#define __INT8_C(c) c
#define __INT_LEAST8_WIDTH__ 8
#define __INT_LEAST16_MAX__ 0x7fff
#define __INT16_C(c) c
#define __INT_LEAST16_WIDTH__ 16
#define __INT_LEAST32_MAX__ 0x7fffffffL
#define __INT32_C(c) c ## L
#define __INT_LEAST32_WIDTH__ 32
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffLL
#define __INT64_C(c) c ## LL
#define __INT_LEAST64_WIDTH__ 64
#define __UINT_LEAST8_MAX__ 0xff
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 0xffff
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 0xffffffffUL
#define __UINT32_C(c) c ## UL
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffULL
#define __UINT64_C(c) c ## ULL
#define __INT_FAST8_MAX__ 0x7fffffff
#define __INT_FAST8_WIDTH__ 32
#define __INT_FAST16_MAX__ 0x7fffffff
#define __INT_FAST16_WIDTH__ 32
#define __INT_FAST32_MAX__ 0x7fffffff
#define __INT_FAST32_WIDTH__ 32
#define __INT_FAST64_MAX__ 0x7fffffffffffffffLL
#define __INT_FAST64_WIDTH__ 64
#define __UINT_FAST8_MAX__ 0xffffffffU
#define __UINT_FAST16_MAX__ 0xffffffffU
#define __UINT_FAST32_MAX__ 0xffffffffU
#define __UINT_FAST64_MAX__ 0xffffffffffffffffULL
#define __INTPTR_MAX__ 0x7fffffff
#define __INTPTR_WIDTH__ 32
#define __UINTPTR_MAX__ 0xffffffffU
#define __GCC_IEC_559 0
#define __GCC_IEC_559_COMPLEX 0
#define __FLT_EVAL_METHOD__ 0
#define __FLT_EVAL_METHOD_TS_18661_3__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.40282346638528859811704183484516925e+38F
#define __FLT_MIN__ 1.17549435082228750796873653722224568e-38F
#define __FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F
#define __FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)
#define __DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)
#define __DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)
#define __DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 113
#define __LDBL_DIG__ 33
#define __LDBL_MIN_EXP__ (-16381)
#define __LDBL_MIN_10_EXP__ (-4931)
#define __LDBL_MAX_EXP__ 16384
#define __LDBL_MAX_10_EXP__ 4932
#define __DECIMAL_DIG__ 36
#define __LDBL_DECIMAL_DIG__ 36
#define __LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L
#define __LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L
#define __LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L
#define __LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __FLT32_MANT_DIG__ 24
#define __FLT32_DIG__ 6
#define __FLT32_MIN_EXP__ (-125)
#define __FLT32_MIN_10_EXP__ (-37)
#define __FLT32_MAX_EXP__ 128
#define __FLT32_MAX_10_EXP__ 38
#define __FLT32_DECIMAL_DIG__ 9
#define __FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32
#define __FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32
#define __FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32
#define __FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32
#define __FLT32_HAS_DENORM__ 1
#define __FLT32_HAS_INFINITY__ 1
#define __FLT32_HAS_QUIET_NAN__ 1
#define __FLT64_MANT_DIG__ 53
#define __FLT64_DIG__ 15
#define __FLT64_MIN_EXP__ (-1021)
#define __FLT64_MIN_10_EXP__ (-307)
#define __FLT64_MAX_EXP__ 1024
#define __FLT64_MAX_10_EXP__ 308
#define __FLT64_DECIMAL_DIG__ 17
#define __FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64
#define __FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64
#define __FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64
#define __FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64
#define __FLT64_HAS_DENORM__ 1
#define __FLT64_HAS_INFINITY__ 1
#define __FLT64_HAS_QUIET_NAN__ 1
#define __FLT128_MANT_DIG__ 113
#define __FLT128_DIG__ 33
#define __FLT128_MIN_EXP__ (-16381)
#define __FLT128_MIN_10_EXP__ (-4931)
#define __FLT128_MAX_EXP__ 16384
#define __FLT128_MAX_10_EXP__ 4932
#define __FLT128_DECIMAL_DIG__ 36
#define __FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128
#define __FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128
#define __FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128
#define __FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128
#define __FLT128_HAS_DENORM__ 1
#define __FLT128_HAS_INFINITY__ 1
#define __FLT128_HAS_QUIET_NAN__ 1
#define __FLT32X_MANT_DIG__ 53
#define __FLT32X_DIG__ 15
#define __FLT32X_MIN_EXP__ (-1021)
#define __FLT32X_MIN_10_EXP__ (-307)
#define __FLT32X_MAX_EXP__ 1024
#define __FLT32X_MAX_10_EXP__ 308
#define __FLT32X_DECIMAL_DIG__ 17
#define __FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x
#define __FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x
#define __FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x
#define __FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x
#define __FLT32X_HAS_DENORM__ 1
#define __FLT32X_HAS_INFINITY__ 1
#define __FLT32X_HAS_QUIET_NAN__ 1
#define __FLT64X_MANT_DIG__ 113
#define __FLT64X_DIG__ 33
#define __FLT64X_MIN_EXP__ (-16381)
#define __FLT64X_MIN_10_EXP__ (-4931)
#define __FLT64X_MAX_EXP__ 16384
#define __FLT64X_MAX_10_EXP__ 4932
#define __FLT64X_DECIMAL_DIG__ 36
#define __FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x
#define __FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x
#define __FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x
#define __FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x
#define __FLT64X_HAS_DENORM__ 1
#define __FLT64X_HAS_INFINITY__ 1
#define __FLT64X_HAS_QUIET_NAN__ 1
#define __DEC32_MANT_DIG__ 7
#define __DEC32_MIN_EXP__ (-94)
#define __DEC32_MAX_EXP__ 97
#define __DEC32_MIN__ 1E-95DF
#define __DEC32_MAX__ 9.999999E96DF
#define __DEC32_EPSILON__ 1E-6DF
#define __DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
#define __DEC64_MANT_DIG__ 16
#define __DEC64_MIN_EXP__ (-382)
#define __DEC64_MAX_EXP__ 385
#define __DEC64_MIN__ 1E-383DD
#define __DEC64_MAX__ 9.999999999999999E384DD
#define __DEC64_EPSILON__ 1E-15DD
#define __DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
#define __DEC128_MANT_DIG__ 34
#define __DEC128_MIN_EXP__ (-6142)
#define __DEC128_MAX_EXP__ 6145
#define __DEC128_MIN__ 1E-6143DL
#define __DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
#define __DEC128_EPSILON__ 1E-33DL
#define __DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define __GNUC_STDC_INLINE__ 1
#define __NO_INLINE__ 1
#define __CHAR_UNSIGNED__ 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __GCC_ATOMIC_SHORT_LOCK_FREE 1
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __GCC_ATOMIC_LLONG_LOCK_FREE 1
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 4
#define __riscv 1
#define __riscv_compressed 1
#define __riscv_atomic 1
#define __riscv_mul 1
#define __riscv_div 1
#define __riscv_muldiv 1
#define __riscv_xlen 32
#define __riscv_float_abi_soft 1
#define __riscv_cmodel_medany 1
#define __ELF__ 1
# 1 "<command-line>"
#define USE_PLIC 1
#define USE_M_TIME 1
#define NO_INIT 1
#define HAVE_CCONFIG_H 1
# 1 "freedom-e-sdk/bsp/drivers/plic/plic_driver.c"


# 1 "freedom-e-sdk/bsp/include/sifive/devices/plic.h" 1



#define PLIC_H 

# 1 "freedom-e-sdk/bsp/include/sifive/const.h" 1




#define _SIFIVE_CONST_H 





#define _AC(X,Y) (X ##Y)
#define _AT(T,X) ((T)(X))


#define _BITUL(x) (_AC(1,UL) << (x))
#define _BITULL(x) (_AC(1,ULL) << (x))
# 7 "freedom-e-sdk/bsp/include/sifive/devices/plic.h" 2


#define PLIC_PRIORITY_OFFSET _AC(0x0000,UL)
#define PLIC_PRIORITY_SHIFT_PER_SOURCE 2

#define PLIC_PENDING_OFFSET _AC(0x1000,UL)
#define PLIC_PENDING_SHIFT_PER_SOURCE 0


#define PLIC_ENABLE_OFFSET _AC(0x2000,UL)
#define PLIC_ENABLE_SHIFT_PER_TARGET 7


#define PLIC_THRESHOLD_OFFSET _AC(0x200000,UL)
#define PLIC_CLAIM_OFFSET _AC(0x200004,UL)
#define PLIC_THRESHOLD_SHIFT_PER_TARGET 12
#define PLIC_CLAIM_SHIFT_PER_TARGET 12

#define PLIC_MAX_SOURCE 1023
#define PLIC_SOURCE_MASK 0x3FF

#define PLIC_MAX_TARGET 15871
#define PLIC_TARGET_MASK 0x3FFF
# 4 "freedom-e-sdk/bsp/drivers/plic/plic_driver.c" 2
# 1 "freedom-e-sdk/bsp/drivers/plic/plic_driver.h" 1



#define PLIC_DRIVER_H 




# 1 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 1



#define _SIFIVE_PLATFORM_H 


#define MCAUSE_INT 0x80000000
#define MCAUSE_CAUSE 0x7FFFFFFF


# 1 "freedom-e-sdk/bsp/include/sifive/devices/aon.h" 1



#define _SIFIVE_AON_H 



#define AON_WDOGCFG 0x000
#define AON_WDOGCOUNT 0x008
#define AON_WDOGS 0x010
#define AON_WDOGFEED 0x018
#define AON_WDOGKEY 0x01C
#define AON_WDOGCMP 0x020

#define AON_RTCCFG 0x040
#define AON_RTCLO 0x048
#define AON_RTCHI 0x04C
#define AON_RTCS 0x050
#define AON_RTCCMP 0x060

#define AON_BACKUP0 0x080
#define AON_BACKUP1 0x084
#define AON_BACKUP2 0x088
#define AON_BACKUP3 0x08C
#define AON_BACKUP4 0x090
#define AON_BACKUP5 0x094
#define AON_BACKUP6 0x098
#define AON_BACKUP7 0x09C
#define AON_BACKUP8 0x0A0
#define AON_BACKUP9 0x0A4
#define AON_BACKUP10 0x0A8
#define AON_BACKUP11 0x0AC
#define AON_BACKUP12 0x0B0
#define AON_BACKUP13 0x0B4
#define AON_BACKUP14 0x0B8
#define AON_BACKUP15 0x0BC

#define AON_PMUWAKEUPI0 0x100
#define AON_PMUWAKEUPI1 0x104
#define AON_PMUWAKEUPI2 0x108
#define AON_PMUWAKEUPI3 0x10C
#define AON_PMUWAKEUPI4 0x110
#define AON_PMUWAKEUPI5 0x114
#define AON_PMUWAKEUPI6 0x118
#define AON_PMUWAKEUPI7 0x11C
#define AON_PMUSLEEPI0 0x120
#define AON_PMUSLEEPI1 0x124
#define AON_PMUSLEEPI2 0x128
#define AON_PMUSLEEPI3 0x12C
#define AON_PMUSLEEPI4 0x130
#define AON_PMUSLEEPI5 0x134
#define AON_PMUSLEEPI6 0x138
#define AON_PMUSLEEPI7 0x13C
#define AON_PMUIE 0x140
#define AON_PMUCAUSE 0x144
#define AON_PMUSLEEP 0x148
#define AON_PMUKEY 0x14C

#define AON_LFROSC 0x070


#define AON_WDOGKEY_VALUE 0x51F15E
#define AON_WDOGFEED_VALUE 0xD09F00D

#define AON_WDOGCFG_SCALE 0x0000000F
#define AON_WDOGCFG_RSTEN 0x00000100
#define AON_WDOGCFG_ZEROCMP 0x00000200
#define AON_WDOGCFG_ENALWAYS 0x00001000
#define AON_WDOGCFG_ENCOREAWAKE 0x00002000
#define AON_WDOGCFG_CMPIP 0x10000000

#define AON_RTCCFG_SCALE 0x0000000F
#define AON_RTCCFG_ENALWAYS 0x00001000
#define AON_RTCCFG_CMPIP 0x10000000

#define AON_WAKEUPCAUSE_RESET 0x00
#define AON_WAKEUPCAUSE_RTC 0x01
#define AON_WAKEUPCAUSE_DWAKEUP 0x02
#define AON_WAKEUPCAUSE_AWAKEUP 0x03

#define AON_RESETCAUSE_POWERON 0x0000
#define AON_RESETCAUSE_EXTERNAL 0x0100
#define AON_RESETCAUSE_WATCHDOG 0x0200

#define AON_PMUCAUSE_WAKEUPCAUSE 0x00FF
#define AON_PMUCAUSE_RESETCAUSE 0xFF00
# 12 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2
# 1 "freedom-e-sdk/bsp/include/sifive/devices/clint.h" 1



#define _SIFIVE_CLINT_H 


#define CLINT_MSIP 0x0000
#define CLINT_MSIP_size 0x4
#define CLINT_MTIMECMP 0x4000
#define CLINT_MTIMECMP_size 0x8
#define CLINT_MTIME 0xBFF8
#define CLINT_MTIME_size 0x8
# 13 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2
# 1 "freedom-e-sdk/bsp/include/sifive/devices/gpio.h" 1



#define _SIFIVE_GPIO_H 

#define GPIO_INPUT_VAL (0x00)
#define GPIO_INPUT_EN (0x04)
#define GPIO_OUTPUT_EN (0x08)
#define GPIO_OUTPUT_VAL (0x0C)
#define GPIO_PULLUP_EN (0x10)
#define GPIO_DRIVE (0x14)
#define GPIO_RISE_IE (0x18)
#define GPIO_RISE_IP (0x1C)
#define GPIO_FALL_IE (0x20)
#define GPIO_FALL_IP (0x24)
#define GPIO_HIGH_IE (0x28)
#define GPIO_HIGH_IP (0x2C)
#define GPIO_LOW_IE (0x30)
#define GPIO_LOW_IP (0x34)
#define GPIO_IOF_EN (0x38)
#define GPIO_IOF_SEL (0x3C)
#define GPIO_OUTPUT_XOR (0x40)
# 14 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2
# 1 "freedom-e-sdk/bsp/include/sifive/devices/otp.h" 1



#define _SIFIVE_OTP_H 



#define OTP_LOCK 0x00
#define OTP_CK 0x04
#define OTP_OE 0x08
#define OTP_SEL 0x0C
#define OTP_WE 0x10
#define OTP_MR 0x14
#define OTP_MRR 0x18
#define OTP_MPP 0x1C
#define OTP_VRREN 0x20
#define OTP_VPPEN 0x24
#define OTP_A 0x28
#define OTP_D 0x2C
#define OTP_Q 0x30
#define OTP_READ_TIMINGS 0x34
# 15 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2

# 1 "freedom-e-sdk/bsp/include/sifive/devices/prci.h" 1



#define _SIFIVE_PRCI_H 



#define PRCI_HFROSCCFG (0x0000)
#define PRCI_HFXOSCCFG (0x0004)
#define PRCI_PLLCFG (0x0008)
#define PRCI_PLLDIV (0x000C)
#define PRCI_PROCMONCFG (0x00F0)


#define ROSC_DIV(x) (((x) & 0x2F) << 0 )
#define ROSC_TRIM(x) (((x) & 0x1F) << 16)
#define ROSC_EN(x) (((x) & 0x1 ) << 30)
#define ROSC_RDY(x) (((x) & 0x1 ) << 31)

#define XOSC_EN(x) (((x) & 0x1) << 30)
#define XOSC_RDY(x) (((x) & 0x1) << 31)

#define PLL_R(x) (((x) & 0x7) << 0)

#define PLL_F(x) (((x) & 0x3F) << 4)
#define PLL_Q(x) (((x) & 0x3) << 10)
#define PLL_SEL(x) (((x) & 0x1) << 16)
#define PLL_REFSEL(x) (((x) & 0x1) << 17)
#define PLL_BYPASS(x) (((x) & 0x1) << 18)
#define PLL_LOCK(x) (((x) & 0x1) << 31)

#define PLL_R_default 0x1
#define PLL_F_default 0x1F
#define PLL_Q_default 0x3

#define PLL_REFSEL_HFROSC 0x0
#define PLL_REFSEL_HFXOSC 0x1

#define PLL_SEL_HFROSC 0x0
#define PLL_SEL_PLL 0x1

#define PLL_FINAL_DIV(x) (((x) & 0x3F) << 0)
#define PLL_FINAL_DIV_BY_1(x) (((x) & 0x1 ) << 8)

#define PROCMON_DIV(x) (((x) & 0x1F) << 0)
#define PROCMON_TRIM(x) (((x) & 0x1F) << 8)
#define PROCMON_EN(x) (((x) & 0x1) << 16)
#define PROCMON_SEL(x) (((x) & 0x3) << 24)
#define PROCMON_NT_EN(x) (((x) & 0x1) << 28)

#define PROCMON_SEL_HFCLK 0
#define PROCMON_SEL_HFXOSCIN 1
#define PROCMON_SEL_PLLOUTDIV 2
#define PROCMON_SEL_PROCMON 3
# 17 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2
# 1 "freedom-e-sdk/bsp/include/sifive/devices/pwm.h" 1



#define _SIFIVE_PWM_H 



#define PWM_CFG 0x00
#define PWM_COUNT 0x08
#define PWM_S 0x10
#define PWM_CMP0 0x20
#define PWM_CMP1 0x24
#define PWM_CMP2 0x28
#define PWM_CMP3 0x2C



#define PWM_CFG_SCALE 0x0000000F
#define PWM_CFG_STICKY 0x00000100
#define PWM_CFG_ZEROCMP 0x00000200
#define PWM_CFG_DEGLITCH 0x00000400
#define PWM_CFG_ENALWAYS 0x00001000
#define PWM_CFG_ONESHOT 0x00002000
#define PWM_CFG_CMP0CENTER 0x00010000
#define PWM_CFG_CMP1CENTER 0x00020000
#define PWM_CFG_CMP2CENTER 0x00040000
#define PWM_CFG_CMP3CENTER 0x00080000
#define PWM_CFG_CMP0GANG 0x01000000
#define PWM_CFG_CMP1GANG 0x02000000
#define PWM_CFG_CMP2GANG 0x04000000
#define PWM_CFG_CMP3GANG 0x08000000
#define PWM_CFG_CMP0IP 0x10000000
#define PWM_CFG_CMP1IP 0x20000000
#define PWM_CFG_CMP2IP 0x40000000
#define PWM_CFG_CMP3IP 0x80000000
# 18 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2
# 1 "freedom-e-sdk/bsp/include/sifive/devices/spi.h" 1



#define _SIFIVE_SPI_H 



#define SPI_REG_SCKDIV 0x00
#define SPI_REG_SCKMODE 0x04
#define SPI_REG_CSID 0x10
#define SPI_REG_CSDEF 0x14
#define SPI_REG_CSMODE 0x18

#define SPI_REG_DCSSCK 0x28
#define SPI_REG_DSCKCS 0x2a
#define SPI_REG_DINTERCS 0x2c
#define SPI_REG_DINTERXFR 0x2e

#define SPI_REG_FMT 0x40
#define SPI_REG_TXFIFO 0x48
#define SPI_REG_RXFIFO 0x4c
#define SPI_REG_TXCTRL 0x50
#define SPI_REG_RXCTRL 0x54

#define SPI_REG_FCTRL 0x60
#define SPI_REG_FFMT 0x64

#define SPI_REG_IE 0x70
#define SPI_REG_IP 0x74



#define SPI_SCK_POL 0x1
#define SPI_SCK_PHA 0x2

#define SPI_FMT_PROTO(x) ((x) & 0x3)
#define SPI_FMT_ENDIAN(x) (((x) & 0x1) << 2)
#define SPI_FMT_DIR(x) (((x) & 0x1) << 3)
#define SPI_FMT_LEN(x) (((x) & 0xf) << 16)


#define SPI_TXWM(x) ((x) & 0xffff)

#define SPI_RXWM(x) ((x) & 0xffff)

#define SPI_IP_TXWM 0x1
#define SPI_IP_RXWM 0x2

#define SPI_FCTRL_EN 0x1

#define SPI_INSN_CMD_EN 0x1
#define SPI_INSN_ADDR_LEN(x) (((x) & 0x7) << 1)
#define SPI_INSN_PAD_CNT(x) (((x) & 0xf) << 4)
#define SPI_INSN_CMD_PROTO(x) (((x) & 0x3) << 8)
#define SPI_INSN_ADDR_PROTO(x) (((x) & 0x3) << 10)
#define SPI_INSN_DATA_PROTO(x) (((x) & 0x3) << 12)
#define SPI_INSN_CMD_CODE(x) (((x) & 0xff) << 16)
#define SPI_INSN_PAD_CODE(x) (((x) & 0xff) << 24)

#define SPI_TXFIFO_FULL (1 << 31)
#define SPI_RXFIFO_EMPTY (1 << 31)



#define SPI_CSMODE_AUTO 0
#define SPI_CSMODE_HOLD 2
#define SPI_CSMODE_OFF 3

#define SPI_DIR_RX 0
#define SPI_DIR_TX 1

#define SPI_PROTO_S 0
#define SPI_PROTO_D 1
#define SPI_PROTO_Q 2

#define SPI_ENDIAN_MSB 0
#define SPI_ENDIAN_LSB 1
# 19 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2
# 1 "freedom-e-sdk/bsp/include/sifive/devices/uart.h" 1



#define _SIFIVE_UART_H 


#define UART_REG_TXFIFO 0x00
#define UART_REG_RXFIFO 0x04
#define UART_REG_TXCTRL 0x08
#define UART_REG_RXCTRL 0x0c
#define UART_REG_IE 0x10
#define UART_REG_IP 0x14
#define UART_REG_DIV 0x18


#define UART_TXEN 0x1
#define UART_TXWM(x) (((x) & 0xffff) << 16)


#define UART_RXEN 0x1
#define UART_RXWM(x) (((x) & 0xffff) << 16)


#define UART_IP_TXWM 0x1
#define UART_IP_RXWM 0x2
# 20 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2






#define MASKROM_MEM_ADDR _AC(0x00001000,UL)
#define TRAPVEC_TABLE_CTRL_ADDR _AC(0x00001010,UL)
#define OTP_MEM_ADDR _AC(0x00020000,UL)
#define CLINT_CTRL_ADDR _AC(0x02000000,UL)
#define PLIC_CTRL_ADDR _AC(0x0C000000,UL)
#define AON_CTRL_ADDR _AC(0x10000000,UL)
#define PRCI_CTRL_ADDR _AC(0x10008000,UL)
#define OTP_CTRL_ADDR _AC(0x10010000,UL)
#define GPIO_CTRL_ADDR _AC(0x10012000,UL)
#define UART0_CTRL_ADDR _AC(0x10013000,UL)
#define SPI0_CTRL_ADDR _AC(0x10014000,UL)
#define PWM0_CTRL_ADDR _AC(0x10015000,UL)
#define UART1_CTRL_ADDR _AC(0x10023000,UL)
#define SPI1_CTRL_ADDR _AC(0x10024000,UL)
#define PWM1_CTRL_ADDR _AC(0x10025000,UL)
#define SPI2_CTRL_ADDR _AC(0x10034000,UL)
#define PWM2_CTRL_ADDR _AC(0x10035000,UL)
#define SPI0_MEM_ADDR _AC(0x20000000,UL)
#define MEM_CTRL_ADDR _AC(0x80000000,UL)


#define IOF0_SPI1_MASK _AC(0x000007FC,UL)
#define SPI11_NUM_SS (4)
#define IOF_SPI1_SS0 (2u)
#define IOF_SPI1_SS1 (8u)
#define IOF_SPI1_SS2 (9u)
#define IOF_SPI1_SS3 (10u)
#define IOF_SPI1_MOSI (3u)
#define IOF_SPI1_MISO (4u)
#define IOF_SPI1_SCK (5u)
#define IOF_SPI1_DQ0 (3u)
#define IOF_SPI1_DQ1 (4u)
#define IOF_SPI1_DQ2 (6u)
#define IOF_SPI1_DQ3 (7u)

#define IOF0_SPI2_MASK _AC(0xFC000000,UL)
#define SPI2_NUM_SS (1)
#define IOF_SPI2_SS0 (26u)
#define IOF_SPI2_MOSI (27u)
#define IOF_SPI2_MISO (28u)
#define IOF_SPI2_SCK (29u)
#define IOF_SPI2_DQ0 (27u)
#define IOF_SPI2_DQ1 (28u)
#define IOF_SPI2_DQ2 (30u)
#define IOF_SPI2_DQ3 (31u)



#define IOF0_UART0_MASK _AC(0x00030000, UL)
#define IOF_UART0_RX (16u)
#define IOF_UART0_TX (17u)

#define IOF0_UART1_MASK _AC(0x03000000, UL)
#define IOF_UART1_RX (24u)
#define IOF_UART1_TX (25u)

#define IOF1_PWM0_MASK _AC(0x0000000F, UL)
#define IOF1_PWM1_MASK _AC(0x00780000, UL)
#define IOF1_PWM2_MASK _AC(0x00003C00, UL)


#define INT_RESERVED 0
#define INT_WDOGCMP 1
#define INT_RTCCMP 2
#define INT_UART0_BASE 3
#define INT_UART1_BASE 4
#define INT_SPI0_BASE 5
#define INT_SPI1_BASE 6
#define INT_SPI2_BASE 7
#define INT_GPIO_BASE 8
#define INT_PWM0_BASE 40
#define INT_PWM1_BASE 44
#define INT_PWM2_BASE 48


#define _REG32(p,i) (*(volatile uint32_t *) ((p) + (i)))
#define _REG32P(p,i) ((volatile uint32_t *) ((p) + (i)))
#define AON_REG(offset) _REG32(AON_CTRL_ADDR, offset)
#define CLINT_REG(offset) _REG32(CLINT_CTRL_ADDR, offset)
#define GPIO_REG(offset) _REG32(GPIO_CTRL_ADDR, offset)
#define OTP_REG(offset) _REG32(OTP_CTRL_ADDR, offset)
#define PLIC_REG(offset) _REG32(PLIC_CTRL_ADDR, offset)
#define PRCI_REG(offset) _REG32(PRCI_CTRL_ADDR, offset)
#define PWM0_REG(offset) _REG32(PWM0_CTRL_ADDR, offset)
#define PWM1_REG(offset) _REG32(PWM1_CTRL_ADDR, offset)
#define PWM2_REG(offset) _REG32(PWM2_CTRL_ADDR, offset)
#define SPI0_REG(offset) _REG32(SPI0_CTRL_ADDR, offset)
#define SPI1_REG(offset) _REG32(SPI1_CTRL_ADDR, offset)
#define SPI2_REG(offset) _REG32(SPI2_CTRL_ADDR, offset)
#define UART0_REG(offset) _REG32(UART0_CTRL_ADDR, offset)
#define UART1_REG(offset) _REG32(UART1_CTRL_ADDR, offset)



# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 1 3 4
# 9 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 3 4
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 1 3 4
# 10 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define _STDINT_H 

# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 1 3 4





#define _MACHINE__DEFAULT_TYPES_H 

# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 1 3 4
# 22 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#define _SYS_FEATURES_H 





# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/_newlib_version.h" 1 3 4



#define _NEWLIB_VERSION_H__ 1

#define _NEWLIB_VERSION "3.1.0"
#define __NEWLIB__ 3
#define __NEWLIB_MINOR__ 1
#define __NEWLIB_PATCHLEVEL__ 0
# 29 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 2 3 4




#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))






#define __GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
# 131 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#undef _DEFAULT_SOURCE
#define _DEFAULT_SOURCE 1



#undef _POSIX_SOURCE
#define _POSIX_SOURCE 1
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
# 158 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#undef _ATFILE_SOURCE
#define _ATFILE_SOURCE 1
# 247 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#define __ATFILE_VISIBLE 1





#define __BSD_VISIBLE 1







#define __GNU_VISIBLE 0




#define __ISO_C_VISIBLE 2011
# 277 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#define __LARGEFILE_VISIBLE 0



#define __MISC_VISIBLE 1





#define __POSIX_VISIBLE 200809
# 303 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#define __SVID_VISIBLE 1
# 319 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#define __XSI_VISIBLE 0
# 330 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/features.h" 3 4
#define __SSP_FORTIFY_LEVEL 0
# 9 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 2 3 4






#define __EXP(x) __ ##x ##__
# 26 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
#define __have_longlong64 1






#define __have_long32 1








# 41 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;



#define ___int8_t_defined 1







typedef short int __int16_t;

typedef short unsigned int __uint16_t;



#define ___int16_t_defined 1
# 77 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;



#define ___int32_t_defined 1
# 103 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;



#define ___int64_t_defined 1
# 134 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;



#define ___int_least8_t_defined 1
# 160 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;



#define ___int_least16_t_defined 1
# 182 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;



#define ___int_least32_t_defined 1
# 200 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;



#define ___int_least64_t_defined 1







typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 244 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_default_types.h" 3 4
#undef __EXP
# 13 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 2 3 4
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 1 3 4
# 10 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define _SYS__INTSUP_H 





#define __STDINT_EXP(x) __ ##x ##__
# 35 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef __int20
#undef __int20__
#undef long
#define signed +0
#define unsigned +0
#define char +0
#define short +1
#define __int20 +2
#define __int20__ +2
#define int +2
#define long +4
# 67 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define _INTPTR_EQ_INT 






#define _INT32_EQ_LONG 







#define __INT8 "hh"
# 93 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __INT16 "h"
# 104 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __INT32 "l"
# 113 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __INT64 "ll"






#define __FAST8 
# 129 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __FAST16 






#define __FAST32 
# 147 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __FAST64 "ll"



#define __LEAST8 "hh"
# 162 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __LEAST16 "h"
# 173 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __LEAST32 "l"
# 182 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#define __LEAST64 "ll"

#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef long
       
       
       
       
       
# 194 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#undef __int20
       
# 195 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_intsup.h" 3 4
#undef __int20__
       
       
# 14 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 2 3 4
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_stdint.h" 1 3 4
# 10 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_stdint.h" 3 4
#define _SYS__STDINT_H 
# 20 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;
#define _INT8_T_DECLARED 


typedef __uint8_t uint8_t ;
#define _UINT8_T_DECLARED 

#define __int8_t_defined 1




typedef __int16_t int16_t ;
#define _INT16_T_DECLARED 


typedef __uint16_t uint16_t ;
#define _UINT16_T_DECLARED 

#define __int16_t_defined 1




typedef __int32_t int32_t ;
#define _INT32_T_DECLARED 


typedef __uint32_t uint32_t ;
#define _UINT32_T_DECLARED 

#define __int32_t_defined 1




typedef __int64_t int64_t ;
#define _INT64_T_DECLARED 


typedef __uint64_t uint64_t ;
#define _UINT64_T_DECLARED 

#define __int64_t_defined 1



typedef __intmax_t intmax_t;
#define _INTMAX_T_DECLARED 



typedef __uintmax_t uintmax_t;
#define _UINTMAX_T_DECLARED 



typedef __intptr_t intptr_t;
#define _INTPTR_T_DECLARED 



typedef __uintptr_t uintptr_t;
#define _UINTPTR_T_DECLARED 
# 15 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
#define __int_least8_t_defined 1



typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
#define __int_least16_t_defined 1



typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
#define __int_least32_t_defined 1



typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
#define __int_least64_t_defined 1
# 51 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
#define __int_fast8_t_defined 1







  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
#define __int_fast16_t_defined 1







  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
#define __int_fast32_t_defined 1







  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
#define __int_fast64_t_defined 1
# 128 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INTPTR_MIN (-__INTPTR_MAX__ - 1)
#define INTPTR_MAX (__INTPTR_MAX__)
#define UINTPTR_MAX (__UINTPTR_MAX__)
# 152 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT8_MIN (-__INT8_MAX__ - 1)
#define INT8_MAX (__INT8_MAX__)
#define UINT8_MAX (__UINT8_MAX__)







#define INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)
#define INT_LEAST8_MAX (__INT_LEAST8_MAX__)
#define UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)
# 174 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT16_MIN (-__INT16_MAX__ - 1)
#define INT16_MAX (__INT16_MAX__)
#define UINT16_MAX (__UINT16_MAX__)







#define INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)
#define INT_LEAST16_MAX (__INT_LEAST16_MAX__)
#define UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)
# 196 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT32_MIN (-__INT32_MAX__ - 1)
#define INT32_MAX (__INT32_MAX__)
#define UINT32_MAX (__UINT32_MAX__)
# 212 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)
#define INT_LEAST32_MAX (__INT_LEAST32_MAX__)
#define UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)
# 230 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT64_MIN (-__INT64_MAX__ - 1)
#define INT64_MAX (__INT64_MAX__)
#define UINT64_MAX (__UINT64_MAX__)
# 246 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)
#define INT_LEAST64_MAX (__INT_LEAST64_MAX__)
#define UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)
# 262 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)
#define INT_FAST8_MAX (__INT_FAST8_MAX__)
#define UINT_FAST8_MAX (__UINT_FAST8_MAX__)
# 278 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)
#define INT_FAST16_MAX (__INT_FAST16_MAX__)
#define UINT_FAST16_MAX (__UINT_FAST16_MAX__)
# 294 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)
#define INT_FAST32_MAX (__INT_FAST32_MAX__)
#define UINT_FAST32_MAX (__UINT_FAST32_MAX__)
# 310 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)
#define INT_FAST64_MAX (__INT_FAST64_MAX__)
#define UINT_FAST64_MAX (__UINT_FAST64_MAX__)
# 326 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INTMAX_MAX (__INTMAX_MAX__)
#define INTMAX_MIN (-INTMAX_MAX - 1)







#define UINTMAX_MAX (__UINTMAX_MAX__)







#define SIZE_MAX (__SIZE_MAX__)





#define SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)
#define SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))



#define PTRDIFF_MAX (__PTRDIFF_MAX__)



#define PTRDIFF_MIN (-PTRDIFF_MAX - 1)




#define WCHAR_MIN (__WCHAR_MIN__)
# 374 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define WCHAR_MAX (__WCHAR_MAX__)
# 384 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define WINT_MAX (__WINT_MAX__)




#define WINT_MIN (__WINT_MIN__)






#define INT8_C(x) __INT8_C(x)
#define UINT8_C(x) __UINT8_C(x)
# 408 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT16_C(x) __INT16_C(x)
#define UINT16_C(x) __UINT16_C(x)
# 420 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT32_C(x) __INT32_C(x)
#define UINT32_C(x) __UINT32_C(x)
# 433 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INT64_C(x) __INT64_C(x)
#define UINT64_C(x) __UINT64_C(x)
# 449 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/stdint.h" 3 4
#define INTMAX_C(x) __INTMAX_C(x)
#define UINTMAX_C(x) __UINTMAX_C(x)
# 10 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 2 3 4



#define _GCC_WRAP_STDINT_H 
# 121 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2

#define NUM_GPIO 32

#define PLIC_NUM_INTERRUPTS 52
#define PLIC_NUM_PRIORITIES 7

# 1 "freedom-e-sdk/bsp/env/hifive1.h" 1



#define _SIFIVE_HIFIVE1_H 
# 17 "freedom-e-sdk/bsp/env/hifive1.h"
#define RED_LED_OFFSET 22
#define GREEN_LED_OFFSET 19
#define BLUE_LED_OFFSET 21



#define PIN_0_OFFSET 16
#define PIN_1_OFFSET 17
#define PIN_2_OFFSET 18
#define PIN_3_OFFSET 19
#define PIN_4_OFFSET 20
#define PIN_5_OFFSET 21
#define PIN_6_OFFSET 22
#define PIN_7_OFFSET 23
#define PIN_8_OFFSET 0
#define PIN_9_OFFSET 1
#define PIN_10_OFFSET 2
#define PIN_11_OFFSET 3
#define PIN_12_OFFSET 4
#define PIN_13_OFFSET 5

#define PIN_15_OFFSET 9
#define PIN_16_OFFSET 10
#define PIN_17_OFFSET 11
#define PIN_18_OFFSET 12
#define PIN_19_OFFSET 13



#define PIN_SPI1_SCK (13u)
#define PIN_SPI1_MISO (12u)
#define PIN_SPI1_MOSI (11u)
#define PIN_SPI1_SS0 (10u)
#define PIN_SPI1_SS1 (14u)
#define PIN_SPI1_SS2 (15u)
#define PIN_SPI1_SS3 (16u)

#define SS_PIN_TO_CS_ID(x) ((x==PIN_SPI1_SS0 ? 0 : (x==PIN_SPI1_SS1 ? 1 : (x==PIN_SPI1_SS2 ? 2 : (x==PIN_SPI1_SS3 ? 3 : -1)))))
# 74 "freedom-e-sdk/bsp/env/hifive1.h"
#define HAS_HFXOSC 1
#define HAS_LFROSC_BYPASS 1

#define RTC_FREQ 32768


# 79 "freedom-e-sdk/bsp/env/hifive1.h"
void write_hex(int fd, unsigned long int hex);
# 128 "freedom-e-sdk/bsp/env/freedom-e300-hifive1/platform.h" 2

unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 10 "freedom-e-sdk/bsp/drivers/plic/plic_driver.h" 2

typedef struct __plic_instance_t
{
  uintptr_t base_addr;

  uint32_t num_sources;
  uint32_t num_priorities;

} plic_instance_t;

typedef uint32_t plic_source;
typedef uint32_t plic_priority;
typedef uint32_t plic_threshold;

void PLIC_init (
                plic_instance_t * this_plic,
                uintptr_t base_addr,
                uint32_t num_sources,
                uint32_t num_priorities
                );

void PLIC_set_threshold (plic_instance_t * this_plic,
    plic_threshold threshold);

void PLIC_enable_interrupt (plic_instance_t * this_plic,
       plic_source source);

void PLIC_disable_interrupt (plic_instance_t * this_plic,
        plic_source source);

void PLIC_set_priority (plic_instance_t * this_plic,
   plic_source source,
   plic_priority priority);

plic_source PLIC_claim_interrupt(plic_instance_t * this_plic);

void PLIC_complete_interrupt(plic_instance_t * this_plic,
        plic_source source);
# 5 "freedom-e-sdk/bsp/drivers/plic/plic_driver.c" 2

# 1 "freedom-e-sdk/bsp/env/encoding.h" 1



#define RISCV_CSR_ENCODING_H 

#define MSTATUS_UIE 0x00000001
#define MSTATUS_SIE 0x00000002
#define MSTATUS_HIE 0x00000004
#define MSTATUS_MIE 0x00000008
#define MSTATUS_UPIE 0x00000010
#define MSTATUS_SPIE 0x00000020
#define MSTATUS_HPIE 0x00000040
#define MSTATUS_MPIE 0x00000080
#define MSTATUS_SPP 0x00000100
#define MSTATUS_HPP 0x00000600
#define MSTATUS_MPP 0x00001800
#define MSTATUS_FS 0x00006000
#define MSTATUS_XS 0x00018000
#define MSTATUS_MPRV 0x00020000
#define MSTATUS_PUM 0x00040000
#define MSTATUS_MXR 0x00080000
#define MSTATUS_VM 0x1F000000
#define MSTATUS32_SD 0x80000000
#define MSTATUS64_SD 0x8000000000000000

#define SSTATUS_UIE 0x00000001
#define SSTATUS_SIE 0x00000002
#define SSTATUS_UPIE 0x00000010
#define SSTATUS_SPIE 0x00000020
#define SSTATUS_SPP 0x00000100
#define SSTATUS_FS 0x00006000
#define SSTATUS_XS 0x00018000
#define SSTATUS_PUM 0x00040000
#define SSTATUS32_SD 0x80000000
#define SSTATUS64_SD 0x8000000000000000

#define DCSR_XDEBUGVER (3U<<30)
#define DCSR_NDRESET (1<<29)
#define DCSR_FULLRESET (1<<28)
#define DCSR_EBREAKM (1<<15)
#define DCSR_EBREAKH (1<<14)
#define DCSR_EBREAKS (1<<13)
#define DCSR_EBREAKU (1<<12)
#define DCSR_STOPCYCLE (1<<10)
#define DCSR_STOPTIME (1<<9)
#define DCSR_CAUSE (7<<6)
#define DCSR_DEBUGINT (1<<5)
#define DCSR_HALT (1<<3)
#define DCSR_STEP (1<<2)
#define DCSR_PRV (3<<0)

#define DCSR_CAUSE_NONE 0
#define DCSR_CAUSE_SWBP 1
#define DCSR_CAUSE_HWBP 2
#define DCSR_CAUSE_DEBUGINT 3
#define DCSR_CAUSE_STEP 4
#define DCSR_CAUSE_HALT 5

#define MCONTROL_TYPE(xlen) (0xfULL<<((xlen)-4))
#define MCONTROL_DMODE(xlen) (1ULL<<((xlen)-5))
#define MCONTROL_MASKMAX(xlen) (0x3fULL<<((xlen)-11))

#define MCONTROL_SELECT (1<<19)
#define MCONTROL_TIMING (1<<18)
#define MCONTROL_ACTION (0x3f<<12)
#define MCONTROL_CHAIN (1<<11)
#define MCONTROL_MATCH (0xf<<7)
#define MCONTROL_M (1<<6)
#define MCONTROL_H (1<<5)
#define MCONTROL_S (1<<4)
#define MCONTROL_U (1<<3)
#define MCONTROL_EXECUTE (1<<2)
#define MCONTROL_STORE (1<<1)
#define MCONTROL_LOAD (1<<0)

#define MCONTROL_TYPE_NONE 0
#define MCONTROL_TYPE_MATCH 2

#define MCONTROL_ACTION_DEBUG_EXCEPTION 0
#define MCONTROL_ACTION_DEBUG_MODE 1
#define MCONTROL_ACTION_TRACE_START 2
#define MCONTROL_ACTION_TRACE_STOP 3
#define MCONTROL_ACTION_TRACE_EMIT 4

#define MCONTROL_MATCH_EQUAL 0
#define MCONTROL_MATCH_NAPOT 1
#define MCONTROL_MATCH_GE 2
#define MCONTROL_MATCH_LT 3
#define MCONTROL_MATCH_MASK_LOW 4
#define MCONTROL_MATCH_MASK_HIGH 5

#define MIP_SSIP (1 << IRQ_S_SOFT)
#define MIP_HSIP (1 << IRQ_H_SOFT)
#define MIP_MSIP (1 << IRQ_M_SOFT)
#define MIP_STIP (1 << IRQ_S_TIMER)
#define MIP_HTIP (1 << IRQ_H_TIMER)
#define MIP_MTIP (1 << IRQ_M_TIMER)
#define MIP_SEIP (1 << IRQ_S_EXT)
#define MIP_HEIP (1 << IRQ_H_EXT)
#define MIP_MEIP (1 << IRQ_M_EXT)

#define SIP_SSIP MIP_SSIP
#define SIP_STIP MIP_STIP

#define PRV_U 0
#define PRV_S 1
#define PRV_H 2
#define PRV_M 3

#define VM_MBARE 0
#define VM_MBB 1
#define VM_MBBID 2
#define VM_SV32 8
#define VM_SV39 9
#define VM_SV48 10

#define IRQ_S_SOFT 1
#define IRQ_H_SOFT 2
#define IRQ_M_SOFT 3
#define IRQ_S_TIMER 5
#define IRQ_H_TIMER 6
#define IRQ_M_TIMER 7
#define IRQ_S_EXT 9
#define IRQ_H_EXT 10
#define IRQ_M_EXT 11
#define IRQ_COP 12
#define IRQ_HOST 13

#define DEFAULT_RSTVEC 0x00001000
#define DEFAULT_NMIVEC 0x00001004
#define DEFAULT_MTVEC 0x00001010
#define CONFIG_STRING_ADDR 0x0000100C
#define EXT_IO_BASE 0x40000000
#define DRAM_BASE 0x80000000


#define PTE_V 0x001
#define PTE_R 0x002
#define PTE_W 0x004
#define PTE_X 0x008
#define PTE_U 0x010
#define PTE_G 0x020
#define PTE_A 0x040
#define PTE_D 0x080
#define PTE_SOFT 0x300

#define PTE_PPN_SHIFT 10

#define PTE_TABLE(PTE) (((PTE) & (PTE_V | PTE_R | PTE_W | PTE_X)) == PTE_V)
# 158 "freedom-e-sdk/bsp/env/encoding.h"
#define MSTATUS_SD MSTATUS32_SD
#define SSTATUS_SD SSTATUS32_SD
#define RISCV_PGLEVEL_BITS 10

#define RISCV_PGSHIFT 12
#define RISCV_PGSIZE (1 << RISCV_PGSHIFT)





#define read_csr(reg) ({ unsigned long __tmp; asm volatile ("csrr %0, " #reg : "=r"(__tmp)); __tmp; })



#define write_csr(reg,val) ({ if (__builtin_constant_p(val) && (unsigned long)(val) < 32) asm volatile ("csrw " #reg ", %0" :: "i"(val)); else asm volatile ("csrw " #reg ", %0" :: "r"(val)); })





#define swap_csr(reg,val) ({ unsigned long __tmp; if (__builtin_constant_p(val) && (unsigned long)(val) < 32) asm volatile ("csrrw %0, " #reg ", %1" : "=r"(__tmp) : "i"(val)); else asm volatile ("csrrw %0, " #reg ", %1" : "=r"(__tmp) : "r"(val)); __tmp; })






#define set_csr(reg,bit) ({ unsigned long __tmp; if (__builtin_constant_p(bit) && (unsigned long)(bit) < 32) asm volatile ("csrrs %0, " #reg ", %1" : "=r"(__tmp) : "i"(bit)); else asm volatile ("csrrs %0, " #reg ", %1" : "=r"(__tmp) : "r"(bit)); __tmp; })






#define clear_csr(reg,bit) ({ unsigned long __tmp; if (__builtin_constant_p(bit) && (unsigned long)(bit) < 32) asm volatile ("csrrc %0, " #reg ", %1" : "=r"(__tmp) : "i"(bit)); else asm volatile ("csrrc %0, " #reg ", %1" : "=r"(__tmp) : "r"(bit)); __tmp; })






#define rdtime() read_csr(time)
#define rdcycle() read_csr(cycle)
#define rdinstret() read_csr(instret)
# 213 "freedom-e-sdk/bsp/env/encoding.h"
#define RISCV_ENCODING_H 
#define MATCH_BEQ 0x63
#define MASK_BEQ 0x707f
#define MATCH_BNE 0x1063
#define MASK_BNE 0x707f
#define MATCH_BLT 0x4063
#define MASK_BLT 0x707f
#define MATCH_BGE 0x5063
#define MASK_BGE 0x707f
#define MATCH_BLTU 0x6063
#define MASK_BLTU 0x707f
#define MATCH_BGEU 0x7063
#define MASK_BGEU 0x707f
#define MATCH_JALR 0x67
#define MASK_JALR 0x707f
#define MATCH_JAL 0x6f
#define MASK_JAL 0x7f
#define MATCH_LUI 0x37
#define MASK_LUI 0x7f
#define MATCH_AUIPC 0x17
#define MASK_AUIPC 0x7f
#define MATCH_ADDI 0x13
#define MASK_ADDI 0x707f
#define MATCH_SLLI 0x1013
#define MASK_SLLI 0xfc00707f
#define MATCH_SLTI 0x2013
#define MASK_SLTI 0x707f
#define MATCH_SLTIU 0x3013
#define MASK_SLTIU 0x707f
#define MATCH_XORI 0x4013
#define MASK_XORI 0x707f
#define MATCH_SRLI 0x5013
#define MASK_SRLI 0xfc00707f
#define MATCH_SRAI 0x40005013
#define MASK_SRAI 0xfc00707f
#define MATCH_ORI 0x6013
#define MASK_ORI 0x707f
#define MATCH_ANDI 0x7013
#define MASK_ANDI 0x707f
#define MATCH_ADD 0x33
#define MASK_ADD 0xfe00707f
#define MATCH_SUB 0x40000033
#define MASK_SUB 0xfe00707f
#define MATCH_SLL 0x1033
#define MASK_SLL 0xfe00707f
#define MATCH_SLT 0x2033
#define MASK_SLT 0xfe00707f
#define MATCH_SLTU 0x3033
#define MASK_SLTU 0xfe00707f
#define MATCH_XOR 0x4033
#define MASK_XOR 0xfe00707f
#define MATCH_SRL 0x5033
#define MASK_SRL 0xfe00707f
#define MATCH_SRA 0x40005033
#define MASK_SRA 0xfe00707f
#define MATCH_OR 0x6033
#define MASK_OR 0xfe00707f
#define MATCH_AND 0x7033
#define MASK_AND 0xfe00707f
#define MATCH_ADDIW 0x1b
#define MASK_ADDIW 0x707f
#define MATCH_SLLIW 0x101b
#define MASK_SLLIW 0xfe00707f
#define MATCH_SRLIW 0x501b
#define MASK_SRLIW 0xfe00707f
#define MATCH_SRAIW 0x4000501b
#define MASK_SRAIW 0xfe00707f
#define MATCH_ADDW 0x3b
#define MASK_ADDW 0xfe00707f
#define MATCH_SUBW 0x4000003b
#define MASK_SUBW 0xfe00707f
#define MATCH_SLLW 0x103b
#define MASK_SLLW 0xfe00707f
#define MATCH_SRLW 0x503b
#define MASK_SRLW 0xfe00707f
#define MATCH_SRAW 0x4000503b
#define MASK_SRAW 0xfe00707f
#define MATCH_LB 0x3
#define MASK_LB 0x707f
#define MATCH_LH 0x1003
#define MASK_LH 0x707f
#define MATCH_LW 0x2003
#define MASK_LW 0x707f
#define MATCH_LD 0x3003
#define MASK_LD 0x707f
#define MATCH_LBU 0x4003
#define MASK_LBU 0x707f
#define MATCH_LHU 0x5003
#define MASK_LHU 0x707f
#define MATCH_LWU 0x6003
#define MASK_LWU 0x707f
#define MATCH_SB 0x23
#define MASK_SB 0x707f
#define MATCH_SH 0x1023
#define MASK_SH 0x707f
#define MATCH_SW 0x2023
#define MASK_SW 0x707f
#define MATCH_SD 0x3023
#define MASK_SD 0x707f
#define MATCH_FENCE 0xf
#define MASK_FENCE 0x707f
#define MATCH_FENCE_I 0x100f
#define MASK_FENCE_I 0x707f
#define MATCH_MUL 0x2000033
#define MASK_MUL 0xfe00707f
#define MATCH_MULH 0x2001033
#define MASK_MULH 0xfe00707f
#define MATCH_MULHSU 0x2002033
#define MASK_MULHSU 0xfe00707f
#define MATCH_MULHU 0x2003033
#define MASK_MULHU 0xfe00707f
#define MATCH_DIV 0x2004033
#define MASK_DIV 0xfe00707f
#define MATCH_DIVU 0x2005033
#define MASK_DIVU 0xfe00707f
#define MATCH_REM 0x2006033
#define MASK_REM 0xfe00707f
#define MATCH_REMU 0x2007033
#define MASK_REMU 0xfe00707f
#define MATCH_MULW 0x200003b
#define MASK_MULW 0xfe00707f
#define MATCH_DIVW 0x200403b
#define MASK_DIVW 0xfe00707f
#define MATCH_DIVUW 0x200503b
#define MASK_DIVUW 0xfe00707f
#define MATCH_REMW 0x200603b
#define MASK_REMW 0xfe00707f
#define MATCH_REMUW 0x200703b
#define MASK_REMUW 0xfe00707f
#define MATCH_AMOADD_W 0x202f
#define MASK_AMOADD_W 0xf800707f
#define MATCH_AMOXOR_W 0x2000202f
#define MASK_AMOXOR_W 0xf800707f
#define MATCH_AMOOR_W 0x4000202f
#define MASK_AMOOR_W 0xf800707f
#define MATCH_AMOAND_W 0x6000202f
#define MASK_AMOAND_W 0xf800707f
#define MATCH_AMOMIN_W 0x8000202f
#define MASK_AMOMIN_W 0xf800707f
#define MATCH_AMOMAX_W 0xa000202f
#define MASK_AMOMAX_W 0xf800707f
#define MATCH_AMOMINU_W 0xc000202f
#define MASK_AMOMINU_W 0xf800707f
#define MATCH_AMOMAXU_W 0xe000202f
#define MASK_AMOMAXU_W 0xf800707f
#define MATCH_AMOSWAP_W 0x800202f
#define MASK_AMOSWAP_W 0xf800707f
#define MATCH_LR_W 0x1000202f
#define MASK_LR_W 0xf9f0707f
#define MATCH_SC_W 0x1800202f
#define MASK_SC_W 0xf800707f
#define MATCH_AMOADD_D 0x302f
#define MASK_AMOADD_D 0xf800707f
#define MATCH_AMOXOR_D 0x2000302f
#define MASK_AMOXOR_D 0xf800707f
#define MATCH_AMOOR_D 0x4000302f
#define MASK_AMOOR_D 0xf800707f
#define MATCH_AMOAND_D 0x6000302f
#define MASK_AMOAND_D 0xf800707f
#define MATCH_AMOMIN_D 0x8000302f
#define MASK_AMOMIN_D 0xf800707f
#define MATCH_AMOMAX_D 0xa000302f
#define MASK_AMOMAX_D 0xf800707f
#define MATCH_AMOMINU_D 0xc000302f
#define MASK_AMOMINU_D 0xf800707f
#define MATCH_AMOMAXU_D 0xe000302f
#define MASK_AMOMAXU_D 0xf800707f
#define MATCH_AMOSWAP_D 0x800302f
#define MASK_AMOSWAP_D 0xf800707f
#define MATCH_LR_D 0x1000302f
#define MASK_LR_D 0xf9f0707f
#define MATCH_SC_D 0x1800302f
#define MASK_SC_D 0xf800707f
#define MATCH_ECALL 0x73
#define MASK_ECALL 0xffffffff
#define MATCH_EBREAK 0x100073
#define MASK_EBREAK 0xffffffff
#define MATCH_URET 0x200073
#define MASK_URET 0xffffffff
#define MATCH_SRET 0x10200073
#define MASK_SRET 0xffffffff
#define MATCH_HRET 0x20200073
#define MASK_HRET 0xffffffff
#define MATCH_MRET 0x30200073
#define MASK_MRET 0xffffffff
#define MATCH_DRET 0x7b200073
#define MASK_DRET 0xffffffff
#define MATCH_SFENCE_VM 0x10400073
#define MASK_SFENCE_VM 0xfff07fff
#define MATCH_WFI 0x10500073
#define MASK_WFI 0xffffffff
#define MATCH_CSRRW 0x1073
#define MASK_CSRRW 0x707f
#define MATCH_CSRRS 0x2073
#define MASK_CSRRS 0x707f
#define MATCH_CSRRC 0x3073
#define MASK_CSRRC 0x707f
#define MATCH_CSRRWI 0x5073
#define MASK_CSRRWI 0x707f
#define MATCH_CSRRSI 0x6073
#define MASK_CSRRSI 0x707f
#define MATCH_CSRRCI 0x7073
#define MASK_CSRRCI 0x707f
#define MATCH_FADD_S 0x53
#define MASK_FADD_S 0xfe00007f
#define MATCH_FSUB_S 0x8000053
#define MASK_FSUB_S 0xfe00007f
#define MATCH_FMUL_S 0x10000053
#define MASK_FMUL_S 0xfe00007f
#define MATCH_FDIV_S 0x18000053
#define MASK_FDIV_S 0xfe00007f
#define MATCH_FSGNJ_S 0x20000053
#define MASK_FSGNJ_S 0xfe00707f
#define MATCH_FSGNJN_S 0x20001053
#define MASK_FSGNJN_S 0xfe00707f
#define MATCH_FSGNJX_S 0x20002053
#define MASK_FSGNJX_S 0xfe00707f
#define MATCH_FMIN_S 0x28000053
#define MASK_FMIN_S 0xfe00707f
#define MATCH_FMAX_S 0x28001053
#define MASK_FMAX_S 0xfe00707f
#define MATCH_FSQRT_S 0x58000053
#define MASK_FSQRT_S 0xfff0007f
#define MATCH_FADD_D 0x2000053
#define MASK_FADD_D 0xfe00007f
#define MATCH_FSUB_D 0xa000053
#define MASK_FSUB_D 0xfe00007f
#define MATCH_FMUL_D 0x12000053
#define MASK_FMUL_D 0xfe00007f
#define MATCH_FDIV_D 0x1a000053
#define MASK_FDIV_D 0xfe00007f
#define MATCH_FSGNJ_D 0x22000053
#define MASK_FSGNJ_D 0xfe00707f
#define MATCH_FSGNJN_D 0x22001053
#define MASK_FSGNJN_D 0xfe00707f
#define MATCH_FSGNJX_D 0x22002053
#define MASK_FSGNJX_D 0xfe00707f
#define MATCH_FMIN_D 0x2a000053
#define MASK_FMIN_D 0xfe00707f
#define MATCH_FMAX_D 0x2a001053
#define MASK_FMAX_D 0xfe00707f
#define MATCH_FCVT_S_D 0x40100053
#define MASK_FCVT_S_D 0xfff0007f
#define MATCH_FCVT_D_S 0x42000053
#define MASK_FCVT_D_S 0xfff0007f
#define MATCH_FSQRT_D 0x5a000053
#define MASK_FSQRT_D 0xfff0007f
#define MATCH_FLE_S 0xa0000053
#define MASK_FLE_S 0xfe00707f
#define MATCH_FLT_S 0xa0001053
#define MASK_FLT_S 0xfe00707f
#define MATCH_FEQ_S 0xa0002053
#define MASK_FEQ_S 0xfe00707f
#define MATCH_FLE_D 0xa2000053
#define MASK_FLE_D 0xfe00707f
#define MATCH_FLT_D 0xa2001053
#define MASK_FLT_D 0xfe00707f
#define MATCH_FEQ_D 0xa2002053
#define MASK_FEQ_D 0xfe00707f
#define MATCH_FCVT_W_S 0xc0000053
#define MASK_FCVT_W_S 0xfff0007f
#define MATCH_FCVT_WU_S 0xc0100053
#define MASK_FCVT_WU_S 0xfff0007f
#define MATCH_FCVT_L_S 0xc0200053
#define MASK_FCVT_L_S 0xfff0007f
#define MATCH_FCVT_LU_S 0xc0300053
#define MASK_FCVT_LU_S 0xfff0007f
#define MATCH_FMV_X_S 0xe0000053
#define MASK_FMV_X_S 0xfff0707f
#define MATCH_FCLASS_S 0xe0001053
#define MASK_FCLASS_S 0xfff0707f
#define MATCH_FCVT_W_D 0xc2000053
#define MASK_FCVT_W_D 0xfff0007f
#define MATCH_FCVT_WU_D 0xc2100053
#define MASK_FCVT_WU_D 0xfff0007f
#define MATCH_FCVT_L_D 0xc2200053
#define MASK_FCVT_L_D 0xfff0007f
#define MATCH_FCVT_LU_D 0xc2300053
#define MASK_FCVT_LU_D 0xfff0007f
#define MATCH_FMV_X_D 0xe2000053
#define MASK_FMV_X_D 0xfff0707f
#define MATCH_FCLASS_D 0xe2001053
#define MASK_FCLASS_D 0xfff0707f
#define MATCH_FCVT_S_W 0xd0000053
#define MASK_FCVT_S_W 0xfff0007f
#define MATCH_FCVT_S_WU 0xd0100053
#define MASK_FCVT_S_WU 0xfff0007f
#define MATCH_FCVT_S_L 0xd0200053
#define MASK_FCVT_S_L 0xfff0007f
#define MATCH_FCVT_S_LU 0xd0300053
#define MASK_FCVT_S_LU 0xfff0007f
#define MATCH_FMV_S_X 0xf0000053
#define MASK_FMV_S_X 0xfff0707f
#define MATCH_FCVT_D_W 0xd2000053
#define MASK_FCVT_D_W 0xfff0007f
#define MATCH_FCVT_D_WU 0xd2100053
#define MASK_FCVT_D_WU 0xfff0007f
#define MATCH_FCVT_D_L 0xd2200053
#define MASK_FCVT_D_L 0xfff0007f
#define MATCH_FCVT_D_LU 0xd2300053
#define MASK_FCVT_D_LU 0xfff0007f
#define MATCH_FMV_D_X 0xf2000053
#define MASK_FMV_D_X 0xfff0707f
#define MATCH_FLW 0x2007
#define MASK_FLW 0x707f
#define MATCH_FLD 0x3007
#define MASK_FLD 0x707f
#define MATCH_FSW 0x2027
#define MASK_FSW 0x707f
#define MATCH_FSD 0x3027
#define MASK_FSD 0x707f
#define MATCH_FMADD_S 0x43
#define MASK_FMADD_S 0x600007f
#define MATCH_FMSUB_S 0x47
#define MASK_FMSUB_S 0x600007f
#define MATCH_FNMSUB_S 0x4b
#define MASK_FNMSUB_S 0x600007f
#define MATCH_FNMADD_S 0x4f
#define MASK_FNMADD_S 0x600007f
#define MATCH_FMADD_D 0x2000043
#define MASK_FMADD_D 0x600007f
#define MATCH_FMSUB_D 0x2000047
#define MASK_FMSUB_D 0x600007f
#define MATCH_FNMSUB_D 0x200004b
#define MASK_FNMSUB_D 0x600007f
#define MATCH_FNMADD_D 0x200004f
#define MASK_FNMADD_D 0x600007f
#define MATCH_C_NOP 0x1
#define MASK_C_NOP 0xffff
#define MATCH_C_ADDI16SP 0x6101
#define MASK_C_ADDI16SP 0xef83
#define MATCH_C_JR 0x8002
#define MASK_C_JR 0xf07f
#define MATCH_C_JALR 0x9002
#define MASK_C_JALR 0xf07f
#define MATCH_C_EBREAK 0x9002
#define MASK_C_EBREAK 0xffff
#define MATCH_C_LD 0x6000
#define MASK_C_LD 0xe003
#define MATCH_C_SD 0xe000
#define MASK_C_SD 0xe003
#define MATCH_C_ADDIW 0x2001
#define MASK_C_ADDIW 0xe003
#define MATCH_C_LDSP 0x6002
#define MASK_C_LDSP 0xe003
#define MATCH_C_SDSP 0xe002
#define MASK_C_SDSP 0xe003
#define MATCH_C_ADDI4SPN 0x0
#define MASK_C_ADDI4SPN 0xe003
#define MATCH_C_FLD 0x2000
#define MASK_C_FLD 0xe003
#define MATCH_C_LW 0x4000
#define MASK_C_LW 0xe003
#define MATCH_C_FLW 0x6000
#define MASK_C_FLW 0xe003
#define MATCH_C_FSD 0xa000
#define MASK_C_FSD 0xe003
#define MATCH_C_SW 0xc000
#define MASK_C_SW 0xe003
#define MATCH_C_FSW 0xe000
#define MASK_C_FSW 0xe003
#define MATCH_C_ADDI 0x1
#define MASK_C_ADDI 0xe003
#define MATCH_C_JAL 0x2001
#define MASK_C_JAL 0xe003
#define MATCH_C_LI 0x4001
#define MASK_C_LI 0xe003
#define MATCH_C_LUI 0x6001
#define MASK_C_LUI 0xe003
#define MATCH_C_SRLI 0x8001
#define MASK_C_SRLI 0xec03
#define MATCH_C_SRAI 0x8401
#define MASK_C_SRAI 0xec03
#define MATCH_C_ANDI 0x8801
#define MASK_C_ANDI 0xec03
#define MATCH_C_SUB 0x8c01
#define MASK_C_SUB 0xfc63
#define MATCH_C_XOR 0x8c21
#define MASK_C_XOR 0xfc63
#define MATCH_C_OR 0x8c41
#define MASK_C_OR 0xfc63
#define MATCH_C_AND 0x8c61
#define MASK_C_AND 0xfc63
#define MATCH_C_SUBW 0x9c01
#define MASK_C_SUBW 0xfc63
#define MATCH_C_ADDW 0x9c21
#define MASK_C_ADDW 0xfc63
#define MATCH_C_J 0xa001
#define MASK_C_J 0xe003
#define MATCH_C_BEQZ 0xc001
#define MASK_C_BEQZ 0xe003
#define MATCH_C_BNEZ 0xe001
#define MASK_C_BNEZ 0xe003
#define MATCH_C_SLLI 0x2
#define MASK_C_SLLI 0xe003
#define MATCH_C_FLDSP 0x2002
#define MASK_C_FLDSP 0xe003
#define MATCH_C_LWSP 0x4002
#define MASK_C_LWSP 0xe003
#define MATCH_C_FLWSP 0x6002
#define MASK_C_FLWSP 0xe003
#define MATCH_C_MV 0x8002
#define MASK_C_MV 0xf003
#define MATCH_C_ADD 0x9002
#define MASK_C_ADD 0xf003
#define MATCH_C_FSDSP 0xa002
#define MASK_C_FSDSP 0xe003
#define MATCH_C_SWSP 0xc002
#define MASK_C_SWSP 0xe003
#define MATCH_C_FSWSP 0xe002
#define MASK_C_FSWSP 0xe003
#define MATCH_CUSTOM0 0xb
#define MASK_CUSTOM0 0x707f
#define MATCH_CUSTOM0_RS1 0x200b
#define MASK_CUSTOM0_RS1 0x707f
#define MATCH_CUSTOM0_RS1_RS2 0x300b
#define MASK_CUSTOM0_RS1_RS2 0x707f
#define MATCH_CUSTOM0_RD 0x400b
#define MASK_CUSTOM0_RD 0x707f
#define MATCH_CUSTOM0_RD_RS1 0x600b
#define MASK_CUSTOM0_RD_RS1 0x707f
#define MATCH_CUSTOM0_RD_RS1_RS2 0x700b
#define MASK_CUSTOM0_RD_RS1_RS2 0x707f
#define MATCH_CUSTOM1 0x2b
#define MASK_CUSTOM1 0x707f
#define MATCH_CUSTOM1_RS1 0x202b
#define MASK_CUSTOM1_RS1 0x707f
#define MATCH_CUSTOM1_RS1_RS2 0x302b
#define MASK_CUSTOM1_RS1_RS2 0x707f
#define MATCH_CUSTOM1_RD 0x402b
#define MASK_CUSTOM1_RD 0x707f
#define MATCH_CUSTOM1_RD_RS1 0x602b
#define MASK_CUSTOM1_RD_RS1 0x707f
#define MATCH_CUSTOM1_RD_RS1_RS2 0x702b
#define MASK_CUSTOM1_RD_RS1_RS2 0x707f
#define MATCH_CUSTOM2 0x5b
#define MASK_CUSTOM2 0x707f
#define MATCH_CUSTOM2_RS1 0x205b
#define MASK_CUSTOM2_RS1 0x707f
#define MATCH_CUSTOM2_RS1_RS2 0x305b
#define MASK_CUSTOM2_RS1_RS2 0x707f
#define MATCH_CUSTOM2_RD 0x405b
#define MASK_CUSTOM2_RD 0x707f
#define MATCH_CUSTOM2_RD_RS1 0x605b
#define MASK_CUSTOM2_RD_RS1 0x707f
#define MATCH_CUSTOM2_RD_RS1_RS2 0x705b
#define MASK_CUSTOM2_RD_RS1_RS2 0x707f
#define MATCH_CUSTOM3 0x7b
#define MASK_CUSTOM3 0x707f
#define MATCH_CUSTOM3_RS1 0x207b
#define MASK_CUSTOM3_RS1 0x707f
#define MATCH_CUSTOM3_RS1_RS2 0x307b
#define MASK_CUSTOM3_RS1_RS2 0x707f
#define MATCH_CUSTOM3_RD 0x407b
#define MASK_CUSTOM3_RD 0x707f
#define MATCH_CUSTOM3_RD_RS1 0x607b
#define MASK_CUSTOM3_RD_RS1 0x707f
#define MATCH_CUSTOM3_RD_RS1_RS2 0x707b
#define MASK_CUSTOM3_RD_RS1_RS2 0x707f
#define CSR_FFLAGS 0x1
#define CSR_FRM 0x2
#define CSR_FCSR 0x3
#define CSR_CYCLE 0xc00
#define CSR_TIME 0xc01
#define CSR_INSTRET 0xc02
#define CSR_HPMCOUNTER3 0xc03
#define CSR_HPMCOUNTER4 0xc04
#define CSR_HPMCOUNTER5 0xc05
#define CSR_HPMCOUNTER6 0xc06
#define CSR_HPMCOUNTER7 0xc07
#define CSR_HPMCOUNTER8 0xc08
#define CSR_HPMCOUNTER9 0xc09
#define CSR_HPMCOUNTER10 0xc0a
#define CSR_HPMCOUNTER11 0xc0b
#define CSR_HPMCOUNTER12 0xc0c
#define CSR_HPMCOUNTER13 0xc0d
#define CSR_HPMCOUNTER14 0xc0e
#define CSR_HPMCOUNTER15 0xc0f
#define CSR_HPMCOUNTER16 0xc10
#define CSR_HPMCOUNTER17 0xc11
#define CSR_HPMCOUNTER18 0xc12
#define CSR_HPMCOUNTER19 0xc13
#define CSR_HPMCOUNTER20 0xc14
#define CSR_HPMCOUNTER21 0xc15
#define CSR_HPMCOUNTER22 0xc16
#define CSR_HPMCOUNTER23 0xc17
#define CSR_HPMCOUNTER24 0xc18
#define CSR_HPMCOUNTER25 0xc19
#define CSR_HPMCOUNTER26 0xc1a
#define CSR_HPMCOUNTER27 0xc1b
#define CSR_HPMCOUNTER28 0xc1c
#define CSR_HPMCOUNTER29 0xc1d
#define CSR_HPMCOUNTER30 0xc1e
#define CSR_HPMCOUNTER31 0xc1f
#define CSR_SSTATUS 0x100
#define CSR_SIE 0x104
#define CSR_STVEC 0x105
#define CSR_SSCRATCH 0x140
#define CSR_SEPC 0x141
#define CSR_SCAUSE 0x142
#define CSR_SBADADDR 0x143
#define CSR_SIP 0x144
#define CSR_SPTBR 0x180
#define CSR_MSTATUS 0x300
#define CSR_MISA 0x301
#define CSR_MEDELEG 0x302
#define CSR_MIDELEG 0x303
#define CSR_MIE 0x304
#define CSR_MTVEC 0x305
#define CSR_MSCRATCH 0x340
#define CSR_MEPC 0x341
#define CSR_MCAUSE 0x342
#define CSR_MBADADDR 0x343
#define CSR_MIP 0x344
#define CSR_TSELECT 0x7a0
#define CSR_TDATA1 0x7a1
#define CSR_TDATA2 0x7a2
#define CSR_TDATA3 0x7a3
#define CSR_DCSR 0x7b0
#define CSR_DPC 0x7b1
#define CSR_DSCRATCH 0x7b2
#define CSR_MCYCLE 0xb00
#define CSR_MINSTRET 0xb02
#define CSR_MHPMCOUNTER3 0xb03
#define CSR_MHPMCOUNTER4 0xb04
#define CSR_MHPMCOUNTER5 0xb05
#define CSR_MHPMCOUNTER6 0xb06
#define CSR_MHPMCOUNTER7 0xb07
#define CSR_MHPMCOUNTER8 0xb08
#define CSR_MHPMCOUNTER9 0xb09
#define CSR_MHPMCOUNTER10 0xb0a
#define CSR_MHPMCOUNTER11 0xb0b
#define CSR_MHPMCOUNTER12 0xb0c
#define CSR_MHPMCOUNTER13 0xb0d
#define CSR_MHPMCOUNTER14 0xb0e
#define CSR_MHPMCOUNTER15 0xb0f
#define CSR_MHPMCOUNTER16 0xb10
#define CSR_MHPMCOUNTER17 0xb11
#define CSR_MHPMCOUNTER18 0xb12
#define CSR_MHPMCOUNTER19 0xb13
#define CSR_MHPMCOUNTER20 0xb14
#define CSR_MHPMCOUNTER21 0xb15
#define CSR_MHPMCOUNTER22 0xb16
#define CSR_MHPMCOUNTER23 0xb17
#define CSR_MHPMCOUNTER24 0xb18
#define CSR_MHPMCOUNTER25 0xb19
#define CSR_MHPMCOUNTER26 0xb1a
#define CSR_MHPMCOUNTER27 0xb1b
#define CSR_MHPMCOUNTER28 0xb1c
#define CSR_MHPMCOUNTER29 0xb1d
#define CSR_MHPMCOUNTER30 0xb1e
#define CSR_MHPMCOUNTER31 0xb1f
#define CSR_MUCOUNTEREN 0x320
#define CSR_MSCOUNTEREN 0x321
#define CSR_MHPMEVENT3 0x323
#define CSR_MHPMEVENT4 0x324
#define CSR_MHPMEVENT5 0x325
#define CSR_MHPMEVENT6 0x326
#define CSR_MHPMEVENT7 0x327
#define CSR_MHPMEVENT8 0x328
#define CSR_MHPMEVENT9 0x329
#define CSR_MHPMEVENT10 0x32a
#define CSR_MHPMEVENT11 0x32b
#define CSR_MHPMEVENT12 0x32c
#define CSR_MHPMEVENT13 0x32d
#define CSR_MHPMEVENT14 0x32e
#define CSR_MHPMEVENT15 0x32f
#define CSR_MHPMEVENT16 0x330
#define CSR_MHPMEVENT17 0x331
#define CSR_MHPMEVENT18 0x332
#define CSR_MHPMEVENT19 0x333
#define CSR_MHPMEVENT20 0x334
#define CSR_MHPMEVENT21 0x335
#define CSR_MHPMEVENT22 0x336
#define CSR_MHPMEVENT23 0x337
#define CSR_MHPMEVENT24 0x338
#define CSR_MHPMEVENT25 0x339
#define CSR_MHPMEVENT26 0x33a
#define CSR_MHPMEVENT27 0x33b
#define CSR_MHPMEVENT28 0x33c
#define CSR_MHPMEVENT29 0x33d
#define CSR_MHPMEVENT30 0x33e
#define CSR_MHPMEVENT31 0x33f
#define CSR_MVENDORID 0xf11
#define CSR_MARCHID 0xf12
#define CSR_MIMPID 0xf13
#define CSR_MHARTID 0xf14
#define CSR_CYCLEH 0xc80
#define CSR_TIMEH 0xc81
#define CSR_INSTRETH 0xc82
#define CSR_HPMCOUNTER3H 0xc83
#define CSR_HPMCOUNTER4H 0xc84
#define CSR_HPMCOUNTER5H 0xc85
#define CSR_HPMCOUNTER6H 0xc86
#define CSR_HPMCOUNTER7H 0xc87
#define CSR_HPMCOUNTER8H 0xc88
#define CSR_HPMCOUNTER9H 0xc89
#define CSR_HPMCOUNTER10H 0xc8a
#define CSR_HPMCOUNTER11H 0xc8b
#define CSR_HPMCOUNTER12H 0xc8c
#define CSR_HPMCOUNTER13H 0xc8d
#define CSR_HPMCOUNTER14H 0xc8e
#define CSR_HPMCOUNTER15H 0xc8f
#define CSR_HPMCOUNTER16H 0xc90
#define CSR_HPMCOUNTER17H 0xc91
#define CSR_HPMCOUNTER18H 0xc92
#define CSR_HPMCOUNTER19H 0xc93
#define CSR_HPMCOUNTER20H 0xc94
#define CSR_HPMCOUNTER21H 0xc95
#define CSR_HPMCOUNTER22H 0xc96
#define CSR_HPMCOUNTER23H 0xc97
#define CSR_HPMCOUNTER24H 0xc98
#define CSR_HPMCOUNTER25H 0xc99
#define CSR_HPMCOUNTER26H 0xc9a
#define CSR_HPMCOUNTER27H 0xc9b
#define CSR_HPMCOUNTER28H 0xc9c
#define CSR_HPMCOUNTER29H 0xc9d
#define CSR_HPMCOUNTER30H 0xc9e
#define CSR_HPMCOUNTER31H 0xc9f
#define CSR_MCYCLEH 0xb80
#define CSR_MINSTRETH 0xb82
#define CSR_MHPMCOUNTER3H 0xb83
#define CSR_MHPMCOUNTER4H 0xb84
#define CSR_MHPMCOUNTER5H 0xb85
#define CSR_MHPMCOUNTER6H 0xb86
#define CSR_MHPMCOUNTER7H 0xb87
#define CSR_MHPMCOUNTER8H 0xb88
#define CSR_MHPMCOUNTER9H 0xb89
#define CSR_MHPMCOUNTER10H 0xb8a
#define CSR_MHPMCOUNTER11H 0xb8b
#define CSR_MHPMCOUNTER12H 0xb8c
#define CSR_MHPMCOUNTER13H 0xb8d
#define CSR_MHPMCOUNTER14H 0xb8e
#define CSR_MHPMCOUNTER15H 0xb8f
#define CSR_MHPMCOUNTER16H 0xb90
#define CSR_MHPMCOUNTER17H 0xb91
#define CSR_MHPMCOUNTER18H 0xb92
#define CSR_MHPMCOUNTER19H 0xb93
#define CSR_MHPMCOUNTER20H 0xb94
#define CSR_MHPMCOUNTER21H 0xb95
#define CSR_MHPMCOUNTER22H 0xb96
#define CSR_MHPMCOUNTER23H 0xb97
#define CSR_MHPMCOUNTER24H 0xb98
#define CSR_MHPMCOUNTER25H 0xb99
#define CSR_MHPMCOUNTER26H 0xb9a
#define CSR_MHPMCOUNTER27H 0xb9b
#define CSR_MHPMCOUNTER28H 0xb9c
#define CSR_MHPMCOUNTER29H 0xb9d
#define CSR_MHPMCOUNTER30H 0xb9e
#define CSR_MHPMCOUNTER31H 0xb9f
#define CAUSE_MISALIGNED_FETCH 0x0
#define CAUSE_FAULT_FETCH 0x1
#define CAUSE_ILLEGAL_INSTRUCTION 0x2
#define CAUSE_BREAKPOINT 0x3
#define CAUSE_MISALIGNED_LOAD 0x4
#define CAUSE_FAULT_LOAD 0x5
#define CAUSE_MISALIGNED_STORE 0x6
#define CAUSE_FAULT_STORE 0x7
#define CAUSE_USER_ECALL 0x8
#define CAUSE_SUPERVISOR_ECALL 0x9
#define CAUSE_HYPERVISOR_ECALL 0xa
#define CAUSE_MACHINE_ECALL 0xb
# 7 "freedom-e-sdk/bsp/drivers/plic/plic_driver.c" 2
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 1 3







#define _STRING_H_ 

# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/_ansi.h" 1 3







#define _ANSIDECL_H_ 

# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/newlib.h" 1 3







#define __NEWLIB_H__ 1
# 18 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/newlib.h" 3
#define _WANT_IO_C99_FORMATS 1


#define _WANT_IO_LONG_LONG 1


#define _WANT_REGISTER_FINI 1


#define _WANT_IO_LONG_DOUBLE 1
# 40 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/newlib.h" 3
#define _MB_LEN_MAX 1
# 50 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/newlib.h" 3
#define HAVE_INITFINI_ARRAY 1






#define _HAVE_LONG_DOUBLE 1


#define _HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1





#define _FVWRITE_IN_STREAMIO 1


#define _FSEEK_OPTIMIZATION 1


#define _WIDE_ORIENT 1


#define _UNBUF_STREAM_OPT 1
# 11 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/config.h" 1 3

#define __SYS_CONFIG_H__ 

# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 195 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/ieeefp.h" 3
#define __IEEE_LITTLE_ENDIAN 
# 465 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/ieeefp.h" 3
#define __OBSOLETE_MATH_DEFAULT 1


#define __OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT
# 5 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/config.h" 2 3
# 83 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/config.h" 3
#define _READ_WRITE_RETURN_TYPE _ssize_t
# 224 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/config.h" 3
#define _POINTER_INT long





#undef __RAND_MAX



#define __RAND_MAX 0x7fffffff
# 250 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/config.h" 3
#define __EXPORT 



#define __IMPORT 
# 267 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/config.h" 3
#define _READ_WRITE_BUFSIZE_TYPE int
# 12 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/_ansi.h" 2 3
# 31 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/_ansi.h" 3
#define _BEGIN_STD_C 
#define _END_STD_C 
#define _NOTHROW 



#define _LONG_DOUBLE long double





#define _ATTRIBUTE(attrs) __attribute__ (attrs)
# 69 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/_ansi.h" 3
#define _ELIDABLE_INLINE static __inline__



#define _NOINLINE __attribute__ ((__noinline__))
#define _NOINLINE_STATIC _NOINLINE static
# 11 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 11 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
#define _SYS_REENT_H_ 

# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 39 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#define _STDDEF_H 
#define _STDDEF_H_ 

#define _ANSI_STDDEF_H 
# 137 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#define _PTRDIFF_T 
#define _T_PTRDIFF_ 
#define _T_PTRDIFF 
#define __PTRDIFF_T 
#define _PTRDIFF_T_ 
#define _BSD_PTRDIFF_T_ 
#define ___int_ptrdiff_t_h 
#define _GCC_PTRDIFF_T 
#define _PTRDIFF_T_DECLARED 




# 149 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 161 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 187 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#define __size_t__ 
#define __SIZE_T__ 
#define _SIZE_T 
#define _SYS_SIZE_T_H 
#define _T_SIZE_ 
#define _T_SIZE 
#define __SIZE_T 
#define _SIZE_T_ 
#define _BSD_SIZE_T_ 
#define _SIZE_T_DEFINED_ 
#define _SIZE_T_DEFINED 
#define _BSD_SIZE_T_DEFINED_ 
#define _SIZE_T_DECLARED 
#define ___int_size_t_h 
#define _GCC_SIZE_T 
#define _SIZET_ 







#define __size_t 





typedef unsigned int size_t;
# 238 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_size_t
# 267 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#define __wchar_t__ 
#define __WCHAR_T__ 
#define _WCHAR_T 
#define _T_WCHAR_ 
#define _T_WCHAR 
#define __WCHAR_T 
#define _WCHAR_T_ 
#define _BSD_WCHAR_T_ 
#define _WCHAR_T_DEFINED_ 
#define _WCHAR_T_DEFINED 
#define _WCHAR_T_H 
#define ___int_wchar_t_h 
#define __INT_WCHAR_T_H 
#define _GCC_WCHAR_T 
#define _WCHAR_T_DECLARED 
# 294 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef _BSD_WCHAR_T_
# 328 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 347 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_wchar_t
# 401 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)




#define _GCC_MAX_ALIGN_T 



typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 437 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
} max_align_t;
# 15 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 20 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 3
#define _SYS__TYPES_H 

#define __need_size_t 
#define __need_wint_t 
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 161 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 238 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_size_t
# 347 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_wchar_t




#define _WINT_T 




typedef unsigned int wint_t;

#undef __need_wint_t
# 401 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 25 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/machine/_types.h" 1 3





#define _MACHINE__TYPES_H 
# 28 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 127 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 3
#undef __size_t



typedef unsigned int __size_t;
# 146 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 3
#define unsigned signed
typedef signed int _ssize_t;
#undef unsigned
# 158 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;



#define _CLOCK_T_ unsigned long


typedef unsigned long __clock_t;




#define _TIME_T_ __int_least64_t

typedef __int_least64_t __time_t;


#define _CLOCKID_T_ unsigned long


typedef unsigned long __clockid_t;

#define _TIMER_T_ unsigned long
typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 2 3

#define _NULL 0



#define __Long long
typedef unsigned long __ULong;
# 34 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/lock.h" 1 3

#define __SYS_LOCK_H__ 
# 11 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;

#define __LOCK_INIT(class,lock) static int lock = 0;
#define __LOCK_INIT_RECURSIVE(class,lock) static int lock = 0;
#define __lock_init(lock) ((void) 0)
#define __lock_init_recursive(lock) ((void) 0)
#define __lock_close(lock) ((void) 0)
#define __lock_close_recursive(lock) ((void) 0)
#define __lock_acquire(lock) ((void) 0)
#define __lock_acquire_recursive(lock) ((void) 0)
#define __lock_try_acquire(lock) ((void) 0)
#define __lock_try_acquire_recursive(lock) ((void) 0)
#define __lock_release(lock) ((void) 0)
#define __lock_release_recursive(lock) ((void) 0)
# 35 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};





#define _ATEXIT_SIZE 32

struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
#define _ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}





#define _REENT_INIT_ATEXIT _NULL, _ATEXIT_INIT,
# 122 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 183 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
#define _REENT_SMALL_CHECK_INIT(ptr) 


struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
#define _RAND48_SEED_0 (0x330e)
#define _RAND48_SEED_1 (0xabcd)
#define _RAND48_SEED_2 (0x1234)
#define _RAND48_MULT_0 (0xe66d)
#define _RAND48_MULT_1 (0xdeec)
#define _RAND48_MULT_2 (0x0005)
#define _RAND48_ADD (0x000b)
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};


#define _REENT_EMERGENCY_SIZE 25
#define _REENT_ASCTIME_SIZE 26
#define _REENT_SIGNAL_SIZE 24
# 613 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {
#define _N_LISTS 30
          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};





#define _REENT_STDIO_STREAM(var,index) &(var)->__sf[index]


#define _REENT_INIT(var) { 0, _REENT_STDIO_STREAM(&(var), 0), _REENT_STDIO_STREAM(&(var), 1), _REENT_STDIO_STREAM(&(var), 2), 0, "", 0, _NULL, 0, _NULL, _NULL, 0, _NULL, _NULL, 0, _NULL, { { 0, _NULL, "", {0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, "", "", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_ATEXIT _NULL, {_NULL, 0, _NULL} }
# 751 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
#define _REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = _REENT_STDIO_STREAM(var, 0); (var)->_stdout = _REENT_STDIO_STREAM(var, 1); (var)->_stderr = _REENT_STDIO_STREAM(var, 2); (var)->_new._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = _RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_SEED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }
# 765 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
#define _REENT_CHECK_RAND48(ptr) 
#define _REENT_CHECK_MP(ptr) 
#define _REENT_CHECK_TM(ptr) 
#define _REENT_CHECK_ASCTIME_BUF(ptr) 
#define _REENT_CHECK_EMERGENCY(ptr) 
#define _REENT_CHECK_MISC(ptr) 
#define _REENT_CHECK_SIGNAL_BUF(ptr) 

#define _REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)
#define _REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)
#define _REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)
#define _REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)
#define _REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)
#define _REENT_MP_RESULT(ptr) ((ptr)->_result)
#define _REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)
#define _REENT_MP_P5S(ptr) ((ptr)->_p5s)
#define _REENT_MP_FREELIST(ptr) ((ptr)->_freelist)
#define _REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)
#define _REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)
#define _REENT_EMERGENCY(ptr) ((ptr)->_emergency)
#define _REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)
#define _REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)
#define _REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)
#define _REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)
#define _REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)
#define _REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)
#define _REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)
#define _REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)
#define _REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)
#define _REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)
#define _REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)
#define _REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))



#define _REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }







#define _Kmax (sizeof (size_t) << 3)







#define __ATTRIBUTE_IMPURE_PTR__ 


extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 832 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/reent.h" 3
#define _REENT _impure_ptr


#define _GLOBAL_REENT _global_impure_ptr





#define _GLOBAL_ATEXIT (_GLOBAL_REENT->_atexit)
# 12 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 43 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define _SYS_CDEFS_H_ 



# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 48 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

#define __PMT(args) args
#define __DOTS , ...
#define __THROW 


#define __ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname


#define __ptr_t void *
#define __long_double_t long double

#define __attribute_malloc__ 
#define __attribute_pure__ 
#define __attribute_format_strfmon__(a,b) 
#define __flexarr [0]


#define __bounded 
#define __unbounded 
#define __ptrvalue 
# 78 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __has_extension __has_feature


#define __has_feature(x) 0





#define __has_builtin(x) 0






#define __BEGIN_DECLS 
#define __END_DECLS 
# 107 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __GNUCLIKE_ASM 3
#define __GNUCLIKE_MATH_BUILTIN_CONSTANTS 



#define __GNUCLIKE___TYPEOF 1
#define __GNUCLIKE___OFFSETOF 1
#define __GNUCLIKE___SECTION 1


#define __GNUCLIKE_CTOR_SECTION_HANDLING 1


#define __GNUCLIKE_BUILTIN_CONSTANT_P 1






#define __GNUCLIKE_BUILTIN_VARARGS 1
#define __GNUCLIKE_BUILTIN_STDARG 1
#define __GNUCLIKE_BUILTIN_VAALIST 1



#define __GNUC_VA_LIST_COMPATIBILITY 1






#define __compiler_membar() __asm __volatile(" " : : : "memory")



#define __GNUCLIKE_BUILTIN_NEXT_ARG 1
#define __GNUCLIKE_MATH_BUILTIN_RELOPS 


#define __GNUCLIKE_BUILTIN_MEMCPY 1


#define __CC_SUPPORTS_INLINE 1
#define __CC_SUPPORTS___INLINE 1
#define __CC_SUPPORTS___INLINE__ 1

#define __CC_SUPPORTS___FUNC__ 1
#define __CC_SUPPORTS_WARNING 1

#define __CC_SUPPORTS_VARADIC_XXX 1

#define __CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1
# 177 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __P(protos) protos
#define __CONCAT1(x,y) x ## y
#define __CONCAT(x,y) __CONCAT1(x,y)
#define __STRING(x) #x
#define __XSTRING(x) __STRING(x)

#define __const const
#define __signed signed
#define __volatile volatile
# 230 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __weak_symbol __attribute__((__weak__))
# 243 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __dead2 __attribute__((__noreturn__))
#define __pure2 __attribute__((__const__))
#define __unused __attribute__((__unused__))
#define __used __attribute__((__used__))
#define __packed __attribute__((__packed__))
#define __aligned(x) __attribute__((__aligned__(x)))
#define __section(x) __attribute__((__section__(x)))


#define __alloc_size(x) __attribute__((__alloc_size__(x)))
#define __alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))





#define __alloc_align(x) __attribute__((__alloc_align__(x)))
# 348 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)
# 366 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __min_size(x) static (x)





#define __malloc_like __attribute__((__malloc__))
#define __pure __attribute__((__pure__))






#define __always_inline __inline__ __attribute__((__always_inline__))





#define __noinline __attribute__ ((__noinline__))





#define __nonnull(x) __attribute__((__nonnull__ x))
#define __nonnull_all __attribute__((__nonnull__))






#define __fastcall __attribute__((__fastcall__))
#define __result_use_check __attribute__((__warn_unused_result__))






#define __returns_twice __attribute__((__returns_twice__))





#define __unreachable() __builtin_unreachable()
# 434 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __restrict restrict
# 467 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __predict_true(exp) __builtin_expect((exp), 1)
#define __predict_false(exp) __builtin_expect((exp), 0)






#define __null_sentinel __attribute__((__sentinel__))
#define __exported __attribute__((__visibility__("default")))


#define __hidden __attribute__((__visibility__("hidden")))
# 489 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __offsetof(type,field) offsetof(type, field)
#define __rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))
# 500 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})
# 522 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))

#define __scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))

#define __format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))
#define __strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))

#define __strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))
# 539 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __printf0like(fmtarg,firstvararg) 




#define __strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))




#define __weak_reference(sym,alias) __asm__(".weak " #alias); __asm__(".equ " #alias ", " #sym)


#define __warn_references(sym,msg) __asm__(".section .gnu.warning." #sym); __asm__(".asciz \"" msg "\""); __asm__(".previous")



#define __sym_compat(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@" #verid)

#define __sym_default(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@@" #verid)
# 593 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __FBSDID(s) struct __hack



#define __RCSID(s) struct __hack



#define __RCSID_SOURCE(s) struct __hack



#define __SCCSID(s) struct __hack



#define __COPYRIGHT(s) struct __hack



#define __DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))



#define __DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))



#define __DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))






#define _Nonnull 
#define _Nullable 
#define _Null_unspecified 
#define __NULLABILITY_PRAGMA_PUSH 
#define __NULLABILITY_PRAGMA_POP 
# 653 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __arg_type_tag(arg_kind,arg_idx,type_tag_idx) 
#define __datatype_type_tag(kind,type) 
# 672 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/cdefs.h" 3
#define __lock_annotate(x) 





#define __lockable __lock_annotate(lockable)


#define __locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))

#define __locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))



#define __trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))

#define __trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))



#define __unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))


#define __asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))

#define __asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))



#define __requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))

#define __requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))

#define __requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))



#define __no_lock_analysis __lock_annotate(no_thread_safety_analysis)


#define __guarded_by(x) __lock_annotate(guarded_by(x))
#define __pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))
# 13 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 2 3


#define __need_size_t 
#define __need_NULL 
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 161 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 238 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_size_t
# 347 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef __need_wchar_t
# 401 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 18 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/_locale.h" 1 3



#define _SYS__LOCALE_H 




struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/strings.h" 1 3
# 30 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/strings.h" 3
#define _STRINGS_H_ 
# 44 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/string.h" 1 3
# 13 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/sys/string.h" 3
#define _SYS_STRING_H 

static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/rudy/opt/FreedomStudio/SiFive/riscv64-unknown-elf-gcc-8.3.0-2020.04.1/riscv64-unknown-elf/include/string.h" 2 3


# 8 "freedom-e-sdk/bsp/drivers/plic/plic_driver.c" 2






# 13 "freedom-e-sdk/bsp/drivers/plic/plic_driver.c"
void volatile_memzero(uint8_t * base, unsigned int size)
{
  volatile uint8_t * ptr;
  for (ptr = base; ptr < (base + size); ptr++){
    *ptr = 0;
  }
}

void PLIC_init (
                plic_instance_t * this_plic,
                uintptr_t base_addr,
                uint32_t num_sources,
                uint32_t num_priorities
                )
{

  this_plic->base_addr = base_addr;
  this_plic->num_sources = num_sources;
  this_plic->num_priorities = num_priorities;


  unsigned long hart_id = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mhartid" : "=r"(__tmp)); __tmp; });
  volatile_memzero((uint8_t*) (this_plic->base_addr +
                               (0x2000UL) +
                               (hart_id << 7)),
                   (num_sources + 8) / 8);


  volatile_memzero ((uint8_t *)(this_plic->base_addr +
                                (0x0000UL)),
                    (num_sources + 1) << 2);


  volatile plic_threshold* threshold = (plic_threshold*)
    (this_plic->base_addr +
     (0x200000UL) +
     (hart_id << 12));

  *threshold = 0;

}

void PLIC_set_threshold (plic_instance_t * this_plic,
    plic_threshold threshold){

  unsigned long hart_id = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mhartid" : "=r"(__tmp)); __tmp; });
  volatile plic_threshold* threshold_ptr = (plic_threshold*) (this_plic->base_addr +
                                                              (0x200000UL) +
                                                              (hart_id << 12));

  *threshold_ptr = threshold;

}


void PLIC_enable_interrupt (plic_instance_t * this_plic, plic_source source){

  unsigned long hart_id = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mhartid" : "=r"(__tmp)); __tmp; });
  volatile uint8_t * current_ptr = (volatile uint8_t *)(this_plic->base_addr +
                                                        (0x2000UL) +
                                                        (hart_id << 7) +
                                                        (source >> 3));
  uint8_t current = *current_ptr;
  current = current | ( 1 << (source & 0x7));
  *current_ptr = current;

}

void PLIC_disable_interrupt (plic_instance_t * this_plic, plic_source source){

  unsigned long hart_id = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mhartid" : "=r"(__tmp)); __tmp; });
  volatile uint8_t * current_ptr = (volatile uint8_t *) (this_plic->base_addr +
                                                         (0x2000UL) +
                                                         (hart_id << 7) +
                                                         (source >> 3));
  uint8_t current = *current_ptr;
  current = current & ~(( 1 << (source & 0x7)));
  *current_ptr = current;

}

void PLIC_set_priority (plic_instance_t * this_plic, plic_source source, plic_priority priority){

  if (this_plic->num_priorities > 0) {
    volatile plic_priority * priority_ptr = (volatile plic_priority *)
      (this_plic->base_addr +
       (0x0000UL) +
       (source << 2));
    *priority_ptr = priority;
  }
}

plic_source PLIC_claim_interrupt(plic_instance_t * this_plic){

  unsigned long hart_id = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mhartid" : "=r"(__tmp)); __tmp; });

  volatile plic_source * claim_addr = (volatile plic_source * )
    (this_plic->base_addr +
     (0x200004UL) +
     (hart_id << 12));

  return *claim_addr;

}

void PLIC_complete_interrupt(plic_instance_t * this_plic, plic_source source){

  unsigned long hart_id = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mhartid" : "=r"(__tmp)); __tmp; });
  volatile plic_source * claim_addr = (volatile plic_source *) (this_plic->base_addr +
                                                                (0x200004UL) +
                                                                (hart_id << 12));
  *claim_addr = source;

}
