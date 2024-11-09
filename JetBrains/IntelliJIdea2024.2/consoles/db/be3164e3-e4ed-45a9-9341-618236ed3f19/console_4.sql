INSERT INTO dynamic_template_field(id, dynamic_template_id, name, backoffice_name)
VALUES ('608630c2-6555-49c9-b14d-315590b55ac7', '8fa301fd-fb12-41d0-9707-b4b1d80ed6c8', 'duvod_pole_2', 'Zmena zakaznika (prepis)'),
       ('aeb82267-501c-4a36-82dc-de3b50144d6a', '8fa301fd-fb12-41d0-9707-b4b1d80ed6c8', 'duvod_pole_3', 'Zmena dodavatela - povodny dodavatel')
ON CONFLICT DO NOTHING ;

update dynamic_template_field
set backoffice_name = 'Novy odber'
where id = 'd1e78890-5cc2-4c29-87a4-7ec1e3c0c076';

update dynamic_template_api_field
set type = 'MULTI_RADIO', fill_instructions = '{
         "templateFieldIds": {
           "NEW_CLIENT": "d1e78890-5cc2-4c29-87a4-7ec1e3c0c076",
           "CLIENT_CHANGE": "608630c2-6555-49c9-b14d-315590b55ac7",
           "PROVIDER_CHANGE": "aeb82267-501c-4a36-82dc-de3b50144d6a"
         }
       }'
where id = '1d022661-0380-489e-8b53-5c732a4b38d0';