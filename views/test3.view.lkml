view: test3 {
  sql_table_name: `mzcdsc-team-200716.project_b_team.bw_subway_passenger_list` ;;
dimension: dt {
  type: date
}
dimension: station_no_cd {
  type: string
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
}
