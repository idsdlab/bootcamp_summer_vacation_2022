#include "types.h"
#include "memory_map.h"
#include "ascii.h"
#include "uart.h"
#define RISCV_GPIO_BASE   0x80002000
#define RISCV_UART_BASE		0x80001000
#define RISCV_TIMER_BASE  0x80000000

//////////////////////////////////////////////////////////////////
// Main Function
//////////////////////////////////////////////////////////////////

void delay(unsigned int time)
{
	while (time--);
}




int main(void)
{
	csr_tohost(0);
	unsigned int curr_time_value;
		curr_time_value = *(unsigned int*) (RISCV_TIMER_BASE+0x100);
		*(unsigned int*) (RISCV_GPIO_BASE + 0x0C) = (curr_time_value >> 12) & 0x0f;
		*(unsigned int*) (RISCV_GPIO_BASE + 0x10) = (curr_time_value >> 8) & 0x0f;
		*(unsigned int*) (RISCV_GPIO_BASE + 0x14) = (curr_time_value >> 4) & 0x0f;
		*(unsigned int*) (RISCV_GPIO_BASE + 0x18) = (curr_time_value) & 0x0f;
	csr_tohost(1);
}
