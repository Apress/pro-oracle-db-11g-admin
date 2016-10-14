CREATE PROFILE SECURE_APP LIMIT 
PASSWORD_LIFE_TIME 200 
PASSWORD_GRACE_TIME 10 
PASSWORD_REUSE_TIME 1 
PASSWORD_REUSE_MAX 1 
FAILED_LOGIN_ATTEMPTS 3 
PASSWORD_LOCK_TIME 1 
PASSWORD_VERIFY_FUNCTION verify_function_11G; 
--
set head off; 
spo alt_prof_dyn.sql 
select 'alter user ' || username || ' profile secure_app;' 
from dba_users where username like '%APP%'; 
spo off;




