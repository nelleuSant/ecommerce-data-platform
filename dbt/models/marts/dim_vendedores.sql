{{ config(materialized='table') }}

select
    v.id_vendedores as vendedor_key,
    v.nome,
    con.concessionaria,
    con.cidade,
    con.estado,
    con.sigla
from {{ ref('stg_vendedores') }} v
join {{ ref('dim_concessionarias') }} con
    on v.id_concessionarias = con.concessionaria_key