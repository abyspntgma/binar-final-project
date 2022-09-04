# ETL Kelompok 3 - Binar BIE-7

## INTRO

Repository ini merupakan project akhir binar dengan tugas membuat database dengan data dari API, dimana project berisi tentang informasi sebuah brand handphone hingga spesifikasi detail dari masing - masing handphone.

## Detail ETL

- Source : https://github.com/azharimm/phone-specs-api
- Database load: BigQuery Dataset ID `binar-bie7.kelompok_3`
- Detail API :
    - List Brand : https://api-mobilespecs.azharimm.site/v2/brands
    - List Phone : https://api-mobilespecs.azharimm.site/v2/brands/{brand-slug}
                   (Brand slug merupakan API untuk menuju halaman masing - masing brands dengan list tipe HP)
    - Phonse Spec : https://api-mobilespecs.azharimm.site/v2/brands/{brand-slug}/{phone-slug}
                   (Phone slug merupakan spesifikasi dari tipe HP)

## TRD

Berikut merupakan dokumen TRD dari project ini : https://bit.ly/3QidWCR
