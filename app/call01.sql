  use kritest;

/* 2. $P_indicators */;
  DROP TABLE IF EXISTS `$P_indicators`;
  CREATE TABLE `$P_indicators` (
  `I` varchar(150) COLLATE utf8_bin NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

  INSERT INTO $P_indicators
    SELECT * FROM T_indicators;

/* 3. */;
  DROP TABLE IF EXISTS `P_r`;
  CREATE TABLE `P_r` (
  `R` varchar(150) COLLATE utf8_bin NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

  INSERT INTO P_r
    SELECT * FROM T_resources;

/* 4. */;
  DROP TABLE IF EXISTS `P_y`;
  CREATE TABLE `P_y` (
  `Y` varchar(150) COLLATE utf8_bin NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

  INSERT INTO P_y
    SELECT * FROM T_years;

"EOF"
#docker exec -i app_db_1 sh -c "$cmd" "$call01"


#rm "$call01"
