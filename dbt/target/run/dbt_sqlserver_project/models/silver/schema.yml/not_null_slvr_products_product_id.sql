




  USE [AdventureWorks2014];
  EXEC('create view

    [dbt_test__audit.testview_216a0d633740b4d250c501c1e0577a2d]
   as





select product_id
from "AdventureWorks2014"."silver"."slvr_products"
where product_id is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from

    [dbt_test__audit.testview_216a0d633740b4d250c501c1e0577a2d]

  ) dbt_internal_test;

  USE [AdventureWorks2014];
  EXEC('drop view

    [dbt_test__audit.testview_216a0d633740b4d250c501c1e0577a2d]
  ;')
