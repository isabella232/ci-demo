DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `exec_single`(IN execute_query TEXT CHARSET utf8)
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
_proc_body: begin
  set @_execute_query := trim_wspace(execute_query);
  if CHAR_LENGTH(@_execute_query) = 0 then
    
    
    leave _proc_body;
  end if;

  set @common_schema_rowcount := NULL;
  
  if @common_schema_dryrun IS TRUE then
    SELECT @_execute_query AS 'exec_single: @common_schema_dryrun';
  else
    if @common_schema_verbose IS TRUE then
	  SELECT @_execute_query AS 'exec_single: @common_schema_verbose';
    end if;
  
    PREPARE st FROM @_execute_query;
    EXECUTE st;
    set @common_schema_rowcount := ROW_COUNT(), @common_schema_found_rows := FOUND_ROWS();
    DEALLOCATE PREPARE st;    
  end if;
end//
DELIMITER ;
