view: dept {
  sql_table_name: `Sqltraining.dept`
    ;;

  dimension: deptno {
    type: number
    sql: ${TABLE}.deptno ;;
  }

  dimension: dname {
    type: string
    sql: ${TABLE}.dname ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  measure: count {
    type: count
    drill_fields: [dname]
  }
}
