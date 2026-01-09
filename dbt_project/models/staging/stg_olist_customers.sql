-- models/staging/stg_olist_customers.sql

with source as (
    -- Aqui referenciamos a source que declaramos no arquivo sources.yml
    select * from {{ source('olist_raw', 'olist_customers_dataset') }}
),

renamed as (
    select
        -- Renomeando para português e seguindo um padrão claro
        customer_id as id_cliente,
        customer_unique_id as id_unico_cliente,
        customer_zip_code_prefix as cep_cliente,
        customer_city as cidade_cliente,
        customer_state as estado_cliente
    from source
)

select * from renamed