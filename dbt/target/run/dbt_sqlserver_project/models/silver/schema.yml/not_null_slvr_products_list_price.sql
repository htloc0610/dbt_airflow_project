




  USE [AdventureWorks2014];
  EXEC('create view

    [dbt_test__audit.testview_7f0bfd061afc673d7b9a7b6e185b59ed]
   as





select list_price
from "AdventureWorks2014"."silver"."slvr_products"
where list_price is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from

    [dbt_test__audit.testview_7f0bfd061afc673d7b9a7b6e185b59ed]

  ) dbt_internal_test;

  USE [AdventureWorks2014];
  EXEC('drop view

    [dbt_test__audit.testview_7f0bfd061afc673d7b9a7b6e185b59ed]
  ;')
