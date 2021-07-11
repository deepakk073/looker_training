connection: "bq_conn"

# include all the views
include: "/views/**/*.view"

explore: dept {}

explore: emp {}

explore: order_detail {}

explore: salgrade {}

explore: salgrade1 {}
explore: department_wise_salary {}

explore: transactions {
  join: transactions__orders {
    view_label: "Transactions: Orders"
    sql: LEFT JOIN UNNEST(${transactions.orders}) as transactions__orders ;;
    relationship: one_to_many
  }
}
