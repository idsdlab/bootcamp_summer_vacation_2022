.section    .start
.global     _start

_start:
    li      sp, 0x00007ff8
    jal     main
