{{ config(materialized='table') }}

select
    id_estados as estado_key,
    estado,
    sigla
from {{ ref('stg_estados') }}