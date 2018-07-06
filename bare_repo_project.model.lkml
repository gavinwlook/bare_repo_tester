connection: "postgres_local"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: bare_repo_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bare_repo_project_default_datagroup

explore: connection_reg_r3 {}

explore: ufo_data {}
