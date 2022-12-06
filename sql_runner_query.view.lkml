view: sql_runner_query {
  derived_table: {
    sql: SELECT
          test.subway_line_no_cd AS test_subway_line_no_cd,
          COALESCE(sum(test.get_cnt), 0) AS test_get_cnt
      FROM `mzcdsc-team-200716.project_b_team.bw_subway_passenger_list`  AS test
      GROUP BY
          1
      ORDER BY
          2 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: test_subway_line_no_cd {
    type: string
    sql: ${TABLE}.test_subway_line_no_cd ;;
  }

  dimension: test_get_cnt {
    type: number
    sql: ${TABLE}.test_get_cnt ;;
  }

  set: detail {
    fields: [test_subway_line_no_cd, test_get_cnt]
  }
}
