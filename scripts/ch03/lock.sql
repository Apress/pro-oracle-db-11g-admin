select s1.username blkg_user, s1.machine blkg_ws, s1.sid blkg_sid,
       s2.username wait_user, s2.machine wait_ws, s2.sid wait_sid,
       lo.object_id blkd_obj_id, do.owner, do.object_name
from v$lock l1, v$session s1, v$lock l2, v$session s2,
     v$locked_object lo, dba_objects do
where s1.sid = l1.sid
  and s2.sid = l2.sid
  and l1.id1 = l2.id1
  and s1.sid = lo.session_id
  and lo.object_id = do.object_id
  and l1.block = 1
  and l2.request > 0;

