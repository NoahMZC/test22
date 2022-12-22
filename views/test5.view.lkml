include: "test3.view"
view: test5 {
  extends: [test3]
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
