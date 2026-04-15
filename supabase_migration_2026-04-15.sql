-- Migración: renombrar Q5/Q6 a desafío y tendencia
-- Correr en SQL Editor de Supabase ANTES del evento.

-- 1. Limpiar respuestas de prueba
DELETE FROM pulso_connect;

-- 2. Drop columnas viejas y crear las nuevas
ALTER TABLE pulso_connect DROP COLUMN IF EXISTS q5_tema;
ALTER TABLE pulso_connect DROP COLUMN IF EXISTS q6_frecuencia;

ALTER TABLE pulso_connect ADD COLUMN q5_desafio text;
ALTER TABLE pulso_connect ADD COLUMN q6_tendencia text;
