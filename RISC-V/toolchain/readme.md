# RISC-V toolchain (linux64)
 - This toolchain references eecs151 fall coursework from UCB (https://github.com/EECS150/project_skeleton_fa19.git)

## compress method
tar cvzf - riscv-toolchain-fa19 | split -b 40m - riscv-toolchain.tar

## decompress method
cat riscv-toolchain.tar* | tar xvzf -

## configure bin env
 - riscv64-unknown-elf-bin2hex: change LIBPATH
