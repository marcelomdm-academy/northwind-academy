with
    fonte_ordem_detalhes as (
        select
            cast(ORDERID as int) as fk_pedido
            , cast(PRODUCTID as int) as fk_produto
            , cast(DISCOUNT as numeric(18,2)) as desconto_perc
            , cast(UNITPRICE as numeric(18,2)) as preco_unitario
            , cast(QUANTITY as int) as quantidade
        from {{ source('erp', 'orderdetail') }}
    )

    select *
    from fonte_ordem_detalhes