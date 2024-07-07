
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}
select YEAR, ENTITY_NAME,VALUE
from FROSTY_SAMPLE.CYBERSYN_FINANCIAL.FINANCIAL_ENTITY_ANNUAL_TIME_SERIES
where ENTITY_NAME ilike '%Bank of America%' and VARIABLE_NAME ilike '%Total Securities%'
order by ENTITY_NAME,YEAR desc