TARGET = target/riscv32i-unknown-none-elf/debug/bare-metal-rust-on-riscv

all: disassemble analyze

disassemble:
	riscv64-unknown-elf-objdump -d $(TARGET)

analyze:
	riscv64-unknown-elf-readelf -a $(TARGET)

.PHONY: disassemble analyze
