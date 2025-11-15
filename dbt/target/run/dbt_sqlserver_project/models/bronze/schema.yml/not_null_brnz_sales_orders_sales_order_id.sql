
  
  

  
  USE [AdventureWorks2014];
  EXEC('create view 

    [dbt_test__audit.testview_3e939ba92d66d46d38f8d80667233997]
   as 
    
    



select sales_order_id
from "AdventureWorks2014"."bronze"."brnz_sales_orders"
where sales_order_id is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_3e939ba92d66d46d38f8d80667233997]
  
  ) dbt_internal_test;

  USE [AdventureWorks2014];
  EXEC('drop view 

    [dbt_test__audit.testview_3e939ba92d66d46d38f8d80667233997]
  ;')