# Sastrería Jezreel — Proyecto web

Este es tu proyecto independiente (no mezclado con el Proyecto 8 de la universidad).
Contiene:

- `index.html` → la página pública (catálogo, configurador, contacto)
- `panel.html` → el panel interno del taller (clientes, medidas, alertas de entrega)
- `js/supabaseClient.js` → configuración de conexión a tu base de datos
- `sql/schema.sql` → el script que crea la tabla de clientes en Supabase

Sigue estos pasos EN ORDEN. No necesitas saber programar para esto, solo copiar y pegar.

---

## Paso A — Crear la base de datos en Supabase

1. Entra a **supabase.com** y crea una cuenta gratis (puedes usar tu cuenta de GitHub para entrar más rápido).
2. Click en **New Project**.
   - Nombre: `sastreria-jezreel`
   - Contraseña de base de datos: crea una segura y **guárdala en un lugar seguro** (no la vas a necesitar en el día a día, pero es tu llave maestra).
   - Región: elige la más cercana a Bolivia (normalmente `South America (São Paulo)`).
3. Espera 1-2 minutos a que el proyecto se cree.
4. En el menú izquierdo, entra a **SQL Editor** → **New query**.
5. Abre el archivo `sql/schema.sql` de esta carpeta, copia todo su contenido, pégalo en el editor, y dale **Run**.
   - Esto crea la tabla `clientes` con todas las columnas de medidas, y la protege para que solo tu equipo pueda ver los datos.
6. Ve a **Authentication → Users → Add user → Create new user**.
   - Aquí creas el usuario con el que vas a entrar al panel (tu correo + una contraseña).
   - Puedes crear uno para ti y otro para cada sastre de tu equipo, si quieres que cada uno tenga su propio acceso.

## Paso B — Conectar el panel a tu base de datos

1. En Supabase, ve a **Project Settings (ícono de engranaje) → API**.
2. Copia el valor de **Project URL**.
3. Copia el valor de **anon public** (la clave pública, no la "service_role" — esa nunca se comparte).
4. Abre el archivo `js/supabaseClient.js` de esta carpeta en cualquier editor de texto (o directamente en GitHub, ver Paso C).
5. Reemplaza:
   ```
   const SUPABASE_URL = "PON_AQUI_TU_PROJECT_URL";
   const SUPABASE_ANON_KEY = "PON_AQUI_TU_ANON_PUBLIC_KEY";
   ```
   con tus valores reales, y guarda.

## Paso C — Subir el proyecto a un repositorio nuevo en GitHub

Este es un repositorio **separado** del Proyecto 8 — es tuyo, personal, para este negocio.

1. Entra a GitHub y click en **New repository**.
   - Nombre sugerido: `sastreria-jezreel-web`
   - Visibilidad: puede ser público (no hay contraseñas ni datos sensibles en el código, la clave "anon" está diseñada para ser pública).
   - No marques ninguna opción de inicializar con README (ya tienes uno).
2. Una vez creado, en la página del repo click en **uploading an existing file** (o "Add file → Upload files").
3. Arrastra **toda la carpeta** de este proyecto (`index.html`, `panel.html`, la carpeta `js/`, la carpeta `sql/`, y este `README.md`) y confirma el commit.

## Paso D — Publicar la web con GitHub Pages

1. En tu repositorio, ve a **Settings → Pages**.
2. En "Source", elige **Deploy from a branch**.
3. En "Branch", elige **main** y la carpeta **/ (root)**, luego **Save**.
4. Espera 1-2 minutos. Arriba va a aparecer el link de tu web, algo como:
   `https://tu-usuario.github.io/sastreria-jezreel-web/`
5. Para ver el panel del taller: `https://tu-usuario.github.io/sastreria-jezreel-web/panel.html`

## Paso E — Probar todo

1. Abre el link de `panel.html`, entra con el correo y contraseña que creaste en el Paso A.6.
2. Agrega un cliente de prueba con una fecha de entrega de mañana — debería aparecer en rojo (urgente).
3. Agrega otro con fecha lejana — debería aparecer normal.
4. Si todo funciona, ya tienes el sistema completo funcionando en internet, gratis.

---

### Pendiente para después (bonus, cuando quieras)

- **Dominio propio** (ej. `sastreriajezreel.com`) en vez del link de github.io — se compra en Namecheap y se conecta desde Settings → Pages.
- **Enlaces reales de WhatsApp/Instagram/Facebook** — solo dime tus usuarios y número, y te actualizo el `index.html`.
- **Probador virtual con IA fotorrealista** — se decide cuando quieras evaluar el costo de la API.
