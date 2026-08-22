create table if not exists public.catpuccino_profiles (
  user_id uuid primary key references auth.users(id) on delete cascade,
  username text unique,
  profile_name text not null default 'Caffeine Cat',
  profile_img text,
  total_cups integer not null default 0 check (total_cups >= 0),
  total_spent numeric(12,2) not null default 0 check (total_spent >= 0),
  level integer not null default 1 check (level >= 1),
  xp integer not null default 0 check (xp >= 0),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.catpuccino_drink_records (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null default 'New Brew',
  brand text not null default 'Cafe',
  price numeric(12,2) not null default 0 check (price >= 0),
  category text not null default 'Coffee',
  sweetness text,
  ice_level text,
  photo text,
  review text,
  recorded_at timestamptz not null default now(),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.catpuccino_user_preferences (
  user_id uuid primary key references auth.users(id) on delete cascade,
  layout_order jsonb not null default '[]'::jsonb,
  layout_sizes jsonb not null default '{}'::jsonb,
  layout_heights jsonb not null default '{}'::jsonb,
  bento_sizes jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists catpuccino_drink_records_user_recorded_at_idx
  on public.catpuccino_drink_records (user_id, recorded_at desc);

create or replace function public.set_catpuccino_updated_at()
returns trigger
language plpgsql
set search_path = public
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists set_catpuccino_profiles_updated_at on public.catpuccino_profiles;
create trigger set_catpuccino_profiles_updated_at
before update on public.catpuccino_profiles
for each row execute function public.set_catpuccino_updated_at();

drop trigger if exists set_catpuccino_drink_records_updated_at on public.catpuccino_drink_records;
create trigger set_catpuccino_drink_records_updated_at
before update on public.catpuccino_drink_records
for each row execute function public.set_catpuccino_updated_at();

drop trigger if exists set_catpuccino_user_preferences_updated_at on public.catpuccino_user_preferences;
create trigger set_catpuccino_user_preferences_updated_at
before update on public.catpuccino_user_preferences
for each row execute function public.set_catpuccino_updated_at();

alter table public.catpuccino_profiles enable row level security;
alter table public.catpuccino_drink_records enable row level security;
alter table public.catpuccino_user_preferences enable row level security;

revoke all on table public.catpuccino_profiles from anon, authenticated;
revoke all on table public.catpuccino_drink_records from anon, authenticated;
revoke all on table public.catpuccino_user_preferences from anon, authenticated;

grant usage on schema public to authenticated;
grant select, insert, update, delete on table public.catpuccino_profiles to authenticated;
grant select, insert, update, delete on table public.catpuccino_drink_records to authenticated;
grant select, insert, update, delete on table public.catpuccino_user_preferences to authenticated;

drop policy if exists "Users can select their own Cat-puccino profile" on public.catpuccino_profiles;
create policy "Users can select their own Cat-puccino profile"
on public.catpuccino_profiles
for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Users can insert their own Cat-puccino profile" on public.catpuccino_profiles;
create policy "Users can insert their own Cat-puccino profile"
on public.catpuccino_profiles
for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can update their own Cat-puccino profile" on public.catpuccino_profiles;
create policy "Users can update their own Cat-puccino profile"
on public.catpuccino_profiles
for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can delete their own Cat-puccino profile" on public.catpuccino_profiles;
create policy "Users can delete their own Cat-puccino profile"
on public.catpuccino_profiles
for delete
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Users can select their own Cat-puccino drink records" on public.catpuccino_drink_records;
create policy "Users can select their own Cat-puccino drink records"
on public.catpuccino_drink_records
for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Users can insert their own Cat-puccino drink records" on public.catpuccino_drink_records;
create policy "Users can insert their own Cat-puccino drink records"
on public.catpuccino_drink_records
for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can update their own Cat-puccino drink records" on public.catpuccino_drink_records;
create policy "Users can update their own Cat-puccino drink records"
on public.catpuccino_drink_records
for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can delete their own Cat-puccino drink records" on public.catpuccino_drink_records;
create policy "Users can delete their own Cat-puccino drink records"
on public.catpuccino_drink_records
for delete
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Users can select their own Cat-puccino preferences" on public.catpuccino_user_preferences;
create policy "Users can select their own Cat-puccino preferences"
on public.catpuccino_user_preferences
for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Users can insert their own Cat-puccino preferences" on public.catpuccino_user_preferences;
create policy "Users can insert their own Cat-puccino preferences"
on public.catpuccino_user_preferences
for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can update their own Cat-puccino preferences" on public.catpuccino_user_preferences;
create policy "Users can update their own Cat-puccino preferences"
on public.catpuccino_user_preferences
for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can delete their own Cat-puccino preferences" on public.catpuccino_user_preferences;
create policy "Users can delete their own Cat-puccino preferences"
on public.catpuccino_user_preferences
for delete
to authenticated
using ((select auth.uid()) = user_id);
