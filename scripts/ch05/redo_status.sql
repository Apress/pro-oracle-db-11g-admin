select a.group#,a.member,b.status,b.archived,bytes/1024/1024 mbytes
from v$logfile a, v$log b
where a.group





