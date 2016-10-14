create table d_sources(
d_source_id number not null,
source_type varchar2(32),
create_dtt date default sysdate not null,
update_dtt timestamp(5)
);





