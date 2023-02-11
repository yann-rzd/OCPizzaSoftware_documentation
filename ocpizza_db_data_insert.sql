INSERT INTO public.address (id,address_infos,address_additional_infos,zip_code,city,country) VALUES
	 (2,'Place du Tertre',NULL,'75018','Paris','France'),
	 (3,'18 Impasse De Baale',NULL,'33000','Bordeaux','France'),
	 (1,'21 rue Saint Sulpice',NULL,'75006','Paris','France'),
	 (4,'37 avenue Etienne Billières',NULL,'31300','Toulouse','France'),
	 (5,'15 rue Montesquieu',NULL,'69007','Lyon','France'),
	 (6,'27 rue de la Faisanderie',NULL,'75016','Paris','France'),
	 (7,'34 rue des Lois',NULL,'31000','Toulouse','France');

INSERT INTO public.order_status (id,status_type) VALUES
	 (1,'Commande en attente de préparation'),
	 (2,'Commande en cours de préparation'),
	 (4,'Commande livée'),
	 (3,'Commande terminée');

INSERT INTO public.payment_method (id,"name") VALUES
	 (1,'Sur place'),
	 (2,'A la livraison'),
	 (3,'En ligne');

INSERT INTO public.recipe (id,"name",instructions) VALUES
	 (1,'Marinara','1 louche de tomate, 1 cuillère d''origan, 3 feuilles de basilic'),
	 (2,'Margherita','1 louche de tomate, 1 mozzorella, 5g de grana padano, 3 feuilles de basilic'),
	 (4,'Vegetariana','1 louche de tomate, 1 mozzarella, 1 portion d''aubergine, 1 portion de poivrons, 1 portion de champignons, 1 portions d''artichauts'),
	 (5,'4 formaggi','1 louche de tomate, 1 mozzarella, 1 portion de taleggio, 1 portion de scamorza, 1 portion de gorgonzola'),
	 (6,'Napoletana','1 louche de tomate, 1 portion d''anchois, 5 olives noires, 3 feuilles de basilic'),
	 (7,'Capricciosa','1 louche de tomate, 1 mozarella, 3 tranches de jambons, 1 portion de champignons, 1 portion d''artichauts, 5 olives noires '),
	 (8,'Ricotta','1 louche de tomate, 1 mozzarella, 1 portion de rocitta, 3 feuilles de basilic'),
	 (3,'Diavola','1 louche de tomate, 1 mozzarella, 10 tranches de saucisson pimenté, 5g de grana padano, 3 feuilles de basilic'),
	 (9,'Boisson','Bouteille ou canette');

INSERT INTO public.restaurant (id,address_id,"name",phone_number) VALUES
	 (1,1,'OC Pizza Paris 6','01 11 11 11 11'),
	 (2,2,'OC Pizza Paris 18','01 11 11 11 12'),
	 (3,3,'OC Pizza Bordeaux','05 55 55 55 55'),
	 (4,4,'OC PIzza Toulouse','05 55 55 55 56'),
	 (5,5,'OC Pizza Lyon','04 44 44 44 44');

INSERT INTO public.product (id,"name",is_ingredient) VALUES
	 (1,'Tomate',true),
	 (2,'Mozzarella',true),
	 (3,'Grana Padano',true),
	 (4,'Basalic frais',true),
	 (5,'Anchois',true),
	 (6,'Olives noires',true),
	 (7,'Jambon',true),
	 (8,'Champignons',true),
	 (9,'Saucisson pimenté de Naples',true),
	 (10,'Origan',true),
	 (11,'Artichauts',true),
	 (12,'Aubergines',true),
	 (13,'Poivrons',true),
	 (14,'Courgetttes',true),
	 (15,'Taleggio',true),
	 (16,'Scamorza fumée',true),
	 (17,'Gorgonzola',true),
	 (18,'Ricotta',true),
	 (19,'Marinara',false),
	 (20,'Margherita',false),
	 (21,'Diavola',false),
	 (22,'Vegetariana',false),
	 (23,'4 formaggi',false),
	 (24,'Napoletana',false),
	 (25,'Capricciosa',false),
	 (26,'Ricotta',false),
	 (27,'Eau',false),
	 (28,'Eau gazeuse',false),
	 (29,'Cola',false),
	 (30,'Jus d''orange',false),
	 (31,'Bière',false);

INSERT INTO public."role" (id,"name") VALUES
	 (1,'client'),
	 (2,'caisse'),
	 (3,'pizzaiolo'),
	 (4,'livreur'),
	 (5,'gerant_restaurant'),
	 (6,'gerant_groupe');

