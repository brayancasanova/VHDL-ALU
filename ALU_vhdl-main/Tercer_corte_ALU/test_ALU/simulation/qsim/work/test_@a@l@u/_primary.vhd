library verilog;
use verilog.vl_types.all;
entity test_ALU is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        ALU_Sel         : in     vl_logic_vector(1 downto 0);
        vec_NZVC        : out    vl_logic_vector(3 downto 0);
        uni             : out    vl_logic_vector(6 downto 0);
        dec             : out    vl_logic_vector(6 downto 0)
    );
end test_ALU;
