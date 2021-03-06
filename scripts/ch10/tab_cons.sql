select
  table_name
 ,(case constraint_type
    when 'P' then 'Primary Key'
    when 'R' then 'Foreign Key'
    when 'C' then 'Check'
    when 'U' then 'Unique'
    when 'O' then 'Read Only View'
    when 'V' then 'Check view'
    when 'H' then 'Hash expression'
    when 'F' then 'REF column'
    when 'S' then 'Supplemental logging'
  end) cons_type
 ,constraint_name cons_name
 ,search_condition check_cons
 ,status
from dba_constraints
where owner      like upper('&owner')
and   table_name like upper('&table_name')
order by cons_type;
