- dashboard: aftership_extend_demo
  title: Aftership Extend Demo
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  extends: aftership_user_demo
  elements:
  - title: User Retention Detaily
    name: User Retention Detaily
    model: aftership_user_demo
    explore: user_daily
    type: looker_grid
    fields: [user_daily.user_id, user_daily.utc_date, users.first_date, user_daily.retention_days,
      user_daily.game_version]
    sorts: [user_daily.retention_days desc, user_daily.utc_date desc, users.first_date
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    series_types: {}
    defaults_version: 1
    listen:
      Utc Date: user_daily.utc_date
      First Platform: users.first_platform
      First Game Version: users.first_game_version
    row: 16
    col: 0
    width: 24
    height: 7
