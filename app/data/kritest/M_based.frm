TYPE=VIEW
query=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`kritest`.`T_multiplication`.`base_unit` AS `base_unit`,`kritest`.`T_multiplication`.`calc_unit` AS `calc_unit`,`kritest`.`T_multiplication`.`e` AS `e` from (`kritest`.`T_multiplication` join `kritest`.`M_values`) where ((`kritest`.`T_multiplication`.`calc_unit` = `M_values`.`unit`) and (`kritest`.`T_multiplication`.`base_unit` <> `M_values`.`unit`))
md5=98e44068077c4a4946f9c2349ee275f7
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-01-03 21:09:36
create-version=1
source=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`T_multiplication`.`base_unit` AS `base_unit`,`T_multiplication`.`calc_unit` AS `calc_unit`,`T_multiplication`.`e` AS `e` from (`T_multiplication` join `M_values`) where ((`T_multiplication`.`calc_unit` = `M_values`.`unit`) and (`T_multiplication`.`base_unit` <> `M_values`.`unit`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`kritest`.`T_multiplication`.`base_unit` AS `base_unit`,`kritest`.`T_multiplication`.`calc_unit` AS `calc_unit`,`kritest`.`T_multiplication`.`e` AS `e` from (`kritest`.`T_multiplication` join `kritest`.`M_values`) where ((`kritest`.`T_multiplication`.`calc_unit` = `M_values`.`unit`) and (`kritest`.`T_multiplication`.`base_unit` <> `M_values`.`unit`))
