TYPE=VIEW
query=select `kritest`.`T_convertation`.`title` AS `title`,`kritest`.`T_convertation`.`source_unit` AS `source_unit`,`kritest`.`T_convertation`.`result_unit` AS `result_unit`,`kritest`.`T_convertation`.`k` AS `k` from `kritest`.`T_convertation` join `kritest`.`M_values` where ((`kritest`.`T_convertation`.`source_unit` = `M_values`.`unit`) and (`kritest`.`T_convertation`.`result_unit` <> `M_values`.`unit`))
md5=776d2e8d982cb813d516fc571cfbc324
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-01-03 18:06:12
create-version=1
source=SELECT T_convertation.* FROM T_convertation, M_values WHERE source_unit=unit AND result_unit<>unit
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `kritest`.`T_convertation`.`title` AS `title`,`kritest`.`T_convertation`.`source_unit` AS `source_unit`,`kritest`.`T_convertation`.`result_unit` AS `result_unit`,`kritest`.`T_convertation`.`k` AS `k` from `kritest`.`T_convertation` join `kritest`.`M_values` where ((`kritest`.`T_convertation`.`source_unit` = `M_values`.`unit`) and (`kritest`.`T_convertation`.`result_unit` <> `M_values`.`unit`))
