view: test {
    sql_table_name:`mzcdsc-team-200716.project_b_team.bw_subway_passenger_list`   ;;




parameter: select {
  label: "선택1"
  type: unquoted
  allowed_value: {
    label: "yes"
    value: "yes"
  }
  allowed_value: {
    label: "no"
    value: "no"
  }
}
parameter: table_name {
  label: "테이블 선택"
  type: unquoted
  allowed_value: {
    label: "2010년도"
    value: "bw_subway_passenger_list"
  }
  allowed_value: {
    label: "2012년도"
    value: "bw_subway_passenger_list_2"
  }
  default_value: "bw_subway_passenger_list"
}


  dimension: transaction_weekend{
    group_label: "시점"
    label: "거래 주차"
    type: string
    sql:   ${dt_year} ||"-W"||EXTRACT(WEEK FROM dt);;
  }


  dimension: transaction_weekend_2{
    group_label: "시점"
    hidden: yes
    label: "거래 주차_안보임"
    type: string
    sql:   ${dt_year} ||"-W"||EXTRACT(WEEK FROM dt);;

  }


parameter: date_type  {
  label: "기간 선택"
  type: string
  allowed_value: {
    label: "일"
    value: "day"
  }
  allowed_value: {
    label: "주"
    value: "week"
  }
  allowed_value: {
    label: "월"
    value: "month"
  }
}

  dimension: date_select_dimensiopn{
    type: string
    label: "test2 {% parameter date_type %}"
    sql: case
          when {% parameter date_type %} = 'day'
           THEN cast(${dt_date} as string)
          when {% parameter date_type %} = 'week'
           THEN cast(${dt_week} as string)
          ELSE cast(${dt_month} as string)
          END
          ;;
  }

  dimension: date_select_sql{
    type: string
    label: "test {% parameter date_type %}"
    sql: DATE_TRUNC(dt,{% parameter date_type %}) ;;
  }

dimension_group:  dt{
  type: time
  timeframes: [
    raw,
    date,
    week,
    week_of_year
    ,day_of_week_index
    ,month
    ,quarter
    ,year
  ]
  datatype: date
  sql: ${TABLE}.dt ;;
}



dimension: subway_line_no_cd {
# required_access_grants: ["{% parameter date_type %}"]
  hidden: yes
  type: string
}
dimension: station_no_cd  {
  hidden: yes
  type: string
}
measure: get_cnt {
  type: sum
}

}
