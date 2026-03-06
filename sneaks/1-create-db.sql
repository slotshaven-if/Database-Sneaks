/*************************************************
Database: Sneaks.
Opretter tabeller og indsætter data. 
Bemærk! Linjerne med "--" er kommentarer og ignoreres af databasen.
*************************************************/

-- Opret tabel "Kunde" med kolonner "KundeID", "Navn" og "Email"
CREATE TABLE IF NOT EXISTS Kunde (
    KundeID INTEGER PRIMARY KEY,
    Navn TEXT NOT NULL,
    Email TEXT NOT NULL
);

-- Opret tabel "Produkt" med kolonner "ProduktID", "Model", "Mærke", "Pris" og "Beskrivelse"
CREATE TABLE  IF NOT EXISTS Produkt (
    ProduktID INTEGER PRIMARY KEY,
    Model TEXT NOT NULL,
    Mærke TEXT NOT NULL,
    Pris DECIMAL(10,2) NOT NULL,
    Beskrivelse TEXT
);

-- Opret tabel Ordre med fremmednøgler til Kunde og Produkt
CREATE TABLE IF NOT EXISTS Ordre (
    OrdreID INTEGER PRIMARY KEY,
    KundeID INTEGER,
    ProduktID INTEGER,
    Antal INTEGER NOT NULL,
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID),
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID)
);

DELETE FROM Ordre;
DELETE FROM Kunde;
DELETE FROM Produkt;


-- Indsæt testdata i Kunde
INSERT INTO Kunde (KundeID, Navn, Email) VALUES
    (1, 'Anders Hansen', 'anders.hansen@example.com'),
    (2, 'Mette Larsen', 'mette.larsen@example.com'),
    (3, 'Jonas Petersen', 'jonas.petersen@example.com');  -- Jonas har ingen ordrer

-- Indsæt testdata i Produkt
INSERT INTO Produkt (ProduktID, Model, Mærke, Pris, Beskrivelse) VALUES
    (1, 'Air Max 90', 'Nike', 999.95, 'Klassisk sneaker med god komfort'),
    (2, 'Ultraboost 22', 'Adidas', 1299.00, 'Løbesko med ekstra stødabsorbering'),
    (3, 'Chuck Taylor All Star', 'Converse', 699.50, 'Tidløs canvas-sneaker'),
    (4, 'Old Skool', 'Vans', 749.00, 'Skate-sko med retrolook'),
    (5, 'Gel-Kayano 28', 'Asics', 1399.00, 'Stabil løbesko til lange distancer');

-- Indsæt testdata i Ordre
INSERT INTO Ordre (OrdreID, KundeID, ProduktID, Antal) VALUES
    (1, 1, 2, 1),  -- Anders køber en Adidas Ultraboost
    (2, 1, 4, 2),  -- Anders køber to par Vans Old Skool
    (3, 2, 1, 1),  -- Mette køber en Nike Air Max 90
    (4, 2, 3, 1);  -- Mette køber en Converse Chuck Taylor
