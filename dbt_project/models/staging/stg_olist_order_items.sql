with source as (
    select * from {{ source('olist_raw', 'olist_order_items_dataset') }}
),

renamed as (
    select
        order_id as id_pedido,
        order_item_id as numero_item,
        product_id as id_produto,
        seller_id as id_vendedor,
        cast(price as decimal(10,2)) as preco_item,
        cast(freight_value as decimal(10,2)) as valor_frete
    from source
)

select * from renamed