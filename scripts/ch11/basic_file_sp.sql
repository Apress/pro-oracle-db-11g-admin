declare
   p_fs1_bytes number;
   p_fs2_bytes number;
   p_fs3_bytes number;
   p_fs4_bytes number;
   p_fs1_blocks number;
   p_fs2_blocks number;
   p_fs3_blocks number;
   p_fs4_blocks number;
   p_full_bytes number;
   p_full_blocks number;
   p_unformatted_bytes number;
   p_unformatted_blocks number;
begin
   dbms_space.space_usage(
      segment_owner      => user,
      segment_name       => 'SYS_LOB0000024082C00002$$',
      segment_type       => 'LOB',
      fs1_bytes          => p_fs1_bytes,
      fs1_blocks         => p_fs1_blocks,
      fs2_bytes          => p_fs2_bytes,
      fs2_blocks         => p_fs2_blocks,
      fs3_bytes          => p_fs3_bytes,
      fs3_blocks         => p_fs3_blocks,
      fs4_bytes          => p_fs4_bytes,
      fs4_blocks         => p_fs4_blocks,
      full_bytes         => p_full_bytes,
      full_blocks        => p_full_blocks,
      unformatted_blocks => p_unformatted_blocks,
      unformatted_bytes  => p_unformatted_bytes
   );
   dbms_output.put_line('Full bytes  = '||p_full_bytes);
   dbms_output.put_line('Full blocks = '||p_full_blocks);
   dbms_output.put_line('UF bytes    = '||p_unformatted_bytes);
   dbms_output.put_line('UF blocks   = '||p_unformatted_blocks);
end;
/
