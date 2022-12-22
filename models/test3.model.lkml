connection: "looker-private-demo"

include: "/views/*.view"


# explore: test {}
# explore: test2 {}

# # explore:  test3{
# #   sql_always_where: ${station_no_cd} = {% parameter test3.field_1 %};;
# #   join: test4 {
# #     type: cross
# #     sql_where: ${station_no_cd} = {% parameter test3.field_2 %} ;;
# #     relationship: many_to_many
# #   }
# # }

# explore: test6 {}
