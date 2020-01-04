TYPE=VIEW
query=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_calculated`.`calc_unit` AS `calc_unit`,(`M_values`.`value` * pow(10,`M_calculated`.`e`)) AS `calc_value` from (`kritest`.`M_values` join `kritest`.`M_calculated`) where ((`M_values`.`I` = `M_calculated`.`I`) and (`M_values`.`R` = `M_calculated`.`R`) and (`M_values`.`Y` = `M_calculated`.`Y`) and (`M_values`.`unit` = `M_calculated`.`base_unit`))
md5=54fa13e2dad24bd8332e0985f4f604e9
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-01-04 11:22:52
create-version=1
source=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_calculated`.`calc_unit` AS `calc_unit`,(`M_values`.`value` * pow(10,`M_calculated`.`e`)) AS `calc_value` from (`M_values` join `M_calculated`) where ((`M_values`.`I` = `M_calculated`.`I`) and (`M_values`.`R` = `M_calculated`.`R`) and (`M_values`.`Y` = `M_calculated`.`Y`) and (`M_values`.`unit` = `M_calculated`.`base_unit`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_calculated`.`calc_unit` AS `calc_unit`,(`M_values`.`value` * pow(10,`M_calculated`.`e`)) AS `calc_value` from (`kritest`.`M_values` join `kritest`.`M_calculated`) where ((`M_values`.`I` = `M_calculated`.`I`) and (`M_values`.`R` = `M_calculated`.`R`) and (`M_values`.`Y` = `M_calculated`.`Y`) and (`M_values`.`unit` = `M_calculated`.`base_unit`))
