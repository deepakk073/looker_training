view: salgrade1 {
  sql_table_name: `Sqltraining.salgrade1`
    ;;

  dimension: grade {
    type: number
    sql: ${TABLE}.grade ;;
  }

  dimension: hisal {
    type: number
    sql: ${TABLE}.hisal ;;
  }

  dimension: losal {
    type: number
    sql: ${TABLE}.losal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
