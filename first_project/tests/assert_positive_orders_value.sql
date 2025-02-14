select
    *
from {{ ref('fact_order_details')}}
where order_value <= 0