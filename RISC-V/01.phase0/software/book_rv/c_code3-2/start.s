.section    .start
.global     _start

_start:
    li      sp, 0x00000600
    jal     main