INSERT INTO public.product_quantity (product_id,recipe_id,quantity) VALUES
	 (1,1,100),
	 (10,1,5),
	 (4,1,3),
	 (1,2,100),
	 (2,2,1),
	 (3,2,5),
	 (4,2,3),
	 (1,3,100),
	 (9,3,10),
	 (2,3,1),
	 (3,3,5),
	 (4,3,3),
	 (1,4,100),
	 (2,4,1),
	 (12,4,1),
	 (8,4,10),
	 (14,4,1),
	 (13,4,1),
	 (2,5,1),
	 (15,5,1),
	 (16,5,1),
	 (17,5,1),
	 (1,6,100),
	 (6,6,5),
	 (4,6,3),
	 (1,5,100),
	 (1,7,100),
	 (2,7,1),
	 (7,7,3),
	 (8,7,10),
	 (11,7,1),
	 (6,7,5),
	 (1,8,100),
	 (2,8,1),
	 (18,8,1),
	 (4,8,3);

INSERT INTO public.stock (restaurant_id,product_id,quantity) VALUES
	 (1,1,500),
	 (1,2,500),
	 (1,3,500),
	 (1,4,500),
	 (1,5,500),
	 (1,6,500),
	 (1,7,500),
	 (1,8,500),
	 (1,9,500),
	 (1,10,500),
	 (1,11,500),
	 (1,12,500),
	 (1,13,500),
	 (1,14,500),
	 (1,15,500),
	 (1,16,500),
	 (1,17,500),
	 (1,18,500),
	 (2,1,500),
	 (2,2,500),
	 (2,3,500),
	 (2,4,500),
	 (2,5,500),
	 (2,6,500),
	 (2,7,500),
	 (2,8,500),
	 (2,9,500),
	 (2,10,500),
	 (2,11,500),
	 (2,12,500),
	 (2,13,500),
	 (2,14,500),
	 (2,15,500),
	 (2,16,500),
	 (2,17,500),
	 (2,18,500),
	 (3,1,500),
	 (3,2,500),
	 (3,3,500),
	 (3,4,500),
	 (3,5,500),
	 (3,6,500),
	 (3,7,500),
	 (3,8,500),
	 (3,9,500),
	 (3,10,500),
	 (3,11,500),
	 (3,12,500),
	 (3,13,500),
	 (3,14,500),
	 (3,15,500),
	 (3,16,500),
	 (3,17,500),
	 (3,18,500),
	 (4,1,500),
	 (4,2,500),
	 (4,3,500),
	 (4,4,500),
	 (4,5,500),
	 (4,6,500),
	 (4,7,500),
	 (4,8,500),
	 (4,9,500),
	 (4,10,500),
	 (4,11,500),
	 (4,12,500),
	 (4,13,500),
	 (4,14,500),
	 (4,15,500),
	 (4,16,500),
	 (4,17,500),
	 (4,18,500),
	 (5,1,500),
	 (5,2,500),
	 (5,3,500),
	 (5,4,500),
	 (5,5,500),
	 (5,6,500),
	 (5,7,500),
	 (5,8,500),
	 (5,9,500),
	 (5,10,500),
	 (5,11,500),
	 (5,12,500),
	 (5,13,500),
	 (5,14,500),
	 (5,15,500),
	 (5,16,500),
	 (5,17,500),
	 (5,18,500);

