view: salgrade {
  sql_table_name: `Sqltraining.salgrade`
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
