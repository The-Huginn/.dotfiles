select * from codebook where source = 'Positive';
;-- -. . -..- - / . -. - .-. -.--
select * from codebook where id = '49687c09-1f1e-4c06-a18c-7e9ee691921c';
;-- -. . -..- - / . -. - .-. -.--
insert into codebook (id, source, code)
values ('96c07b58-4171-4554-9570-ce8d5020f773', 'RIXO', 'vehicle.color');
;-- -. . -..- - / . -. - .-. -.--
insert into value (id, codebook_id, order_, value)
values ('0393ec82-a96d-4ce4-b347-a80dbd60e4ba', '96c07b58-4171-4554-9570-ce8d5020f773', 100, 'Red'),
       ('c1e9c208-bd00-45c6-a128-ff1bf237a6c7', '96c07b58-4171-4554-9570-ce8d5020f773', 200, 'Blue'),
       ('7f026b8f-6c3f-45d2-8df6-6cbbce698c31', '96c07b58-4171-4554-9570-ce8d5020f773', 300, 'Green'),
       ('c0c01048-3619-4b1b-8960-b49c8e3facba', '96c07b58-4171-4554-9570-ce8d5020f773', 400, 'Yellow'),
       ('001999a0-fdb5-42ec-8b2e-13b7966e8f11', '96c07b58-4171-4554-9570-ce8d5020f773', 500, 'White'),
       ('c0312eb7-39bc-4435-a256-4aefeaff5624', '96c07b58-4171-4554-9570-ce8d5020f773', 600, 'Black'),
       ('3bc9a07e-fac6-4c38-8345-57208d96dee6', '96c07b58-4171-4554-9570-ce8d5020f773', 700, 'Grey'),
       ('46061c5a-45ea-45f3-b99d-91148582f35b', '96c07b58-4171-4554-9570-ce8d5020f773', 800, 'Orange'),
       ('d973d85e-6df4-41dd-88e2-236bd2905812', '96c07b58-4171-4554-9570-ce8d5020f773', 900, 'Gold'),
       ('da183d3f-b465-4938-a720-cf99198d754b', '96c07b58-4171-4554-9570-ce8d5020f773', 1000, 'Silver'),
       ('9cba93dc-238b-4008-82a4-3aa8ccd2646d', '96c07b58-4171-4554-9570-ce8d5020f773', 1100, 'Brown'),
       ('3117afa7-5987-472e-80c0-41614511d245', '96c07b58-4171-4554-9570-ce8d5020f773', 1200, 'Purple'),
       ('d28b2399-21d3-4ef2-9412-36ed947da1b3', '96c07b58-4171-4554-9570-ce8d5020f773', 1300, 'Beige'),
       ('eb777f35-1223-4575-be85-cb36a49b4437', '96c07b58-4171-4554-9570-ce8d5020f773', 1400, 'Pink');
