view: patient {
  sql_table_name: hn_views4looker.Patient ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: address1_city {
    type: string
    sql: ${TABLE}.address1_city ;;
  }

  dimension: address1_country {
    type: string
    sql: ${TABLE}.address1_country ;;
  }

  dimension: address1_line_1 {
    type: string
    sql: ${TABLE}.address1_line_1 ;;
  }

  dimension: address1_postal_code {
    type: string
    sql: ${TABLE}.address1_postalCode ;;
  }

  dimension: address1_state {
    type: string
    sql: ${TABLE}.address1_state ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension_group: deceased_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deceased_datetime ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.ethnicity ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: given {
    type: string
    sql: ${TABLE}.given ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.maritalStatus ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.race ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      patients_vital_office_visit.count,
      condition.count,
      combined_views_h2.count,
      patients_with_encounters_in_last10yrs.count,
      patients_with_diabetes_and_hypertension.count,
      medication_request.count,
      patients_with_diabetes_only.count,
      hypertension_diabetes_patients_with_gt7_meds.count,
      patients_with_hypertension_only.count,
      observation.count,
      encounter.count,
      patients_with_all_conditions.count,
      procedure.count
    ]
  }
}
