
    {{
    config(
        enabled=True,
        database=('bigdb2' if target.type in ('snowflake', 'bigquery') else target.get('database')),
        schema='bigschema2',
        materialized='table'
    )
    }}
    
    select 1 as fun, 'blue' as hue, true as is_cool, '2022-01-01' as date_day
    
union all
select * from {{ ref('node_0') }}
union all
select * from {{ ref('node_3') }}
union all
select * from {{ ref('node_6') }}
union all
select * from {{ ref('node_8') }}
union all
select * from {{ ref('node_10') }}
union all
select * from {{ ref('node_109') }}
union all
select * from {{ ref('node_161') }}