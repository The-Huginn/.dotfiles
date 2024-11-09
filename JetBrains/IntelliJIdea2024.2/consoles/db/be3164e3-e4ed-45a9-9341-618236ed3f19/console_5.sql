INSERT INTO dynamic_template_field(id, dynamic_template_id, name, backoffice_name)
VALUES ('608630c2-6555-49c9-b14d-315590b55ac7', '8fa301fd-fb12-41d0-9707-b4b1d80ed6c8', 'duvod_pole_2', 'Zmena zakaznika (prepis)'),
       ('aeb82267-501c-4a36-82dc-de3b50144d6a', '8fa301fd-fb12-41d0-9707-b4b1d80ed6c8', 'duvod_pole_3', 'Zmena dodavatela - povodny dodavatel'),
       ('75de7bc0-2a56-4d8f-a611-153936d0900f', '8fa301fd-fb12-41d0-9707-b4b1d80ed6c8', 'zalohy_pole_3', 'Prime inkaso'),
       ('310120cc-2524-429e-8e7b-4769fe5c6632', '8fa301fd-fb12-41d0-9707-b4b1d80ed6c8', 'zalohy_pole_3', 'Prikaz k uhrade'),
       ('87af9acd-70b0-49b5-b8a6-738e9f7f68d8', '8fa301fd-fb12-41d0-9707-b4b1d80ed6c8', 'adresa_dorucovani_pole_2', 'je jina')
ON CONFLICT DO NOTHING ;

update dynamic_template_field
set backoffice_name = 'Novy odber'
where id = 'd1e78890-5cc2-4c29-87a4-7ec1e3c0c076';

update dynamic_template_field
set backoffice_name = 'SIPO'
where id = '09cd78f5-965d-426d-99a5-d7804382fdbf';

update dynamic_template_field
set backoffice_name = 'Je stejna jako adresa zakaznika'
where id = '87227bd9-0a31-47bf-8c09-2296159c11b9';

update dynamic_template_api_field
set type = 'RADIO', fill_instructions = '{
  "templateFieldIds": {
    "NEW_CLIENT": "d1e78890-5cc2-4c29-87a4-7ec1e3c0c076",
    "CLIENT_CHANGE": "608630c2-6555-49c9-b14d-315590b55ac7",
    "PROVIDER_CHANGE": "aeb82267-501c-4a36-82dc-de3b50144d6a"
  }
}'
where id = '1d022661-0380-489e-8b53-5c732a4b38d0';

update dynamic_template_api_field
set type = 'RADIO', fill_instructions = '{
  "templateFieldIds": {
    "PAYMENT_ORDER": "09cd78f5-965d-426d-99a5-d7804382fdbf",
    "DIRECT_DEBIT": "75de7bc0-2a56-4d8f-a611-153936d0900f",
    "SIPO": "310120cc-2524-429e-8e7b-4769fe5c6632"
  }
}'
where id = '7f9d92b0-5d0f-4c51-a980-dd3bb2e2e661';

update dynamic_template_api_field
set type = 'RADIO', fill_instructions = '{
  "templateFieldIds": {
    "false": "87227bd9-0a31-47bf-8c09-2296159c11b9",
    "true": "87af9acd-70b0-49b5-b8a6-738e9f7f68d8"
  }
}'
where id = 'f922167c-37ea-4bc5-b07a-285e6bc31a40';

update dynamic_template_signature
set y_coordinate = 77, height = 30
where id = 'fd36da75-205c-4d0b-8736-500d1717bc1e';