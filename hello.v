// **********************************
// This is our hello world. It prints
// stuff to the simulator.
//
// by: Ryan Thompson
// **********************************

module hello();

//
// ifdef example
// 
`ifdef RELEASEME
    initial 
    $display($time, "I have been released!");
`endif

//
// Fork and join isn't common, but here it is.
// Just use blocking and non-blocking instead
//
initial fork
       $display($time, "Hello World B0");
    #1 $display($time, "Hello Texas B1");
    #2 $display($time, "Almost out of breath... B2");
    #3 $display($time, "Alright, I'm done B3");
join

//
// Sequential block
//
initial begin
       $display($time, "Hello World F0");
    #1 $display($time, "Hello Texas F1");
    #2 $display($time, "Almost out of breath... F2");
    #3 $display($time, "Alright, I'm done F3");
end

endmodule