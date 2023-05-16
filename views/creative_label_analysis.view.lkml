# The name of this view in Looker is "Creative Label Analysis"
view: creative_label_analysis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `agolis-allen-first.remote_function_test.creative_label_analysis`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Roas" in Explore.

  dimension: avg_roas {
    type: number
    sql: ${TABLE}.avg_roas ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  dimension: avg_roas_neg {
    type: number
    sql: ${TABLE}.avg_roas_neg ;;
  }

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: cnt_neg {
    type: number
    sql: ${TABLE}.cnt_neg ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: max_roas {
    type: number
    sql: ${TABLE}.max_roas ;;
  }

  dimension: max_roas_neg {
    type: number
    sql: ${TABLE}.max_roas_neg ;;
  }

  dimension: min_roas {
    type: number
    sql: ${TABLE}.min_roas ;;
  }

  dimension: min_roas_neg {
    type: number
    sql: ${TABLE}.min_roas_neg ;;
  }

  dimension: cnt_delta {
    type: number
    sql: ${cnt}-${cnt_neg} ;;
  }
  dimension: max_roas_delta {
    type: number
    sql: ${max_roas}-${max_roas_neg} ;;
  }
  dimension: avg_roas_delta {
    type: number
    sql: ${avg_roas}-${avg_roas_neg} ;;
  }
  dimension: min_roas_delta {
    type: number
    sql: ${min_roas}-${min_roas_neg} ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }


  measure: max_cnt {
    type: max
    sql: ${cnt} ;;
  }
  measure: max_max_roas {
    type: max
    sql: ${max_roas} ;;
  }
  measure: max_avg_roas {
    type: max
    sql: ${avg_roas} ;;
  }
  measure: max_min_roas {
    type: max
    sql: ${min_roas} ;;
  }

  measure: max_cnt_neg {
    type: max
    sql: ${cnt_neg} ;;
  }
  measure: max_max_roas_neg {
    type: max
    sql: ${max_roas_neg} ;;
  }
  measure: max_avg_roas_neg {
    type: max
    sql: ${avg_roas_neg} ;;
  }
  measure: max_min_roas_neg {
    type: max
    sql: ${min_roas_neg} ;;
  }


  measure: max_cnt_delta {
    type: max
    sql: ${cnt_delta} ;;
  }
  measure: max_max_roas_delta {
    type: max
    sql: ${max_roas_delta} ;;
  }
  measure: max_avg_roas_delta {
    type: max
    sql: ${avg_roas_delta} ;;
  }
  measure: max_min_roas_delta {
    type: max
    sql: ${min_roas_delta} ;;
  }
}
