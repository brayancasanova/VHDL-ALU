library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_ALU is
    port
    (
        -- Input ports
        A, B        : in  std_logic_vector (7 downto 0);
        ALU_Sel     : in  std_logic_vector (1 downto 0);
        -- Output ports
        vec_NZVC    : out std_logic_vector (3 downto 0);
        uni         : out std_logic_vector (6 downto 0);
        dec         : out std_logic_vector (6 downto 0)
    );
end test_ALU;

architecture arch_test_ALU of test_ALU is

    component ALU
        port
        (
            -- Input ports
            A, B        : in  std_logic_vector (7 downto 0);
            ALU_Sel     : in  std_logic_vector (1 downto 0);

            -- Output ports
            Result      : out std_logic_vector (7 downto 0);
            NZVC        : out std_logic_vector (3 downto 0)
        );
    end component;

    component BCD7Seg
        port
        (
            -- Input ports
            IA, IB, IC, ID : in std_logic;
            -- Output ports
            F : out std_logic_vector (6 downto 0)
        );
    end component;

    signal resultado   : std_logic_vector (7 downto 0);
	 --signal sig_signo   : std_logic;
    --signal resul_not   : std_logic_vector (7 downto 0);
    --signal ressul_use  : std_logic_vector (7 downto 0);
    --signal resul_int   : integer range 0 to 255;
    --signal resul_int1  : integer range 0 to 255;
    --signal S_NZVC      : std_logic_vector (3 downto 0);

begin

    -- Portmap ALU
    Port_ALU : ALU port map (A, B, ALU_Sel, resultado, vec_NZVC);

    -- Bcd Salida
    BCD_1 : BCD7Seg port map (resultado(7),resultado(6),resultado(5), resultado(4),dec); -- Dec
    BCD_2 : BCD7Seg port map (resultado(3),resultado(2),resultado(1), resultado(0),uni); -- Un

   --sig_signo <= S_NZVC(3);
   --vec_NZVC <= S_NZVC;
   -- Portmap ALU
   --Port_ALU : ALU port map (A => A, B => B, ALU_Sel => ALU_Sel, Result => resultado, NZVC => S_NZVC);
		--complemento_a_2 : process (sig_signo, resultado)
   --begin
      --if sig_signo = '1' then
         --resul_not <= not resultado;
         --resul_int1 <= to_integer(unsigned(resul_not));
         --resul_int <= resul_int1 + 1;
         --ressul_use <= std_logic_vector(to_unsigned(resul_int, 8));
      --else
         --ressul_use <= resultado;
      --end if;
   --end process;

    -- Bcd Salida
    --BCD_1 : BCD7Seg port map (IA => ressul_use(7), IB => ressul_use(6), IC => ressul_use(5), ID => ressul_use(4), F => dec); -- Dec
    --BCD_2 : BCD7Seg port map (IA => ressul_use(3), IB => ressul_use(2), IC => ressul_use(1), ID => ressul_use(0), F => uni); -- Un
end arch_test_ALU; 