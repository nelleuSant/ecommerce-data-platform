{{ config(materialized='table') }}

select
    cli.id_clientes as cliente_key,
    cli.cliente,
    cli.endereco,
    con.concessionaria,
    con.cidade,
    con.estado,
    con.sigla
from {{ ref('stg_clientes') }} cli
join {{ ref('dim_concessionarias') }} con
    on cli.id_concessionarias = con.concessionaria_key