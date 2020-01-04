TYPE=VIEW
query=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_based`.`base_unit` AS `base_unit`,(`M_values`.`value` * pow(10,-(`M_based`.`e`))) AS `calc_value` from (`kritest`.`M_values` join `kritest`.`M_based`) where ((`M_values`.`I` = `M_based`.`I`) and (`M_values`.`R` = `M_based`.`R`) and (`M_values`.`Y` = `M_based`.`Y`) and (`M_values`.`unit` = `M_based`.`calc_unit`))
md5=50d53ea0750480e4cc692ae9c1249759
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-01-04 11:22:52
create-version=1
source=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_based`.`base_unit` AS `base_unit`,(`M_values`.`value` * pow(10,-(`M_based`.`e`))) AS `calc_value` from (`M_values` join `M_based`) where ((`M_values`.`I` = `M_based`.`I`) and (`M_values`.`R` = `M_based`.`R`) and (`M_values`.`Y` = `M_based`.`Y`) and (`M_values`.`unit` = `M_based`.`calc_unit`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_based`.`base_unit` AS `base_unit`,(`M_values`.`value` * pow(10,-(`M_based`.`e`))) AS `calc_value` from (`kritest`.`M_values` join `kritest`.`M_based`) where ((`M_values`.`I` = `M_based`.`I`) and (`M_values`.`R` = `M_based`.`R`) and (`M_values`.`Y` = `M_based`.`Y`) and (`M_values`.`unit` = `M_based`.`calc_unit`))
