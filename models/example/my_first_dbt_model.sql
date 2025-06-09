
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



/*
{{ config(materialized='table') }} : Il s'agit d'une configuration dbt qui indique à dbt de matérialiser les résultats de la requête sous forme de table dans la base de données. D'autres options de matérialisation incluent view, incremental, et ephemeral.


La clause with est utilisée pour définir une Expression de Table Commune (CTE). Dans ce cas, elle définit une CTE nommée source_data.


source_data : Il s'agit de la CTE qui contient les données définies par la requête suivante :

*/


{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
