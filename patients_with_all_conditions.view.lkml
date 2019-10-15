view: patients_with_all_conditions {
  sql_table_name: hn_views4looker.PatientsWithAllConditions ;;

  dimension: condition_code {
    type: string
    sql: ${TABLE}.condition_code ;;
  }

  dimension: condition_desc {
    type: string
    sql: ${TABLE}.condition_desc ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: med_count {
    type: number
    sql: ${TABLE}.med_count ;;
  }

  dimension: patient_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.patientId ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name, patient.id]
  }
}
