select
    orderid as order_id,
    productid as product_id,
    unitprice as unit_price,
    qty as quantity,
    discount
from {{ source('sales','OrderDetails')}}
