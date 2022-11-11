connection: "jcort_bq"

# include all the views
include: "/views/**/*.view"

datagroup: lookermisamtr_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lookermisamtr_default_datagroup

explore: uber_pickups_ny {}
