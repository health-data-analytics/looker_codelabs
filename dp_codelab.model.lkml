connection: "hcls_analytics_bq_looker"

include: "/*.view"       # include all the views

datagroup: dp_codelab_default_datagroup{
# sql_trigger: SELECT MAX(id) FROM etl_log;;
max_cache_age: "1 hour"
}
persist_with: dp_codelab_default_datagroup

explore: patient{}

explore: patients_vital_office_visit{
  join: patient{
    type: left_outer
    sql_on: ${patients_vital_office_visit.patient_id} = ${patient.id};;
    relationship: many_to_one
  }
}

explore: patients_population {}

explore: patients_with_all_conditions {}
