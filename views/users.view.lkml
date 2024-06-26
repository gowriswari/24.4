# The name of this view in Looker is "Users"
view: users {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.users ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;  }

  measure: average_age {
    type: average
    sql: ${age} ;;  }

  dimension: GMF{
    type: number
    sql: ${TABLE}.age;;
    html: {% if  age==10 %}
          <div style="font-size: 20px;">{{ rendered_value }} K‰</div>
          {% elsif value  <= age %}
          <div style="font-size: 20px;"><span style="color: #5CBA63;">{{ rendered_value }}</span> K‰</div>
          {% elsif value >  age %}
          <div style="font-size: 20px;"><span style="color: #CB4B32;">{{ rendered_value }}</span> K‰</div>
          {% else %}
          <div style="font-size: 20px;">{{ rendered_value }} K‰</div>
          {% endif %};;
    link: {
      label: "GMF 3 MIS"
      url: "/dashboards/mauromtr::subtotals_lookml_dashboard"
    }
  }
  dimension: vor{
    type: number
    sql: ${TABLE}.age;;
    html:   {% if age==15 %}
          <div style="font-size: 20px;" href="/dashboards/mauromtr::subtotals_lookml_dashboard">{{ value }} Vehicles</p>
          {% elsif value > age%}
          <div style="font-size: 20px;" href="/dashboards/mauromtr::subtotals_lookml_dashboard"><span style="color: #CB4B32;">{{ value }} </span>Vehicles</div>
          {% elsif value  <= age %}
          <div style="font-size: 20px;" href="/dashboards/mauromtr::subtotals_lookml_dashboard"><span style="color: #5CBA63;">{{ value }} </span>Vehicles</div>
          {% endif %};;
          # link: {
          #   label: "Parts VOR Details"
          #   url: "/dashboards/qdc::cockpit360__parts_vor"
          # }
    }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
    link: {

      label: "GMF 3MIS Details"

      url: "/dashboards/souvik2314::ecommerce_sales_dashboard"

    }
  }
  dimension: :country1 {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
     html:<a style="font-size: 20px;" href="/dashboards/souvik2314::ecommerce_sales_dashboard">{{ value }}</a>;;
    link: {

      label: "GMF 3MIS Details"

      url: "/dashboards/souvik2314::ecommerce_sales_dashboard"

    }
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  first_name,
  last_name,
  events.count,
  orders.count,
  saralooker.count,
  sindhu.count,
  user_data.count
  ]
  }

}
