DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `_as_datetime`(txt TINYTEXT) RETURNS datetime
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Convert given text to DATETIME or NULL.'
BEGIN
  declare continue handler for SQLEXCEPTION return NULL;
  
  
  
  if txt RLIKE '^[0-9]{10}$' then
    return NULL;
  end if;
  RETURN (txt + interval 0 second);
END//
DELIMITER ;
