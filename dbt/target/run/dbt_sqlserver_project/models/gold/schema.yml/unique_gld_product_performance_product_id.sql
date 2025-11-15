




  USE [AdventureWorks2014];
  EXEC('create view

    [dbt_test__audit.testview_3aed90855907dd0d72e758ca2a11c667]
   as



select
    product_id as unique_field,
    count(*) as n_records

from "AdventureWorks2014"."gold"."gld_product_performance"
where product_id is not null
group by product_id
having count(*) > 1


;')
  select
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select  * from

    [dbt_test__audit.testview_3aed90855907dd0d72e758ca2a11c667]

  ) dbt_internal_test;

  USE [AdventureWorks2014];
  EXEC('drop view

    [dbt_test__audit.testview_3aed90855907dd0d72e758ca2a11c667]
  ;')
