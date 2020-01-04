TYPE=VIEW
query=select `kritest`.`T_values`.`indicator` AS `I`,`kritest`.`T_values`.`resource` AS `R`,`kritest`.`T_values`.`year` AS `Y`,`kritest`.`T_values`.`unit` AS `unit`,`kritest`.`T_values`.`value` AS `value` from (((`kritest`.`T_values` join `kritest`.`P_indicators`) join `kritest`.`P_resources`) join `kritest`.`P_years`) where ((`kritest`.`T_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`T_values`.`resource` = `P_resources`.`R`) and (`kritest`.`T_values`.`year` = `P_years`.`Y`)) union all select `kritest`.`O_values`.`indicator` AS `I`,`kritest`.`O_values`.`resource` AS `R`,`kritest`.`O_values`.`year` AS `Y`,`kritest`.`O_values`.`unit` AS `unit`,`kritest`.`O_values`.`value` AS `value` from (((`kritest`.`O_values` join `kritest`.`P_indicators`) join `kritest`.`P_resources`) join `kritest`.`P_years`) where ((`kritest`.`O_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`O_values`.`resource` = `P_resources`.`R`) and (`kritest`.`O_values`.`year` = `P_years`.`Y`))
md5=3171b1dbba81fe17ca5be5105f6f95e6
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-01-04 11:22:52
create-version=1
source=select `T_values`.`indicator` AS `I`,`T_values`.`resource` AS `R`,`T_values`.`year` AS `Y`,`T_values`.`unit` AS `unit`,`T_values`.`value` AS `value` from (((`T_values` join `P_indicators`) join `P_resources`) join `P_years`) where ((`T_values`.`indicator` = `P_indicators`.`I`) and (`T_values`.`resource` = `P_resources`.`R`) and (`T_values`.`year` = `P_years`.`Y`)) union all select `O_values`.`indicator` AS `I`,`O_values`.`resource` AS `R`,`O_values`.`year` AS `Y`,`O_values`.`unit` AS `unit`,`O_values`.`value` AS `value` from (((`O_values` join `P_indicators`) join `P_resources`) join `P_years`) where ((`O_values`.`indicator` = `P_indicators`.`I`) and (`O_values`.`resource` = `P_resources`.`R`) and (`O_values`.`year` = `P_years`.`Y`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `kritest`.`T_values`.`indicator` AS `I`,`kritest`.`T_values`.`resource` AS `R`,`kritest`.`T_values`.`year` AS `Y`,`kritest`.`T_values`.`unit` AS `unit`,`kritest`.`T_values`.`value` AS `value` from (((`kritest`.`T_values` join `kritest`.`P_indicators`) join `kritest`.`P_resources`) join `kritest`.`P_years`) where ((`kritest`.`T_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`T_values`.`resource` = `P_resources`.`R`) and (`kritest`.`T_values`.`year` = `P_years`.`Y`)) union all select `kritest`.`O_values`.`indicator` AS `I`,`kritest`.`O_values`.`resource` AS `R`,`kritest`.`O_values`.`year` AS `Y`,`kritest`.`O_values`.`unit` AS `unit`,`kritest`.`O_values`.`value` AS `value` from (((`kritest`.`O_values` join `kritest`.`P_indicators`) join `kritest`.`P_resources`) join `kritest`.`P_years`) where ((`kritest`.`O_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`O_values`.`resource` = `P_resources`.`R`) and (`kritest`.`O_values`.`year` = `P_years`.`Y`))
