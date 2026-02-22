{{ config(materialized='table') }}

select
    con.id_concessionarias as concessionaria_key,
    con.concessionaria,
    cid.cidade,
    cid.estado,
    cid.sigla
from {{ ref('stg_concessionarias') }} con
join {{ ref('dim_cidades') }} cid
    on con.id_cidades = cid.cidade_key