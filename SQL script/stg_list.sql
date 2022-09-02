with slice as(
  SELECT
    json_value(raw_phones, '$.slug') as phone_id,
    json_value(raw_phones, '$.phone_name') as phone_name,
    json_value(raw_phones, '$.image') as phone_image
  FROM
    `binar-bie7.kelompok_3_stg.stg_list_lenovo`
)

select
  SUBSTR(phone_id, STRPOS(phone_id, '-')+1) AS phone_id,
  phone_name,
  slice.phone_image
from
  slice