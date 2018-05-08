// nios32.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module nios32 (
		input  wire [3:0]  buttons_external_connection_export,  //  buttons_external_connection.export
		input  wire        clk_clk,                             //                          clk.clk
		output wire [7:0]  leds_external_connection_export,     //     leds_external_connection.export
		input  wire        reset_reset_n,                       //                        reset.reset_n
		output wire [12:0] sdram_wire_addr,                     //                   sdram_wire.addr
		output wire [1:0]  sdram_wire_ba,                       //                             .ba
		output wire        sdram_wire_cas_n,                    //                             .cas_n
		output wire        sdram_wire_cke,                      //                             .cke
		output wire        sdram_wire_cs_n,                     //                             .cs_n
		inout  wire [15:0] sdram_wire_dq,                       //                             .dq
		output wire [1:0]  sdram_wire_dqm,                      //                             .dqm
		output wire        sdram_wire_ras_n,                    //                             .ras_n
		output wire        sdram_wire_we_n,                     //                             .we_n
		input  wire [3:0]  switches_external_connection_export  // switches_external_connection.export
	);

	wire  [31:0] cpu_data_master_readdata;                                    // mm_interconnect_0:cpu_data_master_readdata -> cpu:d_readdata
	wire         cpu_data_master_waitrequest;                                 // mm_interconnect_0:cpu_data_master_waitrequest -> cpu:d_waitrequest
	wire         cpu_data_master_debugaccess;                                 // cpu:jtag_debug_module_debugaccess_to_roms -> mm_interconnect_0:cpu_data_master_debugaccess
	wire  [26:0] cpu_data_master_address;                                     // cpu:d_address -> mm_interconnect_0:cpu_data_master_address
	wire   [3:0] cpu_data_master_byteenable;                                  // cpu:d_byteenable -> mm_interconnect_0:cpu_data_master_byteenable
	wire         cpu_data_master_read;                                        // cpu:d_read -> mm_interconnect_0:cpu_data_master_read
	wire         cpu_data_master_write;                                       // cpu:d_write -> mm_interconnect_0:cpu_data_master_write
	wire  [31:0] cpu_data_master_writedata;                                   // cpu:d_writedata -> mm_interconnect_0:cpu_data_master_writedata
	wire  [31:0] cpu_instruction_master_readdata;                             // mm_interconnect_0:cpu_instruction_master_readdata -> cpu:i_readdata
	wire         cpu_instruction_master_waitrequest;                          // mm_interconnect_0:cpu_instruction_master_waitrequest -> cpu:i_waitrequest
	wire  [26:0] cpu_instruction_master_address;                              // cpu:i_address -> mm_interconnect_0:cpu_instruction_master_address
	wire         cpu_instruction_master_read;                                 // cpu:i_read -> mm_interconnect_0:cpu_instruction_master_read
	wire         cpu_instruction_master_readdatavalid;                        // mm_interconnect_0:cpu_instruction_master_readdatavalid -> cpu:i_readdatavalid
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_chipselect -> jtag_uart_0:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata;    // jtag_uart_0:av_readdata -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest; // jtag_uart_0:av_waitrequest -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_address -> jtag_uart_0:av_address
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_read -> jtag_uart_0:av_read_n
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_write -> jtag_uart_0:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_writedata -> jtag_uart_0:av_writedata
	wire         mm_interconnect_0_timer_0_s1_chipselect;                     // mm_interconnect_0:timer_0_s1_chipselect -> timer_0:chipselect
	wire  [15:0] mm_interconnect_0_timer_0_s1_readdata;                       // timer_0:readdata -> mm_interconnect_0:timer_0_s1_readdata
	wire   [2:0] mm_interconnect_0_timer_0_s1_address;                        // mm_interconnect_0:timer_0_s1_address -> timer_0:address
	wire         mm_interconnect_0_timer_0_s1_write;                          // mm_interconnect_0:timer_0_s1_write -> timer_0:write_n
	wire  [15:0] mm_interconnect_0_timer_0_s1_writedata;                      // mm_interconnect_0:timer_0_s1_writedata -> timer_0:writedata
	wire  [31:0] mm_interconnect_0_buttons_s1_readdata;                       // buttons:readdata -> mm_interconnect_0:buttons_s1_readdata
	wire   [1:0] mm_interconnect_0_buttons_s1_address;                        // mm_interconnect_0:buttons_s1_address -> buttons:address
	wire  [31:0] mm_interconnect_0_switches_s1_readdata;                      // switches:readdata -> mm_interconnect_0:switches_s1_readdata
	wire   [1:0] mm_interconnect_0_switches_s1_address;                       // mm_interconnect_0:switches_s1_address -> switches:address
	wire         mm_interconnect_0_sdram_s1_chipselect;                       // mm_interconnect_0:sdram_s1_chipselect -> sdram:az_cs
	wire  [15:0] mm_interconnect_0_sdram_s1_readdata;                         // sdram:za_data -> mm_interconnect_0:sdram_s1_readdata
	wire         mm_interconnect_0_sdram_s1_waitrequest;                      // sdram:za_waitrequest -> mm_interconnect_0:sdram_s1_waitrequest
	wire  [24:0] mm_interconnect_0_sdram_s1_address;                          // mm_interconnect_0:sdram_s1_address -> sdram:az_addr
	wire         mm_interconnect_0_sdram_s1_read;                             // mm_interconnect_0:sdram_s1_read -> sdram:az_rd_n
	wire   [1:0] mm_interconnect_0_sdram_s1_byteenable;                       // mm_interconnect_0:sdram_s1_byteenable -> sdram:az_be_n
	wire         mm_interconnect_0_sdram_s1_readdatavalid;                    // sdram:za_valid -> mm_interconnect_0:sdram_s1_readdatavalid
	wire         mm_interconnect_0_sdram_s1_write;                            // mm_interconnect_0:sdram_s1_write -> sdram:az_wr_n
	wire  [15:0] mm_interconnect_0_sdram_s1_writedata;                        // mm_interconnect_0:sdram_s1_writedata -> sdram:az_data
	wire         mm_interconnect_0_leds_s1_chipselect;                        // mm_interconnect_0:leds_s1_chipselect -> leds:chipselect
	wire  [31:0] mm_interconnect_0_leds_s1_readdata;                          // leds:readdata -> mm_interconnect_0:leds_s1_readdata
	wire   [1:0] mm_interconnect_0_leds_s1_address;                           // mm_interconnect_0:leds_s1_address -> leds:address
	wire         mm_interconnect_0_leds_s1_write;                             // mm_interconnect_0:leds_s1_write -> leds:write_n
	wire  [31:0] mm_interconnect_0_leds_s1_writedata;                         // mm_interconnect_0:leds_s1_writedata -> leds:writedata
	wire         mm_interconnect_0_onchip_memory_0_s1_chipselect;             // mm_interconnect_0:onchip_memory_0_s1_chipselect -> onchip_memory_0:chipselect
	wire  [31:0] mm_interconnect_0_onchip_memory_0_s1_readdata;               // onchip_memory_0:readdata -> mm_interconnect_0:onchip_memory_0_s1_readdata
	wire  [11:0] mm_interconnect_0_onchip_memory_0_s1_address;                // mm_interconnect_0:onchip_memory_0_s1_address -> onchip_memory_0:address
	wire   [3:0] mm_interconnect_0_onchip_memory_0_s1_byteenable;             // mm_interconnect_0:onchip_memory_0_s1_byteenable -> onchip_memory_0:byteenable
	wire         mm_interconnect_0_onchip_memory_0_s1_write;                  // mm_interconnect_0:onchip_memory_0_s1_write -> onchip_memory_0:write
	wire  [31:0] mm_interconnect_0_onchip_memory_0_s1_writedata;              // mm_interconnect_0:onchip_memory_0_s1_writedata -> onchip_memory_0:writedata
	wire         mm_interconnect_0_onchip_memory_0_s1_clken;                  // mm_interconnect_0:onchip_memory_0_s1_clken -> onchip_memory_0:clken
	wire  [31:0] mm_interconnect_0_cpu_jtag_debug_module_readdata;            // cpu:jtag_debug_module_readdata -> mm_interconnect_0:cpu_jtag_debug_module_readdata
	wire         mm_interconnect_0_cpu_jtag_debug_module_waitrequest;         // cpu:jtag_debug_module_waitrequest -> mm_interconnect_0:cpu_jtag_debug_module_waitrequest
	wire         mm_interconnect_0_cpu_jtag_debug_module_debugaccess;         // mm_interconnect_0:cpu_jtag_debug_module_debugaccess -> cpu:jtag_debug_module_debugaccess
	wire   [8:0] mm_interconnect_0_cpu_jtag_debug_module_address;             // mm_interconnect_0:cpu_jtag_debug_module_address -> cpu:jtag_debug_module_address
	wire         mm_interconnect_0_cpu_jtag_debug_module_read;                // mm_interconnect_0:cpu_jtag_debug_module_read -> cpu:jtag_debug_module_read
	wire   [3:0] mm_interconnect_0_cpu_jtag_debug_module_byteenable;          // mm_interconnect_0:cpu_jtag_debug_module_byteenable -> cpu:jtag_debug_module_byteenable
	wire         mm_interconnect_0_cpu_jtag_debug_module_write;               // mm_interconnect_0:cpu_jtag_debug_module_write -> cpu:jtag_debug_module_write
	wire  [31:0] mm_interconnect_0_cpu_jtag_debug_module_writedata;           // mm_interconnect_0:cpu_jtag_debug_module_writedata -> cpu:jtag_debug_module_writedata
	wire         irq_mapper_receiver0_irq;                                    // timer_0:irq -> irq_mapper:receiver0_irq
	wire  [31:0] cpu_d_irq_irq;                                               // irq_mapper:sender_irq -> cpu:d_irq
	wire         rst_controller_reset_out_reset;                              // rst_controller:reset_out -> [buttons:reset_n, cpu:reset_n, ext_bus:reset, irq_mapper:reset, jtag_uart_0:rst_n, leds:reset_n, mm_interconnect_0:cpu_reset_n_reset_bridge_in_reset_reset, onchip_memory_0:reset, rst_translator:in_reset, sdram:reset_n, switches:reset_n, timer_0:reset_n]
	wire         rst_controller_reset_out_reset_req;                          // rst_controller:reset_req -> [cpu:reset_req, onchip_memory_0:reset_req, rst_translator:reset_req_in]

	nios32_buttons buttons (
		.clk      (clk_clk),                               //                 clk.clk
		.reset_n  (~rst_controller_reset_out_reset),       //               reset.reset_n
		.address  (mm_interconnect_0_buttons_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_buttons_s1_readdata), //                    .readdata
		.in_port  (buttons_external_connection_export)     // external_connection.export
	);

	nios32_cpu cpu (
		.clk                                   (clk_clk),                                             //                       clk.clk
		.reset_n                               (~rst_controller_reset_out_reset),                     //                   reset_n.reset_n
		.reset_req                             (rst_controller_reset_out_reset_req),                  //                          .reset_req
		.d_address                             (cpu_data_master_address),                             //               data_master.address
		.d_byteenable                          (cpu_data_master_byteenable),                          //                          .byteenable
		.d_read                                (cpu_data_master_read),                                //                          .read
		.d_readdata                            (cpu_data_master_readdata),                            //                          .readdata
		.d_waitrequest                         (cpu_data_master_waitrequest),                         //                          .waitrequest
		.d_write                               (cpu_data_master_write),                               //                          .write
		.d_writedata                           (cpu_data_master_writedata),                           //                          .writedata
		.jtag_debug_module_debugaccess_to_roms (cpu_data_master_debugaccess),                         //                          .debugaccess
		.i_address                             (cpu_instruction_master_address),                      //        instruction_master.address
		.i_read                                (cpu_instruction_master_read),                         //                          .read
		.i_readdata                            (cpu_instruction_master_readdata),                     //                          .readdata
		.i_waitrequest                         (cpu_instruction_master_waitrequest),                  //                          .waitrequest
		.i_readdatavalid                       (cpu_instruction_master_readdatavalid),                //                          .readdatavalid
		.d_irq                                 (cpu_d_irq_irq),                                       //                     d_irq.irq
		.jtag_debug_module_resetrequest        (),                                                    //   jtag_debug_module_reset.reset
		.jtag_debug_module_address             (mm_interconnect_0_cpu_jtag_debug_module_address),     //         jtag_debug_module.address
		.jtag_debug_module_byteenable          (mm_interconnect_0_cpu_jtag_debug_module_byteenable),  //                          .byteenable
		.jtag_debug_module_debugaccess         (mm_interconnect_0_cpu_jtag_debug_module_debugaccess), //                          .debugaccess
		.jtag_debug_module_read                (mm_interconnect_0_cpu_jtag_debug_module_read),        //                          .read
		.jtag_debug_module_readdata            (mm_interconnect_0_cpu_jtag_debug_module_readdata),    //                          .readdata
		.jtag_debug_module_waitrequest         (mm_interconnect_0_cpu_jtag_debug_module_waitrequest), //                          .waitrequest
		.jtag_debug_module_write               (mm_interconnect_0_cpu_jtag_debug_module_write),       //                          .write
		.jtag_debug_module_writedata           (mm_interconnect_0_cpu_jtag_debug_module_writedata),   //                          .writedata
		.no_ci_readra                          ()                                                     // custom_instruction_master.readra
	);

	nios32_ext_bus ext_bus (
		.clk                (clk_clk),                        //                clk.clk
		.reset              (rst_controller_reset_out_reset), //              reset.reset
		.avalon_readdata    (),                               //      avalon_master.readdata
		.avalon_waitrequest (),                               //                   .waitrequest
		.avalon_byteenable  (),                               //                   .byteenable
		.avalon_read        (),                               //                   .read
		.avalon_write       (),                               //                   .write
		.avalon_writedata   (),                               //                   .writedata
		.avalon_address     (),                               //                   .address
		.address            (),                               // external_interface.export
		.byte_enable        (),                               //                   .export
		.read               (),                               //                   .export
		.write              (),                               //                   .export
		.write_data         (),                               //                   .export
		.acknowledge        (),                               //                   .export
		.read_data          ()                                //                   .export
	);

	nios32_jtag_uart_0 jtag_uart_0 (
		.clk            (clk_clk),                                                     //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                             //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         ()                                                             //               irq.irq
	);

	nios32_leds leds (
		.clk        (clk_clk),                              //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address    (mm_interconnect_0_leds_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_leds_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_leds_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_leds_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_leds_s1_readdata),   //                    .readdata
		.out_port   (leds_external_connection_export)       // external_connection.export
	);

	nios32_onchip_memory_0 onchip_memory_0 (
		.clk        (clk_clk),                                         //   clk1.clk
		.address    (mm_interconnect_0_onchip_memory_0_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_memory_0_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_memory_0_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_memory_0_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_memory_0_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_memory_0_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_memory_0_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),                  // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),              //       .reset_req
		.freeze     (1'b0)                                             // (terminated)
	);

	nios32_sdram sdram (
		.clk            (clk_clk),                                  //   clk.clk
		.reset_n        (~rst_controller_reset_out_reset),          // reset.reset_n
		.az_addr        (mm_interconnect_0_sdram_s1_address),       //    s1.address
		.az_be_n        (~mm_interconnect_0_sdram_s1_byteenable),   //      .byteenable_n
		.az_cs          (mm_interconnect_0_sdram_s1_chipselect),    //      .chipselect
		.az_data        (mm_interconnect_0_sdram_s1_writedata),     //      .writedata
		.az_rd_n        (~mm_interconnect_0_sdram_s1_read),         //      .read_n
		.az_wr_n        (~mm_interconnect_0_sdram_s1_write),        //      .write_n
		.za_data        (mm_interconnect_0_sdram_s1_readdata),      //      .readdata
		.za_valid       (mm_interconnect_0_sdram_s1_readdatavalid), //      .readdatavalid
		.za_waitrequest (mm_interconnect_0_sdram_s1_waitrequest),   //      .waitrequest
		.zs_addr        (sdram_wire_addr),                          //  wire.export
		.zs_ba          (sdram_wire_ba),                            //      .export
		.zs_cas_n       (sdram_wire_cas_n),                         //      .export
		.zs_cke         (sdram_wire_cke),                           //      .export
		.zs_cs_n        (sdram_wire_cs_n),                          //      .export
		.zs_dq          (sdram_wire_dq),                            //      .export
		.zs_dqm         (sdram_wire_dqm),                           //      .export
		.zs_ras_n       (sdram_wire_ras_n),                         //      .export
		.zs_we_n        (sdram_wire_we_n)                           //      .export
	);

	nios32_buttons switches (
		.clk      (clk_clk),                                //                 clk.clk
		.reset_n  (~rst_controller_reset_out_reset),        //               reset.reset_n
		.address  (mm_interconnect_0_switches_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_switches_s1_readdata), //                    .readdata
		.in_port  (switches_external_connection_export)     // external_connection.export
	);

	nios32_timer_0 timer_0 (
		.clk        (clk_clk),                                 //   clk.clk
		.reset_n    (~rst_controller_reset_out_reset),         // reset.reset_n
		.address    (mm_interconnect_0_timer_0_s1_address),    //    s1.address
		.writedata  (mm_interconnect_0_timer_0_s1_writedata),  //      .writedata
		.readdata   (mm_interconnect_0_timer_0_s1_readdata),   //      .readdata
		.chipselect (mm_interconnect_0_timer_0_s1_chipselect), //      .chipselect
		.write_n    (~mm_interconnect_0_timer_0_s1_write),     //      .write_n
		.irq        (irq_mapper_receiver0_irq)                 //   irq.irq
	);

	nios32_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                             (clk_clk),                                                     //                         clk_0_clk.clk
		.cpu_reset_n_reset_bridge_in_reset_reset   (rst_controller_reset_out_reset),                              // cpu_reset_n_reset_bridge_in_reset.reset
		.cpu_data_master_address                   (cpu_data_master_address),                                     //                   cpu_data_master.address
		.cpu_data_master_waitrequest               (cpu_data_master_waitrequest),                                 //                                  .waitrequest
		.cpu_data_master_byteenable                (cpu_data_master_byteenable),                                  //                                  .byteenable
		.cpu_data_master_read                      (cpu_data_master_read),                                        //                                  .read
		.cpu_data_master_readdata                  (cpu_data_master_readdata),                                    //                                  .readdata
		.cpu_data_master_write                     (cpu_data_master_write),                                       //                                  .write
		.cpu_data_master_writedata                 (cpu_data_master_writedata),                                   //                                  .writedata
		.cpu_data_master_debugaccess               (cpu_data_master_debugaccess),                                 //                                  .debugaccess
		.cpu_instruction_master_address            (cpu_instruction_master_address),                              //            cpu_instruction_master.address
		.cpu_instruction_master_waitrequest        (cpu_instruction_master_waitrequest),                          //                                  .waitrequest
		.cpu_instruction_master_read               (cpu_instruction_master_read),                                 //                                  .read
		.cpu_instruction_master_readdata           (cpu_instruction_master_readdata),                             //                                  .readdata
		.cpu_instruction_master_readdatavalid      (cpu_instruction_master_readdatavalid),                        //                                  .readdatavalid
		.buttons_s1_address                        (mm_interconnect_0_buttons_s1_address),                        //                        buttons_s1.address
		.buttons_s1_readdata                       (mm_interconnect_0_buttons_s1_readdata),                       //                                  .readdata
		.cpu_jtag_debug_module_address             (mm_interconnect_0_cpu_jtag_debug_module_address),             //             cpu_jtag_debug_module.address
		.cpu_jtag_debug_module_write               (mm_interconnect_0_cpu_jtag_debug_module_write),               //                                  .write
		.cpu_jtag_debug_module_read                (mm_interconnect_0_cpu_jtag_debug_module_read),                //                                  .read
		.cpu_jtag_debug_module_readdata            (mm_interconnect_0_cpu_jtag_debug_module_readdata),            //                                  .readdata
		.cpu_jtag_debug_module_writedata           (mm_interconnect_0_cpu_jtag_debug_module_writedata),           //                                  .writedata
		.cpu_jtag_debug_module_byteenable          (mm_interconnect_0_cpu_jtag_debug_module_byteenable),          //                                  .byteenable
		.cpu_jtag_debug_module_waitrequest         (mm_interconnect_0_cpu_jtag_debug_module_waitrequest),         //                                  .waitrequest
		.cpu_jtag_debug_module_debugaccess         (mm_interconnect_0_cpu_jtag_debug_module_debugaccess),         //                                  .debugaccess
		.jtag_uart_0_avalon_jtag_slave_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //     jtag_uart_0_avalon_jtag_slave.address
		.jtag_uart_0_avalon_jtag_slave_write       (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),       //                                  .write
		.jtag_uart_0_avalon_jtag_slave_read        (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),        //                                  .read
		.jtag_uart_0_avalon_jtag_slave_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                                  .readdata
		.jtag_uart_0_avalon_jtag_slave_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                                  .writedata
		.jtag_uart_0_avalon_jtag_slave_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                                  .waitrequest
		.jtag_uart_0_avalon_jtag_slave_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  //                                  .chipselect
		.leds_s1_address                           (mm_interconnect_0_leds_s1_address),                           //                           leds_s1.address
		.leds_s1_write                             (mm_interconnect_0_leds_s1_write),                             //                                  .write
		.leds_s1_readdata                          (mm_interconnect_0_leds_s1_readdata),                          //                                  .readdata
		.leds_s1_writedata                         (mm_interconnect_0_leds_s1_writedata),                         //                                  .writedata
		.leds_s1_chipselect                        (mm_interconnect_0_leds_s1_chipselect),                        //                                  .chipselect
		.onchip_memory_0_s1_address                (mm_interconnect_0_onchip_memory_0_s1_address),                //                onchip_memory_0_s1.address
		.onchip_memory_0_s1_write                  (mm_interconnect_0_onchip_memory_0_s1_write),                  //                                  .write
		.onchip_memory_0_s1_readdata               (mm_interconnect_0_onchip_memory_0_s1_readdata),               //                                  .readdata
		.onchip_memory_0_s1_writedata              (mm_interconnect_0_onchip_memory_0_s1_writedata),              //                                  .writedata
		.onchip_memory_0_s1_byteenable             (mm_interconnect_0_onchip_memory_0_s1_byteenable),             //                                  .byteenable
		.onchip_memory_0_s1_chipselect             (mm_interconnect_0_onchip_memory_0_s1_chipselect),             //                                  .chipselect
		.onchip_memory_0_s1_clken                  (mm_interconnect_0_onchip_memory_0_s1_clken),                  //                                  .clken
		.sdram_s1_address                          (mm_interconnect_0_sdram_s1_address),                          //                          sdram_s1.address
		.sdram_s1_write                            (mm_interconnect_0_sdram_s1_write),                            //                                  .write
		.sdram_s1_read                             (mm_interconnect_0_sdram_s1_read),                             //                                  .read
		.sdram_s1_readdata                         (mm_interconnect_0_sdram_s1_readdata),                         //                                  .readdata
		.sdram_s1_writedata                        (mm_interconnect_0_sdram_s1_writedata),                        //                                  .writedata
		.sdram_s1_byteenable                       (mm_interconnect_0_sdram_s1_byteenable),                       //                                  .byteenable
		.sdram_s1_readdatavalid                    (mm_interconnect_0_sdram_s1_readdatavalid),                    //                                  .readdatavalid
		.sdram_s1_waitrequest                      (mm_interconnect_0_sdram_s1_waitrequest),                      //                                  .waitrequest
		.sdram_s1_chipselect                       (mm_interconnect_0_sdram_s1_chipselect),                       //                                  .chipselect
		.switches_s1_address                       (mm_interconnect_0_switches_s1_address),                       //                       switches_s1.address
		.switches_s1_readdata                      (mm_interconnect_0_switches_s1_readdata),                      //                                  .readdata
		.timer_0_s1_address                        (mm_interconnect_0_timer_0_s1_address),                        //                        timer_0_s1.address
		.timer_0_s1_write                          (mm_interconnect_0_timer_0_s1_write),                          //                                  .write
		.timer_0_s1_readdata                       (mm_interconnect_0_timer_0_s1_readdata),                       //                                  .readdata
		.timer_0_s1_writedata                      (mm_interconnect_0_timer_0_s1_writedata),                      //                                  .writedata
		.timer_0_s1_chipselect                     (mm_interconnect_0_timer_0_s1_chipselect)                      //                                  .chipselect
	);

	nios32_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (cpu_d_irq_irq)                   //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
