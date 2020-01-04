TYPE=VIEW
query=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_result`.`result_unit` AS `result_unit`,(`M_values`.`value` * `M_result`.`k`) AS `result_value` from (`kritest`.`M_values` join `kritest`.`M_result`) where ((`M_values`.`I` = `M_result`.`I`) and (`M_values`.`R` = `M_result`.`R`) and (`M_values`.`Y` = `M_result`.`Y`) and (`M_values`.`unit` = `M_result`.`source_unit`))
md5=2e13fb17c6f2a4bbb31b73a9814e5802
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-01-04 11:22:52
create-version=1
source=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_result`.`result_unit` AS `result_unit`,(`M_values`.`value` * `M_result`.`k`) AS `result_value` from (`M_values` join `M_result`) where ((`M_values`.`I` = `M_result`.`I`) and (`M_values`.`R` = `M_result`.`R`) and (`M_values`.`Y` = `M_result`.`Y`) and (`M_values`.`unit` = `M_result`.`source_unit`))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_result`.`result_unit` AS `result_unit`,(`M_values`.`value` * `M_result`.`k`) AS `result_value` from (`kritest`.`M_values` join `kritest`.`M_result`) where ((`M_values`.`I` = `M_result`.`I`) and (`M_values`.`R` = `M_result`.`R`) and (`M_values`.`Y` = `M_result`.`Y`) and (`M_values`.`unit` = `M_result`.`source_unit`))
