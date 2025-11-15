
  
  

  
  USE [AdventureWorks2014];
  EXEC('create view 

    [dbt_test__audit.testview_9ce450ec8c82d8fb5f8288cfe74de6b5]
   as 
    
    



select customer_id
from "AdventureWorks2014"."gold"."gld_customer_metrics"
where customer_id is null


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from 

    [dbt_test__audit.testview_9ce450ec8c82d8fb5f8288cfe74de6b5]
  
  ) dbt_internal_test;

  USE [AdventureWorks2014];
  EXEC('drop view 

    [dbt_test__audit.testview_9ce450ec8c82d8fb5f8288cfe74de6b5]
  ;')