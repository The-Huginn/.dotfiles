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

INSERT INTO file_info (id, path, owner_id, original_file_name, content_type, size_in_bytes)
VALUES ('b15a6490-23d1-4993-a5db-45315a1677d3', '/static-files/templates', 'rixo-file-storage', 'pre-electricity-contract-partner.pdf', 'application/pdf', 686811)
ON CONFLICT DO NOTHING;

INSERT INTO static_file (id, file_info_id, name, result_file_name, backoffice_name)
VALUES ('5a037d3c-83f7-4664-8d6c-52e7a25e9a10', 'b15a6490-23d1-4993-a5db-45315a1677d3', 'pre-electricity-contract-partner.pdf', 'smlouva', 'Elektřina PRE: smlouva Partner 10/2024')
ON CONFLICT DO NOTHING;

INSERT INTO dynamic_template (id, static_file_id, fonts)
VALUES ('22ad6990-b332-47ee-91a6-dff581f5c306', '5a037d3c-83f7-4664-8d6c-52e7a25e9a10', '{
  "Helv": "Roboto-Regular",
  "ZaDb": "Roboto-Regular"
}')
ON CONFLICT DO NOTHING;

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
       ('116b3972-44ca-4823-8aad-fcd656e682c9', '22ad6990-b332-47ee-91a6-dff581f5c306', 'ean', 'TEXT', 'STANDARD', '{
         "templateFields": "fe4cd64e-7510-43a8-935d-59ee248f6a63"
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

INSERT INTO dynamic_template_signature(id, dynamic_template_id, page, x_coordinate, y_coordinate, width, height)
VALUES ('49f51828-a39b-44f4-8283-719970c9ba5e', '22ad6990-b332-47ee-91a6-dff581f5c306', 1, 330, 305, 200, 45),
       ('a5aa685c-e07c-48ed-830f-34ded6668c85', '22ad6990-b332-47ee-91a6-dff581f5c306', 1, 330, 399, 200, 45)
ON CONFLICT DO NOTHING;