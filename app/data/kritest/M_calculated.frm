TYPE=VIEW
query=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`kritest`.`T_multiplication`.`base_unit` AS `base_unit`,`kritest`.`T_multiplication`.`calc_unit` AS `calc_unit`,`kritest`.`T_multiplication`.`e` AS `e` from (`kritest`.`T_multiplication` join `kritest`.`M_values`) where ((`kritest`.`T_multiplication`.`base_unit` = `M_values`.`unit`) and (`kritest`.`T_multiplication`.`calc_unit` <> `M_values`.`unit`))
md5=f3bcf858d5a51da2853f207df4b942bc
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-01-03 20:56:39
create-version=1
source=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`T_multiplication`.`base_unit` AS `base_unit`,`T_multiplication`.`calc_unit` AS `calc_unit`,`T_multiplication`.`e` AS `e` from (`T_multiplication` join `M_values`) where ((`T_multiplication`.`base_unit` = `M_values`.`unit`) and (`T_multiplication`.`calc_unit` <> `M_values`.`unit`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`kritest`.`T_multiplication`.`base_unit` AS `base_unit`,`kritest`.`T_multiplication`.`calc_unit` AS `calc_unit`,`kritest`.`T_multiplication`.`e` AS `e` from (`kritest`.`T_multiplication` join `kritest`.`M_values`) where ((`kritest`.`T_multiplication`.`base_unit` = `M_values`.`unit`) and (`kritest`.`T_multiplication`.`calc_unit` <> `M_values`.`unit`))
