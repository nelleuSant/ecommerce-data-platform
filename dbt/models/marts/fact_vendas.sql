{{ config(materialized='table') }}

select
    v.id_vendas as venda_key,
    v.id_clientes as cliente_key,
    v.id_vendedores as vendedor_key,
    v.id_veiculos as veiculo_key,
    v.id_concessionarias as concessionaria_key,
    cast(v.data_venda as date) as date_key,
    v.valor_pago
from {{ ref('stg_vendas') }} v