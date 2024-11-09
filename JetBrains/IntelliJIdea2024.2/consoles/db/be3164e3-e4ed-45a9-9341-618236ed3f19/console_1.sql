INSERT INTO file_info (id, path, owner_id, original_file_name, content_type, size_in_bytes)
VALUES ('b7461310-6d9f-4f93-90a9-c078e05abab2', '/static-files/templates', 'rixo-file-storage', 'INDI_2_roky_PLYN_dom†cnost_2024_10.pdf', 'application/pdf', 100033)
ON CONFLICT DO NOTHING;

INSERT INTO static_file (id, file_info_id, name, result_file_name, backoffice_name, service_branches)
VALUES ('1a17320f-66f9-484b-b37f-7899fdc7fb9f', 'b7461310-6d9f-4f93-90a9-c078e05abab2', 'gas-cez-contract-indi-2-year-10-24.pdf', 'smlouva', 'Plyn ČEZ: Smlouva (2 roky - 10/2024)', '[
  "GAS"
]')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template (id, static_file_id, fonts)
VALUES ('45a2ffdb-063a-4962-aae2-5736e89c2f25', '1a17320f-66f9-484b-b37f-7899fdc7fb9f', '{
  "ArialMT": "Roboto-Regular",
  "Helv": "Roboto-Regular",
  "ZaDb": "Roboto-Regular"
}')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_field(id, dynamic_template_id, name, backoffice_name)
VALUES ('bd15364d-c296-4da7-9b4d-b9d6cbcb66ba', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '72', 'Kampaň'),
       ('a44e7d41-a965-4414-af7c-5489a501a21d', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '82', 'IDZ'),
       ('b5ed633a-83c4-48a1-a60f-eb8825a23765', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '83', 'Certifikace OZ'),
       ('7b380fb4-47bb-4068-9fd6-0203968bd707', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '71', 'Jméno a přijmení'),
       ('2939c35d-8f78-4f5f-b593-3fdec40117a3', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '98', 'Datum narození: den'),
       ('37dbbd35-2273-45ee-83fb-6d46ac779f7c', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '99', 'Datum narození: měsíc'),
       ('0576005b-5e57-4969-b195-47b0680317dc', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '94', 'Datum narození: rok'),
       ('a5e289c4-38fa-420c-b24f-06ebe7baee0d', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '102', 'Adresa trvalého pobytu: ulice'),
       ('dffd790c-d3bc-46a4-a065-bee52e923e4f', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '104', 'Adresa trvalého pobytu: číslo popisné a orientační'),
       ('88572f03-9f3d-4153-b2ed-9e78086ff598', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '105', 'Adresa trvalého pobytu: PSČ'),
       ('8f8b3cf2-8e9a-4cb4-b6bc-07f58e6a1206', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '103', 'Adresa trvalého pobytu: obec'),
       ('15c0f61c-6635-4cca-822b-5058de0ba0d1', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '106', 'Adresa trvalého pobytu: místní část'),
       ('0af6bba1-cf13-4b2f-a399-efc49f39f0e3', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1011', 'Korespondenční adresa: ulice'),
       ('87a69b22-d062-40a8-9cb4-25e0171736e7', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1010', 'Korespondenční adresa: číslo popisné a orientační'),
       ('20f766c7-d763-4aa2-8265-234ba004a0a7', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '109', 'Korespondenční adresa: PSČ'),
       ('d3e8b632-1622-4a49-8295-248fd26dc00e', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '108', 'Korespondenční adresa: obec'),
       ('2cb7da69-56e4-449b-92be-0e3219ca8f79', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '107', 'Korespondenční adresa: místní část'),
       ('552821d4-2535-45b7-9694-533ec39e04ee', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1012', 'E-mailová adresa'),
       ('bb6aa188-9d55-46ba-aeab-89fb40fe7b82', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1013', 'Telefonní číslo'),
       ('2a0d5c2d-8764-4adb-a93d-b198d0d483fd', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1014', 'E-mailová adresa pro vyúčtování'),
       ('877b3f90-00ee-4353-af5a-cf4e57b50b07', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1019', 'Adresa odběrného místa: ulice'),
       ('27ff2db6-2535-4167-8be5-3f16cd0a36f6', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1018', 'Adresa odběrného místa: číslo popisné a orientační'),
       ('a996ac46-bda5-47a8-9662-691f63c83900', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1017', 'Adresa odběrného místa: PSČ'),
       ('fc7084fa-c9c9-4f04-b0fe-256acdd68143', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1016', 'Adresa odběrného místa: obec'),
       ('efa6b926-991a-4a9c-8592-48d60e515e97', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1015', 'Adresa odběrného místa: místní část'),
       ('61cdc622-1a51-4eb3-9737-176a4a1e55fb', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1029', 'Číslo patra'),
       ('e558a7c9-5717-4bb3-a05f-42a404401dc7', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1030', 'Číslo bytu'),
       ('e77e4de7-e7cf-4d39-9a66-329f12ddce9a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '124', 'Vztah žadatele k nemovitosti: majitel'),
       ('ca6b0587-4458-4200-9c44-1019e3441185', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '125', 'Vztah žadatele k nemovitosti: nájemník'),
       ('20136813-f624-4ef1-9147-9ba046556e76', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1020', 'Předpokládaná spotřeba (kWh/rok)'),
       ('99ea3300-610a-4190-b0fb-b8c48baac39b', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1023', 'Výrobní číslo plynoměru'),
       ('a22b0d96-7f74-40ba-b9f0-666eefb2a45d', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1024', 'EIC'),
       ('421e0585-3769-4274-ab31-f2a8a9727f7c', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '126', 'Charakter odběru: vaření'),
       ('849e3a9e-b40f-4884-aeac-83d29825dec5', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '127', 'Charakter odběru: TUV'),
       ('625e4697-5818-4e96-8e99-d4dc891dc09e', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '128', 'Charakter odběru: vytápění'),
       ('9947fbd9-e9c4-453d-9146-ddb5f5aea159', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '129', 'Časovost odběru: pracovní den'),
       ('e4a4c285-1628-4254-8b78-aa678b2470d6', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '130', 'Časovost odběru: so, ne'),
       ('c4330d98-11d3-4005-9d70-33c5d3d2e240', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1027', 'Stávající dodavatel'),
       ('101ac0f2-176c-4eb3-8664-9c88157f2a10', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '141', 'Smlouva se stávajícím dodavatelem: doba neurčitá'),
       ('d3cb6d11-34f7-432d-a2dc-cc7bd71eead3', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '140', 'Smlouva se stávajícím dodavatelem: doba určitá'),
       ('6b68175f-3b1c-4288-9f58-015e77b38c4b', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '132', 'Smlouva se stávajícím dodavatelem: doba určitá do - den'),
       ('d5683fdb-9caa-4bf6-9d25-85c43b6cddfd', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '139', 'Smlouva se stávajícím dodavatelem: doba určitá do - měsíc'),
       ('1a6fb302-37af-4bc9-960b-abc5ce199eb9', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '131', 'Smlouva se stávajícím dodavatelem: doba určitá do - rok'),
       ('fb968674-649c-4837-9214-5389d6c2c3ce', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1025', 'Výpovědní lhůta se stávajícím dodavatelem: měsíce'),
       ('0e43d995-71ab-455a-9d32-a13d74079d7a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1026', 'Výpovědní lhůta se stávajícím dodavatelem: dny'),
       ('07bc5b36-de55-41f2-b4a2-dce25d16ce82', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '134', 'Zákazník stávající smlouv vypověděl sám datem: den'),
       ('fbff8190-2a36-4ef4-90ed-3dacd8c37507', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '135', 'Zákazník stávající smlouv vypověděl sám datem: měsíc'),
       ('38e9d0f8-f143-4740-9433-7673b66389a2', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '133', 'Zákazník stávající smlouv vypověděl sám datem: rok'),
       ('0bf14a0e-ef54-46f8-b11f-691415fcf901', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '137', 'Předpokládaný termín zahájení dodávek: den'),
       ('f690f0c3-f77a-4e63-a3c7-50bed68e6ade', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '138', 'Předpokládaný termín zahájení dodávek: měsíc'),
       ('c421fae1-2753-4c5c-9e0b-499b04b36a51', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '136', 'Předpokládaný termín zahájení dodávek: rok'),
       ('12ade011-7f2b-4489-9187-ea0ae59bcff3', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '157', 'Způsob plateb: inkaso'),
       ('36ef352f-df7d-479d-a8a3-a6c3e9ef4923', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '146', 'Způsob plateb: SIPO'),
       ('3965ed47-d4e1-4427-a19f-ded06d3ffb20', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '142', 'Způsob plateb: vlastní podnět'),
       ('9a2dc956-1cb4-4f9c-baff-5a7dfb84b4f1', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '149', 'Plné číslo účtu'),
       ('09795e62-c122-4f75-80b8-1d28d0cf4093', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '156', 'Spojovací číslo'),
       ('9ae46b95-6e38-4232-b25b-82bfc2c86d3a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '143', 'Způsob vrácení přeplatků: převod do dalšího období'),
       ('2df81aac-26a2-4bed-98a5-5da8ce68cefb', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '144', 'Způsob vrácení přeplatků: převod na účet'),
       ('2811f940-a4ac-4cb7-ace1-c2b1a6283e18', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '1028', 'Výše záloh'),
       ('1d2f696b-2e61-4790-8553-4264593d860d', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '145', 'Zákaznický účet'),
       ('af203ea7-f021-4925-844f-11d4bba52bd2', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '181', 'Termín požadovaných dokumentů: den'),
       ('9a9ba2c0-edbf-4e28-a7d4-e7e5f48b4ca7', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '182', 'Termín požadovaných dokumentů: měsíc'),
       ('fc180c1a-38a0-463e-9982-1fa6156134ac', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '180', 'Termín požadovaných dokumentů: rok'),
       ('34f5bdb9-5f70-4fb0-a9d7-93122db83b64', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '150', 'Datum podpisu za obchodníka'),
       ('df564895-bd5d-4e63-9c20-3ae9c5ee758a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '151', 'Datum a místo podpisu za zákazníka'),
       ('e1d19dca-82e4-4b44-9e99-4d0a6760e0dd', '45a2ffdb-063a-4962-aae2-5736e89c2f25', '148', 'Jméno a přijmení u podpisu')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_api_field (id, dynamic_template_id, name, type, content_category, fill_instructions)
VALUES ('45be18e8-d02b-451b-98ad-9a516f78c194', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'cezCampaign', 'TEXT', 'STANDARD', '{
  "templateFieldId": "bd15364d-c296-4da7-9b4d-b9d6cbcb66ba"
}'),
       ('e1f4e697-40e4-44ca-b075-74f3f24ca272', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'cezIdz', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a44e7d41-a965-4414-af7c-5489a501a21d"
       }'),
       ('c9314911-8ca8-4bb0-bef0-10f2271593d8', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'cezOzCertification', 'TEXT', 'STANDARD', '{
         "templateFieldId": "b5ed633a-83c4-48a1-a60f-eb8825a23765"
       }'),
       ('9de6a9ad-ae08-4c23-bba8-fb2f1d6ffff3', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'fullName', 'CLONED_TEXT', 'STANDARD', '{
         "clones": [
           {
             "templateFieldId": "7b380fb4-47bb-4068-9fd6-0203968bd707"
           },
           {
             "templateFieldId": "e1d19dca-82e4-4b44-9e99-4d0a6760e0dd"
           }
         ]
       }'),
       ('097154ed-97ac-4c06-9564-5294513aef5d', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'birthDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "2939c35d-8f78-4f5f-b593-3fdec40117a3",
         "monthTemplateFieldId": "37dbbd35-2273-45ee-83fb-6d46ac779f7c",
         "yearTemplateFieldId": "0576005b-5e57-4969-b195-47b0680317dc"
       }'),
       ('0fe28e03-0774-40da-9585-b90f325ee5a0', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'permanentAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a5e289c4-38fa-420c-b24f-06ebe7baee0d"
       }'),
       ('77ee4765-1901-46c4-9334-24f3a82964e8', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'permanentAddressFullNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "dffd790c-d3bc-46a4-a065-bee52e923e4f"
       }'),
       ('64fd0400-4c4f-4aa7-adb2-fa7ba8befba7', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'permanentAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "88572f03-9f3d-4153-b2ed-9e78086ff598"
       }'),
       ('8c45d110-3d96-4f28-9d95-c5e944b8b857', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'permanentAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "8f8b3cf2-8e9a-4cb4-b6bc-07f58e6a1206"
       }'),
       ('2619707a-b3fa-4d38-b608-40784bc3220a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'permanentAddressFullCityPart', 'TEXT', 'STANDARD', '{
         "templateFieldId": "15c0f61c-6635-4cca-822b-5058de0ba0d1"
       }'),
       ('829a1a88-eab9-4a8c-a17b-338f7637f0ad', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'deliveryAddressDifferent', 'DATA_HOLDER', 'STANDARD', '{}'),
       ('55f90701-3b13-4072-95ec-b17017c98732', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'deliveryAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "0af6bba1-cf13-4b2f-a399-efc49f39f0e3",
         "skipIfValueOf": [
           {
             "apiFieldId": "829a1a88-eab9-4a8c-a17b-338f7637f0ad",
             "is": false
           }
         ]
       }'),
       ('0932f24f-f8a5-44b7-af74-802eb793aecd', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'deliveryAddressFullNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "87a69b22-d062-40a8-9cb4-25e0171736e7",
         "skipIfValueOf": [
           {
             "apiFieldId": "829a1a88-eab9-4a8c-a17b-338f7637f0ad",
             "is": false
           }
         ]
       }'),
       ('ea7846e5-6564-4ce4-9fef-abad5fd8d0f0', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'deliveryAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "20f766c7-d763-4aa2-8265-234ba004a0a7",
         "skipIfValueOf": [
           {
             "apiFieldId": "829a1a88-eab9-4a8c-a17b-338f7637f0ad",
             "is": false
           }
         ]
       }'),
       ('bc4f0107-2ca6-444b-8517-ee58bfb53732', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'deliveryAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "d3e8b632-1622-4a49-8295-248fd26dc00e",
         "skipIfValueOf": [
           {
             "apiFieldId": "829a1a88-eab9-4a8c-a17b-338f7637f0ad",
             "is": false
           }
         ]
       }'),
       ('c4bfc3f9-0ce8-4ac3-9422-68acba5b578c', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'deliveryAddressFullCityPart', 'TEXT', 'STANDARD', '{
         "templateFieldId": "2cb7da69-56e4-449b-92be-0e3219ca8f79",
         "skipIfValueOf": [
           {
             "apiFieldId": "829a1a88-eab9-4a8c-a17b-338f7637f0ad",
             "is": false
           }
         ]
       }'),
       ('4d6b4924-0418-4912-8ac4-1acd71b959d4', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'emailAddress', 'TEXT', 'STANDARD', '{
         "templateFieldId": "552821d4-2535-45b7-9694-533ec39e04ee"
       }'),
       ('0d52ff0d-9921-4a6b-8d53-1d264493d6e8', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'phoneNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "bb6aa188-9d55-46ba-aeab-89fb40fe7b82"
       }'),
       ('5257f5ed-5b57-4434-97cd-63175edc6911', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'consumptionPointAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "877b3f90-00ee-4353-af5a-cf4e57b50b07"
       }'),
       ('5a338f91-9fba-4848-b88f-7faa054b83a6', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'consumptionPointAddressFullNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "27ff2db6-2535-4167-8be5-3f16cd0a36f6"
       }'),
       ('6527a619-a637-4bf8-a965-c781a6c0769d', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'consumptionPointAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a996ac46-bda5-47a8-9662-691f63c83900"
       }'),
       ('a0b8a8e4-11fd-4abc-9ca8-83dcc9e654b4', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'consumptionPointAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "fc7084fa-c9c9-4f04-b0fe-256acdd68143"
       }'),
       ('2233a0dd-8454-478f-b087-7ec077c1a075', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'consumptionPointAddressFullCityPart', 'TEXT', 'STANDARD', '{
         "templateFieldId": "efa6b926-991a-4a9c-8592-48d60e515e97"
       }'),
       ('68fe8fb0-8da6-47eb-8ec4-1aa7455142f9', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'floorNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "61cdc622-1a51-4eb3-9737-176a4a1e55fb"
       }'),
       ('684cd248-57de-45c6-a66a-a77c04a7eab6', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'apartmentNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "e558a7c9-5717-4bb3-a05f-42a404401dc7"
       }'),
       ('da34543b-6a3a-4b4a-aaa4-f93164c8b23a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'customerRelationToConsumptionPoint', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "OWNER": "e77e4de7-e7cf-4d39-9a66-329f12ddce9a",
           "TENANT": "ca6b0587-4458-4200-9c44-1019e3441185"
         }
       }'),
       ('d324dd19-38a7-420e-b7c8-90794485faa4', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'yearlyConsumptionKwh', 'TEXT', 'STANDARD', '{
         "templateFieldId": "20136813-f624-4ef1-9147-9ba046556e76"
       }'),
       ('a9148ca8-e656-41a7-aca7-23b388c4dcbc', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'gasMeterSerialNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "99ea3300-610a-4190-b0fb-b8c48baac39b"
       }'),
       ('ed21b526-e4f6-48c3-afbb-5a9077710fd5', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'eic', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a22b0d96-7f74-40ba-b9f0-666eefb2a45d"
       }'),
       ('0d220c5d-fabe-406e-a4ec-bdb44b1f7871', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'arrangedGasUsage', 'MULTI_RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "COOKING": "421e0585-3769-4274-ab31-f2a8a9727f7c",
           "WATER_BOILER": "849e3a9e-b40f-4884-aeac-83d29825dec5",
           "HEATING": "625e4697-5818-4e96-8e99-d4dc891dc09e"
         }
       }'),
       ('0bcc44f5-6b6c-4e06-b9bc-54e2810d95e5', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'consumptionSchedule', 'MULTI_RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "WORKING_DAYS": "9947fbd9-e9c4-453d-9146-ddb5f5aea159",
           "WEEKENDS": "e4a4c285-1628-4254-8b78-aa678b2470d6"
         }
       }'),
       ('d47bef3f-059f-4fea-97bf-8df75bd8bb1e', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'currentProvider', 'TEXT', 'STANDARD', '{
         "templateFieldId": "c4330d98-11d3-4005-9d70-33c5d3d2e240"
       }'),
       ('a241c4f5-814a-4c06-8c9c-cdff25506590', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'currentProviderContractIndefinite', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "true": "101ac0f2-176c-4eb3-8664-9c88157f2a10",
           "false": "d3cb6d11-34f7-432d-a2dc-cc7bd71eead3"
         }
       }'),
       ('caf8032c-f0f5-4513-b374-350cc70b42ad', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'currentProviderDefiniteContractEndDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "6b68175f-3b1c-4288-9f58-015e77b38c4b",
         "monthTemplateFieldId": "d5683fdb-9caa-4bf6-9d25-85c43b6cddfd",
         "yearTemplateFieldId": "1a6fb302-37af-4bc9-960b-abc5ce199eb9"
       }'),
       ('16674a97-6d96-456c-9851-f3fb82faa57f', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'currentProviderContractIndefiniteEndPeriodUnit', 'DATA_HOLDER', 'STANDARD', '{}'),
       ('128e3a91-3e2d-46d6-997f-91a9b1bf029a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'currentProviderContractIndefiniteEndPeriodLength', 'CLONED_TEXT', 'STANDARD', '{
         "clones": [
           {
             "templateFieldId": "fb968674-649c-4837-9214-5389d6c2c3ce",
             "skipIfValueOf": [
               {
                 "apiFieldId": "16674a97-6d96-456c-9851-f3fb82faa57f",
                 "isOtherThan": "MONTHS"
               }
             ]
           },
           {
             "templateFieldId": "0e43d995-71ab-455a-9d32-a13d74079d7a",
             "skipIfValueOf": [
               {
                 "apiFieldId": "16674a97-6d96-456c-9851-f3fb82faa57f",
                 "isOtherThan": "DAYS"
               }
             ]
           }
         ]
       }'),
       ('64191997-c706-4f7a-b81d-23e7f9fadd69', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'customerTerminationDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "07bc5b36-de55-41f2-b4a2-dce25d16ce82",
         "monthTemplateFieldId": "fbff8190-2a36-4ef4-90ed-3dacd8c37507",
         "yearTemplateFieldId": "38e9d0f8-f143-4740-9433-7673b66389a2"
       }'),
       ('6ded425a-fea0-4ca8-bf45-73acd8d340b2', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'deliveryStartDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "0bf14a0e-ef54-46f8-b11f-691415fcf901",
         "monthTemplateFieldId": "f690f0c3-f77a-4e63-a3c7-50bed68e6ade",
         "yearTemplateFieldId": "c421fae1-2753-4c5c-9e0b-499b04b36a51"
       }'),
       ('a332d128-2ab5-44c3-b790-7b6ea1b2b69d', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'depositPaymentType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "DIRECT_DEBIT": "12ade011-7f2b-4489-9187-ea0ae59bcff3",
           "SIPO": "36ef352f-df7d-479d-a8a3-a6c3e9ef4923",
           "PAYMENT_ORDER": "3965ed47-d4e1-4427-a19f-ded06d3ffb20"
         }
       }'),
       ('91f8c619-48f1-491c-be2d-99f69ca4b1db', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'fullBankAccount', 'TEXT', 'STANDARD', '{
         "templateFieldId": "9a2dc956-1cb4-4f9c-baff-5a7dfb84b4f1"
       }'),
       ('1a828251-a693-4c10-bf6f-c36652ebd2ff', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'sipoNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "09795e62-c122-4f75-80b8-1d28d0cf4093"
       }'),
       ('429d76bf-9d95-42ac-b4e3-f390c8fc4d89', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'depositRefundType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "DEPOSIT_TRANSFER": "9ae46b95-6e38-4232-b25b-82bfc2c86d3a",
           "BANK_TRANSFER": "2df81aac-26a2-4bed-98a5-5da8ce68cefb"
         }
       }'),
       ('908edda6-2b1e-4f74-b008-c13a3377c6f0', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'depositAmount', 'MONEY', 'STANDARD', '{
         "templateFieldId": "2811f940-a4ac-4cb7-ace1-c2b1a6283e18",
         "includeCurrency": false
       }'),
       ('b6727531-cde5-491c-b4ee-e78b1051c9d0', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'providerClientZoneAccount', 'BOOLEAN', 'STANDARD', '{
         "templateFieldId": "1d2f696b-2e61-4790-8553-4264593d860d"
       }'),
       ('7e18611a-10fb-4413-bf68-cd6946b0cf4a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'documentsDeliveryDueDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "af203ea7-f021-4925-844f-11d4bba52bd2",
         "monthTemplateFieldId": "9a9ba2c0-edbf-4e28-a7d4-e7e5f48b4ca7",
         "yearTemplateFieldId": "fc180c1a-38a0-463e-9982-1fa6156134ac"
       }'),
       ('ddf6ef47-72ef-423b-8e66-b59f6c3f613a', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'providerSignatureDate', 'TEXT', 'SIGNATURE_DATE', '{
         "templateFieldId": "34f5bdb9-5f70-4fb0-a9d7-93122db83b64"
       }'),
       ('a2f52eb9-0e3b-4976-94c2-a503c9673928', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 'customerSignatureDateAndPlace', 'TEXT', 'SIGNATURE_DATE_AND_PLACE', '{
         "templateFieldId": "df564895-bd5d-4e63-9c20-3ae9c5ee758a"
       }')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_signature(id, dynamic_template_id, page, x_coordinate, y_coordinate, width, height)
VALUES ('099c2aaa-3a25-4bf4-8681-13f72e9f6c4e', '45a2ffdb-063a-4962-aae2-5736e89c2f25', 1, 410, 150, 300, 55)
ON CONFLICT DO NOTHING;