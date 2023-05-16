# Define the database connection to be used for this model.
connection: "agolis_allen_first_connection"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: aftership_user_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aftership_user_demo_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Aftership User Demo"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

# Any Users with region_multiple_value contains 'US' can all view the field.
access_grant: view_category {
  user_attribute: department_multiple_value
  allowed_values: ["product","finance"]
}


explore: events_raw {
  join: user_daily {
    type: left_outer
    sql_on: ${events_raw.user_id}=${user_daily.user_id} and ${events_raw.utc_date}=${user_daily.utc_date} and ${events_raw.game_version}=${user_daily.game_version};;
    relationship: many_to_one
  }
  join: users {
    type: left_outer
    sql_on: ${events_raw.user_id}=${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: user_daily {
  join: users {
    type: left_outer
    sql_on: ${user_daily.user_id}=${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: ext_table_from_sheet {
  access_filter: {
    field: ext_table_from_sheet.region
    user_attribute: region_multiple_value
  }
}

explore: windowfunnel {}


explore: creative_label_analysis {}
