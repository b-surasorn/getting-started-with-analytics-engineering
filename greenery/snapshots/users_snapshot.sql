{% snapshot users_snapshot %}

select * from {{ source('greenery','users') }}

{{
    config(
      target_database='greenery',
      target_schema='snapshots',
      unique_key='user_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

{% endsnapshot %}