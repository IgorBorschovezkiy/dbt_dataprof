{{ config(materialized='table',as_columnstore=False) }} --Материализовать в таблицу

select  'Hello, dbt, again!' as value