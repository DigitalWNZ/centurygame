- dashboard: aftership_user_demo
  title: aftership_user_demo
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TDZHYgpMO2lG4XEkXday2z
  elements:
  - title: New/Retention Users by Platform
    name: New/Retention Users by Platform
    model: aftership_user_demo
    explore: user_daily
    type: looker_column
    fields: [user_daily.d1_retained_users, user_daily.number_of_new_users_V2, users.first_platform,
      user_daily.d1_retention_rate]
    sorts: [user_daily.d1_retained_users desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: user_daily.d1_retained_users,
            id: user_daily.d1_retained_users, name: D1 Retained Users}, {axisId: user_daily.number_of_new_users_V2,
            id: user_daily.number_of_new_users_V2, name: Number of New Users V2}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: user_daily.d1_retention_rate, id: user_daily.d1_retention_rate,
            name: D1 Retention Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      user_daily.d1_retention_rate: line
    series_point_styles:
      user_daily.d1_retention_rate: triangle
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    listen:
      Utc Date: user_daily.utc_date
      First Platform: users.first_platform
      First Game Version: users.first_game_version
    row: 2
    col: 0
    width: 12
    height: 7
  - title: DAU
    name: DAU
    model: aftership_user_demo
    explore: user_daily
    type: looker_area
    fields: [user_daily.utc_date, user_daily.number_of_new_users_V2]
    fill_fields: [user_daily.utc_date]
    sorts: [user_daily.utc_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    series_types: {}
    defaults_version: 1
    listen:
      Utc Date: user_daily.utc_date
      First Platform: users.first_platform
      First Game Version: users.first_game_version
    row: 2
    col: 12
    width: 12
    height: 7
  - title: Number of Users
    name: Number of Users
    model: aftership_user_demo
    explore: user_daily
    type: single_value
    fields: [users.number_of_users]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Users in Total
    hidden_pivots: {}
    series_types: {}
    defaults_version: 1
    listen:
      Utc Date: user_daily.utc_date
      First Platform: users.first_platform
      First Game Version: users.first_game_version
    row: 0
    col: 0
    width: 8
    height: 2
  - title: D1_retention_rate
    name: D1_retention_rate
    model: aftership_user_demo
    explore: user_daily
    type: single_value
    fields: [user_daily.retention_rate]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Retention Rate
    hidden_pivots: {}
    series_types: {}
    defaults_version: 1
    listen:
      Utc Date: user_daily.utc_date
      First Platform: users.first_platform
      First Game Version: users.first_game_version
      Metrix Selector: user_daily.metrix_selector
    row: 0
    col: 8
    width: 8
    height: 2
  - title: Day7_retention_rate
    name: Day7_retention_rate
    model: aftership_user_demo
    explore: user_daily
    type: single_value
    fields: [user_daily.retained_user]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Number of Retained Users
    hidden_pivots: {}
    series_types: {}
    defaults_version: 1
    listen:
      Utc Date: user_daily.utc_date
      First Platform: users.first_platform
      First Game Version: users.first_game_version
      Metrix Selector: user_daily.metrix_selector
    row: 0
    col: 16
    width: 8
    height: 2
  - title: User Retention Detail
    name: User Retention Detail
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
    row: 9
    col: 0
    width: 24
    height: 7
  filters:
  - name: Utc Date
    title: Utc Date
    type: field_filter
    default_value: before 2020/10/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: aftership_user_demo
    explore: user_daily
    listens_to_filters: []
    field: user_daily.utc_date
  - name: First Game Version
    title: First Game Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: aftership_user_demo
    explore: user_daily
    listens_to_filters: []
    field: users.first_game_version
  - name: First Platform
    title: First Platform
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: aftership_user_demo
    explore: user_daily
    listens_to_filters: []
    field: users.first_platform
  - name: Metrix Selector
    title: Metrix Selector
    type: field_filter
    default_value: D7
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: aftership_user_demo
    explore: user_daily
    listens_to_filters: []
    field: user_daily.metrix_selector
