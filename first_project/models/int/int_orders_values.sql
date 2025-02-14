{{ config(materialized='incremental',
            unique_key='order_id',
            on_schema_change='fail',
            incremental_strategy='delete+insert')
}}
select
    details.order_id,
    sum(details.quantity+details.unit_price - details.discount) as order_value
from {{ ref('sales__order_details')}} as details
    {% if is_incremental() %}
where details.order_id >=(select max(order_id) from {{ this }})
    {% endif %}
group by
    details.order_id
