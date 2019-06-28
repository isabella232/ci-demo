DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `_as_datetime`(txt TINYTEXT) RETURNS datetime
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Convert given text to DATETIME or NULL.'
BEGIN
  declare continue handler for SQLEXCEPTION return NULL;
  IF txt RLIKE '^[0-9]{10}$' THEN
    RETURN NULL;
  END IF;
  RETURN txt + INTERVAL 0 SECOND;
END//
DELIMITER ;
