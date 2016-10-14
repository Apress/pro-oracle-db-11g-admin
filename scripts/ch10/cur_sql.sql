select
 a.sid
,a.username
,b.sql_text
from v$session a
    ,v$sqltext_with_newlines b
where a.sql_id = b.sql_id
order by
 a.username
,a.sid
,b.piece;
