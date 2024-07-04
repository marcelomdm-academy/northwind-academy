with
    fonte_ordens as (
        select 
            cast(id as int) as pk_pedido
            , cast(employeeid as varchar) as fk_funcionario
            , cast(customerid as string) as fk_cliente            
            , cast(SHIPVIA as int) as fk_transportadora
            , cast(orderdate as date) as data_do_pedido
            , cast(FREIGHT as numeric) as frete
            , cast(SHIPNAME as string) as nm_destinatario
            , cast(SHIPCITY as string) as cidade_destinatario
            , cast(SHIPREGION as string) as regiao_destinatario
            , cast(SHIPCOUNTRY as string) as pais_destinatario
            , cast(shippeddate as date) as data_do_envio
            , cast(requireddate as date) as data_requerida_entrega
        from {{ source('erp', '_order_')}}
    )

        select *
        from fonte_ordens