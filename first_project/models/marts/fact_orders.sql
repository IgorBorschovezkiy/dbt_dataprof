select
    orders.order_id,
    orders.customer_id,
    orders.order_date,
    orders.ship_country,
    orders.order_value
from {{ ref('int_orders_enriched')}} as orders