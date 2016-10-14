select
 segment_name
,tablespace_name
,bytes/1024/1024 meg_bytes
,extents
from dba_segments
where segment_name like 'MLOG$%'
order by meg_bytes;
