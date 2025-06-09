module led_driver (
    input clk,          
    input spi_mosi,   
    input spi_miso,   
    output [1:0] leds   // 4 LED outputs with different effects
);


    reg [22:0] pulse_counter_0;
    reg spi_mosi_prev_pulse;
    
    always @(posedge clk) begin
        spi_mosi_prev_pulse <= spi_mosi;
        
        // Detect edge and set counter
        if (spi_mosi != spi_mosi_prev_pulse)
            pulse_counter_0 <= 23'd2_000_000;  // 20ms pulse @ 100MHz
        else if (pulse_counter_0 > 0)
            pulse_counter_0 <= pulse_counter_0 - 1;
    end
    
    assign leds[0] = (pulse_counter_0 > 0);



    reg [22:0] pulse_counter_1;
    reg spi_miso_prev_pulse;
    
    always @(posedge clk) begin
        spi_miso_prev_pulse <= spi_miso;
        
        // Detect edge and set counter
        if (spi_miso != spi_miso_prev_pulse)
            pulse_counter_1 <= 23'd2_000_000;  // 20ms pulse @ 100MHz
        else if (pulse_counter_1 > 0)
            pulse_counter_1 <= pulse_counter_1 - 1;
    end
    
    assign leds[1] = (pulse_counter_1 > 0);



endmodule