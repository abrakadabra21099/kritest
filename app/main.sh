#!/bin/bash

#Algo variables
P_indicators='P_i'
P_resources='P_r'
P_years='P_y'
M_values='M_v'
O_values='O_v'
M_calculated='M_c'
M_based='M_b'
M_result='M_r'

#System variables
db="app_db_1"
cmd='exec mysql -uroot -pexample'
tmp2="/tmp/call02.ret"
tmp3="/tmp/call03.ret"
tmp4="/tmp/call01.ret"
tmp5="/tmp/call04.ret"
#tmp6="/tmp/call05.ret"
#tmp7="/tmp/call06.ret"
#tmp8="/tmp/call07.ret"
#Top Of Script.
cat <<EOCALL | docker exec -i app_db_1 sh -c "$cmd" | tail -n+2 > "$tmp4"
  SET NAMES utf8 COLLATE utf8_unicode_ci;
  use kritest;

  # 1. Create T_values analog for output.
  DROP TABLE IF EXISTS $O_values;
  CREATE TABLE $O_values (
    indicator varchar(150) COLLATE utf8_bin NOT NULL,
    resource varchar(150) COLLATE utf8_bin NOT NULL,
    year year(4) NOT NULL,
    unit varchar(10) COLLATE utf8_bin NOT NULL,
    value double NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

  # 2.
  DROP TABLE IF EXISTS $P_indicators;
  CREATE TABLE $P_indicators (
  I varchar(150) COLLATE utf8_bin NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

  INSERT INTO $P_indicators
    SELECT * FROM T_indicators;

  # 3.
  DROP TABLE IF EXISTS $P_resources;
  CREATE TABLE $P_resources (
  R varchar(150) COLLATE utf8_bin NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

  INSERT INTO $P_resources
    SELECT * FROM T_resources;

  # 4.
  DROP TABLE IF EXISTS $P_years;
  CREATE TABLE $P_years (
  Y varchar(150) COLLATE utf8_bin NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

  INSERT INTO $P_years
    SELECT * FROM T_years;

  SELECT * FROM $P_years;
EOCALL

cat <<EOCALL | docker exec -i app_db_1 sh -c "$cmd" | tail -n+2 > "$tmp2"
  SET NAMES utf8 COLLATE utf8_unicode_ci;
  use kritest;
  SELECT * FROM $P_indicators;
EOCALL

cat <<EOCALL | docker exec -i app_db_1 sh -c "$cmd" | tail -n+2 > "$tmp3"
  SET NAMES utf8 COLLATE utf8_unicode_ci;
  use kritest;
  SELECT * FROM $P_resources;
EOCALL

IFS=$'\n'
for I in $(cat "$tmp2"); do
  for R in $(cat "$tmp3"); do
    for Y in $(cat "$tmp4"); do
      #5.1.1
      cat <<EOCALL | docker exec -i app_db_1 sh -c "$cmd" > "$tmp5" #2>/dev/null
        SET NAMES utf8 COLLATE utf8_unicode_ci;
        use kritest;

        # 5.1.1.1
        DROP TABLE IF EXISTS $M_values;
        CREATE TABLE $M_values (
          I varchar(150) COLLATE utf8_bin NOT NULL,
          R varchar(150) COLLATE utf8_bin NOT NULL,
          Y year(4) NOT NULL,
          unit varchar(10) COLLATE utf8_bin NOT NULL,
          value double NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPRESSED;

        INSERT INTO $M_values
          SELECT *
          FROM T_values
          WHERE indicator = "$I" AND resource = "$R" AND year = "$Y"
            UNION ALL
          SELECT *
          FROM $O_values
          WHERE indicator = "$I" AND resource = "$R" AND year = "$Y";

        #debug
        SELECT 'debug: M_values:';
        SELECT * FROM $M_values;
        #####

        # 5.1.1.2
        DROP TABLE IF EXISTS $M_calculated;
        CREATE TABLE $M_calculated (
          title varchar(30) COLLATE utf8_bin NOT NULL,
          base_unit varchar(10) COLLATE utf8_bin NOT NULL,
          calc_unit varchar(10) COLLATE utf8_bin NOT NULL,
          e smallint(6) NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

        INSERT INTO $M_calculated
          SELECT T_multiplication.*
          FROM T_multiplication, $M_values
          WHERE base_unit =  unit
            AND calc_unit != unit;

        #debug
        SELECT 'debug: M_calculated:';
        SELECT * FROM $M_calculated;
        #####

        # 5.1.1.3
        DROP TABLE IF EXISTS $M_based;
        CREATE TABLE $M_based (
          title varchar(30) COLLATE utf8_bin NOT NULL,
          base_unit varchar(10) COLLATE utf8_bin NOT NULL,
          calc_unit varchar(10) COLLATE utf8_bin NOT NULL,
          e smallint(6) NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

        INSERT INTO $M_based
          SELECT T_multiplication.*
          FROM T_multiplication, $M_values
          WHERE base_unit != unit
            AND calc_unit =  unit;

        #debug
        SELECT 'debug: M_based:';
        SELECT * FROM $M_based;
        #####

        # 5.1.1.4
        DROP TABLE IF EXISTS $M_result;
        CREATE TABLE $M_result (
          title varchar(30) COLLATE utf8_bin NOT NULL,
          source_unit varchar(10) COLLATE utf8_bin NOT NULL,
          result_unit varchar(10) COLLATE utf8_bin NOT NULL,
          k double NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

        INSERT INTO $M_result
          SELECT T_convertation.*
          FROM T_convertation, $M_values
          WHERE source_unit =  unit
            AND result_unit != unit;

        #debug
        SELECT 'debug: M_result:';
        SELECT * FROM $M_result;
        #####

        # 5.1.1.5
        SELECT COUNT($M_calculated.title) + COUNT($M_based.title) + COUNT($M_result.title) FROM $M_calculated, $M_based, $M_result;
#$M_calculated, $M_based, $M_result;
#        SELECT (COUNT($M_calculated.*) + COUNT($M_based.*) + COUNT($M_result.*))
 #       FROM $M_calculated, $M_based, $M_result;
EOCALL
      echo "*** $Y ***"
      cat "$tmp5"
    done
  done
done
#indicator AS I, resource AS R, year AS Y, unit, value

#echo '---'
#cat "$tmp2"
#echo '---'
#cat "$tmp3"
#echo '---'
#cat "$tmp4"

rm "$tmp5" "$tmp4" "$tmp3" "$tmp2"
