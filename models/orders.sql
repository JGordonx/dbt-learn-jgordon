
{{ config(materialized='table') }}

with source_data as (

select * from raw.stripe.payment

)

select *
from source_data


