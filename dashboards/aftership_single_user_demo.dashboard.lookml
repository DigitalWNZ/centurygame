- dashboard: aftership_single_user_demo
  title: aftership_single_user_demo
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ztBrrGjy2S0djL5Ic2Zrc2
  elements:
  - title: aftership_single_user_demo
    name: aftership_single_user_demo
    model: aftership_user_demo
    explore: events_raw
    type: single_value
    fields: [users.first_profile]
    sorts: [users.first_profile]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      User ID: users.user_id
    row: 0
    col: 0
    width: 24
    height: 2
  - title: New Tile
    name: New Tile
    model: aftership_user_demo
    explore: events_raw
    type: single_value
    fields: [events_raw.count]
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
    defaults_version: 1
    listen:
      User ID: users.user_id
    row: 2
    col: 0
    width: 11
    height: 2
  - title: Events_Detail
    name: Events_Detail
    model: aftership_user_demo
    explore: events_raw
    type: looker_grid
    fields: [events_raw.utc_date, events_raw.platform, events_raw.game_version, events_raw.event_name]
    sorts: [events_raw.utc_date desc]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      User ID: users.user_id
    row: 2
    col: 11
    width: 13
    height: 7
  - title: "# of Events by Name"
    name: "# of Events by Name"
    model: aftership_user_demo
    explore: events_raw
    type: looker_column
    fields: [events_raw.event_name, events_raw.count_simple]
    sorts: [events_raw.count_simple desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      User ID: users.user_id
    row: 4
    col: 0
    width: 11
    height: 5
  filters:
  - name: User ID
    title: User ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: aftership_user_demo
    explore: events_raw
    listens_to_filters: []
    field: users.user_id
