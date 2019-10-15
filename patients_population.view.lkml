view: patients_population {
  sql_table_name: hn_views4looker.PatientsPopulation ;;

  dimension: condition_desc {
    type: string
    sql: ${TABLE}.condition_desc ;;
  }

  dimension: med_count {
    type: number
    sql: ${TABLE}.med_count ;;
  }

  dimension: num_patients {
    type: number
    sql: ${TABLE}.num_patients ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
