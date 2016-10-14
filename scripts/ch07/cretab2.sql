create table operating_systems(
    operating_system_id    number(19, 0)    not null,
    version                varchar2(50),
    os_name                varchar2(256),
    release                varchar2(50),
    vendor                 varchar2(50),
    create_dtt             date             default sysdate not null,
    update_dtt             date,
    constraint operating_systems_pk primary key (operating_system_id)
    using index tablespace inv_mgmt_index
)
tablespace inv_mgmt_data
;
--
create unique index operating_system_uk1 on operating_systems
 (os_name, version, release, vendor)
tablespace inv_mgmt_index
;
--
create table computer_systems(
computer_system_id  number(38, 0) not null,
agent_uuid          varchar2(256),
operating_system_id number(19, 0) not null,
hardware_model      varchar2(50),
create_dtt          date default sysdate not null,
update_dtt          date,
constraint computer_systems_pk primary key (computer_system_id)
using index tablespace inv_mgmt_index
) tablespace inv_mgmt_data;
--
comment on column computer_systems.computer_system_id is
'Surrogate key generated via an Oracle sequence.';
--
create unique index computer_system_uk1 on computer_systems(agent_uuid)
tablespace inv_mgmt_index;
--
alter table computer_systems add constraint computer_systems_fk1
foreign key (operating_system_id)
references operating_systems(operating_system_id);





