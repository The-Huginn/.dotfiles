INSERT INTO file_info (id, path, owner_id, original_file_name, content_type, size_in_bytes)
VALUES ('b15a6490-23d1-4993-a5db-45315a1677d3', '/static-files/templates', 'rixo-file-storage', 'pre-electricity-contract-partner.pdf', 'application/pdf', 686811)
ON CONFLICT DO NOTHING;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO static_file (id, file_info_id, name, result_file_name, backoffice_name)
VALUES ('5a037d3c-83f7-4664-8d6c-52e7a25e9a10', 'b15a6490-23d1-4993-a5db-45315a1677d3', 'pre-electricity-contract-partner.pdf', 'smlouva', 'Elektřina PRE: smlouva Partner 10/2024')
ON CONFLICT DO NOTHING;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO dynamic_template (id, static_file_id, fonts)
VALUES ('22ad6990-b332-47ee-91a6-dff581f5c306', '5a037d3c-83f7-4664-8d6c-52e7a25e9a10', '{
  "Helv": "Roboto-Regular",
  "ZaDb": "Roboto-Regular"
}')
ON CONFLICT DO NOTHING;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO dynamic_template_field(id, dynamic_template_id, name, backoffice_name)
VALUES ('37f35629-7f2d-4c12-9022-f28f008c752f', '22ad6990-b332-47ee-91a6-dff581f5c306', 'domacnost', 'Typ zákazníka: domácnost'),
       ('624567c8-36d5-4985-8acd-32773458ab60', '22ad6990-b332-47ee-91a6-dff581f5c306', 'maloodber', 'Typ zákazníka: maloodběr'),
       ('e062f5ff-2c45-4fb7-8acb-5e79d5afe20d', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zmena-dodavatele', 'Důvod: změna dodavatele'),
       ('31e32c20-86c8-4ec2-b743-21269996aaa0', '22ad6990-b332-47ee-91a6-dff581f5c306', 'nove-odberne-misto', 'Důvod: nové odběrné místo'),
       ('dcb1962f-01b1-4bc9-b5ae-63aef9e7204b', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zmena-dodavatele-i-zakaznika', 'Důvod: změna dodavatele i zákazníka'),
       ('62c2effe-b0a7-4439-b5f7-f17fef15b401', '22ad6990-b332-47ee-91a6-dff581f5c306', 'jine-checkbox', 'Důvod: jiné'),
       ('6f747f8a-76d2-48c7-ad25-b52ed1d9aec8', '22ad6990-b332-47ee-91a6-dff581f5c306', 'Jiné', 'Důvod: upřesnění'),
       ('99f22aa8-3afc-45a7-9f9d-eb25aac0a6b4', '22ad6990-b332-47ee-91a6-dff581f5c306', 'jmeníobchodní firmanázev', 'Jméno a přijmení'),
       ('1ece7115-ba5e-4560-b622-be9115046c8f', '22ad6990-b332-47ee-91a6-dff581f5c306', 'datum-narozeni', 'Datum narození'),
       ('4782c39b-7fde-4b5a-9afe-97a3b9c30526', '22ad6990-b332-47ee-91a6-dff581f5c306', 'dic', 'DIČ'),
       ('1999d1d5-3c91-48e6-9cea-44f4871e3cb4', '22ad6990-b332-47ee-91a6-dff581f5c306', 'ulice', 'Adresa trvalého bydliště: ulice'),
       ('d467e28a-7495-4c89-b768-9eff4dfc82bf', '22ad6990-b332-47ee-91a6-dff581f5c306', 'trvale-bydliste-cp', 'Adresa trvalého bydliště: číslo popisné'),
       ('ce03410c-6986-492c-92b8-8e238f732801', '22ad6990-b332-47ee-91a6-dff581f5c306', 'trvale-bydliste-co', 'Adresa trvalého bydliště: číslo orientační'),
       ('a56b5030-e983-404d-945e-dd64d98a474a', '22ad6990-b332-47ee-91a6-dff581f5c306', 'obec', 'Adresa trvalého bydliště: obec'),
       ('6741f9d4-0909-4280-b1c5-5037f00b5e54', '22ad6990-b332-47ee-91a6-dff581f5c306', 'trvale-bydliste-obvod', 'Adresa trvalého bydliště: obvod'),
       ('501a9c55-9703-4845-b147-45ee4767eaf1', '22ad6990-b332-47ee-91a6-dff581f5c306', 'trvale-bydliste-psc', 'Adresa trvalého bydliště: PSČ'),
       ('2575e14d-01b2-42c2-ae1a-7c8b68a96a29', '22ad6990-b332-47ee-91a6-dff581f5c306', 'or', 'Zápis v OR'),
       ('b6810f97-fdeb-48d1-a461-36a0e0cbdce1', '22ad6990-b332-47ee-91a6-dff581f5c306', 'or-soud', 'Zápis v OR: soud'),
       ('687749c2-3416-40b1-9a1c-a9f90d509a1f', '22ad6990-b332-47ee-91a6-dff581f5c306', 'or-oddil', 'Zápis v OR: oddíl'),
       ('7e6aab7a-e460-4565-9d81-74a33bd07c68', '22ad6990-b332-47ee-91a6-dff581f5c306', 'ožka', 'Zápis v OR: vložka'),
       ('2a8e1953-6864-4364-acdc-c2d0df7e01e7', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zastoupený', 'Zastoupení'),
       ('51615665-f288-476d-a77a-137146ddb396', '22ad6990-b332-47ee-91a6-dff581f5c306', 'mobil', 'Mobil'),
       ('377e8412-7bad-4f88-9fdc-bd895bf1531d', '22ad6990-b332-47ee-91a6-dff581f5c306', 'email1', 'E-mailová adresa'),
       ('739d4f8d-c164-4ac0-8fc0-d8a1b3b1f979', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zakaznicky-ucet', 'Zákaznický účet'),
       ('935234d7-bc49-4963-9fda-2deca7f70201', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zasilaci-adresa-odberne-misto', 'Zasílací adresa: odběrné místo'),
       ('32db2a68-dffc-45d1-a66a-edf86ebefbb7', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zasilaci-adresa-trvale-bydliste', 'Zasílací adresa: trvalé bydliště'),
       ('7bb63f47-a3ec-4e77-b85b-d3005a46cd8d', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zasilaci-adresa-jine', 'Zasílací adresa: jiná'),
       ('2619c665-259e-4254-810b-e37d7df7b3d7', '22ad6990-b332-47ee-91a6-dff581f5c306', 'zasilaci-adresa', 'Zasílací adresa'),
       ('fe4cd64e-7510-43a8-935d-59ee248f6a63', '22ad6990-b332-47ee-91a6-dff581f5c306', 'comb_1', 'EAN'),
       ('14f58af9-208a-4ded-891e-97a19910c0e0', '22ad6990-b332-47ee-91a6-dff581f5c306', 'regulacni-stupen', 'Regulační stupeň'),
       ('3e62f21b-e7a1-4955-aed5-d29fbaf5a8e0', '22ad6990-b332-47ee-91a6-dff581f5c306', 'typ-mereni', 'Typ měření'),
       ('4b7deee4-9c0f-465d-9f47-166fb80b0e82', '22ad6990-b332-47ee-91a6-dff581f5c306', 'jistic-1-faze', 'Jistič: 1 fáze'),
       ('27dccf1c-f640-40b4-acf1-7aa6629127ac', '22ad6990-b332-47ee-91a6-dff581f5c306', 'jistic-3-faze', 'Jistič: 3 fáze'),
       ('50366586-3992-4ea7-9b74-1cd4d0321b22', '22ad6990-b332-47ee-91a6-dff581f5c306', 'hodnota-jistice', 'Jistič: hodnota'),
       ('a7c33c2d-59dd-4d4e-8b99-4558932bd919', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stávající dodavatel', 'Stávající dodavatel'),
       ('66edc6f6-ff55-4783-b958-587ec86a2934', '22ad6990-b332-47ee-91a6-dff581f5c306', 'ulice_2', 'Adresa odběrného místa: ulice'),
       ('9affff5c-c9b2-4686-b33c-e4e063fc5a03', '22ad6990-b332-47ee-91a6-dff581f5c306', 'odberne-misto-cp', 'Adresa odběrného místa: číslo popisné'),
       ('72aac735-80bf-46a3-a893-47c9b4d965a1', '22ad6990-b332-47ee-91a6-dff581f5c306', 'odberne-misto-co', 'Adresa odběrného místa: číslo orientační'),
       ('984d899b-7d31-45ff-be3d-993dc5c1bbc2', '22ad6990-b332-47ee-91a6-dff581f5c306', 'patro', 'Adresa odběrného místa: patro'),
       ('baf7afdf-e74e-48a3-9e72-741de0196e5e', '22ad6990-b332-47ee-91a6-dff581f5c306', 'odberne-misto-c-bytu', 'Adresa odběrného místa: číslo bytu'),
       ('2c92ec8e-951b-4780-8e0f-093c9282c724', '22ad6990-b332-47ee-91a6-dff581f5c306', 'obec_2', 'Adresa odběrného místa: obec'),
       ('a89f4bec-26c8-403b-85b4-d602bb216634', '22ad6990-b332-47ee-91a6-dff581f5c306', 'obvod', 'Adresa odběrného místa: obvod'),
       ('b2f08f43-0cd4-42df-8233-3c9ccb533eda', '22ad6990-b332-47ee-91a6-dff581f5c306', 'odberne-misto-c-kat-par', 'Adresa odběrného místa: č. kat. / č. par.'),
       ('6556eea2-50ac-44b8-aabb-deb588eea98d', '22ad6990-b332-47ee-91a6-dff581f5c306', 'odberne-misto-psc', 'Adresa odběrného místa: PSČ'),
       ('0504cd8f-c8f2-4abc-b52d-bb126aa414cc', '22ad6990-b332-47ee-91a6-dff581f5c306', 'vztah-vlastnik', 'Vztah k odběrnému místu: vlastník'),
       ('3131d76a-cfe4-43d7-b181-939659b0d626', '22ad6990-b332-47ee-91a6-dff581f5c306', 'vztah-opravneny-uzivatel', 'Vztah k odběrnému místu: oprávněný uživatel'),
       ('1696d7dd-0ce2-4677-85c1-481269c00644', '22ad6990-b332-47ee-91a6-dff581f5c306', 'opravneny-uzivatel', 'Vlastník odběrného místa'),
       ('5a6db0ce-7d59-40a0-a7c0-63402fa78f02', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stavajici-smlouva-doba-neurcita', 'Doba stávající smlouvy: neurčitá'),
       ('de5f4374-89b1-4a6f-8ec6-f20b94a5b283', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stavajici-smlouva-doba-urcita', 'Doba stávající smlouvy: určitá'),
       ('ac42e2d2-c504-419c-9d31-f58916d9642b', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stavajici-smlouva-doba-urcita-do', 'Doba stávající smlouvy: určitá do'),
       ('2bcfd5e4-08c9-41b2-9993-d39036c84021', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stavajici-smlouva-doba-neurcita-dny', 'Doba stávající smlouvy: dny'),
       ('e5f8e963-5c05-45c0-bac6-1e90cf838a9a', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stavajici-smlouva-doba-neurcita-mesice', 'Doba stávající smlouvy: měsíce'),
       ('b03c1437-2414-4d09-9c5b-40d7d98abdf3', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stavajici-smlouva-doba-neurcita-lhuta', 'Doba stávající smlouvy: lhůta'),
       ('521b1491-f671-4e07-b284-ef4e4cb77bbf', '22ad6990-b332-47ee-91a6-dff581f5c306', 'cislo-elektromeru', 'Číslo elektroměru'),
       ('6182f4f5-8ca2-497c-9277-a2d644679966', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stav-elektromeru-t1', 'Stav elektroměru T1'),
       ('23e16b4d-86ad-41cc-bcb2-aee45731d65c', '22ad6990-b332-47ee-91a6-dff581f5c306', 'stav-elektromeru-t2', 'Stav elektroměru T2'),
       ('a75bdc49-2d22-4811-805c-ea777b657147', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d01d', 'Distribuční sazba: D01d'),
       ('a14be565-f9b2-45c8-9974-24a01da72930', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d02d', 'Distribuční sazba: D02d'),
       ('4eb46914-15f5-4449-bcc8-d751ef3bf091', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d25d', 'Distribuční sazba: D25d'),
       ('e03affc8-f59e-469b-bc07-7ebc9cde00f3', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d26d', 'Distribuční sazba: D26d'),
       ('32db7b78-d0b4-4b70-8b44-d12cbccddcfd', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d27d', 'Distribuční sazba: D27d'),
       ('63a5675b-34ea-4157-81c3-c94f60fab471', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d35d', 'Distribuční sazba: D35d'),
       ('edcca958-cc2c-452a-954c-5ed64fe95a58', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d45d', 'Distribuční sazba: D45d'),
       ('880cc6e7-b492-4502-a293-77f9cfbd46ef', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d56d', 'Distribuční sazba: D56d'),
       ('d218cb52-7617-4bf8-82ea-8aa5e06dab35', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d57d', 'Distribuční sazba: D57d'),
       ('3c0319a7-2386-4b95-94e5-2fb4bdfc9fa1', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-d61d', 'Distribuční sazba: D61d'),
       ('b27929e5-f292-4e6b-9cae-6bd701aa8b75', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c01d', 'Distribuční sazba: C01d'),
       ('5aee3a7d-3f5d-4c0d-9d06-06e2b6c0765a', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c02d', 'Distribuční sazba: C02d'),
       ('dfa6402d-bac5-4bfa-a272-3f952c821666', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c03d', 'Distribuční sazba: C03d'),
       ('921b7d5b-daf6-409a-808f-39296e04c1fd', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c25d', 'Distribuční sazba: C25d'),
       ('fc9d1325-8632-4ac7-9ee4-f4cae623712c', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c26d', 'Distribuční sazba: C26d'),
       ('60b50431-fe94-4012-8c0a-20d3093ffe77', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c27d', 'Distribuční sazba: C27d'),
       ('0d13e180-4053-4fe1-8fa2-196e78d308ad', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c35d', 'Distribuční sazba: C35d'),
       ('b94fa377-ec93-4589-a9cd-2d9a4ab2f4e0', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c45d', 'Distribuční sazba: C45d'),
       ('9b7ceff8-e892-4188-ac11-a0cc3221860d', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c46d', 'Distribuční sazba: C46d'),
       ('d82e8433-10bc-48e9-961c-97fcd7f5fe45', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c55d', 'Distribuční sazba: C55d'),
       ('f0932a9f-95fe-43f9-996d-9dfc01fabc1e', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c56d', 'Distribuční sazba: C56d'),
       ('15590bfd-ce3f-45cc-9aaf-b79f55c830d1', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-c62d', 'Distribuční sazba: C62d'),
       ('bdd539ba-637f-448e-8661-e69387996f57', '22ad6990-b332-47ee-91a6-dff581f5c306', 'distribucni-sazba-poznamka', 'Dodatek k distribuční sazbě'),
       ('cdfcaf37-a33d-42cc-9582-6574a87ed62f', '22ad6990-b332-47ee-91a6-dff581f5c306', 'PO.2.1.0', 'E-mailová adresa pro faktury'),
       ('4f4610cc-985e-42eb-a08b-b6eeacefae4a', '22ad6990-b332-47ee-91a6-dff581f5c306', 'platba-prikaz', 'Způsob platby: příkaz k úhradě'),
       ('65ec906c-d103-4655-b772-1aabde542e9c', '22ad6990-b332-47ee-91a6-dff581f5c306', 'platba-inkaso', 'Způsob platby: inkaso'),
       ('336724ed-a56f-43a0-896f-15dfcffe2087', '22ad6990-b332-47ee-91a6-dff581f5c306', 'platba-sipo', 'Způsob platby: SIPO'),
       ('0ac23b7f-6947-44e9-af33-a293436dbb2f', '22ad6990-b332-47ee-91a6-dff581f5c306', 'frekvence-mesicni', 'Frekvence záloh: měsíční'),
       ('49e0458a-3275-48bf-bfbe-94d7fbd5f067', '22ad6990-b332-47ee-91a6-dff581f5c306', 'frekvence-ctvrtletni', 'Frekvence záloh: čtvrtletní'),
       ('8d0e27ac-4d23-40b3-a523-ec9a7224ff47', '22ad6990-b332-47ee-91a6-dff581f5c306', 'frekvence-pololetni', 'Frekvence záloh: pololetní'),
       ('ccf98463-0eb8-4b32-ab76-8e6364a13d9e', '22ad6990-b332-47ee-91a6-dff581f5c306', 'ulice_211111', 'Předčíslí a číslo účtu'),
       ('577131c2-b2ae-400c-aa68-5f18fc02cc90', '22ad6990-b332-47ee-91a6-dff581f5c306', 'kod-banky', 'Kód banky'),
       ('99113963-0d86-4545-acc6-c6d50833c271', '22ad6990-b332-47ee-91a6-dff581f5c306', 'kod-banky', 'Číslo SIPO'),
       ('ed2a35e4-4130-4037-9bd5-6ac069154b62', '22ad6990-b332-47ee-91a6-dff581f5c306', 'email pro zasílání el faktury2.0', 'Výše záloh'),
       ('37a06a83-49e3-45e1-a4c2-d838fc9f304c', '22ad6990-b332-47ee-91a6-dff581f5c306', 'tzd', 'Termín zahájení dodávky'),
       ('c36ab7f6-1dd5-4f34-bb03-377d5267c0cd', '22ad6990-b332-47ee-91a6-dff581f5c306', 'podpis-misto', 'Místo podpisu'),
       ('0564709e-ba29-46d4-8019-3a9a83832c75', '22ad6990-b332-47ee-91a6-dff581f5c306', 'podpis-datum', 'Datum podpisu')
ON CONFLICT DO NOTHING;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO dynamic_template_api_field (id, dynamic_template_id, name, type, content_category, fill_instructions)
VALUES ('0818cfd5-5ca8-4295-99cf-1b47a8ad13ef', '22ad6990-b332-47ee-91a6-dff581f5c306', 'clientCategory', 'RADIO', 'STANDARD', '{
  "templateFieldIds": {
    "HOUSEHOLD": "37f35629-7f2d-4c12-9022-f28f008c752f",
    "COMPANY": "624567c8-36d5-4985-8acd-32773458ab60"
  }
}'),
       ('2662902a-1f14-45d1-9a64-ba621a8de1c5', '22ad6990-b332-47ee-91a6-dff581f5c306', 'reason', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "PROVIDER_CHANGE": "e062f5ff-2c45-4fb7-8acb-5e79d5afe20d",
           "NEW_CLIENT": "31e32c20-86c8-4ec2-b743-21269996aaa0",
           "CLIENT_CHANGE": "dcb1962f-01b1-4bc9-b5ae-63aef9e7204b",
           "OTHER": "62c2effe-b0a7-4439-b5f7-f17fef15b401"
         }
       }'),
       ('d2f091d5-a023-4f0c-9ab0-ac78a1283ed3', '22ad6990-b332-47ee-91a6-dff581f5c306', 'reasonDetail', 'TEXT', 'STANDARD', '{
         "templateFieldId": "6f747f8a-76d2-48c7-ad25-b52ed1d9aec8"
       }'),
       ('872aded0-bd1c-4b92-8422-cd3d9263aef8', '22ad6990-b332-47ee-91a6-dff581f5c306', 'fullName', 'TEXT', 'STANDARD', '{
         "templateFieldId": "99f22aa8-3afc-45a7-9f9d-eb25aac0a6b4"
       }'),
       ('daf697d4-420e-48b3-8c70-1244323c767e', '22ad6990-b332-47ee-91a6-dff581f5c306', 'birthDate', 'TEXT', 'STANDARD', '{
         "templateFieldId": "1ece7115-ba5e-4560-b622-be9115046c8f"
       }'),
       ('03efe8bc-794c-4c87-acdb-163104c0bf32', '22ad6990-b332-47ee-91a6-dff581f5c306', 'permanentAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "1999d1d5-3c91-48e6-9cea-44f4871e3cb4"
       }'),
       ('f6ceda0e-1c6c-4d42-a73f-0956b20e3809', '22ad6990-b332-47ee-91a6-dff581f5c306', 'permanentAddressHouseNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "d467e28a-7495-4c89-b768-9eff4dfc82bf"
       }'),
       ('c485cee6-4c73-44ed-b34c-7431ae871b8e', '22ad6990-b332-47ee-91a6-dff581f5c306', 'permanentAddressOrientationNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "ce03410c-6986-492c-92b8-8e238f732801"
       }'),
       ('c2ae72bf-6648-4e01-8bfb-04d0114ada45', '22ad6990-b332-47ee-91a6-dff581f5c306', 'permanentAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a56b5030-e983-404d-945e-dd64d98a474a"
       }'),
       ('ea30910a-dc46-4ce7-8a20-b894e1b6a97d', '22ad6990-b332-47ee-91a6-dff581f5c306', 'permanentAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "501a9c55-9703-4845-b147-45ee4767eaf1"
       }'),
       ('e3f3fe71-16eb-4e96-9788-ba8af2292c67', '22ad6990-b332-47ee-91a6-dff581f5c306', 'phoneNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "51615665-f288-476d-a77a-137146ddb396"
       }'),
       ('de9cffc4-f659-48c5-b2b7-c93f2bc8d722', '22ad6990-b332-47ee-91a6-dff581f5c306', 'emailAddress', 'CLONED_TEXT', 'STANDARD', '{
         "clones": [
           {
             "templateFieldId": "377e8412-7bad-4f88-9fdc-bd895bf1531d"
           },
           {
             "templateFieldId": "cdfcaf37-a33d-42cc-9582-6574a87ed62f"
           }
         ]
       }'),
       ('8b3b5344-ffbc-44ec-8c09-494b79915358', '22ad6990-b332-47ee-91a6-dff581f5c306', 'providerClientZoneAccount', 'BOOLEAN', 'STANDARD', '{
         "templateFieldId": "739d4f8d-c164-4ac0-8fc0-d8a1b3b1f979"
       }'),
       ('03090263-972a-478d-82de-0d05741bd24b', '22ad6990-b332-47ee-91a6-dff581f5c306', 'deliveryAddressEquality', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "CONSUMPTION_POINT": "935234d7-bc49-4963-9fda-2deca7f70201",
           "PERMANENT": "32db2a68-dffc-45d1-a66a-edf86ebefbb7",
           "NONE": "7bb63f47-a3ec-4e77-b85b-d3005a46cd8d"
         }
       }'),
       ('3ad9863d-81a2-4ca7-8b2a-d1c22619fea8', '22ad6990-b332-47ee-91a6-dff581f5c306', 'fullDeliveryAddress', 'TEXT', 'STANDARD', '{
         "templateFieldId": "2619c665-259e-4254-810b-e37d7df7b3d7",
         "skipIfValueOf": [
           {
             "apiFieldId": "03090263-972a-478d-82de-0d05741bd24b",
             "isOtherThan": "NONE"
           }
         ]
       }'),
       ('116b3972-44ca-4823-8aad-fcd656e682c9', '22ad6990-b332-47ee-91a6-dff581f5c306', 'ean', 'PREFILLED', 'STANDARD', '{
         "templateFields": {
           "fe4cd64e-7510-43a8-935d-59ee248f6a63": {
             "valuePositions": [
               9,
               10,
               11,
               12,
               13,
               14,
               15,
               16,
               17
             ]
           }
         }
       }'),
       ('832b7374-6554-4f5f-82ef-ad8a6d5cdbe1', '22ad6990-b332-47ee-91a6-dff581f5c306', 'measurementType', 'TEXT', 'STANDARD', '{
         "templateFieldId": "3e62f21b-e7a1-4955-aed5-d29fbaf5a8e0"
       }'),
       ('5ce7d21e-f753-446e-b0e1-9b56970d7ed7', '22ad6990-b332-47ee-91a6-dff581f5c306', 'circuitBreakerType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "ONE_PHASE": "4b7deee4-9c0f-465d-9f47-166fb80b0e82",
           "THREE_PHASE": "27dccf1c-f640-40b4-acf1-7aa6629127ac"
         }
       }'),
       ('cea726a6-3cf3-418e-832d-3a74f8e3a5d4', '22ad6990-b332-47ee-91a6-dff581f5c306', 'circuitBreakerValue', 'TEXT', 'STANDARD', '{
         "templateFieldId": "50366586-3992-4ea7-9b74-1cd4d0321b22"
       }'),
       ('8a601636-a6fd-4e62-855b-5a5d6db9d44b', '22ad6990-b332-47ee-91a6-dff581f5c306', 'currentProvider', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a7c33c2d-59dd-4d4e-8b99-4558932bd919"
       }'),
       ('736ea0d0-5797-40ce-89b2-2a0d4ce88b30', '22ad6990-b332-47ee-91a6-dff581f5c306', 'consumptionPointAddressStreet', 'TEXT', 'STANDARD',
        '{
          "templateFieldId": "66edc6f6-ff55-4783-b958-587ec86a2934"
        }'),
       ('037b3d60-6b05-4ef1-8a8c-036c4e204d71', '22ad6990-b332-47ee-91a6-dff581f5c306', 'consumptionPointAddressHouseNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "9affff5c-c9b2-4686-b33c-e4e063fc5a03"
       }'),
       ('fcab1376-53ab-473a-afb4-2ca94e5b22f3', '22ad6990-b332-47ee-91a6-dff581f5c306', 'consumptionPointAddressOrientationNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "72aac735-80bf-46a3-a893-47c9b4d965a1"
       }'),
       ('0afabbdf-9829-4bb9-a46e-24cda3e2879b', '22ad6990-b332-47ee-91a6-dff581f5c306', 'consumptionPointAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "2c92ec8e-951b-4780-8e0f-093c9282c724"
       }'),
       ('d0bb4995-308f-4386-8ade-b0c47c8b7bb4', '22ad6990-b332-47ee-91a6-dff581f5c306', 'consumptionPointAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "6556eea2-50ac-44b8-aabb-deb588eea98d"
       }'),
       ('03114fc2-dc4e-4632-a70f-f1110dc818ea', '22ad6990-b332-47ee-91a6-dff581f5c306', 'apartmentNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "baf7afdf-e74e-48a3-9e72-741de0196e5e"
       }'),
       ('95f109ea-04e2-43b6-9ee6-d172412f0126', '22ad6990-b332-47ee-91a6-dff581f5c306', 'currentProviderContractIndefinite', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "true": "5a6db0ce-7d59-40a0-a7c0-63402fa78f02",
           "false": "de5f4374-89b1-4a6f-8ec6-f20b94a5b283"
         }
       }'),
       ('35263c0f-1871-4964-a63d-b86e0a404ce8', '22ad6990-b332-47ee-91a6-dff581f5c306', 'currentProviderDefiniteContractEndDate', 'TEXT', 'STANDARD', '{
         "templateFieldId": "ac42e2d2-c504-419c-9d31-f58916d9642b"
       }'),
       ('62dfcd68-029b-4a51-9697-cf76c0d3b1c8', '22ad6990-b332-47ee-91a6-dff581f5c306', 'currentProviderContractIndefiniteEndPeriodUnit', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "DAYS": "2bcfd5e4-08c9-41b2-9993-d39036c84021",
           "MONTHS": "e5f8e963-5c05-45c0-bac6-1e90cf838a9a"
         }
       }'),
       ('ec23efc4-24d2-47a3-8ae0-8c7d69099550', '22ad6990-b332-47ee-91a6-dff581f5c306', 'currentProviderContractIndefiniteEndPeriodLength', 'TEXT', 'STANDARD', '{
         "templateFieldId": "b03c1437-2414-4d09-9c5b-40d7d98abdf3"
       }'),
       ('58400bc9-75eb-4a19-82fe-2e1ab7a4c933', '22ad6990-b332-47ee-91a6-dff581f5c306', 'currentDistributionRate', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "D01d": "a75bdc49-2d22-4811-805c-ea777b657147",
           "D02d": "a14be565-f9b2-45c8-9974-24a01da72930",
           "D25d": "4eb46914-15f5-4449-bcc8-d751ef3bf091",
           "D26d": "e03affc8-f59e-469b-bc07-7ebc9cde00f3",
           "D27d": "32db7b78-d0b4-4b70-8b44-d12cbccddcfd",
           "D35d": "63a5675b-34ea-4157-81c3-c94f60fab471",
           "D45d": "edcca958-cc2c-452a-954c-5ed64fe95a58",
           "D56d": "880cc6e7-b492-4502-a293-77f9cfbd46ef",
           "D57d": "d218cb52-7617-4bf8-82ea-8aa5e06dab35",
           "D61d": "3c0319a7-2386-4b95-94e5-2fb4bdfc9fa1",
           "C01d": "b27929e5-f292-4e6b-9cae-6bd701aa8b75",
           "C02d": "5aee3a7d-3f5d-4c0d-9d06-06e2b6c0765a",
           "C03d": "dfa6402d-bac5-4bfa-a272-3f952c821666",
           "C25d": "921b7d5b-daf6-409a-808f-39296e04c1fd",
           "C26d": "fc9d1325-8632-4ac7-9ee4-f4cae623712c",
           "C27d": "60b50431-fe94-4012-8c0a-20d3093ffe77",
           "C35d": "0d13e180-4053-4fe1-8fa2-196e78d308ad",
           "C45d": "b94fa377-ec93-4589-a9cd-2d9a4ab2f4e0",
           "C46d": "9b7ceff8-e892-4188-ac11-a0cc3221860d",
           "C55d": "d82e8433-10bc-48e9-961c-97fcd7f5fe45",
           "C56d": "f0932a9f-95fe-43f9-996d-9dfc01fabc1e",
           "C62d": "15590bfd-ce3f-45cc-9aaf-b79f55c830d1"
         }
       }'),
       ('eef3eaa8-1234-4d01-8451-71593698b3b2', '22ad6990-b332-47ee-91a6-dff581f5c306', 'depositPaymentType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "PAYMENT_ORDER": "4f4610cc-985e-42eb-a08b-b6eeacefae4a",
           "DIRECT_DEBIT": "65ec906c-d103-4655-b772-1aabde542e9c",
           "SIPO": "336724ed-a56f-43a0-896f-15dfcffe2087"
         }
       }'),
       ('0cc5488b-34d8-4dea-a53a-1dd5b805b0d9', '22ad6990-b332-47ee-91a6-dff581f5c306', 'depositPaymentFrequency', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "MONTHLY": "0ac23b7f-6947-44e9-af33-a293436dbb2f",
           "QUARTER_YEAR": "49e0458a-3275-48bf-bfbe-94d7fbd5f067",
           "YEARLY": "8d0e27ac-4d23-40b3-a523-ec9a7224ff47"
         }
       }'),
       ('80cf574f-5c1e-4c9b-9bc1-0425b12a2882', '22ad6990-b332-47ee-91a6-dff581f5c306', 'fullBankAccountNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "ccf98463-0eb8-4b32-ab76-8e6364a13d9e"
       }'),
       ('4a0d3fbd-c2f1-41f0-8b66-8e6246833ab5', '22ad6990-b332-47ee-91a6-dff581f5c306', 'bankCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "577131c2-b2ae-400c-aa68-5f18fc02cc90"
       }'),
       ('dcd19c37-2d22-43d3-8935-c097177c2734', '22ad6990-b332-47ee-91a6-dff581f5c306', 'sipoNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "99113963-0d86-4545-acc6-c6d50833c271"
       }'),
       ('30261db9-0af2-4084-96fd-1968df565508', '22ad6990-b332-47ee-91a6-dff581f5c306', 'depositAmount', 'MONEY', 'STANDARD', '{
         "templateFieldId": "ed2a35e4-4130-4037-9bd5-6ac069154b62"
       }'),
       ('29d8f1ef-256d-44ad-90b7-81f649beef18', '22ad6990-b332-47ee-91a6-dff581f5c306', 'deliveryStartDate', 'TEXT', 'STANDARD', '{
         "templateFieldId": "37a06a83-49e3-45e1-a4c2-d838fc9f304c"
       }'),
       ('8ec4b8b3-49e7-4d0d-a939-292fd2bc1c2c', '22ad6990-b332-47ee-91a6-dff581f5c306', 'signaturePlace', 'TEXT', 'SIGNATURE_PLACE', '{
         "templateFieldId": "c36ab7f6-1dd5-4f34-bb03-377d5267c0cd"
       }'),
       ('b07f4bc1-76b8-446c-8062-8cdcb0409999', '22ad6990-b332-47ee-91a6-dff581f5c306', 'signatureDate', 'TEXT', 'SIGNATURE_DATE', '{
         "templateFieldId": "0564709e-ba29-46d4-8019-3a9a83832c75"
       }')
ON CONFLICT DO NOTHING;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO dynamic_template_signature(id, dynamic_template_id, page, x_coordinate, y_coordinate, width, height)
VALUES ('49f51828-a39b-44f4-8283-719970c9ba5e', '22ad6990-b332-47ee-91a6-dff581f5c306', 1, 330, 305, 200, 45),
       ('a5aa685c-e07c-48ed-830f-34ded6668c85', '22ad6990-b332-47ee-91a6-dff581f5c306', 1, 330, 399, 200, 45)
ON CONFLICT DO NOTHING;