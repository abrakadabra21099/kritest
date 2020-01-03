TYPE=VIEW
query=select `kritest`.`T_values`.`indicator` AS `I`,`kritest`.`T_values`.`resource` AS `R`,`kritest`.`T_values`.`year` AS `Y`,`kritest`.`T_values`.`unit` AS `unit`,`kritest`.`T_values`.`value` AS `value` from (((`kritest`.`T_values` join `kritest`.`P_indicators`) join `kritest`.`P_resources`) join `kritest`.`P_years`) where ((`kritest`.`T_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`T_values`.`resource` = `P_resources`.`R`) and (`kritest`.`T_values`.`year` = `P_years`.`Y`))
md5=a4b03b80123d29b186b41f9347496bfa
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-01-03 20:30:19
create-version=1
source=select `T_values`.`indicator` AS `I`,`T_values`.`resource` AS `R`,`T_values`.`year` AS `Y`,`T_values`.`unit` AS `unit`,`T_values`.`value` AS `value` from (((`T_values` join `P_indicators`) join `P_resources`) join `P_years`) where ((`T_values`.`indicator` = `P_indicators`.`I`) and (`T_values`.`resource` = `P_resources`.`R`) and (`T_values`.`year` = `P_years`.`Y`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `kritest`.`T_values`.`indicator` AS `I`,`kritest`.`T_values`.`resource` AS `R`,`kritest`.`T_values`.`year` AS `Y`,`kritest`.`T_values`.`unit` AS `unit`,`kritest`.`T_values`.`value` AS `value` from (((`kritest`.`T_values` join `kritest`.`P_indicators`) join `kritest`.`P_resources`) join `kritest`.`P_years`) where ((`kritest`.`T_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`T_values`.`resource` = `P_resources`.`R`) and (`kritest`.`T_values`.`year` = `P_years`.`Y`))
