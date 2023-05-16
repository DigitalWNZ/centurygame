view: label_importance {
  derived_table: {
    sql: select * from remote_function_test.feature_importance order by importance_weight desc
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: importance_weight {
    type: number
    sql: ${TABLE}.importance_weight ;;
  }

  dimension: importance_gain {
    type: number
    sql: ${TABLE}.importance_gain ;;
  }

  dimension: importance_cover {
    type: number
    sql: ${TABLE}.importance_cover ;;
  }

  measure: max_importance_weight {
    type: max
    sql: ${importance_weight} ;;
  }

  set: detail {
    fields: [feature, importance_weight, importance_gain, importance_cover]
  }
}
