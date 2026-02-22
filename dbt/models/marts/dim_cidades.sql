{{ config(materialized='table') }}

select
    c.id_cidades as cidade_key,
    c.cidade,
    e.estado,
    e.sigla
from {{ ref('stg_cidades') }} c
join {{ ref('stg_estados') }} e
    on c.id_estados = e.id_estados