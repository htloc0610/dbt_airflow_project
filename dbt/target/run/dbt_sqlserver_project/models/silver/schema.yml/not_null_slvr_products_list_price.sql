
  
  

  
  USE [AdventureWorks2014];
  EXEC('create view 

    [dbt_test__audit.testview_3fd13a380dd37cdcfda65eea2d644377]
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

    [dbt_test__audit.testview_3fd13a380dd37cdcfda65eea2d644377]
  
  ) dbt_internal_test;

  USE [AdventureWorks2014];
  EXEC('drop view 

    [dbt_test__audit.testview_3fd13a380dd37cdcfda65eea2d644377]
  ;')