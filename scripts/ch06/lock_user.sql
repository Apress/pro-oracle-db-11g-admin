select
  'alter user ' || username || ' password expire account lock;'
from dba_users;





