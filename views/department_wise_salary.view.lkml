view: department_wise_salary {
  derived_table: {
    sql: select deptno,sum(sal) as total_salary from emp where {% condition deptno %} emp.deptno {% endcondition %} group by 1 ;;

  }
  filter: deptno {type:number}
dimension: dept {
  type: string
  sql: ${TABLE}.deptno ;;
}
  dimension: total_sal {
    type: number
    sql: ${TABLE}.total_salary ;;
  }
measure: total_salary {
  type: sum
  sql: ${TABLE}.total_salary ;;
}
}
