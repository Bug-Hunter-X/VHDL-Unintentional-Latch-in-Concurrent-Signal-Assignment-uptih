```vhdl
ENTITY my_entity IS
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF my_entity IS
  SIGNAL internal_data : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
BEGIN
  PROCESS (clk) 
  BEGIN
    IF rising_edge(clk) THEN
      internal_data <= data_in;
    END IF;
    data_out <= internal_data; -- Added explicit assignment outside the conditional
  END PROCESS;
END ARCHITECTURE;
```