include: "test6.view"
view: test2 {
  extends: [test6]
  derived_table: {
    sql: select
          dt as dt, station_no_cd as station_no_cd
          from
            (SELECT
                dt, station_no_cd
              FROM
                `mzcdsc-team-200716.project_b_team.bw_subway_passenger_list`
              WHERE station_no_cd = {% condition select2 %}) ;;
  }

  filter: select2 {
    sql: ${station_no_cd} ;;
  }


 parameter: field_1 {
    label: "선택1"
    type: string
    allowed_value: {
      label: "150"
      value: "150"
    }
    allowed_value: {
      label: "250"
      value: "250"
    }
    default_value: "station_no_cd"
  }

  parameter: field_2 {
    label: "선택2"
    type: string
    allowed_value: {
      label: "150"
      value: "150"
    }
    allowed_value: {
      label: "250"
      value: "250"
    }
    default_value: "station_no_cd"
  }

  dimension: station_no_cd {
    type: number
    sql: ${TABLE}.station_no_cd ;;
  }
  dimension: dt {
    type: date
    sql:  ${TABLE}.dt ;;
  }
}
