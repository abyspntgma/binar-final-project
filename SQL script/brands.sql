SELECT
  cast(json_value(raw_brands, '$.brand_id') as int64) as brand_id,
  json_value(raw_brands, '$.brand_name') as brand_name,
  cast(json_value(raw_brands, '$.device_count') as int64) as device_count
FROM
  `binar-bie7.kelompok_3_stg.stg_brands` 
order by
  brand_id asc