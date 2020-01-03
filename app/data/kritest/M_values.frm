TYPE=VIEW
query=select `kritest`.`T_values`.`indicator` AS `indicator`,`kritest`.`T_values`.`resource` AS `resource`,`kritest`.`T_values`.`year` AS `year`,`kritest`.`T_values`.`unit` AS `unit`,`kritest`.`T_values`.`value` AS `value` from `kritest`.`T_values` join `kritest`.`P_indicators` join `kritest`.`P_resources` join `kritest`.`P_years` where ((`kritest`.`T_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`T_values`.`resource` = `P_resources`.`R`) and (`kritest`.`T_values`.`year` = `P_years`.`Y`))
md5=2e59cc7aa120a93d68702e064bdb336e
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-01-03 17:41:46
create-version=1
source=SELECT T_values.* FROM T_values, P_indicators, P_resources, P_years WHERE indicator=I AND resource=R AND year=Y
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `kritest`.`T_values`.`indicator` AS `indicator`,`kritest`.`T_values`.`resource` AS `resource`,`kritest`.`T_values`.`year` AS `year`,`kritest`.`T_values`.`unit` AS `unit`,`kritest`.`T_values`.`value` AS `value` from `kritest`.`T_values` join `kritest`.`P_indicators` join `kritest`.`P_resources` join `kritest`.`P_years` where ((`kritest`.`T_values`.`indicator` = `P_indicators`.`I`) and (`kritest`.`T_values`.`resource` = `P_resources`.`R`) and (`kritest`.`T_values`.`year` = `P_years`.`Y`))
