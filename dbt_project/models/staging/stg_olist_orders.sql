with source as (
    select * from {{ source('olist_raw', 'olist_orders_dataset') }}
),

renamed as (
    select
        order_id as id_pedido,
        customer_id as id_cliente,
        order_status as status_pedido,
        -- Convertendo para timestamp para garantir cálculos de tempo precisos
        cast(order_purchase_timestamp as timestamp) as data_compra,
        cast(order_approved_at as timestamp) as data_aprovacao,
        cast(order_delivered_customer_date as timestamp) as data_entrega_cliente,
        cast(order_estimated_delivery_date as timestamp) as data_estimada_entrega
    from source
)

select * from renamed