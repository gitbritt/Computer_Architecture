

#include "rpds_software.h"
int main( void ) {
	unsigned char led_val = 1;
	/* Print message to the Nios II IDE console via UART */
	printf( "Hello World\n" );
	while(1) {
		/* Output a 8-bit value to the LEDs */
		IOWR_ALTERA_AVALON_PIO_DATA( LEDS_BASE, (led_val & 0xFF) );
		if( led_val == 0x80 )
			led_val = 1;
		else
			led_val = led_val << 1;
		/* Wait for 0.5 seconds */
		usleep( 500000 );
	}
	return(0);
}
