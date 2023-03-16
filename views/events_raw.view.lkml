# The name of this view in Looker is "Events Raw"
view: events_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `agolis-allen-first.game_cus.events`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Event Name" in Explore.

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_timestamp {
    type: number
    sql: ${TABLE}.event_timestamp ;;
  }


  dimension: game_version {
    type: string
    sql: ${TABLE}.game_version ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: step {
    type: string
    sql: ${TABLE}.step ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: utc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.utc_date ;;
    order_by_field: utc_date
  }

  dimension:str_month  {
    type: string
    sql: safe_cast(${utc_month} as string) ;;
  }

  measure: count {
    type: count
    html: The user has triggered <font style="font-weight: bold; color: #f54242; white-space: pre-line; line-height: 1;"> {{rendered_value}}</font> events, detail as:;;
    drill_fields: [event_name]
  }

  measure: count_simple {
    type: count
    drill_fields: [event_name]
  }
}
