#include "datatype.h"
#include "stdio.h"
#include "uart.h"

t_ck_uart_device uart0 = {0xFFFF};

int main (void)
{
   int a;
  //--------------------------------------------------------
  // setup uart
  //--------------------------------------------------------
  t_ck_uart_cfig   uart_cfig;

  uart_cfig.baudrate = BAUD;       // any integer value is allowed
  uart_cfig.parity = PARITY_NONE;     // PARITY_NONE / PARITY_ODD / PARITY_EVEN
  uart_cfig.stopbit = STOPBIT_1;      // STOPBIT_1 / STOPBIT_2
  uart_cfig.wordsize = WORDSIZE_8;    // from WORDSIZE_5 to WORDSIZE_8
  uart_cfig.txmode = ENABLE;          // ENABLE or DISABLE
  // open UART device with id = 0 (UART0)
  ck_uart_open(&uart0, 0);
  // initialize uart using uart_cfig structure
  ck_uart_init(&uart0, &uart_cfig);
  
  for (a=0; a<10; a++) {
    ck_uart_putc(&uart0, a+48);
    ck_uart_putc(&uart0, '\n');
  }
  
  ck_uart_close(&uart0);
  return 0;
}
