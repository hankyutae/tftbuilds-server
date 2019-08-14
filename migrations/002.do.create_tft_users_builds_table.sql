create extension if not exists "uuid-ossp";
create table users (
  id uuid primary key unique default uuid_generate_v4 (),
  user_name text not null unique,
  email text not null,
  password text not null,
  date_created TIMESTAMPTZ NOT NULL DEFAULT now(),
  date_modified TIMESTAMPTZ NOT NULL DEFAULT now()
);

create table builds (
  id uuid primary key unique default uuid_generate_v4 (),
  user_id uuid references users(id) on delete cascade not null,
  date_created TIMESTAMPTZ NOT NULL DEFAULT now(),
  date_modified TIMESTAMPTZ NOT NULL DEFAULT now(),
  is_public bool default false,
  build_data jsonb not null
);
