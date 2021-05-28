
with payments as
(select
   ID as payment_id
  ,ORDERID as order_id
  ,PAYMENTMETHOD as payment_method
  ,STATUS
  ,AMOUNT
  ,CREATED
  ,_BATCHED_AT
from dbt_raw.stripe.payment
)
select * from payments
