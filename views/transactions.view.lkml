view: transactions {
  sql_table_name: `Sqltraining.transactions`
    ;;

  dimension: customer__id {
    type: number
    sql: ${TABLE}.customer.id ;;
    group_label: "Customer"
    group_item_label: "ID"
  }

  dimension: customer__location {
    type: string
    sql: ${TABLE}.customer.location ;;
    group_label: "Customer"
    group_item_label: "Location"
  }

  dimension: customer__name {
    type: string
    sql: ${TABLE}.customer.name ;;
    group_label: "Customer"
    group_item_label: "Name"
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_time ;;
  }

  dimension: orders {
    hidden: yes
    sql: ${TABLE}.orders ;;
  }

  measure: count {
    type: count
    drill_fields: [customer__name]
  }
}

view: transactions__orders {
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
}