INSERT INTO public."user" (id,rode_id,address_id,restaurant_id,first_name,last_name,phone_number,email,"password") VALUES
	 (1,6,1,1,'Franck','Dupont','06 66 66 66 66','franck@ocpizza.fr','admin_franck'),
	 (2,6,2,2,'Lola','Martin','06 66 66 66 67','lola@ocpizza.fr','admin_lola'),
	 (3,5,1,1,'Leo','Dubois','06 66 66 66 68','leo@ocpizza.fr','leo_p6'),
	 (4,2,1,1,'Louise','Bernard','06 66 66 66 69','louise@ocpizza.fr','louise_p6'),
	 (6,4,1,1,'Kevin','Tran','06 66 66 66 71','kevin@ocpizza.fr','kevin_p6'),
	 (5,3,1,1,'Gabriel','Petit','06 66 66 66 70','gabriel@ocpizza.fr','gabriel_p6'),
	 (7,5,2,2,'Sylvie','Leclerc','06 66 66 66 72','sylvie@ocpizza.fr','sylvie_p18'),
	 (8,2,2,2,'Hélène','Moreau','06 66 66 66 73','helene@ocpizza.fr','helene_p18'),
	 (9,3,2,2,'Daniel','Sanchez','06 66 66 66 74','daniel@ocpizza.fr','daniel_p18'),
	 (10,4,2,2,'Nicolas','Letreux','06 66 66 66 75','nicolas@ocpizza.fr','nicolas_p18'),
	 (11,5,3,3,'Paul','Ricard','06 66 66 66 76','paul@ocpizza.fr','paul_bdx'),
	 (12,2,3,3,'Edouard','Bert','06 66 66 66 77','edouard@ocpizza.fr','edouard_bdx'),
	 (13,3,3,3,'Karim','Benze','06 66 66 66 78','karim@ocpizza.fr','karim_bdx'),
	 (14,4,3,3,'Roberta','Hernandez','06 66 66 66 79','roberta@ocpizza.fr','roberta_bdx'),
	 (15,5,4,4,'Shu','Xianbao','06 66 66 66 80','shu@ocpizza.fr','shu_tls'),
	 (16,2,4,4,'Hugo','Fayard','06 66 66 66 81','hugo@ocpizza.fr','hugo_tls'),
	 (17,3,4,4,'Mathilde','Hubert','06 66 66 66 82','mathilde@ocpizza.fr','mathilde_tls'),
	 (18,4,4,4,'Guillaume','Millet','06 66 66 66 83','guillaume@ocpizza.fr','guillaume_tls'),
	 (19,5,5,5,'Antoine','Baudouin','06 66 66 66 84','antoine@ocpizza.fr','antoine_lyn'),
	 (20,2,5,5,'Gaia','Marino','06 66 66 66 85','gaia@ocpizza.fr','gaia_lyn'),
	 (21,3,5,5,'Ilan','Marciano','06 66 66 66 86','ilan@ocpizza.fr','ilan_lyn'),
	 (22,4,5,5,'Florian','Lemaire','06 66 66 66 87','florian@ocpizza.fr','florian_lyn'),
	 (23,1,6,2,'Soukaina','Alaoui','06 66 66 66 88','soukaina@email.fr','Soukaina16'),
	 (24,1,7,4,'Nizard','Magnussen','06 66 66 66 89','nizard@email.fr','Nizard31');


INSERT INTO public.article_catalogue (id,product_id,recipe_id,"name",image_url,description,unit_price,is_available) VALUES
	 (1,19,1,'Pizza Marinara','http://marinara.png','Tomate, origan, basilic frais',12.0,true),
	 (2,20,2,'Pizza Margherita','http://margherita.png','Tomate, mozzarella, grana padano, basilic frais',12.0,true),
	 (3,21,3,'Pizza Diavola','http://diavola.png','Tomate, mozzarella, saucisson pimenté de Naples, grana padano, basilic frais',16.0,true),
	 (4,22,4,'Pizza Vegetariana','http://vege.png','Tomate, mozzarella, aubergine, courgettes, champignons, poivrons',17.0,true),
	 (5,23,5,'Pizza 4 Formaggi','http://formaggi.png','Tomate, mozzarella, taleggio, scamorza fumée, gorgonzola',17.0,true),
	 (6,24,6,'Pizza Napoletana','http://napoletana.png','Tomate, anchois, olives noires, basilic frais',13.0,true),
	 (7,25,7,'Pizza Capricciosa','http://capri.png','Tomate, mozzarella, jambon, champignons, artichauts, olives noires',17.0,true),
	 (8,26,8,'Pizza Ricotta','http://ricotta.png','Tomate, mozzarella, ricotta, tomate fraîche, basilic frais',14.0,true),
	 (9,27,9,'Eau','http://eau.png','En bouteille',3.0,true),
	 (10,28,9,'Eau gazeuse','http://eaug.png','En bouteille',3.0,true),
	 (11,29,9,'Cola','http://cola.png','En canette',5.0,true),
	 (12,30,9,'Jus d''orange','http://jusdo.png','En bouteille',5.0,true),
	 (13,31,9,'Bière','http://biere.png','En bouteille',5.0,true);

INSERT INTO public."order" (reference,client_id,order_status_id,payment_method_id,address_id,restaurant_id,order_date,is_on_delivery,is_order_paid) VALUES
	 (2,24,3,1,7,4,'21/08/2022',false,true),
	 (1,23,4,3,6,2,'12/11/2022',true,true);

INSERT INTO public.invoice (invoice_number,order_reference_id,"date",amount) VALUES
	 (1,1,'22/08/2022',15.0),
	 (2,2,'12/11/2022',37.0);

INSERT INTO public.order_line (order_reference,article_id,unit_price,amount) VALUES
	 (1,2,12.0,15),
	 (1,10,3.0,15),
	 (2,2,12.0,37),
	 (2,4,17.0,37),
	 (2,9,3.0,37),
	 (2,11,5.0,37);
