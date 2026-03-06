-- SQL-eksempler baseret på tabellen element

-- 1. Simpel SELECT
SELECT element, symbol
FROM element;

-- 2. SELECT med WHERE
SELECT element, phase
FROM element
WHERE phase = 'gas';

-- 3. SELECT med WHERE på tal
SELECT element, atomic_no, period
FROM element
WHERE period = 2;

-- 4. SELECT med LIMIT
SELECT element, atomic_no
FROM element
LIMIT 5;

-- 5. SELECT med ORDER BY stigende
SELECT element, atomic_mass
FROM element
ORDER BY atomic_mass ASC;

-- 6. SELECT med ORDER BY faldende
SELECT element, atomic_mass
FROM element
ORDER BY atomic_mass DESC;

-- 7. SELECT med ORDER BY og LIMIT
SELECT element, atomic_mass
FROM element
ORDER BY atomic_mass ASC
LIMIT 10;

-- 8. MAX()
SELECT MAX(atomic_mass) AS hoejeste_atomic_mass
FROM element;

-- 9. MIN()
SELECT MIN(atomic_mass) AS laveste_atomic_mass
FROM element;

-- 10. WHERE kombineret med MAX()
SELECT MAX(melting_point) AS hoejeste_smeltepunkt
FROM element
WHERE phase = 'solid';
