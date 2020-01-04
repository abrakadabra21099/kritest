TYPE=VIEW
query=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`kritest`.`T_convertation`.`source_unit` AS `source_unit`,`kritest`.`T_convertation`.`result_unit` AS `result_unit`,`kritest`.`T_convertation`.`k` AS `k` from (`kritest`.`T_convertation` join `kritest`.`M_values`) where ((`kritest`.`T_convertation`.`source_unit` = `M_values`.`unit`) and (`kritest`.`T_convertation`.`result_unit` <> `M_values`.`unit`))
md5=d21b290eeb437321460c0a68c5e2ff35
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-01-04 11:22:52
create-version=1
source=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`T_convertation`.`source_unit` AS `source_unit`,`T_convertation`.`result_unit` AS `result_unit`,`T_convertation`.`k` AS `k` from (`T_convertation` join `M_values`) where ((`T_convertation`.`source_unit` = `M_values`.`unit`) and (`T_convertation`.`result_unit` <> `M_values`.`unit`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`kritest`.`T_convertation`.`source_unit` AS `source_unit`,`kritest`.`T_convertation`.`result_unit` AS `result_unit`,`kritest`.`T_convertation`.`k` AS `k` from (`kritest`.`T_convertation` join `kritest`.`M_values`) where ((`kritest`.`T_convertation`.`source_unit` = `M_values`.`unit`) and (`kritest`.`T_convertation`.`result_unit` <> `M_values`.`unit`))
