WITH datas AS(
  SELECT 
    spec_id, phone_brands, phone_name, phone_os, phone_storage, storage_type, ram,
    REGEXP_REPLACE(release_date, 'release ', '') as release_date, 
    REGEXP_REPLACE(REGEXP_REPLACE(main_cam,'"',''),',','') as main_cam,
    REGEXP_REPLACE(REGEXP_REPLACE(selfie_cam,'"',''),',','') as selfie_cam,
    price, currency
  FROM `binar-bie7.kelompok_3_stg.stg_spec_phones_on_clean`
)

SELECT
  spec_id, phone_brands, phone_name, phone_os, phone_storage, storage_type, ram, main_cam, selfie_cam, price, currency,
  split(release_date, ',')[OFFSET(0)] as release_year, split(release_date, ' ')[ORDINAL(2)] as release_month
FROM
  datas
ORDER BY spec_id