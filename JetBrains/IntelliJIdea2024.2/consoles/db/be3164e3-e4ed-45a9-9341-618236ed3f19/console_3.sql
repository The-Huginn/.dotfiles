INSERT INTO file_info (id, path, owner_id, original_file_name, content_type, size_in_bytes)
VALUES ('14291f2e-a5d2-47e4-8a74-81b3837730a6', '/static-files/templates', 'rixo-file-storage', 'gas-yello-general-1-year-contract.pdf', 'application/pdf', 140792)
ON CONFLICT DO NOTHING;

INSERT INTO static_file (id, file_info_id, name, result_file_name, backoffice_name)
VALUES ('1b4b5719-0b45-4279-bc7d-4510767ea109', '14291f2e-a5d2-47e4-8a74-81b3837730a6', 'gas-yello-general-1-year-contract.pdf', 'Smlouva', 'Plyn Yello: smlouva na 1 rok')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template (id, static_file_id, fonts)
VALUES ('0fbe2072-fb7e-4d06-9abb-a176e533081e', '1b4b5719-0b45-4279-bc7d-4510767ea109', '{
  "ArialMT": "Roboto-Regular",
  "Helv": "Roboto-Regular",
  "ZaDb": "Roboto-Regular"
}')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_field(id, dynamic_template_id, name, backoffice_name)
VALUES ('1c14f9ce-16ee-4fb5-80c3-8b26df4fb199', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole147', 'Číslo smlouvy'),
       ('de0fcd2c-aea6-4c2d-bb59-9d88ee43592c', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'YID', 'YID'),
       ('0d984e2f-0075-4c79-9f8a-257e2420c38e', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 21', 'Oslovení: pan'),
       ('1af937ca-e8d5-4802-8379-a404f2614bba', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 27', 'Oslovení: paní'),
       ('575055d4-4048-456b-8ecd-933ef5d25357', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole140', 'Jméno a přijmení'),
       ('9f362ee7-2ac5-4865-899e-3476f65dc340', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole143', 'Datum narození'),
       ('f04b74f6-c1e0-4a2b-81cb-a57c6ab63386', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole142', 'Adresa trvalého pobytu: ulice'),
       ('51a29bf2-c929-4345-b6a7-17f68f77fc19', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole145', 'Adresa trvalého pobytu: město'),
       ('e954da9a-83a8-4820-a424-a837ecd676b5', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole149', 'Adresa trvalého pobytu: PSČ'),
       ('aa7a46ca-ca60-48ff-9084-21aefdc77df6', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole141', 'E-mailová adresa'),
       ('f6ffad7a-2bb2-4c8c-a095-cc1e04c149a4', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole144', 'Telefonní číslo'),
       ('90a5a0fe-9a69-456b-afbf-3f0064ba422c', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 28', 'PDF faktury'),
       ('e3e609ad-79b0-4e96-833f-c1dad2099c1d', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole150', 'Korespondenční adresa: ulice'),
       ('7a4e547d-6b06-4c1c-9275-2d18910e1611', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole151', 'Korespondenční adresa: město'),
       ('bf6c5475-e81e-4c5a-acd4-7accc5afa76f', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole152', 'Korespondenční adresa: PSČ'),
       ('8098f4c9-4db5-43b9-98c6-2ab6f18138ed', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole153', 'Současný dodavatel'),
       ('755e1fbd-a94d-4248-89b8-60b4ce11cf99', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole154', 'Výpovědní doba u stávající smlouvy'),
       ('09b57b0f-48f1-4cb6-92ac-7dfaa862a498', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 35', 'Způsob užití: vaření'),
       ('f8f8441f-b6f7-4769-a6e4-ec52ab97f6fc', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 36', 'Způsob užití: topení'),
       ('522be948-df75-46d3-af01-903b204e6f24', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 37', 'Způsob užití: ohřev vody'),
       ('58dc0497-17d3-4901-b0ca-15def8e708cd', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole156', 'EIC'),
       ('71eda372-5029-409b-a5df-f83342c6a1d1', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole155', 'Roční spotřeba'),
       ('33a0a478-9601-4b30-8190-caabd62ff038', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole157', 'Adresa odběrného místa: ulice'),
       ('e68775f1-8778-48be-bb48-71b1d0da16bf', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole158', 'Adresa odběrného místa: město'),
       ('6ecb72af-ef9f-40b6-82b7-b60fe28ef2d3', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole101', 'Adresa odběrného místa: PSČ'),
       ('95a992a8-02be-4bf1-b0fa-d2872601df62', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 38', 'Frekvence placení záloh: měsíčně'),
       ('770898d8-0e30-4af4-9076-e767a74b546c', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 40', 'Frekvence placení záloh: čtvrtletně'),
       ('717420b4-3fef-4729-a47f-a1e9354e6ebe', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole102', 'Výše záloh'),
       ('7d3fa718-157e-4201-b993-9608a3442418', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 39', 'Způsob platby záloh: inkaso'),
       ('a4729993-4069-4dcc-997e-9d90883ac87b', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 41', 'Způsob platby záloh: bankovní převod'),
       ('4f2525c1-fdc5-4285-b995-717aa89baad6', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 42', 'Způsob platby záloh: SIPO'),
       ('602e2374-fe93-40bd-a9f4-7f76db0e9db7', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole103', 'Číslo SIPO'),
       ('46800321-4f54-4a5c-995b-f995532b5af2', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 44', 'Vracení přeplatků: ano'),
       ('16ee0505-430c-4360-9aee-070ed82499f5', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Zaškrtávací pole 43', 'Vracení přeplatků: ne'),
       ('eeddae46-8325-4b8d-b88f-f51fb29592de', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole104', 'Číslo účtu pro vracení přeplatků'),
       ('eaa85b47-ab40-4ad8-b052-e3e025f81a70', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole105', 'Produkt'),
       ('8b0a7f95-5805-467d-8277-52080ea886f6', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole106', 'Cena bez DPH'),
       ('0c1b292f-a934-4cee-ac4a-e8ca35b52e67', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole107', 'Cena s DPH'),
       ('8c910ef4-5ab8-4b1e-9897-ae3b540f7bbe', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole108', 'Zálohy bez DPH'),
       ('874bf24e-7496-423c-a62d-09d5a25068e5', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole109', 'Zálohy s DPH'),
       ('4a4db3e2-9663-4750-a14e-9b9f0b0e6c5c', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'Textové pole160', 'Datum podpisu')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_api_field (id, dynamic_template_id, name, type, content_category, fill_instructions)
VALUES ('64f53d0f-80c7-4011-a387-d75289fff21c', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'contractNumber', 'TEXT', 'STANDARD', '{
  "templateFieldId": "1c14f9ce-16ee-4fb5-80c3-8b26df4fb199"
}'),
       ('580a85fc-570c-443f-a089-9df8cb1e9e54', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'yid', 'TEXT', 'STANDARD', '{
         "templateFieldId": "de0fcd2c-aea6-4c2d-bb59-9d88ee43592c"
       }'),
       ('72d56750-c63e-42bb-8ce5-bd1ba1845aaa', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'addressing', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "MR": "0d984e2f-0075-4c79-9f8a-257e2420c38e",
           "MRS": "1af937ca-e8d5-4802-8379-a404f2614bba"
         }
       }'),
       ('297deceb-c761-4a52-9c73-a0a577168894', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'fullName', 'TEXT', 'STANDARD', '{
         "templateFieldId": "575055d4-4048-456b-8ecd-933ef5d25357"
       }'),
       ('5d3f2bff-a16b-48e5-8857-7b3e0c3d7c2a', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'birthDate', 'TEXT', 'STANDARD', '{
         "templateFieldId": "9f362ee7-2ac5-4865-899e-3476f65dc340"
       }'),
       ('ba341840-f1ff-4f30-b04d-2edce8189351', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'permanentAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "f04b74f6-c1e0-4a2b-81cb-a57c6ab63386"
       }'),
       ('9ec22eab-c800-42f7-a9dc-4954416bba6f', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'permanentAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "51a29bf2-c929-4345-b6a7-17f68f77fc19"
       }'),
       ('9f73d088-f359-4c73-8298-32968b243c56', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'permanentAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "e954da9a-83a8-4820-a424-a837ecd676b5"
       }'),
       ('98f3b972-e55a-48ed-beff-37f78f0a9e62', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'deliveryAddressDifferent', 'DATA_HOLDER', 'STANDARD', '{}'),
       ('239ad693-2e39-4b7b-a024-2d5d959831a2', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'deliveryAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "e3e609ad-79b0-4e96-833f-c1dad2099c1d",
         "skipIfValueOf": [
           {
             "apiFieldId": "98f3b972-e55a-48ed-beff-37f78f0a9e62",
             "is": false
           }
         ]
       }'),
       ('deab1441-21af-40b8-9fbc-e434afa25f41', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'deliveryAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "7a4e547d-6b06-4c1c-9275-2d18910e1611",
         "skipIfValueOf": [
           {
             "apiFieldId": "98f3b972-e55a-48ed-beff-37f78f0a9e62",
             "is": false
           }
         ]
       }'),
       ('9fbba56b-4d92-435e-9ce9-cf030db4ea65', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'deliveryAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "bf6c5475-e81e-4c5a-acd4-7accc5afa76f",
         "skipIfValueOf": [
           {
             "apiFieldId": "98f3b972-e55a-48ed-beff-37f78f0a9e62",
             "is": false
           }
         ]
       }'),
       ('fb438f4f-3339-4af0-b1ba-f000520b87d1', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'consumptionPointAddressDifferent', 'DATA_HOLDER', 'STANDARD', '{}'),
       ('90ac23b7-6985-41ba-82a9-90a858d5f032', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'consumptionPointAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "33a0a478-9601-4b30-8190-caabd62ff038",
         "skipIfValueOf": [
           {
             "apiFieldId": "fb438f4f-3339-4af0-b1ba-f000520b87d1",
             "is": false
           }
         ]
       }'),
       ('6f6e5e70-503c-40bd-8484-45c717ddaae0', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'consumptionPointAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "e68775f1-8778-48be-bb48-71b1d0da16bf",
         "skipIfValueOf": [
           {
             "apiFieldId": "fb438f4f-3339-4af0-b1ba-f000520b87d1",
             "is": false
           }
         ]
       }'),
       ('006a3631-a834-4a4a-b566-abe11cca2c93', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'consumptionPointAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "6ecb72af-ef9f-40b6-82b7-b60fe28ef2d3",
         "skipIfValueOf": [
           {
             "apiFieldId": "fb438f4f-3339-4af0-b1ba-f000520b87d1",
             "is": false
           }
         ]
       }'),
       ('46070b6e-c406-4094-8aa5-3b7971ef1511', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'emailAddress', 'TEXT', 'STANDARD', '{
         "templateFieldId": "aa7a46ca-ca60-48ff-9084-21aefdc77df6"
       }'),
       ('5ae2fdcb-8129-4926-a840-64522181c83f', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'phoneNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "f6ffad7a-2bb2-4c8c-a095-cc1e04c149a4"
       }'),
       ('fa2c0b17-5a34-43a3-a829-b5684f5cfa89', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'pdfInvoice', 'BOOLEAN', 'STANDARD', '{
         "templateFieldId": "90a5a0fe-9a69-456b-afbf-3f0064ba422c"
       }'),
       ('75737c7e-d544-4071-9b63-e8f0f0174509', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'currentProvider', 'TEXT', 'STANDARD', '{
         "templateFieldId": "8098f4c9-4db5-43b9-98c6-2ab6f18138ed"
       }'),
       ('a22cbe20-ac52-4668-a169-2e8f5be2a0c0', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'gasUsage', 'MULTI_RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "COOKING": "09b57b0f-48f1-4cb6-92ac-7dfaa862a498",
           "HEATING": "f8f8441f-b6f7-4769-a6e4-ec52ab97f6fc",
           "WATER_BOILER": "522be948-df75-46d3-af01-903b204e6f24"
         }
       }'),
       ('94cee0e1-c032-4831-87ae-82b2c797eaf2', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'eic', 'TEXT', 'STANDARD', '{
         "templateFieldId": "58dc0497-17d3-4901-b0ca-15def8e708cd"
       }'),
       ('562a39d2-2fd6-44c3-8f86-310e3bf7999f', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'yearlyConsumptionKwh', 'TEXT', 'STANDARD', '{
         "templateFieldId": "71eda372-5029-409b-a5df-f83342c6a1d1"
       }'),
       ('2d87ece9-bf52-4eb5-8dfa-4fe8ec1f2035', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'depositPaymentFrequency', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "MONTHLY": "95a992a8-02be-4bf1-b0fa-d2872601df62",
           "QUARTER_YEAR": "770898d8-0e30-4af4-9076-e767a74b546c"
         }
       }'),
       ('abe56d08-2b03-43ce-be5f-6ff4ce2ed765', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'depositAmount', 'TEXT', 'STANDARD', '{
         "templateFieldId": "717420b4-3fef-4729-a47f-a1e9354e6ebe"
       }'),
       ('f0d4d9b3-0787-48bf-9cbe-b05bc3286630', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'depositPaymentType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "DIRECT_DEBIT": "7d3fa718-157e-4201-b993-9608a3442418",
           "PAYMENT_ORDER": "a4729993-4069-4dcc-997e-9d90883ac87b",
           "SIPO": "4f2525c1-fdc5-4285-b995-717aa89baad6"
         }
       }'),
       ('8a9a52ed-6232-475e-9946-faf81bada7c8', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'sipoNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "602e2374-fe93-40bd-a9f4-7f76db0e9db7"
       }'),
       ('39514cd1-7d61-469d-a068-a6cd43825ce7', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'invoiceOverpaymentsReturn', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "true": "46800321-4f54-4a5c-995b-f995532b5af2",
           "false": "16ee0505-430c-4360-9aee-070ed82499f5"
         }
       }'),
       ('a33fc4a0-a74f-4062-9106-7840f267a6f9', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'fullBankAccount', 'TEXT', 'STANDARD', '{
         "templateFieldId": "eeddae46-8325-4b8d-b88f-f51fb29592de"
       }'),
       ('979b502f-f0d7-4cb1-b150-fbf461d7321f', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'product', 'TEXT', 'STANDARD', '{
         "templateFieldId": "eaa85b47-ab40-4ad8-b052-e3e025f81a70"
       }'),
       ('46096675-5e56-4da5-8e5a-04fdd3a592bc', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'priceWoVat', 'TEXT', 'STANDARD', '{
         "templateFieldId": "8b0a7f95-5805-467d-8277-52080ea886f6"
       }'),
       ('140e4cc9-d275-4aeb-bb06-2126ba56d402', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'priceWVat', 'TEXT', 'STANDARD', '{
         "templateFieldId": "0c1b292f-a934-4cee-ac4a-e8ca35b52e67"
       }'),
       ('f1c70353-2d96-4ad4-a859-031e6e5e2680', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'monthlyPaymentWithoutVat', 'TEXT', 'STANDARD', '{
         "templateFieldId": "8c910ef4-5ab8-4b1e-9897-ae3b540f7bbe"
       }'),
       ('c2733cbb-f39a-40fa-b1e9-2b042339f25e', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'monthlyPaymentWithVat', 'TEXT', 'STANDARD', '{
         "templateFieldId": "874bf24e-7496-423c-a62d-09d5a25068e5"
       }'),
       ('3ef5cb40-b5f4-48f2-b572-3d8075bd75ec', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 'signatureDate', 'TEXT', 'SIGNATURE_DATE', '{
         "templateFieldId": "4a4db3e2-9663-4750-a14e-9b9f0b0e6c5c"
       }')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_signature(id, dynamic_template_id, page, x_coordinate, y_coordinate, width, height)
VALUES ('6e7ce374-3265-4399-aae3-5bc041589532', '0fbe2072-fb7e-4d06-9abb-a176e533081e', 0, 35, 45, 200, 50)
ON CONFLICT DO NOTHING;
