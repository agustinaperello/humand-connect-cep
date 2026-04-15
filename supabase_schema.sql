-- Cultural Engagement Pack · Humand Connect 2026
-- Tabla única para respuestas del pulso del evento.
-- Correr este script en el SQL Editor del nuevo proyecto Supabase.

CREATE TABLE IF NOT EXISTS pulso_connect (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at timestamptz DEFAULT now(),
  q1_energia int CHECK (q1_energia BETWEEN 1 AND 5),
  q2_expectativa text,
  q3_networking text,
  q4_speaker text,
  q5_desafio text,
  q6_tendencia text,
  q7_comentario text
);

-- Row Level Security: anon (clave pública) puede insertar y leer.
-- No hay datos sensibles; la tabla está aislada para el evento.
ALTER TABLE pulso_connect ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "anon insert" ON pulso_connect;
CREATE POLICY "anon insert" ON pulso_connect
  FOR INSERT TO anon WITH CHECK (true);

DROP POLICY IF EXISTS "anon select" ON pulso_connect;
CREATE POLICY "anon select" ON pulso_connect
  FOR SELECT TO anon USING (true);

-- Habilitar Realtime para que el dashboard reciba INSERTs en vivo.
ALTER PUBLICATION supabase_realtime ADD TABLE pulso_connect;
