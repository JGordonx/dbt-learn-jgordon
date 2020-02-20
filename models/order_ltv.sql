
{{ config(materialized='table') }}


with stg_orders as(
select * from {{ ref('stg_orders') }}),

with orders as(
select * from {{ ref('orders') }})

select * from orders
left join stg_orders
 on orders.order_id = stg_orders.order_id