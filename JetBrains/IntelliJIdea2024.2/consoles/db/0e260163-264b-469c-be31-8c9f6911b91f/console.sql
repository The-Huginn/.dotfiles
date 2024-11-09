INSERT INTO file_info (id, path, owner_id, original_file_name, content_type, size_in_bytes)
VALUES ('29cac144-2ed6-425b-a1e9-48068ed4fa8b', '/static-files/templates', 'rixo-file-storage', 'pre-gas-contract-partner.pdf', 'application/pdf', 670745)
ON CONFLICT DO NOTHING;

INSERT INTO static_file (id, file_info_id, name, result_file_name, backoffice_name)
VALUES ('04e2fe3d-5c9a-4190-9f14-33c9da5acb1e', '29cac144-2ed6-425b-a1e9-48068ed4fa8b', 'pre-gas-contract-partner.pdf', 'smlouva', 'Plyn PRE: smlouva Partner 10/2024')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template (id, static_file_id, fonts)
VALUES ('6a5af1e3-b6da-4121-90d7-22fb12250e03', '04e2fe3d-5c9a-4190-9f14-33c9da5acb1e', '{
  "Helv": "Roboto-Regular",
  "ZaDb": "Roboto-Regular"
}')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_field(id, dynamic_template_id, name, backoffice_name)
VALUES ('7c1b7539-8a0c-4fe6-93de-e4079b1ffd78', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'domacnost', 'Typ zákazníka: domácnost'),
       ('f3baf53b-6bef-4842-bafe-d3f15859f033', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'maloodber', 'Typ zákazníka: maloodběr'),
       ('4515c743-d2d7-429b-a9cb-c84fee1d7313', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'zmena-dodavatele', 'Důvod: změna dodavatele'),
       ('97659e40-93ec-4af1-b84f-b08010bc23a6', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'nove-odberne-misto', 'Důvod: nové odběrné místo'),
       ('7ca5ef36-3502-4126-888c-a6770a5addfc', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'zmena-dodavatele-i-zakaznika', 'Důvod: změna dodavatele i zákazníka'),
       ('b8662438-2d8f-4d55-86e3-4eee5a904fc5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'jine-checkbox', 'Důvod: jiné'),
       ('e8d8d6ed-afff-4e03-ba12-a548f4f6b8f8', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'Jiné', 'Důvod: upřesnění'),
       ('2ce4208b-65ea-4c42-abf4-3798adb39b55', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'jmeníobchodní firmanázev', 'Jméno a přijmení'),
       ('f1c89e3b-2ecc-411a-84c6-b456a29d47ac', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'datum-narozeni', 'Datum narození'),
       ('7b5b77d4-20e8-43c1-8ad9-513a7a12deb9', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'dic', 'DIČ'),
       ('4c85021c-6bcc-4c14-8d49-d2f9ac57dcd5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'ulice', 'Adresa trvalého bydliště: ulice'),
       ('c03daa6b-2eef-49c9-a5e9-6e4716e6c072', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'trvale-bydliste-cp', 'Adresa trvalého bydliště: číslo popisné'),
       ('4c9fc78c-a010-4d29-93ae-bb68196657a0', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'trvale-bydliste-co', 'Adresa trvalého bydliště: číslo orientační'),
       ('a1b52d86-b964-4f54-b9ec-7d1a0d2e8ce6', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obec', 'Adresa trvalého bydliště: obec'),
       ('3aec0d80-dbb7-471e-a053-0294d4026e9b', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'trvale-bydliste-obvod', 'Adresa trvalého bydliště: obvod'),
       ('9e24dace-f848-4bc9-969c-cac56b294553', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'trvale-bydliste-psc', 'Adresa trvalého bydliště: PSČ'),
       ('2385b92e-61f2-4b7d-bbbf-a6156a42c38d', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'or', 'Zápis v OR'),
       ('691479a0-8492-4bc2-a173-80707410ffb6', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'or-soud', 'Zápis v OR: soud'),
       ('3f33d549-9ab3-4ca9-9639-f0daccb9b943', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'or-oddil', 'Zápis v OR: oddíl'),
       ('f119dad1-442e-4247-86a4-cb18c48f1da8', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'ožka', 'Zápis v OR: vložka'),
       ('898e78c6-ca6e-49db-9295-ea7923e9f9d5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'zastoupený', 'Zastoupení'),
       ('52fbe323-4f19-4f2f-948a-a95c7f61a9c7', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'mobil', 'Mobil'),
       ('05743914-9299-4249-b925-a837bac02baf', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'email1.0.0', 'E-mailová adresa'),
       ('e70aad8a-607f-4ee5-8618-3f15a5035b54', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'zakaznicky-ucet', 'Zákaznický účet'),
       ('b0e47d69-4067-4786-b22a-6111444f8360', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'zasilaci-adresa-odberne-misto', 'Zasílací adresa: odběrné místo'),
       ('019ef20d-bd02-454d-b33d-f8985adb0714', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'zasilaci-adresa-trvale-bydliste', 'Zasílací adresa: trvalé bydliště'),
       ('883bfb9c-962d-4c40-a85f-12321575a8d2', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'zasilaci-adresa-jine', 'Zasílací adresa: jiná'),
       ('9f5e3de9-bdd1-4b43-ab42-4d11de9e4fd5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'email1.0.1', 'Zasílací adresa'),
       ('6977f6c5-e969-4dcc-82a0-51a690bf2ca1', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'eic', 'EIC'),
       ('2d6d62aa-71d7-42cb-9be1-8a2714f9f257', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'cislo-odberneho-mista', 'Číslo odběrného místa'),
       ('970b799f-53e0-41a5-a3b1-22aea0a9dce0', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'vztah-vlastnik', 'Vztah k odběrnému místu: vlastník'),
       ('1a528017-d1e7-438d-8b82-19806ef85905', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'vztah-opravneny-uzivatel', 'Vztah k odběrnému místu: oprávněný uživatel'),
       ('13ea9056-fe76-419a-8971-6d52cda2698f', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obec_2.1.1', 'Vlastník odběrného místa'),
       ('d0c2145c-e1d8-45e3-9db8-9f5a091eac57', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'vyuziti-byt', 'Využití odběrného místa: byt, rodinný dům, rekreační objekt'),
       ('aeebdf71-ad68-497f-9be9-1cf99ded5145', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'vyuziti-jine', 'Využití odběrného místa: jiné'),
       ('eb9bcda6-89ff-42c0-b5f2-64da9d860526', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'ulice_2', 'Adresa odběrného místa: ulice'),
       ('b7269a19-42c0-4f25-af6b-d44a88d401b3', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'odberne-misto-cp', 'Adresa odběrného místa: číslo popisné'),
       ('67e3b622-67a5-4e5c-b853-c98621b93e64', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'odberne-misto-co', 'Adresa odběrného místa: číslo orientační'),
       ('af5f54c1-886b-4de3-beef-717a183b23d9', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'patro', 'Adresa odběrného místa: patro'),
       ('9b820f19-2117-46a7-a92e-f508605612bd', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'odberne-misto-c-bytu', 'Adresa odběrného místa: číslo bytu'),
       ('06676da9-9a04-41ff-b9c5-4c973ebf78e3', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obec_2.0.0', 'Adresa odběrného místa: obec'),
       ('7251b022-692b-4769-bd9c-897addf1b5cc', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obvod.0.0', 'Adresa odběrného místa: obvod'),
       ('b5e945ec-dec4-4ee0-a9a4-d6f4a245c360', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'odberne-misto-c-kat', 'Adresa odběrného místa: č. kat.'),
       ('617ecb6d-ab91-4c41-85cf-c235e086cc74', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obec_2.0.1', 'Adresa odběrného místa: č. parc.'),
       ('1621db66-e673-47b1-aa14-d6cf35e4498a', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obec_2.1.0', 'Adresa odběrného místa: PSČ'),
       ('4f275b10-7afa-409b-94c5-ef5e6f5bb9d8', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'charakter-vareni', 'Charakter odběru: vaření'),
       ('14443633-1af4-455c-a5e7-86a8d7d258a5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'charakter-ohrev', 'Charakter odběru: ohřev vody'),
       ('3879f8d9-6d91-4189-b443-3552efad2343', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'charakter-topeni', 'Charakter odběru: topení'),
       ('243504da-a094-4ea3-aa59-9e3feebd9580', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'charakter-technologie', 'Charakter odběru: technologie'),
       ('b5f41b5f-468b-4f71-9c62-6d940133c2e5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'casovost-odberu-po-pa', 'Časovost odběru: Po-Pá'),
       ('f1495bdc-b5b8-4194-a5ff-23e82b0daaf1', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'casovost-odberu-so-ne', 'Časovost odběru: So-Ne, svátky'),
       ('0d1f1b47-27d4-4468-8164-eace1c1a4699', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obvod.1', 'Předpokládaná roční spotřeba (kWh)'),
       ('3bdcefd4-b760-4690-b104-00db6a2229a8', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'cislo-plynomeru', 'Číslo plynoměru'),
       ('bf415c03-9f8d-411b-a197-aec0d7ac7b7a', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stav-plynomeru', 'Stav plynoměru'),
       ('d7a156a7-8c69-4a8b-8bde-f31e3090faa6', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stavajici-smlouva-doba-neurcita', 'Doba stávající smlouvy: neurčitá'),
       ('fac56264-8733-4988-ab3d-b8c197c8f912', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stavajici-smlouva-doba-urcita', 'Doba stávající smlouvy: určitá'),
       ('17d7a58b-d133-47d2-a43f-fffae3c4130d', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stavajici-smlouva-doba-urcita-do', 'Doba stávající smlouvy: určitá do'),
       ('58f1018d-6daf-43a3-98c7-2124b83fdd14', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stavajici-smlouva-doba-neurcita-dny', 'Doba stávající smlouvy: dny'),
       ('d0380b3c-fd90-4b1f-a0c1-e0fb76d428ea', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stavajici-smlouva-doba-neurcita-mesice', 'Doba stávající smlouvy: měsíce'),
       ('d7f13030-c118-491c-a59d-5fc3d7d4410e', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stavajici-smlouva-doba-neurcita-lhuta', 'Doba stávající smlouvy: lhůta'),
       ('0116dab1-9c89-498b-965d-c9a726fd0cbe', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'obvod.0.1', 'Datum ukončení stávající smlouvy'),
       ('fe191ce0-a830-435c-ac28-049d412658dc', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'stavajici-dodavatel', 'Stávající dodavatel'),
       ('3d4a06f6-0bb1-40f5-ab1f-5b098ed70482', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-sporak-stavajici-ks', 'Instalované spotřebiče: sporák (stávající) [ks]'),
       ('c342a4f5-b3b6-408d-b1f7-82a3611ced03', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-sporak-stavajici-kw', 'Instalované spotřebiče: sporák (stávající) [kW]'),
       ('b3ab2fe3-a6df-4926-b0c4-ce5915041b81', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-sporak-nove-ks', 'Instalované spotřebiče: sporák (nové) [ks]'),
       ('fa54fb2e-4acc-4079-8604-805d9f6c41db', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-sporak-nove-kw', 'Instalované spotřebiče: sporák (nové) [kW]'),
       ('0aa3c5af-b3f4-4ba4-bdbb-9c62003d3d1d', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ohrivac-stavajici-ks', 'Instalované spotřebiče: průtokový ohřívač (stávající) [ks]'),
       ('f939735c-2126-4127-b5df-e4391fc26ab1', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ohrivac-stavajici-kw', 'Instalované spotřebiče: průtokový ohřívač (stávající) [kW]'),
       ('cb00e4e2-7e9b-437d-8cd8-caa5dcc03f4f', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ohrivac-nove-ks', 'Instalované spotřebiče: průtokový ohřívač (nové) [ks]'),
       ('6ec0fac2-9285-4c4a-8b24-b06fcace17ee', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ohrivac-nove-kw', 'Instalované spotřebiče: průtokový ohřívač (nové) [kW]'),
       ('e7da6b5d-30d7-4625-abdd-2acee5438aa2', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-topidlo-stavajici-ks', 'Instalované spotřebiče: lokální topidlo (stávající) [ks]'),
       ('ba5203a8-06ef-4da3-843e-58ca51aabd25', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-topidlo-stavajici-kw', 'Instalované spotřebiče: lokální topidlo (stávající) [kW]'),
       ('06a51d94-1d7c-403c-a3bf-45dc2f86a187', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-topidlo-nove-ks', 'Instalované spotřebiče: lokální topidlo (nové) [ks]'),
       ('a88fc747-6be3-485f-824b-ad85dc6f4613', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-topidlo-nove-kw', 'Instalované spotřebiče: lokální topidlo (nové) [kW]'),
       ('74f06b8b-4727-4452-9b86-9f6c5064c80c', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kotel-stavajici-ks', 'Instalované spotřebiče: kotel (stávající) [ks]'),
       ('6d135376-fbe9-4531-9400-8ddbf5523e73', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kotel-stavajici-kw', 'Instalované spotřebiče: kotel (stávající) [kW]'),
       ('72b9607e-e8ea-43db-a4c8-8c865d4e8538', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kotel-nove-ks', 'Instalované spotřebiče: kotel (nové) [ks]'),
       ('50c787b0-13a8-4382-8c21-2fc6a8ccad8d', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kotel-nove-kw', 'Instalované spotřebiče: kotel (nové) [kW]'),
       ('531eac64-59c5-4ba2-9ed8-bc4aba6f7ac8', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kombikotel-stavajici-ks', 'Instalované spotřebiče: kombinovaný kotel (stávající) [ks]'),
       ('c2c66c9e-44a3-42bf-aa82-5e9807b69978', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kombikotel-stavajici-kw', 'Instalované spotřebiče: kombinovaný kotel (stávající) [kW]'),
       ('a9c2119c-3d9a-4e75-bbfc-cbd9225a0810', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kombikotel-nove-ks', 'Instalované spotřebiče: kombinovaný kotel (nové) [ks]'),
       ('780e8f59-8421-4331-8491-539d5746adf4', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-kombikotel-nove-kw', 'Instalované spotřebiče: kombinovaný kotel (nové) [kW]'),
       ('e99a0834-edd0-49db-abaa-8127eff5ddeb', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ostatni', 'Instalované spotřebiče: ostatní (název)'),
       ('2a0cd7cb-9a73-4b82-a0d8-eccb6834b927', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ostatni-stavajici-ks', 'Instalované spotřebiče: ostatní (stávající) [ks]'),
       ('602b10b3-cc29-4f57-b759-088db8da36ce', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ostatni-stavajici-kw', 'Instalované spotřebiče: ostatní (stávající) [kW]'),
       ('95283dba-429c-4708-8f24-093451e976b2', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ostatni-nove-ks', 'Instalované spotřebiče: ostatní (nové) [ks]'),
       ('3973981c-90d8-4866-a289-7e1f4b46f51f', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'spotrebice-ostatni-nove-kw', 'Instalované spotřebiče: ostatní (nové) [kW]'),
       ('9ec73738-32b5-4732-9473-0a7f8f0823bc', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'PO.2.1.0', 'E-mailová adresa pro faktury'),
       ('7b79d61e-0dfb-42c7-9b8a-cc33d679a65b', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'platba-prikaz', 'Způsob platby: příkaz k úhradě'),
       ('136944ac-da3b-4060-a3bd-48bd5053e3e6', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'platba-inkaso', 'Způsob platby: inkaso'),
       ('e3c78f1f-c75b-4722-a197-4a6ef21ae628', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'platba-sipo', 'Způsob platby: SIPO'),
       ('e14cb2a9-b63f-40f9-bbd4-da127a425215', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'frekvence-mesicne', 'Frekvence záloh: měsíční'),
       ('9e8a3eae-1d29-48b4-ba87-ba542137011f', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'frekvence-ctvrtletne', 'Frekvence záloh: čtvrtletní'),
       ('f92b5204-3032-4b08-a870-9c865b813440', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'frekvence-pololetne', 'Frekvence záloh: pololetní'),
       ('81f9c7c6-ceea-417b-a786-059fa287a89e', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'ulice_211111', 'Předčíslí a číslo účtu'),
       ('594c0270-e125-43f2-bd1a-b2b1f3a9d753', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'kod-banky', 'Kód banky'),
       ('19f85997-9657-4675-bcae-512eacd10b49', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'sipo-cislo', 'Číslo SIPO'),
       ('3bd546fe-75c5-47ef-acac-19ef57fc998e', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'email pro zasílání el faktury2.0.0', 'Výše záloh'),
       ('283b73cb-fa42-47e5-b794-1831a0776d75', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'ynu od', 'Termín zahájení dodávky'),
       ('58b52d8f-e183-4672-8639-72077af8a29a', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'podpis-misto', 'Místo podpisu'),
       ('7f4329fb-b711-48f3-8105-a8cf9efef812', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'podpis-datum', 'Datum podpisu')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_api_field (id, dynamic_template_id, name, type, content_category, fill_instructions)
VALUES ('1ee78958-921b-419a-b6d3-be7726927264', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'clientCategory', 'RADIO', 'STANDARD', '{
  "templateFieldIds": {
    "HOUSEHOLD": "7c1b7539-8a0c-4fe6-93de-e4079b1ffd78",
    "COMPANY": "f3baf53b-6bef-4842-bafe-d3f15859f033"
  }
}'),
       ('26bdc0a5-bb43-4a4d-a353-d72c1b16d2f4', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'reason', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "PROVIDER_CHANGE": "4515c743-d2d7-429b-a9cb-c84fee1d7313",
           "NEW_CLIENT": "97659e40-93ec-4af1-b84f-b08010bc23a6",
           "CLIENT_CHANGE": "7ca5ef36-3502-4126-888c-a6770a5addfc",
           "OTHER": "b8662438-2d8f-4d55-86e3-4eee5a904fc5"
         }
       }'),
       ('b8fabe6b-8540-4eff-b59d-5246f60100ae', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'reasonDetail', 'TEXT', 'STANDARD', '{
         "templateFieldId": "e8d8d6ed-afff-4e03-ba12-a548f4f6b8f8"
       }'),
       ('bd44bc02-5f32-44e9-80cd-e8c34937e850', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'fullName', 'TEXT', 'STANDARD', '{
         "templateFieldId": "2ce4208b-65ea-4c42-abf4-3798adb39b55"
       }'),
       ('ce551ffe-b58f-4efb-81b4-763036a27bc5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'birthDate', 'TEXT', 'STANDARD', '{
         "templateFieldId": "f1c89e3b-2ecc-411a-84c6-b456a29d47ac"
       }'),
       ('3f69c531-7047-41bb-8623-a482cb2947c7', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'permanentAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "4c85021c-6bcc-4c14-8d49-d2f9ac57dcd5"
       }'),
       ('2f3ac7fc-6f58-472e-bc55-b98d31bce12a', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'permanentAddressHouseNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "c03daa6b-2eef-49c9-a5e9-6e4716e6c072"
       }'),
       ('ba8191b2-a171-4996-b0ca-7b3922493ab2', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'permanentAddressOrientationNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "4c9fc78c-a010-4d29-93ae-bb68196657a0"
       }'),
       ('c6416460-6e59-49d1-a122-bbd93e76f9f7', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'permanentAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "a1b52d86-b964-4f54-b9ec-7d1a0d2e8ce6"
       }'),
       ('9ee5df3b-d732-4227-9390-7fa59b45e502', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'permanentAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "9e24dace-f848-4bc9-969c-cac56b294553"
       }'),
       ('f06e0585-e806-4817-b993-2383974a9304', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'phoneNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "52fbe323-4f19-4f2f-948a-a95c7f61a9c7"
       }'),
       ('bfb4d93a-3494-4538-8937-01773180b8e3', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'emailAddress', 'CLONED_TEXT', 'STANDARD', '{
         "clones": [
           {
             "templateFieldId": "05743914-9299-4249-b925-a837bac02baf"
           },
           {
             "templateFieldId": "9ec73738-32b5-4732-9473-0a7f8f0823bc"
           }
         ]
       }'),
       ('c6e012bf-dc23-42a4-a187-29fbb6cc41e5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'providerClientZoneAccount', 'BOOLEAN', 'STANDARD', '{
         "templateFieldId": "e70aad8a-607f-4ee5-8618-3f15a5035b54"
       }'),
       ('698390cf-b7ba-4fda-9727-e4dc556fd98a', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'deliveryAddressEquality', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "CONSUMPTION_POINT": "b0e47d69-4067-4786-b22a-6111444f8360",
           "PERMANENT": "019ef20d-bd02-454d-b33d-f8985adb0714",
           "NONE": "883bfb9c-962d-4c40-a85f-12321575a8d2"
         }
       }'),
       ('0d264ea8-2af1-4133-b170-5bb9d8d92547', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'fullDeliveryAddress', 'TEXT', 'STANDARD', '{
         "templateFieldId": "9f5e3de9-bdd1-4b43-ab42-4d11de9e4fd5",
         "skipIfValueOf": [
           {
             "apiFieldId": "698390cf-b7ba-4fda-9727-e4dc556fd98a",
             "isOtherThan": "NONE"
           }
         ]
       }'),
       ('a4378038-fa5c-43eb-b232-932f7de4127d', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'eic', 'TEXT', 'STANDARD', '{
         "templateFields": "6977f6c5-e969-4dcc-82a0-51a690bf2ca1"
       }'),
       ('b5ede238-7b17-4a3c-8cd1-376a38d1c081', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'yearlyConsumptionKwh', 'TEXT', 'STANDARD', '{
         "templateFieldId": "0d1f1b47-27d4-4468-8164-eace1c1a4699"
       }'),
       ('07eddf7e-de4e-4306-b230-dbec363ea50e', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'consumptionPointUsage', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "APARTMENT_HOUSE_RECREATION": "d0c2145c-e1d8-45e3-9db8-9f5a091eac57",
           "OTHER": "aeebdf71-ad68-497f-9be9-1cf99ded5145"
         }
       }'),
       ('3b1ff08b-7c99-47ad-91d2-77d22a3369b3', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'arrangedGasUsage', 'MULTI_RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "COOKING": "4f275b10-7afa-409b-94c5-ef5e6f5bb9d8",
           "HEATING": "3879f8d9-6d91-4189-b443-3552efad2343",
           "WATER_BOILER": "14443633-1af4-455c-a5e7-86a8d7d258a5",
           "TECHNOLOGY": "243504da-a094-4ea3-aa59-9e3feebd9580"
         }
       }'),
       ('d407d8df-b227-4114-ab8b-f8f760c4990f', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'currentProvider', 'TEXT', 'STANDARD', '{
         "templateFieldId": "fe191ce0-a830-435c-ac28-049d412658dc"
       }'),
       ('1975daa0-2f0b-4671-902e-ef14d5a7d6cd', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'consumptionPointAddressStreet', 'TEXT', 'STANDARD', '{
         "templateFieldId": "eb9bcda6-89ff-42c0-b5f2-64da9d860526"
       }'),
       ('52a9b275-e852-4b90-97aa-281702f0512a', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'consumptionPointAddressHouseNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "b7269a19-42c0-4f25-af6b-d44a88d401b3"
       }'),
       ('e2011d57-ae6d-4059-ab9f-c16a93331d32', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'consumptionPointAddressOrientationNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "67e3b622-67a5-4e5c-b853-c98621b93e64"
       }'),
       ('5a4f6c25-8f64-48e3-9beb-88c0652fa536', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'consumptionPointAddressCity', 'TEXT', 'STANDARD', '{
         "templateFieldId": "06676da9-9a04-41ff-b9c5-4c973ebf78e3"
       }'),
       ('617c6aa1-583f-41cf-927f-599aeb366892', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'consumptionPointAddressZipCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "1621db66-e673-47b1-aa14-d6cf35e4498a"
       }'),
       ('85bcfadd-fd37-4909-866e-1ae013c39b00', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'apartmentNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "9b820f19-2117-46a7-a92e-f508605612bd"
       }'),
       ('7cfdfe8f-eb79-4b53-aa9a-0ef64139f1fc', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'currentProviderContractIndefinite', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "true": "d7a156a7-8c69-4a8b-8bde-f31e3090faa6",
           "false": "fac56264-8733-4988-ab3d-b8c197c8f912"
         }
       }'),
       ('62166d16-f8a5-45d1-9feb-f1b6b0b78904', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'currentProviderDefiniteContractEndDate', 'TEXT', 'STANDARD', '{
         "templateFieldId": "17d7a58b-d133-47d2-a43f-fffae3c4130d"
       }'),
       ('ccb45318-177a-4721-8788-4869c9868c18', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'currentProviderContractIndefiniteEndPeriodUnit', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "DAYS": "58f1018d-6daf-43a3-98c7-2124b83fdd14",
           "MONTHS": "d0380b3c-fd90-4b1f-a0c1-e0fb76d428ea"
         }
       }'),
       ('916887a5-d3eb-4fa7-a12e-91c01ee21a3e', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'currentProviderContractIndefiniteEndPeriodLength', 'TEXT', 'STANDARD', '{
         "templateFieldId": "d7f13030-c118-491c-a59d-5fc3d7d4410e"
       }'),
       ('318e90fb-936c-4c1d-8224-9793680840e5', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'depositPaymentType', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "PAYMENT_ORDER": "7b79d61e-0dfb-42c7-9b8a-cc33d679a65b",
           "DIRECT_DEBIT": "136944ac-da3b-4060-a3bd-48bd5053e3e6",
           "SIPO": "e3c78f1f-c75b-4722-a197-4a6ef21ae628"
         }
       }'),
       ('a0cb0400-4ba9-4323-b28a-b20ad7be0faf', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'depositPaymentFrequency', 'RADIO', 'STANDARD', '{
         "templateFieldIds": {
           "MONTHLY": "e14cb2a9-b63f-40f9-bbd4-da127a425215",
           "QUARTER_YEAR": "9e8a3eae-1d29-48b4-ba87-ba542137011f",
           "YEARLY": "f92b5204-3032-4b08-a870-9c865b813440"
         }
       }'),
       ('ff4d2287-086a-4746-838d-f4e6fb68082d', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'fullBankAccountNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "81f9c7c6-ceea-417b-a786-059fa287a89e"
       }'),
       ('638394ca-dbbc-4bf2-ba08-5e5ebb46e87a', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'bankCode', 'TEXT', 'STANDARD', '{
         "templateFieldId": "594c0270-e125-43f2-bd1a-b2b1f3a9d753"
       }'),
       ('10e4e224-c25f-4acb-b3b6-9127d1302c15', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'sipoNumber', 'TEXT', 'STANDARD', '{
         "templateFieldId": "19f85997-9657-4675-bcae-512eacd10b49"
       }'),
       ('7f9718d8-4403-4369-b7c3-0c9da253c0af', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'depositAmount', 'MONEY', 'STANDARD', '{
         "templateFieldId": "3bd546fe-75c5-47ef-acac-19ef57fc998e"
       }'),
       ('765758f0-9efe-4811-baf6-2e5e82889661', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'deliveryStartDate', 'TEXT', 'STANDARD', '{
         "templateFieldId": "283b73cb-fa42-47e5-b794-1831a0776d75"
       }'),
       ('ffd9590f-2ef3-44ea-b2ed-0d713b8ab6c6', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'signaturePlace', 'TEXT', 'SIGNATURE_PLACE', '{
         "templateFieldId": "58b52d8f-e183-4672-8639-72077af8a29a"
       }'),
       ('875b6064-b629-4845-b09e-4647d079aba6', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 'signatureDate', 'TEXT', 'SIGNATURE_DATE', '{
         "templateFieldId": "7f4329fb-b711-48f3-8105-a8cf9efef812"
       }')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template_signature(id, dynamic_template_id, page, x_coordinate, y_coordinate, width, height)
VALUES ('915967f2-3492-4946-89da-be5fcd9f6f6c', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 1, 330, 315, 200, 45),
       ('0073ab2e-fe05-4a2a-ab19-7d3b40d4473d', '6a5af1e3-b6da-4121-90d7-22fb12250e03', 1, 330, 406, 200, 45)
ON CONFLICT DO NOTHING;