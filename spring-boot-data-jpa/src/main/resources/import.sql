INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'Yazmin','Mejia','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'Lupe','Villegas','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'Sandra','Lopex','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'Asucena','Valdez','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'siggy bb','Puerquito','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'Luis','Aguirre','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'A','B','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'C','D','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'f','f','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'f','d','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'g','j','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 't','j','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 't','o','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'm','p','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'l','k','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'e','e','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 's','s','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'w','w','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'q','q','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'q','w','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'd','e','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'f','e','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'g','r','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'f','t','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'g','f','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'b','d','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'l','v','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'e','m','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 's','i','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'w','b','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'q','j','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'e','m','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 's','b','prueba@prueba.com','2017-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'w','f','prueba1@prueba.com','2019-08-28','');
INSERT INTO clientes( nombre, apellido, email, create_at, foto) VALUES( 'q','y','prueba@prueba.com','2017-08-28','');

/*Tabla productos*/
INSERT INTO productos(nombre,precio,create_at) VALUES('Panasonic Pantalla LCD 50','259990',NOW());
INSERT INTO productos(nombre,precio,create_at) VALUES('Sony Pantalla LCD 50','359990',NOW());
INSERT INTO productos(nombre,precio,create_at) VALUES('Samsung Pantalla LCD 50','340000',NOW());
INSERT INTO productos(nombre,precio,create_at) VALUES('Motorola','60000',NOW());
INSERT INTO productos(nombre,precio,create_at) VALUES('Xiomar','259990',NOW());
INSERT INTO productos(nombre,precio,create_at) VALUES('LG','8000',NOW());
INSERT INTO productos(nombre,precio,create_at) VALUES('IPHONE','300000',NOW());
INSERT INTO productos(nombre,precio,create_at) VALUES('Bicicleta rosa 29','5600',NOW());

/*Carga de factutras*/

INSERT INTO facturas(descripcion, observacion,cliente_id,create_at)VALUES('Factua equipo de oficina', null,1,NOW());
INSERT INTO facturas_items(cantidad,factura_id,producto_id)VALUES(1,1,1);
INSERT INTO facturas_items(cantidad,factura_id,producto_id)VALUES(2,1,4);
INSERT INTO facturas_items(cantidad,factura_id,producto_id)VALUES(1,1,5);
INSERT INTO facturas_items(cantidad,factura_id,producto_id)VALUES(1,1,7);

INSERT INTO facturas(descripcion, observacion,cliente_id,create_at)VALUES('Factua Bicicleta', 'Oferta de periodo fin de año',1,NOW());
INSERT INTO facturas_items(cantidad,factura_id,producto_id)VALUES(1,2,8);
