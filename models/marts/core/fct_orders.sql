with orders as
(
select cst.customer_id ,ord.order_id ,pmt.amount ,ord."status"

from {{ ref('stg_customers') }} cst
inner join {{ ref('stg_orders') }} ord on ord.customer_id = cst.customer_id
inner join {{ ref('stg_payments') }} pmt on pmt.order_id = ord.order_id

)
select * from orders
