-- Camada Trusted (Silver)
-- Objetivo: Unir pedidos e itens para calcular o valor total por item de pedido

with pedidos as (
    select * from {{ ref('stg_olist_orders') }}
),

itens as (
    select * from {{ ref('stg_olist_order_items') }}
),

vendas_consolidadas as (
    select
        p.id_pedido,
        p.id_cliente,
        p.status_pedido,
        p.data_compra,
        i.id_produto,
        i.preco_item,
        i.valor_frete,
        -- Regra de Negócio: Soma do preço e frete para compor o custo total do item
        (i.preco_item + i.valor_frete) as valor_total_item
    from pedidos p
    left join itens i on p.id_pedido = i.id_pedido
)

select * from vendas_consolidadas