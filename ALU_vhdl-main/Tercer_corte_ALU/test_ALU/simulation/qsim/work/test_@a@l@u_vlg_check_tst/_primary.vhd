library verilog;
use verilog.vl_types.all;
entity test_ALU_vlg_check_tst is
    port(
        dec             : in     vl_logic_vector(6 downto 0);
        uni             : in     vl_logic_vector(6 downto 0);
        vec_NZVC        : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end test_ALU_vlg_check_tst;
