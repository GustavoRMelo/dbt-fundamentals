with payment as (
    select
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status as status_name,
    amount/100 as amount,
    created as created_at
from {{ source('stripe', 'payment') }}
)

select * from payment