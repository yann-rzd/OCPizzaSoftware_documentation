-- public.address definition

-- Drop table

-- DROP TABLE public.address;

CREATE TABLE public.address (
	id int4 NOT NULL,
	address_infos varchar NOT NULL,
	address_additional_infos varchar NULL,
	zip_code varchar NOT NULL,
	city varchar NOT NULL,
	country varchar NOT NULL,
	CONSTRAINT address_pk PRIMARY KEY (id)
);


-- public.product definition

-- Drop table

-- DROP TABLE public.product;

CREATE TABLE public.product (
	id int4 NOT NULL,
	"name" varchar NOT NULL,
	is_ingredient bool NOT NULL,
	CONSTRAINT product_pk PRIMARY KEY (id)
);


-- public."role" definition

-- Drop table

-- DROP TABLE public."role";

CREATE TABLE public."role" (
	id int4 NOT NULL,
	"name" varchar NOT NULL,
	CONSTRAINT role_pk PRIMARY KEY (id)
);


-- public.order_status definition

-- Drop table

-- DROP TABLE public.order_status;

CREATE TABLE public.order_status (
	id int4 NOT NULL,
	status_type varchar NOT NULL,
	CONSTRAINT order_status_pk PRIMARY KEY (id)
);


-- public.payment_method definition

-- Drop table

-- DROP TABLE public.payment_method;

CREATE TABLE public.payment_method (
	id int4 NOT NULL,
	"name" varchar NOT NULL,
	CONSTRAINT payment_method_pk PRIMARY KEY (id)
);


-- public.recipe definition

-- Drop table

-- DROP TABLE public.recipe;

CREATE TABLE public.recipe (
	id int4 NOT NULL,
	"name" varchar NOT NULL,
	instructions varchar NOT NULL,
	CONSTRAINT recipe_pk PRIMARY KEY (id)
);


-- public.restaurant definition

-- Drop table

-- DROP TABLE public.restaurant;

CREATE TABLE public.restaurant (
	id int4 NOT NULL,
	address_id int4 NOT NULL,
	"name" varchar NOT NULL,
	phone_number varchar NOT NULL,
	CONSTRAINT restaurant_pk PRIMARY KEY (id),
	CONSTRAINT restaurant_fk FOREIGN KEY (address_id) REFERENCES public.address(id)
);


-- public.stock definition

-- Drop table

-- DROP TABLE public.stock;

CREATE TABLE public.stock (
	restaurant_id int4 NOT NULL,
	product_id int4 NOT NULL,
	quantity int4 NOT NULL,
	CONSTRAINT stock_pk PRIMARY KEY (restaurant_id, product_id),
	CONSTRAINT stock_product_fk FOREIGN KEY (product_id) REFERENCES public.product(id),
	CONSTRAINT stock_restaurant_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id)
);


-- public."user" definition

-- Drop table

-- DROP TABLE public."user";

CREATE TABLE public."user" (
	id int4 NOT NULL,
	rode_id int4 NOT NULL,
	address_id int4 NOT NULL,
	restaurant_id int4 NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	phone_number varchar NOT NULL,
	email varchar NOT NULL,
	"password" varchar NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY (id),
	CONSTRAINT user_address_fk FOREIGN KEY (address_id) REFERENCES public.address(id),
	CONSTRAINT user_restaurant_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id),
	CONSTRAINT user_role_fk FOREIGN KEY (rode_id) REFERENCES public."role"(id)
);


-- public."order" definition

-- Drop table

-- DROP TABLE public."order";

CREATE TABLE public."order" (
	reference int4 NOT NULL,
	client_id int4 NOT NULL,
	order_status_id int4 NOT NULL,
	payment_method_id int4 NOT NULL,
	address_id int4 NOT NULL,
	restaurant_id int4 NOT NULL,
	order_date varchar NOT NULL,
	is_on_delivery bool NOT NULL,
	is_order_paid bool NOT NULL,
	CONSTRAINT order_pk PRIMARY KEY (reference),
	CONSTRAINT order_address_fk FOREIGN KEY (address_id) REFERENCES public.address(id),
	CONSTRAINT order_client_fk FOREIGN KEY (client_id) REFERENCES public."user"(id),
	CONSTRAINT order_payment_method_fk FOREIGN KEY (payment_method_id) REFERENCES public.payment_method(id),
	CONSTRAINT order_restaurant_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id),
	CONSTRAINT order_status_fk FOREIGN KEY (order_status_id) REFERENCES public.order_status(id)
);


-- public.invoice definition

-- Drop table

-- DROP TABLE public.invoice;

CREATE TABLE public.invoice (
	invoice_number int4 NOT NULL,
	order_reference_id int4 NOT NULL,
	"date" varchar NOT NULL,
	amount float4 NOT NULL,
	CONSTRAINT invoice_pk PRIMARY KEY (invoice_number),
	CONSTRAINT invoice_fk FOREIGN KEY (order_reference_id) REFERENCES public."order"(reference)
);


-- public.product_quantity definition

-- Drop table

-- DROP TABLE public.product_quantity;

CREATE TABLE public.product_quantity (
	product_id int4 NOT NULL,
	recipe_id int4 NOT NULL,
	quantity int4 NOT NULL,
	CONSTRAINT product_quantity_pk PRIMARY KEY (product_id, recipe_id),
	CONSTRAINT product_quantity_product_fk FOREIGN KEY (product_id) REFERENCES public.product(id),
	CONSTRAINT product_quantity_recipe_fk FOREIGN KEY (recipe_id) REFERENCES public.recipe(id)
);


-- public.article_catalogue definition

-- Drop table

-- DROP TABLE public.article_catalogue;

CREATE TABLE public.article_catalogue (
	id int4 NOT NULL,
	product_id int4 NOT NULL,
	recipe_id int4 NOT NULL,
	"name" varchar NOT NULL,
	image_url varchar NOT NULL,
	description varchar NOT NULL,
	unit_price float4 NOT NULL,
	is_available bool NOT NULL,
	CONSTRAINT article_catalogue_pk PRIMARY KEY (id),
	CONSTRAINT article_catalogue_product_fk FOREIGN KEY (product_id) REFERENCES public.product(id),
	CONSTRAINT article_catalogue_recipe_fk FOREIGN KEY (recipe_id) REFERENCES public.recipe(id)
);


-- public.order_line definition

-- Drop table

-- DROP TABLE public.order_line;

CREATE TABLE public.order_line (
	order_reference int4 NOT NULL,
	article_id int4 NOT NULL,
	unit_price float4 NULL,
	amount int4 NOT NULL,
	CONSTRAINT order_line_pk PRIMARY KEY (order_reference, article_id),
	CONSTRAINT order_line_article_fk FOREIGN KEY (article_id) REFERENCES public.article_catalogue(id),
	CONSTRAINT order_line_order_reference_fk FOREIGN KEY (order_reference) REFERENCES public."order"(reference)
);