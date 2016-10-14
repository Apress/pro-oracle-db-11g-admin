UNDEFINE owner
COL summer FORM 999,999.999
SET LINES 132 TRIMSPOOL ON PAGES 100
SPO space.txt
SELECT
 segment_name
,partition_name
,tablespace_name
,segment_type
,SUM(bytes)/1024/1024 summer
FROM dba_extents
WHERE owner = UPPER('&&owner')
GROUP BY segment_name,partition_name,tablespace_name,segment_type
ORDER BY segment_name,partition_name;
SPO OFF;
