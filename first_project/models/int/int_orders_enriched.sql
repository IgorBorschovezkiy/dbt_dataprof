select
    orders.order_id,
    orders.customer_id,
    orders.order_date,
    orders.ship_country,
    details.order_value,
    {{ continent('orders.ship_country')}} as continent
from {{ ref('sales__orders')}} as orders
left join {{ ref('int_orders_values')}} as details
    on orders.order_id = details.order_id