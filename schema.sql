-- Sastrería Jezreel — esquema de base de datos para el panel del taller
-- Pega este archivo completo en Supabase > SQL Editor > Run

create extension if not exists "pgcrypto";

create table if not exists clientes (
  id uuid primary key default gen_random_uuid(),
  nombre text not null,
  telefono text,
  prenda text not null default 'Traje completo',
  pecho numeric,
  cintura numeric,
  cadera numeric,
  hombro numeric,
  manga numeric,
  pierna numeric,
  cuello numeric,
  espalda numeric,
  fecha date not null,
  urgente boolean not null default false,
  creado_en timestamptz not null default now()
);

-- Seguridad: solo personas que iniciaron sesión (tú y tu equipo del taller)
-- pueden ver o modificar los datos. Nadie de afuera puede leer la tabla.
alter table clientes enable row level security;

create policy "equipo_del_taller_lee"
  on clientes for select
  to authenticated
  using (true);

create policy "equipo_del_taller_inserta"
  on clientes for insert
  to authenticated
  with check (true);

create policy "equipo_del_taller_actualiza"
  on clientes for update
  to authenticated
  using (true);

create policy "equipo_del_taller_elimina"
  on clientes for delete
  to authenticated
  using (true);
