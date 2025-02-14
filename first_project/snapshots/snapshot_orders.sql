{% snapshot snapshot_orders %}

{{
    config(
        unique_key='orderid',
        strategy='timestamp',
        updated_at='lastupdateddate',
        target_schema='andrey_lab2',
        as_columnstore=false,
        pre_hook=[
            "IF OBJECT_ID (N'{{this}}', N'U') IS NOT NULL SET IDENTITY_INSERT {{this}} ON"
        ]
    )
}}
select
    *
from {{ source('sales','Orders') }}

{% endsnapshot %}