;-- -. . -..- - / . -. - .-. -.--
insert into attribute (codebook_value_id, code, value, id)
values ('0393ec82-a96d-4ce4-b347-a80dbd60e4ba', 'translation.SK', 'Červená', '2920f4ef-3e04-48c4-8b2b-779c9b8b9764'),
       ('0393ec82-a96d-4ce4-b347-a80dbd60e4ba', 'contracts.id', '211', '3069aa1b-86fb-4c27-8097-d7ed550ab8ed'),
       ('c1e9c208-bd00-45c6-a128-ff1bf237a6c7', 'translation.SK', 'Modrá', '91529037-48b8-4b06-a066-fd76fbf30307'),
       ('c1e9c208-bd00-45c6-a128-ff1bf237a6c7', 'contracts.id', '212', '20f9e110-580f-426d-9e58-577a5b73ab71'),
       ('7f026b8f-6c3f-45d2-8df6-6cbbce698c31', 'translation.SK', 'Zelená', '0a4f8ee3-d2c2-46af-ae19-d9a47583907c'),
       ('7f026b8f-6c3f-45d2-8df6-6cbbce698c31', 'contracts.id', '213', '945cc216-e9b3-4a77-91d5-a4468ed0d4d8'),
       ('c0c01048-3619-4b1b-8960-b49c8e3facba', 'translation.SK', 'Žltá', '8982aa14-d47b-4f5f-8582-4835b1703894'),
       ('c0c01048-3619-4b1b-8960-b49c8e3facba', 'contracts.id', '214', '64090f34-3bec-4180-92c5-688de449d142'),
       ('001999a0-fdb5-42ec-8b2e-13b7966e8f11', 'translation.SK', 'Biela', 'e68b81d8-3567-465c-8627-40806690e597'),
       ('001999a0-fdb5-42ec-8b2e-13b7966e8f11', 'contracts.id', '215', 'a748a066-944b-4061-87c6-2545102ccee0'),
       ('c0312eb7-39bc-4435-a256-4aefeaff5624', 'translation.SK', 'Čierná', 'dd563eec-1a73-4c1a-abb1-62f066f9f033'),
       ('c0312eb7-39bc-4435-a256-4aefeaff5624', 'contracts.id', '216', '9f829645-eff0-4012-a39d-6e0b3e90b691'),
       ('3bc9a07e-fac6-4c38-8345-57208d96dee6', 'translation.SK', 'Šedá', '079ad455-1184-4874-a688-5241837be4c6'),
       ('3bc9a07e-fac6-4c38-8345-57208d96dee6', 'contracts.id', '217', '99ad081a-b7ac-4b37-b42b-c25860b65a23'),
       ('46061c5a-45ea-45f3-b99d-91148582f35b', 'translation.SK', 'Oranžová', '3dc66b5f-e51a-4665-8e73-f8a4d2809e60'),
       ('46061c5a-45ea-45f3-b99d-91148582f35b', 'contracts.id', '218', '7a122980-70b2-4417-830f-fdffbb705124'),
       ('d973d85e-6df4-41dd-88e2-236bd2905812', 'translation.SK', 'Zlatá', 'dd4e7b7b-c6f4-4027-8ba9-bafac624cffc'),
       ('d973d85e-6df4-41dd-88e2-236bd2905812', 'contracts.id', '219', '60824330-bbcb-4915-aede-5c51de727d28'),
       ('da183d3f-b465-4938-a720-cf99198d754b', 'translation.SK', 'Strieborná', 'a268fee6-d733-4384-ba56-35a5e213012e'),
       ('da183d3f-b465-4938-a720-cf99198d754b', 'contracts.id', '220', 'e9ee4bbe-28a1-4a5b-9fa9-4b930414bda1'),
       ('9cba93dc-238b-4008-82a4-3aa8ccd2646d', 'translation.SK', 'Hnedá', 'e4930082-cb57-45ea-a762-b8edba5ce20c'),
       ('9cba93dc-238b-4008-82a4-3aa8ccd2646d', 'contracts.id', '221', '0a9017b5-ae7d-455e-ac24-4f00d7772b42'),
       ('3117afa7-5987-472e-80c0-41614511d245', 'translation.SK', 'Fialová', '6e2afc51-fd32-4d81-8cef-b0df35a27d87'),
       ('3117afa7-5987-472e-80c0-41614511d245', 'contracts.id', '222', '30cd2b24-a523-4bb6-a6e0-25f00c7934d9'),
       ('d28b2399-21d3-4ef2-9412-36ed947da1b3', 'translation.SK', 'Béžová', 'b3f5874c-a80c-4ebd-b107-6155458282cd'),
       ('d28b2399-21d3-4ef2-9412-36ed947da1b3', 'contracts.id', '223', '21cba863-88c9-4b16-8fec-d632782b4a3a'),
       ('eb777f35-1223-4575-be85-cb36a49b4437', 'translation.SK', 'Ružová', '67f08ccb-91fa-4583-9ace-95512648cf78'),
       ('eb777f35-1223-4575-be85-cb36a49b4437', 'contracts.id', '224', '7bf64f3f-2348-4b2a-ac72-983a996fc08c');
;-- -. . -..- - / . -. - .-. -.--
delete from attribute where id in (
    '10d96138-eaa9-4b57-a574-cc5e1b788d48',
                                  '13577b7f-0895-42cd-961b-cd90101a2b03',
                                  '2d4005c9-397f-49b1-a918-ab6752071ae8'
    );
;-- -. . -..- - / . -. - .-. -.--
select * from attribute
where id in (
    '299d0e64-c240-4142-ba84-548ebe3c01f4'
        '2ac745cd-b1c1-4973-9eeb-58fabe04847b'
        'b567d228-2d37-4af5-b15c-78ba25933b69'
        '33838e70-09c0-4da9-9029-921066833f93'
        'd359e7de-3e92-4dc6-aa01-0eb4e4cb3a5e'
        '71372d30-d87f-411f-b453-c5128dd090b9'
    );
;-- -. . -..- - / . -. - .-. -.--
delete from attribute
where id in (
    '299d0e64-c240-4142-ba84-548ebe3c01f4',
        '2ac745cd-b1c1-4973-9eeb-58fabe04847b',
        'b567d228-2d37-4af5-b15c-78ba25933b69',
        '33838e70-09c0-4da9-9029-921066833f93',
        'd359e7de-3e92-4dc6-aa01-0eb4e4cb3a5e',
        '71372d30-d87f-411f-b453-c5128dd090b9'
    );
