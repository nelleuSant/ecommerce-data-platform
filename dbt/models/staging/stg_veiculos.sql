{{ config(materialized='table') }}

select *
from postgres_scan(
  'host={{ env_var("SOURCE_DB_HOST") }}
   port={{ env_var("SOURCE_DB_PORT") }}
   dbname={{ env_var("SOURCE_DB_NAME") }}
   user={{ env_var("SOURCE_DB_USER") }}
   password={{ env_var("SOURCE_DB_PASSWORD") }}',
  'public',
  'veiculos'
)