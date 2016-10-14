UNDEFINE user
SET SERVEROUT ON SIZE 1000000 VERIFY OFF
SPO part_count_&&user..txt
DECLARE
  counter  NUMBER;
  sql_stmt VARCHAR2(1000);
  CURSOR c1 IS
  SELECT table_name, partition_name
  FROM dba_tab_partitions
  WHERE table_owner = UPPER('&&user');
BEGIN
  FOR r1 IN c1 LOOP
    sql_stmt := 'SELECT COUNT(*) FROM &&user..' || r1.table_name
      ||' PARTITION ( '||r1.partition_name ||' )';
    EXECUTE IMMEDIATE sql_stmt INTO counter;
    DBMS_OUTPUT.PUT_LINE(RPAD(r1.table_name
      ||'('||r1.partition_name||')',30) ||' '||TO_CHAR(counter));
  END LOOP;
END;
/
SPO OFF
