define tbsp_large=5G
define tbsp_med=500M
--
create tablespace reg_data
  datafile '/ora01/oradata/INVREP/reg_data01.dbf'
  size &&tbsp_large
  extent management local
  uniform size 128k
  segment space management auto;
--
create tablespace reg_index
  datafile '/ora01/oradata/INVREP/reg_index01.dbf'
  size &&tbsp_med
  extent management local
  uniform size 128k
  segment space management auto;


