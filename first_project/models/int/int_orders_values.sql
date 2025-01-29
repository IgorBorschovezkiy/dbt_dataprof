select
    details.order_id,
    sum(details.quantity+details.unit_price - details.discount) as order_value
from {{ ref('sales__order_details')}} as details
group by
    details.order_id