create or replace function exa_trans
return table_exa_type pipelined is
begin
for r1 in
   (select rec_exa_type(
      exa_id, machine_count, hide_flag
     ,oracle, ship_date, rack_type
    ) exa_rec
    from exadata_et) loop
  if (r1.exa_rec.oracle = 0) then
    r1.exa_rec.ship_date := r1.exa_rec.ship_date + 30;
  end if;
 pipe row (r1.exa_rec);
end loop;
return;
end;
/
