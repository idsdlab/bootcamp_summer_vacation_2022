# RISC-V toolchain (linux64)
 - This toolchain references eecs151 fall coursework from UCB (https://github.com/EECS150/project_skeleton_fa19.git)

## compress method
```bash
    $ tar cvzf - riscv-toolchain-fa19 | split -b 40m - riscv-toolchain.tar
```

## decompress method
```bash
    $ cat riscv-toolchain.tar* | tar xvzf -
```

## configure bin env
 - riscv64-unknown-elf-bin2hex: change LIBPATH

## Configure .bashrc
 - alias riscv_toolchain='export PATH=$PATH:${extracted_path}/bin'
    
