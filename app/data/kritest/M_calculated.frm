TYPE=VIEW
query=select `kritest`.`T_multiplication`.`title` AS `title`,`kritest`.`T_multiplication`.`base_unit` AS `base_unit`,`kritest`.`T_multiplication`.`calc_unit` AS `calc_unit`,`kritest`.`T_multiplication`.`e` AS `e` from `kritest`.`T_multiplication` join `kritest`.`M_values` where ((`kritest`.`T_multiplication`.`base_unit` = `M_values`.`unit`) and (`kritest`.`T_multiplication`.`calc_unit` <> `M_values`.`unit`))
md5=1d429d1f97b703048f256673fe30db13
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-01-03 17:46:22
create-version=1
source=SELECT T_multiplication.* FROM T_multiplication, M_values WHERE base_unit=unit AND calc_unit<>unit
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `kritest`.`T_multiplication`.`title` AS `title`,`kritest`.`T_multiplication`.`base_unit` AS `base_unit`,`kritest`.`T_multiplication`.`calc_unit` AS `calc_unit`,`kritest`.`T_multiplication`.`e` AS `e` from `kritest`.`T_multiplication` join `kritest`.`M_values` where ((`kritest`.`T_multiplication`.`base_unit` = `M_values`.`unit`) and (`kritest`.`T_multiplication`.`calc_unit` <> `M_values`.`unit`))
