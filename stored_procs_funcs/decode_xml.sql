DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `decode_xml`(txt TEXT CHARSET utf8) RETURNS text CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Decode escaped XML'
begin
  set txt := REPLACE(txt, '&apos;', '''');
  set txt := REPLACE(txt, '&quot;', '"');
  set txt := REPLACE(txt, '&gt;', '>');
  set txt := REPLACE(txt, '&lt;', '<');
  set txt := REPLACE(txt, '&amp;', '&');
  
  return txt;
end//
DELIMITER ;
