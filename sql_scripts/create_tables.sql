create extension if not exists 'uuid-ossp';

create type statuses_enum as enum ('OPEN', 'ORDERED');

create table carts (
	id uuid not null default uuid_generate_v4() primary key,
	user_id text not null default uuid_generate_v4(),
	created_at date not null,
	updated_at date not null,
	status statuses_enum not null
);

create table cart_items (
	id uuid not null default uuid_generate_v4() primary key,
	cart_id uuid not null,
	product_id uuid not null,
	"count" integer not null,
	foreign key (cart_id) references carts(id)
);

create table customers (
	id uuid not null default uuid_generate_v4() primary key,
	first_name text not null,
	last_name text not null
);

create table "orders" (
	id uuid not null default uuid_generate_v4() primary key,
	user_id uuid not null,
	cart_id uuid not null references carts(id),
	payment JSON not null,
	delivery JSON not null,
	"comments" text,
	status statuses_enum,
	total integer not null
);

