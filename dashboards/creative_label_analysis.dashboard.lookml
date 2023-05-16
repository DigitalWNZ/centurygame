- dashboard: creative_label_analysis
  title: creative_label_analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: wVD03dDCE02lrydqXWQDqc
  elements:
  - title: Label Performance among Creative with these labels
    name: Label Performance among Creative with these labels
    model: aftership_user_demo
    explore: creative_label_analysis
    type: looker_column
    fields: [creative_label_analysis.label, creative_label_analysis.max_cnt, creative_label_analysis.max_max_roas,
      creative_label_analysis.max_avg_roas, creative_label_analysis.max_min_roas]
    sorts: [creative_label_analysis.max_cnt desc 0]
    limit: 20
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
    y_axes: [{label: '', orientation: left, series: [{axisId: creative_label_analysis.max_cnt,
            id: creative_label_analysis.max_cnt, name: Max Cnt}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: creative_label_analysis.max_max_roas,
            id: creative_label_analysis.max_max_roas, name: Max Max Roas}, {axisId: creative_label_analysis.max_avg_roas,
            id: creative_label_analysis.max_avg_roas, name: Max Avg Roas}, {axisId: creative_label_analysis.max_min_roas,
            id: creative_label_analysis.max_min_roas, name: Max Min Roas}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
  - title: CNT Comparison between creatives with/without certain labels
    name: CNT Comparison between creatives with/without certain labels
    model: aftership_user_demo
    explore: creative_label_analysis
    type: looker_column
    fields: [creative_label_analysis.label, creative_label_analysis.max_cnt, creative_label_analysis.max_cnt_neg,
      creative_label_analysis.max_cnt_delta]
    sorts: [creative_label_analysis.max_cnt desc]
    limit: 20
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      creative_label_analysis.max_cnt_delta: line
    series_point_styles:
      creative_label_analysis.max_cnt_delta: triangle
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 12
    height: 8
  - title: AVG ROAS Comparison between creatives with/without certain labels
    name: AVG ROAS Comparison between creatives with/without certain labels
    model: aftership_user_demo
    explore: creative_label_analysis
    type: looker_column
    fields: [creative_label_analysis.label, creative_label_analysis.max_avg_roas,
      creative_label_analysis.max_avg_roas_neg, creative_label_analysis.max_avg_roas_delta]
    sorts: [creative_label_analysis.max_avg_roas desc 0]
    limit: 20
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      creative_label_analysis.max_avg_roas_delta: line
    series_point_styles:
      creative_label_analysis.max_avg_roas_delta: triangle
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 20
    col: 0
    width: 12
    height: 7
  - title: Max ROAS Comparison between creatives with/without certain labels
    name: Max ROAS Comparison between creatives with/without certain labels
    model: aftership_user_demo
    explore: creative_label_analysis
    type: looker_column
    fields: [creative_label_analysis.label, creative_label_analysis.max_max_roas,
      creative_label_analysis.max_max_roas_neg, creative_label_analysis.max_max_roas_delta]
    sorts: [creative_label_analysis.max_max_roas desc 0]
    limit: 20
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      creative_label_analysis.max_max_roas_delta: line
    series_point_styles:
      creative_label_analysis.max_max_roas_delta: triangle
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 12
    col: 12
    width: 12
    height: 8
  - title: MIN ROAS Comparison between creatives with/without certain labels
    name: MIN ROAS Comparison between creatives with/without certain labels
    model: aftership_user_demo
    explore: creative_label_analysis
    type: looker_column
    fields: [creative_label_analysis.label, creative_label_analysis.max_min_roas,
      creative_label_analysis.max_min_roas_neg, creative_label_analysis.max_min_roas_delta]
    sorts: [creative_label_analysis.max_min_roas desc 0]
    limit: 20
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      creative_label_analysis.max_min_roas_delta: line
    series_point_styles:
      creative_label_analysis.max_min_roas_delta: triangle
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 20
    col: 12
    width: 12
    height: 7
