select
  a.constraint_name cons_name
 ,a.table_name  tab_name
 ,b.column_name cons_column
 ,nvl(c.column_name,'***No Index***') ind_column
from user_constraints  a
     join
     user_cons_columns b on a.constraint_name = b.constraint_name
     left outer join
     user_ind_columns  c on b.column_name = c.column_name
                        and b.table_name  = c.table_name
where constraint_type = 'R'
order by 2,1;
--
select
  a.constraint_name cons_name
 ,a.table_name  tab_name
 ,b.column_name cons_column
 ,nvl(c.column_name,'***No Index***') ind_column
from user_constraints  a
    ,user_cons_columns b
    ,user_ind_columns  c
where constraint_type = 'R'
and a.constraint_name = b.constraint_name
and b.column_name     = c.column_name(+)
and b.table_name      = c.table_name(+)
order by 2,1;
