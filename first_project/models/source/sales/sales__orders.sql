select
    orderid as order_id,
    custid as customer_id,
    orderdate as order_date,
    upper(shipcountry) as ship_country
from {{ source('sales','Orders') }}