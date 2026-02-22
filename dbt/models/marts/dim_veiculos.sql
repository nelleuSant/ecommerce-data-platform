{{ config(materialized='table') }}

select
    id_veiculos as veiculo_key,
    nome,
    tipo,
    valor
from {{ ref('stg_veiculos') }}