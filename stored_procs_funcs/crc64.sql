DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `crc64`(data LONGTEXT CHARSET utf8) RETURNS bigint(20) unsigned
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Return a 64 bit CRC of given input, as unsigned big integer'
BEGIN
  RETURN CONV(LEFT(MD5(data), 16), 16, 10);
END//
DELIMITER ;
