# Cultural Engagement Pack · Humand Connect 2026

App standalone para el stand de Cultura & Engagement en **Humand Connect 2026** (16 de abril, Yacht Club Puerto Madero).

3 módulos en una SPA:
- 💛 **Pulso** — encuesta anónima de 7 preguntas (tablet del stand)
- 📊 **Dashboard** — visualización en vivo de respuestas (pantalla del stand)
- ⚡ **Trivia** — quiz con timer sobre Humand y el evento (tablet)

Replica el look & feel del [CultureLab](https://github.com/barbaraaliprandi/CultureLab) para que se sienta como un módulo real de Humand.

---

## Setup

### 1. Supabase
1. Crear un nuevo proyecto en [supabase.com](https://supabase.com).
2. En el SQL Editor, correr `supabase_schema.sql`.
3. Copiar `Project URL` y `anon public key` desde Settings → API.
4. Pegarlas en `index.html` reemplazando los placeholders:
   ```js
   const SUPABASE_URL = '__PEGAR_URL__';
   const SUPABASE_KEY = '__PEGAR_ANON_KEY__';
   ```

### 2. Local
```bash
cd /Users/agustina/CEP
python3 -m http.server 8000
# abrir http://localhost:8000
```

### 3. Deploy (Vercel)
```bash
git init && git add . && git commit -m "init"
# crear repo en GitHub, push
# en vercel.com → Import Project → seleccionar repo → Deploy (sin build step)
```

---

## Estructura

```
.
├── index.html              # SPA completa (CSS + JS inline)
├── assets/
│   └── humand-logo.svg
├── supabase_schema.sql     # DDL para la tabla pulso_connect
├── vercel.json
└── README.md
```

---

## Uso en el stand

- **Tablet 1 (pulso/trivia)**: abrir la app, dejar en tab "Pulso" o "Trivia". Cada persona responde y el botón "Responder de nuevo" la deja lista para el siguiente.
- **Pantalla (dashboard)**: abrir la misma URL en otra pestaña, ir a tab "Dashboard". Se actualiza en tiempo real mientras responden en la tablet.

---

## Preguntas pendientes para el día del evento
- Año real de fundación de Humand (trivia Q1)
- Cantidad real de colaboradores que usan Humand (trivia Q2)
- Stat real de % de empresas que mide cultura (trivia Q6)
