DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `is_datetime`(txt TINYTEXT) RETURNS tinyint(3) unsigned
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Checks whether given txt is a valid DATETIME.'
BEGIN
  RETURN (_as_datetime(txt) is not null);
END//
DELIMITER ;
