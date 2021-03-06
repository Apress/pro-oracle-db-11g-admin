UNDEFINE seq_name
UNDEFINE reset_to
PROMPT "sequence name" ACCEPT '&&seq_name'
PROMPT "reset to value" ACCEPT &&reset_to
COL seq_id NEW_VALUE hold_seq_id
COL min_id NEW_VALUE hold_min_id
--
SELECT &&reset_to - &&seq_name..nextval - 1 seq_id
FROM dual;
--
SELECT &&hold_seq_id - 1 min_id FROM dual;
--
ALTER SEQUENCE &&seq_name INCREMENT BY &hold_seq_id MINVALUE &hold_min_id;
--
SELECT &&seq_name..nextval FROM dual;
--
ALTER SEQUENCE &&seq_name INCREMENT BY 1;
