---
- dashboard: mobile
  title: mobile
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cZzy4gbqG3hzXaCx0xn07C
  elements:
  - title: ttt
    name: ttt
    model: gowri_test1
    explore: users
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [users.country1, users.country, users.count, users.age]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    orientation: horizontal
    defaults_version: 0
    listen: {}
    row: 0
    col: 0
    width: 21
    height: 6
  - title: Issue#1 Test
    name: Issue#1 Test
    model: gowri_test1
    explore: users
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [users.GMF, users.state, users.count, users.age]
    sorts: [users.GMF]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
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
    defaults_version: 0
    listen: {}
    row: 6
    col: 0
    width: 21
    height: 6
