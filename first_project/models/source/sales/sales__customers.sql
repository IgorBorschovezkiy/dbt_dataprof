select
    custid as customer_id,
    companyname as company_name,
    contactname as contact_name,
    contacttitle as contact_title,
    address,
    city,
    region,
    postalcode as postal_code,
    upper(country) as country,
    phone as phone,
    fax as fax
from {{ source('sales','Customers')}}