select *
from public.translation t
where t.translation_language = 'SK';
;-- -. . -..- - / . -. - .-. -.--
select c.id, 19
from contract c
where product_id in (24, 25, 26, 27, 92, 93, 94, 248, 256, 10, 24000043, 24000176);
;-- -. . -..- - / . -. - .-. -.--
select c.id, 19
from contract c
where c.product_id in (24, 25, 26, 27, 92, 93, 94, 248, 256, 10, 24000043, 24000176);
;-- -. . -..- - / . -. - .-. -.--
select c.id, 19
from contract c
where c.status_id in (1, 11) and c.product_id in (24, 25, 26, 27, 92, 93, 94, 248, 256, 10, 24000043, 24000176);