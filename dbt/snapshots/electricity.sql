-- snapshots/eia_rto_hourly_snapshot.sql

{% snapshot eia_rto_hourly_snapshot %}

{{
  config(
    target_schema='snapshot',
    unique_key='ROW_KEY',
    strategy='check',
    check_cols=['VALUE'],
    invalidate_hard_deletes=True
  )
}}

select
  REGION,
  DATE,
  SERIES,
  VALUE,
  REGION || SERIES || to_char(DATE, 'YYYY-MM-DD HH24:MI:SS') as ROW_KEY,
  current_timestamp() as updated_at
from {{ ref('stg_eia') }}

{% endsnapshot %}

