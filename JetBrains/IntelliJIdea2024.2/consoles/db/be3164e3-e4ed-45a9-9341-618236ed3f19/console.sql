INSERT INTO file_info (id, path, owner_id, original_file_name, content_type, size_in_bytes)
VALUES ('b0f1a7d2-9e8e-4442-9e8d-443462932f10', '/static-files/templates', 'rixo-file-storage', 'gas-cez-contract-extra-08-2024.pdf', 'application/pdf', 98961)
ON CONFLICT DO NOTHING;

INSERT INTO static_file (id, file_info_id, name, result_file_name, backoffice_name, service_branches)
VALUES ('cacf9de1-9dd1-4c4b-83d1-868cfa76511d', 'b0f1a7d2-9e8e-4442-9e8d-443462932f10', 'gas-cez-contract-extra-08-2024.pdf', 'smlouva', 'Plyn ČEZ: smlouva (EXTRA 08/24)', '[
  "GAS"
]')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template (id, static_file_id, fonts)
VALUES ('0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'cacf9de1-9dd1-4c4b-83d1-868cfa76511d', '{
  "ArialMT": "Roboto-Regular",
  "Helv": "Roboto-Regular",
  "ZaDb": "Roboto-Regular"
}')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_field(id, dynamic_template_id, name, backoffice_name)
VALUES ('169fcffa-b58b-445d-8386-0988af2bc57a', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '72', 'Kampaň'),
       ('08f98ba3-5329-4230-adc7-c8cd04656c55', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '82', 'IDZ'),
       ('205601fc-3b8a-4db7-9de7-f6d58963079e', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '83', 'Certifikace OZ'),
       ('922825a2-c02f-41ee-9b4b-60c8498e7d97', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '73', 'Jméno a přijmení'),
       ('04445e5a-1421-4d9c-bafe-dc9add3f641d', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '99', 'Datum narození: den'),
       ('29da845e-6ace-4e5f-9c2d-9e24ad9c4fb0', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '100', 'Datum narození: měsíc'),
       ('3af22174-a1fa-459f-914c-85a6e6c6b103', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '95', 'Datum narození: rok'),
       ('a8d12664-a1fb-4b46-9a99-0d0cadbb3ce5', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '103', 'Adresa trvalého pobytu: ulice'),
       ('741f3aa6-5b1e-4e62-9187-78863a48ab53', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '105', 'Adresa trvalého pobytu: číslo popisné a orientační'),
       ('ad99f4a2-e5e6-40c9-83fd-50672c5b781c', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '106', 'Adresa trvalého pobytu: PSČ'),
       ('1a4b3dfe-36ec-44bd-aa7c-91cfdfad9269', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '104', 'Adresa trvalého pobytu: obec'),
       ('dbb2becf-3396-4e75-add3-117b33aa1fba', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '107', 'Adresa trvalého pobytu: místní část'),
       ('ba5797c0-70aa-4c58-8807-e5137f56f273', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1012', 'Korespondenční adresa: ulice'),
       ('45db8742-350a-45b1-8dcc-3b678e6e4fa6', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1011', 'Korespondenční adresa: číslo popisné a orientační'),
       ('bf3e464f-88f1-45c7-9a34-7bd7f8b9a6fc', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1010', 'Korespondenční adresa: PSČ'),
       ('978ed6d5-287a-486e-9860-c962ce279613', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '109', 'Korespondenční adresa: obec'),
       ('eb6bb592-3831-43df-8dd8-dcf91f4ca939', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '108', 'Korespondenční adresa: místní část'),
       ('79177ec7-64f1-4249-8c08-6555aa52bcee', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1013', 'E-mailová adresa'),
       ('c1fd94a3-f69f-485d-9f2b-d9833893c773', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1014', 'Telefonní číslo'),
       ('055b9c36-735e-4e1e-bafd-b1bd2bac6d44', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1015', 'E-mailová adresa pro vyúčtování'),
       ('ea70b9f5-8a29-461d-8b67-817ecb2b1526', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1020', 'Adresa odběrného místa: ulice'),
       ('63ecd668-513b-4080-82f8-8790fe8b30de', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1019', 'Adresa odběrného místa: číslo popisné a orientační'),
       ('1df46d15-df04-40f2-912c-fe00f0976edb', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1018', 'Adresa odběrného místa: PSČ'),
       ('d1bca160-ab56-4261-bcec-dda728d938b3', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1017', 'Adresa odběrného místa: obec'),
       ('c365da87-6f66-475a-bfe9-7ca72980a0eb', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1016', 'Adresa odběrného místa: místní část'),
       ('42da41a7-eec0-418b-9db0-2d5cec0aff9e', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1030', 'Číslo patra'),
       ('e71f4679-ca90-4515-bed8-75fe7872fd9d', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1031', 'Číslo bytu'),
       ('eb765f7f-8fb3-4b3d-92bc-6d41b8460122', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '125', 'Vztah žadatele k nemovitosti: majitel'),
       ('d107ab7c-7646-4744-9275-f74c8941e164', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '126', 'Vztah žadatele k nemovitosti: nájemník'),
       ('aef5f290-667d-4385-b841-dd62e900f353', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1021', 'Předpokládaná spotřeba (kWh/rok)'),
       ('227d0770-558a-4d3a-ac51-44ffd86f94a3', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1024', 'Výrobní číslo plynoměru'),
       ('fe62cb8b-5532-4e0f-84ac-cdf8a024bdfd', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1025', 'EIC'),
       ('8eabfa62-071b-4d63-8f1a-bcdd1d74acc0', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '127', 'Charakter odběru: vaření'),
       ('522f1ab2-7137-496c-9af6-1e4f99313245', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '128', 'Charakter odběru: TUV'),
       ('eb71a67d-d72e-43b2-b27f-57cef89a49bd', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '129', 'Charakter odběru: vytápění'),
       ('42c90fb3-aac9-4be3-bff3-37a2b8dad73d', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '130', 'Časovost odběru: pracovní den'),
       ('78d9422e-8ff5-47fb-95f1-ddc1ee8bf7ad', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '131', 'Časovost odběru: so, ne'),
       ('ddb0a7ab-1507-4105-844e-d728331ab3e1', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1029', 'Stávající dodavatel'),
       ('10c950e0-0192-4958-a3c3-e2c836291f86', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '147', 'Smlouva se stávajícím dodavatelem: doba neurčitá'),
       ('f77fe611-589e-4245-aab2-b3f34d70079f', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '141', 'Smlouva se stávajícím dodavatelem: doba určitá'),
       ('9e3cfbe4-5043-46d4-87d9-48f8c34a74ae', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '133', 'Smlouva se stávajícím dodavatelem: doba určitá do - den'),
       ('555ead9c-f946-436b-b9e1-42569eb8d399', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '140', 'Smlouva se stávajícím dodavatelem: doba určitá do - měsíc'),
       ('fc06b381-8cbb-4b21-9c50-622eac9b1e30', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '132', 'Smlouva se stávajícím dodavatelem: doba určitá do - rok'),
       ('8ab6fd55-4606-4dce-8cc2-171ee182b693', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1026', 'Výpovědní lhůta se stávajícím dodavatelem: měsíce'),
       ('15843e12-b609-48e2-96c6-fb845a10fadf', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1027', 'Výpovědní lhůta se stávajícím dodavatelem: dny'),
       ('04df6482-bc3f-430b-b0a3-910fa49c4216', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '135', 'Zákazník stávající smlouv vypověděl sám datem: den'),
       ('b506da57-a60e-4375-a53e-a9170c69a5b4', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '136', 'Zákazník stávající smlouv vypověděl sám datem: měsíc'),
       ('91873155-a3bc-4f52-8692-56bb31c1e98a', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '134', 'Zákazník stávající smlouv vypověděl sám datem: rok'),
       ('49772099-2fb8-41cf-be8e-20962f136e88', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '138', 'Předpokládaný termín zahájení dodávek: den'),
       ('43449949-7eaf-4d92-b08e-27f5da7972bd', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '139', 'Předpokládaný termín zahájení dodávek: měsíc'),
       ('e0794199-2623-48f4-b0c3-170c9affccc0', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '137', 'Předpokládaný termín zahájení dodávek: rok'),
       ('2b26c2b9-e2ff-4192-aa8c-01260ac82734', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '158', 'Způsob plateb: inkaso'),
       ('54a219f5-08e8-4198-9f1a-7a62383c578c', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '146', 'Způsob plateb: SIPO'),
       ('f0d30103-5257-40c3-bcdb-8fed06e2e4c1', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '143', 'Způsob plateb: vlastní podnět'),
       ('6b726904-e32a-47c9-96d2-fe8cab16aac1', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '153', 'Plné číslo účtu'),
       ('375abae2-3352-491f-ab97-af5047c803af', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '157', 'Spojovací číslo'),
       ('a4c51edb-5751-402b-b38b-d81943a878ce', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '144', 'Způsob vrácení přeplatků: převod do dalšího období'),
       ('98c287dd-aba0-48b7-b4ba-fc537a70c6be', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '145', 'Způsob vrácení přeplatků: převod na účet'),
       ('357edd48-b0f6-4684-95cd-f993b18cc0fd', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '1032', 'Výše záloh'),
       ('31aae1b7-fc5d-4229-a6dd-7ac559e4601f', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '146', 'Zákaznický účet'),
       ('77b6e4fc-7618-4ac8-84b3-f4eb5db0259b', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '177', 'Termín požadovaných dokumentů: den'),
       ('bc195ae9-f6e5-42b9-b632-65e2a34e9414', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '176', 'Termín požadovaných dokumentů: měsíc'),
       ('16c73195-2e3d-49d6-abb6-d8f90d67e951', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '175', 'Termín požadovaných dokumentů: rok'),
       ('cfaa06f3-f75a-48cb-bc31-b583756a8f64', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'BONUSAK', 'Výše bonusu'),
       ('16548808-3414-47df-9c6c-f6effbe66c17', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '151', 'Datum podpisu za obchodníka'),
       ('e870fdca-49cd-4c07-bc1b-806f42378e06', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '152', 'Datum a místo podpisu za zákazníka'),
       ('cddd3620-193a-409e-a990-1d74a016fb9c', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', '150', 'Jméno a přijmení u podpisu')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_api_field (id, dynamic_template_id, name, type, content_category, fill_instructions)
VALUES ('594050f1-4ce9-425e-8961-2d2e3e9c4bbe', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'cezCampaign', 'TEXT', 'STANDARD', '{
  "templateFieldId": "169fcffa-b58b-445d-8386-0988af2bc57a"
}'),
       ('ba7f3ba4-008b-4618-8ec6-ae75989f524e', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'cezIdz', 'TEXT', 'STANDARD', '{
         "templateFieldId": "08f98ba3-5329-4230-adc7-c8cd04656c55"
       }'),
       ('65001cb3-7fec-4db9-b0d6-344e9161b01d', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'cezOzCertification', 'TEXT', 'STANDARD', '{
         "templateFieldId": "205601fc-3b8a-4db7-9de7-f6d58963079e"
       }'),
       ('b85ac856-9281-4fb5-9919-3e2a206cfa06', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'fullName', 'CLONED_TEXT', 'STANDARD', '{
         "clones": [
           {
             "templateFieldId": "922825a2-c02f-41ee-9b4b-60c8498e7d97"
           },
           {
             "templateFieldId": "cddd3620-193a-409e-a990-1d74a016fb9c"
           }
         ]
       }'),
       ('bc7d8c94-fd6a-4ac0-8faf-9ee069d0046d', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'birthDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "04445e5a-1421-4d9c-bafe-dc9add3f641d",
         "monthTemplateFieldId": "29da845e-6ace-4e5f-9c2d-9e24ad9c4fb0",
         "yearTemplateFieldId": "3af22174-a1fa-459f-914c-85a6e6c6b103"
       }'),
       ('9a21a642-e913-4537-ab75-1e2e11a329cd', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'permanentAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a8d12664-a1fb-4b46-9a99-0d0cadbb3ce5"
       }'),
       ('e7acbf59-b803-46bc-aa3a-e595d9c01f44', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'permanentAddressFullNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "741f3aa6-5b1e-4e62-9187-78863a48ab53"
       }'),
       ('386d0bfc-711d-4fce-97e3-3fd0e9ca0b6f', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'permanentAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "ad99f4a2-e5e6-40c9-83fd-50672c5b781c"
       }'),
       ('763276ce-c7bb-45e7-ad90-0452184e9c01', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'permanentAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "1a4b3dfe-36ec-44bd-aa7c-91cfdfad9269"
       }'),
       ('8203ce02-f8f2-4593-b848-d6f7f9048e68', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'permanentAddressFullCityPart', 'TEXT', 'STANDARD', '{
         "templateFieldId": "dbb2becf-3396-4e75-add3-117b33aa1fba"
       }'),
       ('0fe1b132-aed4-484c-88bf-38690f4c5339', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'deliveryAddressDifferent', 'DATA_HOLDER', 'STANDARD', '{}'),
       ('6bea26e0-36cf-4f70-8635-804b269b1d83', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'deliveryAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "ba5797c0-70aa-4c58-8807-e5137f56f273",
         "skipIfValueOf": [
           {
             "apiFieldId": "0fe1b132-aed4-484c-88bf-38690f4c5339",
             "is": false
           }
         ]
       }'),
       ('2126af64-311c-44fe-838e-868dd4effe52', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'deliveryAddressFullNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "45db8742-350a-45b1-8dcc-3b678e6e4fa6",
         "skipIfValueOf": [
           {
             "apiFieldId": "0fe1b132-aed4-484c-88bf-38690f4c5339",
             "is": false
           }
         ]
       }'),
       ('5131cc8a-6d2a-4e91-8903-6e1d8a624d3d', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'deliveryAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "bf3e464f-88f1-45c7-9a34-7bd7f8b9a6fc",
         "skipIfValueOf": [
           {
             "apiFieldId": "0fe1b132-aed4-484c-88bf-38690f4c5339",
             "is": false
           }
         ]
       }'),
       ('c51fc205-ec8c-4339-bce5-b2e87d1c9093', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'deliveryAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "978ed6d5-287a-486e-9860-c962ce279613",
         "skipIfValueOf": [
           {
             "apiFieldId": "0fe1b132-aed4-484c-88bf-38690f4c5339",
             "is": false
           }
         ]
       }'),
       ('1ff194f9-105e-4236-bbff-06228706b1b2', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'deliveryAddressFullCityPart', 'TEXT', 'STANDARD', '{
         "templateFieldId": "eb6bb592-3831-43df-8dd8-dcf91f4ca939",
         "skipIfValueOf": [
           {
             "apiFieldId": "0fe1b132-aed4-484c-88bf-38690f4c5339",
             "is": false
           }
         ]
       }'),
       ('575a426a-315d-42f2-ac98-c072b8596a88', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'emailAddress', 'TEXT', 'STANDARD', '{
         "templateFieldId": "79177ec7-64f1-4249-8c08-6555aa52bcee"
       }'),
       ('78c6bc65-beda-4fc8-a63d-2c2f728c6f13', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'phoneNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "c1fd94a3-f69f-485d-9f2b-d9833893c773"
       }'),
       ('f3a557ea-5e1c-4059-abc9-01e1047d01a1', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'consumptionPointAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "ea70b9f5-8a29-461d-8b67-817ecb2b1526"
       }'),
       ('92317c1c-866f-4fd6-9582-dc65c492dd6e', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'consumptionPointAddressFullNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "63ecd668-513b-4080-82f8-8790fe8b30de"
       }'),
       ('04a67bd4-9d39-4641-986f-5da5c045069e', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'consumptionPointAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "1df46d15-df04-40f2-912c-fe00f0976edb"
       }'),
       ('8696a73f-9463-46a8-8d7e-564c5d075753', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'consumptionPointAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "d1bca160-ab56-4261-bcec-dda728d938b3"
       }'),
       ('0ac5d934-bc4f-4a8c-b1eb-6eb0281fac05', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'consumptionPointAddressFullCityPart', 'TEXT', 'STANDARD', '{
         "templateFieldId": "c365da87-6f66-475a-bfe9-7ca72980a0eb"
       }'),
       ('600d8c03-4ca4-416a-83dd-7a08915aaeab', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'floorNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "42da41a7-eec0-418b-9db0-2d5cec0aff9e"
       }'),
       ('0ef12104-7d07-490d-b822-c835a4a666a3', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'apartmentNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "e71f4679-ca90-4515-bed8-75fe7872fd9d"
       }'),
       ('c908af36-b3e0-4c81-998e-e6d0055c42cf', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'customerRelationToConsumptionPoint', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "OWNER": "eb765f7f-8fb3-4b3d-92bc-6d41b8460122",
           "TENANT": "d107ab7c-7646-4744-9275-f74c8941e164"
         }
       }'),
       ('6c1b3be2-223e-4f75-8775-de858d2e298f', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'yearlyConsumptionKwh', 'TEXT', 'STANDARD', '{
         "templateFieldId": "aef5f290-667d-4385-b841-dd62e900f353"
       }'),
       ('51fca031-cae8-4fa3-92fe-4ba07f777ad6', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'gasMeterSerialNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "227d0770-558a-4d3a-ac51-44ffd86f94a3"
       }'),
       ('ec141f8a-e776-4040-9d94-d0f199d28abf', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'eic', 'TEXT', 'STANDARD', '{
         "templateFieldId": "fe62cb8b-5532-4e0f-84ac-cdf8a024bdfd"
       }'),
       ('c3dca023-7a77-4329-b5ac-9ba0505e575c', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'arrangedGasUsage', 'MULTI_RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "COOKING": "8eabfa62-071b-4d63-8f1a-bcdd1d74acc0",
           "WATER_BOILER": "522f1ab2-7137-496c-9af6-1e4f99313245",
           "HEATING": "eb71a67d-d72e-43b2-b27f-57cef89a49bd"
         }
       }'),
       ('4794c1ff-1d37-44a3-bd7b-01041bb45a9b', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'consumptionSchedule', 'MULTI_RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "WORKING_DAYS": "42c90fb3-aac9-4be3-bff3-37a2b8dad73d",
           "WEEKENDS": "78d9422e-8ff5-47fb-95f1-ddc1ee8bf7ad"
         }
       }'),
       ('0c139246-4024-4469-aad7-a559b48c9b63', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'currentProvider', 'TEXT', 'STANDARD', '{
         "templateFieldId": "ddb0a7ab-1507-4105-844e-d728331ab3e1"
       }'),
       ('25ea2738-889c-4b06-9de2-d1e5a6e8ae87', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'currentProviderContractIndefinite', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "true": "10c950e0-0192-4958-a3c3-e2c836291f86",
           "false": "f77fe611-589e-4245-aab2-b3f34d70079f"
         }
       }'),
       ('386e2158-c651-4d52-b1b6-d9a7cd34108a', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'currentProviderDefiniteContractEndDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "9e3cfbe4-5043-46d4-87d9-48f8c34a74ae",
         "monthTemplateFieldId": "555ead9c-f946-436b-b9e1-42569eb8d399",
         "yearTemplateFieldId": "fc06b381-8cbb-4b21-9c50-622eac9b1e30"
       }'),
       ('5eb22f82-0319-4434-afe6-b7b3439b319b', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'currentProviderContractIndefiniteEndPeriodUnit', 'DATA_HOLDER', 'STANDARD', '{}'),
       ('b8ea000b-fae7-43cf-bb3e-dc395247dbeb', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'currentProviderContractIndefiniteEndPeriodLength', 'CLONED_TEXT', 'STANDARD', '{
         "clones": [
           {
             "templateFieldId": "15843e12-b609-48e2-96c6-fb845a10fadf",
             "skipIfValueOf": [
               {
                 "apiFieldId": "5eb22f82-0319-4434-afe6-b7b3439b319b",
                 "isOtherThan": "DAYS"
               }
             ]
           },
           {
             "templateFieldId": "8ab6fd55-4606-4dce-8cc2-171ee182b693",
             "skipIfValueOf": [
               {
                 "apiFieldId": "5eb22f82-0319-4434-afe6-b7b3439b319b",
                 "isOtherThan": "MONTHS"
               }
             ]
           }
         ]
       }'),
       ('3d20ea6c-7f84-40fd-b6e6-9b311b6e02e9', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'customerTerminationDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "04df6482-bc3f-430b-b0a3-910fa49c4216",
         "monthTemplateFieldId": "b506da57-a60e-4375-a53e-a9170c69a5b4",
         "yearTemplateFieldId": "91873155-a3bc-4f52-8692-56bb31c1e98a"
       }'),
       ('93ddea42-d319-4c42-8b58-440aa7f1c8ef', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'deliveryStartDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "49772099-2fb8-41cf-be8e-20962f136e88",
         "monthTemplateFieldId": "43449949-7eaf-4d92-b08e-27f5da7972bd",
         "yearTemplateFieldId": "e0794199-2623-48f4-b0c3-170c9affccc0"
       }'),
       ('d31f5ef0-ee46-4323-a5b3-be7bd32a0006', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'depositPaymentType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "DIRECT_DEBIT": "2b26c2b9-e2ff-4192-aa8c-01260ac82734",
           "SIPO": "54a219f5-08e8-4198-9f1a-7a62383c578c",
           "PAYMENT_ORDER": "f0d30103-5257-40c3-bcdb-8fed06e2e4c1"
         }
       }'),
       ('66a50c29-f56e-4a4e-8d78-9407308362df', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'fullBankAccount', 'TEXT', 'STANDARD', '{
         "templateFieldId": "6b726904-e32a-47c9-96d2-fe8cab16aac1"
       }'),
       ('2689d924-1f8d-4303-b66e-2a6d92d51183', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'sipoNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "375abae2-3352-491f-ab97-af5047c803af"
       }'),
       ('379fa237-6cda-4358-ae09-4facd910478b', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'depositRefundType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "DEPOSIT_TRANSFER": "a4c51edb-5751-402b-b38b-d81943a878ce",
           "BANK_TRANSFER": "98c287dd-aba0-48b7-b4ba-fc537a70c6be"
         }
       }'),
       ('6f3d075b-5844-47f1-90fd-04790583dde9', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'depositAmount', 'MONEY', 'STANDARD', '{
         "templateFieldId": "357edd48-b0f6-4684-95cd-f993b18cc0fd",
         "includeCurrency": false
       }'),
       ('e0ded6c2-e6e1-43b4-aa08-4a03e377fbd5', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'providerClientZoneAccount', 'BOOLEAN', 'STANDARD', '{
         "templateFieldId": "31aae1b7-fc5d-4229-a6dd-7ac559e4601f"
       }'),
       ('cb19f5e8-bc24-46de-a03e-10b2b12f8963', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'documentsDeliveryDueDate', 'DATE', 'STANDARD', '{
         "dayTemplateFieldId": "77b6e4fc-7618-4ac8-84b3-f4eb5db0259b",
         "monthTemplateFieldId": "bc195ae9-f6e5-42b9-b632-65e2a34e9414",
         "yearTemplateFieldId": "16c73195-2e3d-49d6-abb6-d8f90d67e951"
       }'),
       ('9f247a06-aa87-4496-83fc-daea0846659e', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'discount', 'TEXT', 'STANDARD', '{
         "templateFieldId": "cfaa06f3-f75a-48cb-bc31-b583756a8f64"
       }'),
       ('083d2182-4f2e-4c37-8a82-76e143c6c21e', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'providerSignatureDate', 'TEXT', 'SIGNATURE_DATE', '{
         "templateFieldId": "16548808-3414-47df-9c6c-f6effbe66c17"
       }'),
       ('e4f2456d-d596-47dc-ac77-71fdf4f785b8', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 'customerSignatureDateAndPlace', 'TEXT', 'SIGNATURE_DATE_AND_PLACE', '{
         "templateFieldId": "e870fdca-49cd-4c07-bc1b-806f42378e06"
       }')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_signature(id, dynamic_template_id, page, x_coordinate, y_coordinate, width, height)
VALUES ('56dc042c-9b5e-4318-bede-a659465aa5ac', '0f7024a6-adb9-48dd-8b83-3087531c5aa9', 1, 0, 0, 300, 55)
ON CONFLICT DO NOTHING;