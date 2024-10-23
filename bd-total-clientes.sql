DELIMITER $$

CREATE FUNCTION ContarClientesPorDia(data DATE) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalClientes INT;
    
    SELECT COUNT(*) INTO totalClientes
    FROM clientes
    WHERE data_cadastro = data;
    
    RETURN totalClientes;
END $$

DELIMITER ;