;-- -. . -..- - / . -. - .-. -.--
select * from attribute
where id in (
    '299d0e64-c240-4142-ba84-548ebe3c01f4',
        '2ac745cd-b1c1-4973-9eeb-58fabe04847b',
        'b567d228-2d37-4af5-b15c-78ba25933b69',
        '33838e70-09c0-4da9-9029-921066833f93',
        'd359e7de-3e92-4dc6-aa01-0eb4e4cb3a5e',
        '71372d30-d87f-411f-b453-c5128dd090b9'
    );
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'RUNABOUT'
WHERE id = '4410c353-ded9-45ab-ad4c-09a75cafe007';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'PERSONAL'
WHERE id = 'e408a8b1-390a-4eb5-b9fe-b34dd32e76de';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'MOTORCYCLE'
WHERE id = '28c125b1-e905-4fbf-bea2-53f90ebbd2b8';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'UTILITY'
WHERE id = '7b5407bb-777d-44c5-b168-17a2ce61355e';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'TRUCK'
WHERE id = '46d7cc63-298a-4560-a804-25369a2e415f';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'TRAILER_TRUCK'
WHERE id = '9fbfffb5-38f7-4c8e-823f-8a7c91fbe90b';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'FULL_TRAILER'
WHERE id = '4f775ed6-bfb5-4ff5-8091-0c8885fbff42';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'SEMI_TRAILER'
WHERE id = '82ae3a2b-5434-4be4-9caf-919c6e7f2a76';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'TRAVEL_SEMI_TRAILER'
WHERE id = '3c646953-fe36-4653-aa70-5cb685866215';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'TRAVEL_FULL_TRAILER'
WHERE id = 'ce85f5cc-4fb3-47ce-9493-950d41edec75';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'BUS'
WHERE id = 'c9313930-2ad1-4fad-84c8-921d77230c4c';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'CAMPER'
WHERE id = '7384cf6b-d546-4e7d-83ac-bdd2ca0d5b35';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'AMBULANCE'
WHERE id = '38ab66e6-1945-4326-8752-fa0d90d8b435';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'TRACTOR'
WHERE id = 'f243dcae-b519-4440-a810-0aba91e3bb27';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'HEAVY_MACHINERY'
WHERE id = '8b1f3905-b432-456f-a094-4d0e74390e03';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'OTHER'
WHERE id = '4a754a1e-5c44-44d4-8e0a-d9eaf1e6c172';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'TRAILER'
WHERE id = '76092ffe-a574-42a9-845c-2b7df3a0dfc6';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'RENTAL'
WHERE id = '6ac4ab08-8a81-4214-b456-b221b9e731da';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'DRIVING_SCHOOL'
WHERE id = 'a8abfcb1-5c67-4356-b105-a7dba7174e15';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'REGULAR'
WHERE id = 'd4e4147d-c027-402b-a5ea-9a55024126b8';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'HISTORICAL'
WHERE id = '80ee1a40-2134-4612-97d8-c662d25bce97';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'HISTORICAL_SPN'
WHERE id = 'de9bed3a-6aa1-49e0-9c7d-2b5882eade6f';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'INTERNATIONAL_TRANSPORT'
WHERE id = 'ce3fb5f7-bb17-4fdf-ad28-3a44c38f8f4a';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'WASTE_TRANSPORT'
WHERE id = '78187a4c-546f-4cbe-bef3-1cd18e326cdc';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'RIGHT_OF_WAY'
WHERE id = '15c26e53-5fbd-4121-b890-2819a3feb138';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'DANGEROUS_TRANSPORT'
WHERE id = 'b24d57a9-ea55-4403-afa3-90bcf26dd619';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'GOODS_DELIVERY'
WHERE id = 'b6e5529d-aca6-4103-ade8-f5d13dc556d4';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'AMBULANCE'
WHERE id = '37b412e1-1556-4fcb-b622-1ef773198b4c';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'ROADS_ACCESSIBILITY'
WHERE id = 'da79c83f-6dbc-4c8a-9d4f-d84a6c29999f';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'TAXI'
WHERE id = '5671db11-a02f-43c8-a289-fc523cae5d8c';
;-- -. . -..- - / . -. - .-. -.--
UPDATE value
SET code = 'SPN'
WHERE id = '4a5fa530-1bc2-4c43-a993-aee26686d6bc';