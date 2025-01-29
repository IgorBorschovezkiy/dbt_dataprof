select
    customer_id,
    company_name,
    contact_name,
    contact_title,
    address,
    city,
    region,
    postal_code,
    country,
    {{ continent('country')}} as continent,
    phone,
    fax
from {{ ref('sales__customers')}}