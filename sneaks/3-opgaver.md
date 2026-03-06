# Opgaver til webshop-database

Løs disse opgaver.

**Sådan gør du**. Kopier opgaverne til en sql-fil eller dit query-vindue. Gem opgave og løsning i din logbog.

## Opgave: SELECT

Hent alle produkter med en pris under 1000 kr

```sql
-- Hent alle produkter med en pris under 1000 kr.
-- Skriv din forespørgsel herunder.
SELECT ..
```

## Opgave: UPDATE

Opdater prisen på 'Vans Old Skool' til 799.00 kr

Tjek at prisen er blevet opdateret ved at køre en SELECT-forespørgsel.
Skriv din forespørgsel herunder:

```sql
-- Opdater prisen på et par Vans.
-- Skriv din forespørgsel herunder.
UPDATE  ..
```

## Opgave: DELETE

Slet alle kunder som ikke har nogen ordrer.

Tjek først kundens ID ved at køre en SELECT-forespørgsel.
Tjek derefter, om kunden har ordrer i Ordre-tabellen.
Efter at have slettet kunden, skal du køre en SELECT-forespørgsel.

```sql
-- Slet kunder uden ordrer.
-- Skriv din forespørgsel herunder.
SELECT ..

DELETE  ..
```

## Opgave: INSERT

Tilføj en ny ordre, hvor Sofie Thomsen køber en Asics Gel-Kayano 28 (1 stk).

Find produktets ID og kundens id ved at køre en SELECT-forespørgsel.
Find et nyt ordre-ID ved at tælle antallet af rækker i Ordre-tabellen.
Brug derefter disse ID'er til at indsætte en ny ordre i Ordre-tabellen.

```sql
-- Slet kunder uden ordrer.
-- Skriv din forespørgsel herunder.
SELECT ..
SELECT ..
INSERT  ..
```

## Opgave: Find alle kunder, der har købt Adidas-produkter

Udskriv kun kundens navn og email og skoens model.
Brug JOIN.

```sql
-- Kunder der har købt adidas
-- Skriv din forespørgsel herunder.
SELECT
FROM [tabel]
JOIN [tabel]
```
