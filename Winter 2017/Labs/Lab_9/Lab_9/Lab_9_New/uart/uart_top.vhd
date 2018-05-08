LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

ENTITY uart_top IS
  PORT (
    clk_48MHz			: IN  STD_LOGIC;	-- Baud Rate: 19200 baud
    start_send			: IN  STD_LOGIC;
    data_to_send		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
    RX					: IN  STD_LOGIC;
    TX					: OUT STD_LOGIC;
    is_sending			: OUT STD_LOGIC;
    data_ready_pulse	: OUT STD_LOGIC;	-- Pulsed
    data_recvd			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) );
END uart_top;


ARCHITECTURE rtl OF uart_top IS

	COMPONENT UART_TX IS
	   PORT (
		i_Clk       : IN  STD_LOGIC;
		i_TX_DV     : IN  STD_LOGIC;
		i_TX_Byte   : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		o_TX_Active : OUT STD_LOGIC;
		o_TX_Serial : OUT STD_LOGIC;
		o_TX_Done   : OUT STD_LOGIC    );
	END COMPONENT;

	COMPONENT UART_RX IS
	  PORT (
		i_Clk       : IN  STD_LOGIC;
		i_RX_Serial : IN  STD_LOGIC;
		o_RX_DV     : OUT STD_LOGIC;
		o_RX_Byte   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)	);
	END COMPONENT;



BEGIN

uart_tx1: UART_TX
		PORT MAP(	i_Clk =>		clk_48MHz,
					i_TX_DV =>		start_send,
					i_TX_Byte =>	data_to_send,
					o_TX_Active =>	is_sending,
					o_TX_Serial =>	TX
				);

uart_rx1: UART_RX
		PORT MAP(	i_Clk =>		clk_48MHz,
					i_RX_Serial =>	RX,
					o_RX_DV =>		data_ready_pulse,
					o_RX_Byte =>	data_recvd
				);


END rtl;