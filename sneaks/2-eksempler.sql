/******* Forespørgsler *********************************************************
Database: Sneaks.
Lav en række forespørgsler (queries).
Tryk "RUN" for at se resultaterne.
Slet kommentartegnet -- foran en forespørgsel for at køre den.
*************************************************************************/

-- Eksempel 1. Viser indhold med filtrering med WHERE
SELECT * FROM Kunde;
SELECT * FROM Produkt;
SELECT * FROM Ordre;

-- Disse forespørgsler viser specifikke kolonner fra Kunde og Produkt-tabellerne

-- SELECT Email FROM Kunde WHERE Navn = 'Anders Hansen';
-- SELECT Model, Pris FROM Produkt WHERE Mærke = 'Nike';
-- SELECT Mærke FROM Produkt WHERE Pris > 1000;
-- SELECT max(OrdreID) from Produkt; -- Finder den højeste ordre-ID
-- SELECT avg(Price) from Produkt; -- Finder gennemsnitsprisen på produkter

/* 
Eksempel 2.
Viser en liste over ordrer. 
Den bruger JOIN til at kombinere data fra Kunde, Ordre og Produkt-tabellerne
Resultatet inkluderer kundens navn, produktets model, mærke, pris og antal købte enheder
*/
SELECT Kunde.Navn, Produkt.Model, Produkt.Mærke, Produkt.Pris, Ordre.Antal
    FROM Ordre
    JOIN Kunde ON Ordre.KundeID = Kunde.KundeID
    JOIN Produkt ON Ordre.ProduktID = Produkt.ProduktID;

-- alternativ version med USING fordi felterne har samme navn i begge tabeller.
SELECT Kunde.Navn, Produkt.Model, Produkt.Mærke, Produkt.Pris, Ordre.Antal
    FROM Ordre
    JOIN Kunde USING (KundeID)
    JOIN Produkt USING (ProduktID);


-- Eksempel 3. Opdaterer beskrivelsen af et produkt i Produkt-tabellen
UPDATE Produkt
    SET Beskrivelse = 'Ny forbedret version med bedre sål'
    WHERE ProduktID = 1;  -- Opdaterer Nike Air Max 90
-- SELECT * FROM Produkt;  -- Kør denne forespørgsel for at se ændringerne

-- Eksempel 4. Sletter en kunde fra Kunde-tabellen
DELETE FROM Kunde WHERE KundeID = 3;
-- SELECT * FROM Kunde;  -- Kør denne forespørgsel for at se ændringerne

-- Eksempel 5. Opretter en ny kunde i Kunde-tabellen
INSERT INTO Kunde (KundeID, Navn, Email) VALUES
    (4, 'Sofie Thomsen', 'sofie.thomsen@example.com');
--   -- Kør denne forespørgsel for at se ændringerne
SELECT * FROM Kunde;