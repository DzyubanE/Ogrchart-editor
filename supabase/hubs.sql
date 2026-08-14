-- Studio · Hubs
-- Хранилище хаб-страниц. Повторяет модель доступа таблицы diagrams:
-- пользователь видит и правит только свои записи.
--
-- Применить один раз в Supabase → SQL Editor. Скрипт идемпотентный,
-- повторный запуск ничего не сломает.

create table if not exists public.hubs (
  id         uuid        primary key default gen_random_uuid(),
  user_id    uuid        not null default auth.uid() references auth.users (id) on delete cascade,
  title      text        not null default 'Без названия',
  doc        jsonb       not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists hubs_user_updated_idx
  on public.hubs (user_id, updated_at desc);

-- ── updated_at ───────────────────────────────────────────────
create or replace function public.hubs_touch_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists hubs_touch_updated_at on public.hubs;
create trigger hubs_touch_updated_at
  before update on public.hubs
  for each row execute function public.hubs_touch_updated_at();

-- ── RLS ──────────────────────────────────────────────────────
alter table public.hubs enable row level security;

drop policy if exists "hubs_select_own" on public.hubs;
create policy "hubs_select_own" on public.hubs
  for select using (auth.uid() = user_id);

drop policy if exists "hubs_insert_own" on public.hubs;
create policy "hubs_insert_own" on public.hubs
  for insert with check (auth.uid() = user_id);

drop policy if exists "hubs_update_own" on public.hubs;
create policy "hubs_update_own" on public.hubs
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "hubs_delete_own" on public.hubs;
create policy "hubs_delete_own" on public.hubs
  for delete using (auth.uid() = user_id);
