--------------------------------------------------------------------------------
-- Single table database with information on the periodic system
-- Data from https://gist.github.com/GoodmanSciences/c2dd862cd38f21b0ad36b8f96b4bf1ee
-- Design of column/table names: 
--  - number = no
--  - underscore for multiname
--  - yes/no to boolean
--  - add checks where relevant
--------------------------------------------------------------------------------
-- set schema 'elements';

-- Use: Create a table called element
create table if not exists element(
    atomic_no            int                    primary key,
    element              varchar(99)  not null,
    symbol               varchar(2)   not null  unique, 
    atomic_mass          numeric(7,3) not null  check (atomic_mass > 0),
    no_neutrons          smallint     not null  check (no_neutrons >= 0),
    no_protons           smallint     not null  check (no_protons  >= 1),
    no_electrons         smallint     not null  check (no_electrons >= 1),
    period               smallint     not null,
    "group"              smallint,
    phase                varchar(99)  not null,
    radioactive          bool,
    "natural"            bool,
    metal                bool,
    non_metal            bool,
    metalloid            bool,
    "type"               varchar(99),
    atomic_radius        numeric(7,3),
    electro_negativity   numeric(7,3),
    first_ionization     numeric(7,3),
    density              decimal,
    melting_point        numeric(10,3),
    boiling_point        numeric(10,3),
    no_isotopes          smallint                   check (no_isotopes >= 1),
    discoverer           varchar(99),
    "year"               smallint,        
    specific_heat        numeric(10,3),
    no_shells            smallint                   check (no_shells >= 1),
    no_valence           smallint                   check (no_valence >= 1)
);


--------------------------------------------------------------------------------
-- Loads data into the element table.
-- Data from https://gist.github.com/GoodmanSciences/c2dd862cd38f21b0ad36b8f96b4bf1ee
--------------------------------------------------------------------------------
-- set schema 'elements';

INSERT INTO element VALUES (1, 'Hydrogen', 'H', 1.007, 0, 1, 1, 1, 1, 'gas', null, true, null, true, null, 'Nonmetal', 0.790, 2.200, 13.598, 0.0000899, 14.175, 20.280, 3, 'Cavendish', 1766, 14.304, 1, 1);
INSERT INTO element VALUES (2, 'Helium', 'He', 4.002, 2, 2, 2, 1, 18, 'gas', null, true, null, true, null, 'Noble Gas', 0.490, null, 24.587, 0.000179, null, 4.220, 5, 'Janssen', 1868, 5.193, 1, null);
INSERT INTO element VALUES (3, 'Lithium', 'Li', 6.941, 4, 3, 3, 2, 1, 'solid', null, true, true, null, null, 'Alkali Metal', 2.100, 0.980, 5.392, 0.534, 453.850, 1615.000, 5, 'Arfvedson', 1817, 3.582, 2, 1);
INSERT INTO element VALUES (4, 'Beryllium', 'Be', 9.012, 5, 4, 4, 2, 2, 'solid', null, true, true, null, null, 'Alkaline Earth Metal', 1.400, 1.570, 9.323, 1.85, 1560.150, 2742.000, 6, 'Vaulquelin', 1798, 1.825, 2, 2);
INSERT INTO element VALUES (5, 'Boron', 'B', 10.811, 6, 5, 5, 2, 13, 'solid', null, true, null, null, true, 'Metalloid', 1.200, 2.040, 8.298, 2.34, 2573.150, 4200.000, 6, 'Gay-Lussac', 1808, 1.026, 2, 3);
INSERT INTO element VALUES (6, 'Carbon', 'C', 12.011, 6, 6, 6, 2, 14, 'solid', null, true, null, true, null, 'Nonmetal', 0.910, 2.550, 11.260, 2.27, 3948.150, 4300.000, 7, 'Prehistoric', null, 0.709, 2, 4);
INSERT INTO element VALUES (7, 'Nitrogen', 'N', 14.007, 7, 7, 7, 2, 15, 'gas', null, true, null, true, null, 'Nonmetal', 0.750, 3.040, 14.534, 0.00125, 63.290, 77.360, 8, 'Rutherford', 1772, 1.040, 2, 5);
INSERT INTO element VALUES (8, 'Oxygen', 'O', 15.999, 8, 8, 8, 2, 16, 'gas', null, true, null, true, null, 'Nonmetal', 0.650, 3.440, 13.618, 0.00143, 50.500, 90.200, 8, 'Priestley/Scheele', 1774, 0.918, 2, 6);
INSERT INTO element VALUES (9, 'Fluorine', 'F', 18.998, 10, 9, 9, 2, 17, 'gas', null, true, null, true, null, 'Halogen', 0.570, 3.980, 17.423, 0.0017, 53.630, 85.030, 6, 'Moissan', 1886, 0.824, 2, 7);
INSERT INTO element VALUES (10, 'Neon', 'Ne', 20.180, 10, 10, 10, 2, 18, 'gas', null, true, null, true, null, 'Noble Gas', 0.510, null, 21.565, 0.0009, 24.703, 27.070, 8, 'Ramsay and Travers', 1898, 1.030, 2, 8);
INSERT INTO element VALUES (11, 'Sodium', 'Na', 22.990, 12, 11, 11, 3, 1, 'solid', null, true, true, null, null, 'Alkali Metal', 2.200, 0.930, 5.139, 0.971, 371.150, 1156.000, 7, 'Davy', 1807, 1.228, 3, 1);
INSERT INTO element VALUES (12, 'Magnesium', 'Mg', 24.305, 12, 12, 12, 3, 2, 'solid', null, true, true, null, null, 'Alkaline Earth Metal', 1.700, 1.310, 7.646, 1.74, 923.150, 1363.000, 8, 'Black', 1755, 1.023, 3, 2);
INSERT INTO element VALUES (13, 'Aluminum', 'Al', 26.982, 14, 13, 13, 3, 13, 'solid', null, true, true, null, null, 'Metal', 1.800, 1.610, 5.986, 2.7, 933.400, 2792.000, 8, 'Wshler', 1827, 0.897, 3, 3);
INSERT INTO element VALUES (14, 'Silicon', 'Si', 28.086, 14, 14, 14, 3, 14, 'solid', null, true, null, null, true, 'Metalloid', 1.500, 1.900, 8.152, 2.33, 1683.150, 3538.000, 8, 'Berzelius', 1824, 0.705, 3, 4);
INSERT INTO element VALUES (15, 'Phosphorus', 'P', 30.974, 16, 15, 15, 3, 15, 'solid', null, true, null, true, null, 'Nonmetal', 1.200, 2.190, 10.487, 1.82, 317.250, 553.000, 7, 'BranBrand', 1669, 0.769, 3, 5);
INSERT INTO element VALUES (16, 'Sulfur', 'S', 32.065, 16, 16, 16, 3, 16, 'solid', null, true, null, true, null, 'Nonmetal', 1.100, 2.580, 10.360, 2.07, 388.510, 717.800, 10, 'Prehistoric', null, 0.710, 3, 6);
INSERT INTO element VALUES (17, 'Chlorine', 'Cl', 35.453, 18, 17, 17, 3, 17, 'gas', null, true, null, true, null, 'Halogen', 0.970, 3.160, 12.968, 0.00321, 172.310, 239.110, 11, 'Scheele', 1774, 0.479, 3, 7);
INSERT INTO element VALUES (18, 'Argon', 'Ar', 39.948, 22, 18, 18, 3, 18, 'gas', null, true, null, true, null, 'Noble Gas', 0.880, null, 15.760, 0.00178, 83.960, 87.300, 8, 'Rayleigh and Ramsay', 1894, 0.520, 3, 8);
INSERT INTO element VALUES (19, 'Potassium', 'K', 39.098, 20, 19, 19, 4, 1, 'solid', null, true, true, null, null, 'Alkali Metal', 2.800, 0.820, 4.341, 0.862, 336.500, 1032.000, 10, 'Davy', 1807, 0.757, 4, 1);
INSERT INTO element VALUES (20, 'Calcium', 'Ca', 40.078, 20, 20, 20, 4, 2, 'solid', null, true, true, null, null, 'Alkaline Earth Metal', 2.200, 1.000, 6.113, 1.54, 1112.150, 1757.000, 14, 'Davy', 1808, 0.647, 4, 2);
INSERT INTO element VALUES (21, 'Scandium', 'Sc', 44.956, 24, 21, 21, 4, 3, 'solid', null, true, true, null, null, 'Transition Metal', 2.100, 1.360, 6.562, 2.99, 1812.150, 3109.000, 15, 'Nilson', 1878, 0.568, 4, null);
INSERT INTO element VALUES (22, 'Titanium', 'Ti', 47.867, 26, 22, 22, 4, 4, 'solid', null, true, true, null, null, 'Transition Metal', 2.000, 1.540, 6.828, 4.54, 1933.150, 3560.000, 9, 'Gregor', 1791, 0.523, 4, null);
INSERT INTO element VALUES (23, 'Vanadium', 'V', 50.942, 28, 23, 23, 4, 5, 'solid', null, true, true, null, null, 'Transition Metal', 1.900, 1.630, 6.746, 6.11, 2175.150, 3680.000, 9, '   del Rio', 1801, 0.489, 4, null);
INSERT INTO element VALUES (24, 'Chromium', 'Cr', 51.996, 28, 24, 24, 4, 6, 'solid', null, true, true, null, null, 'Transition Metal', 1.900, 1.660, 6.767, 7.15, 2130.150, 2944.000, 9, 'Vauquelin', 1797, 0.449, 4, null);
INSERT INTO element VALUES (25, 'Manganese', 'Mn', 54.938, 30, 25, 25, 4, 7, 'solid', null, true, true, null, null, 'Transition Metal', 1.800, 1.550, 7.434, 7.44, 1519.150, 2334.000, 11, 'Gahn, Scheele', 1774, 0.479, 4, null);
INSERT INTO element VALUES (26, 'Iron', 'Fe', 55.845, 30, 26, 26, 4, 8, 'solid', null, true, true, null, null, 'Transition Metal', 1.700, 1.830, 7.902, 7.87, 1808.150, 3134.000, 10, 'Prehistoric', null, 0.449, 4, null);
INSERT INTO element VALUES (27, 'Cobalt', 'Co', 58.933, 32, 27, 27, 4, 9, 'solid', null, true, true, null, null, 'Transition Metal', 1.700, 1.880, 7.881, 8.86, 1768.150, 3200.000, 14, 'Brandt', 1735, 0.421, 4, null);
INSERT INTO element VALUES (28, 'Nickel', 'Ni', 58.693, 31, 28, 28, 4, 10, 'solid', null, true, true, null, null, 'Transition Metal', 1.600, 1.910, 7.640, 8.91, 1726.150, 3186.000, 11, 'Cronstedt', 1751, 0.444, 4, null);
INSERT INTO element VALUES (29, 'Copper', 'Cu', 63.546, 35, 29, 29, 4, 11, 'solid', null, true, true, null, null, 'Transition Metal', 1.600, 1.900, 7.726, 8.96, 1357.750, 2835.000, 11, 'Prehistoric', null, 0.385, 4, null);
INSERT INTO element VALUES (30, 'Zinc', 'Zn', 65.380, 35, 30, 30, 4, 12, 'solid', null, true, true, null, null, 'Transition Metal', 1.500, 1.650, 9.394, 7.13, 692.880, 1180.000, 15, 'Prehistoric', null, 0.388, 4, null);
INSERT INTO element VALUES (31, 'Gallium', 'Ga', 69.723, 39, 31, 31, 4, 13, 'solid', null, true, true, null, null, 'Metal', 1.800, 1.810, 5.999, 5.91, 302.910, 2477.000, 14, 'de Boisbaudran', 1875, 0.371, 4, 3);
INSERT INTO element VALUES (32, 'Germanium', 'Ge', 72.640, 41, 32, 32, 4, 14, 'solid', null, true, null, null, true, 'Metalloid', 1.500, 2.010, 7.899, 5.32, 1211.450, 3106.000, 17, 'Winkler', 1886, 0.320, 4, 4);
INSERT INTO element VALUES (33, 'Arsenic', 'As', 74.922, 42, 33, 33, 4, 15, 'solid', null, true, null, null, true, 'Metalloid', 1.300, 2.180, 9.789, 5.78, 1090.150, 887.000, 14, 'Albertus Magnus', 1250, 0.329, 4, 5);
INSERT INTO element VALUES (34, 'Selenium', 'Se', 78.960, 45, 34, 34, 4, 16, 'solid', null, true, null, true, null, 'Nonmetal', 1.200, 2.550, 9.752, 4.81, 494.150, 958.000, 20, 'Berzelius', 1817, 0.321, 4, 6);
INSERT INTO element VALUES (35, 'Bromine', 'Br', 79.904, 45, 35, 35, 4, 17, 'liq', null, true, null, true, null, 'Halogen', 1.100, 2.960, 11.814, 3.12, 266.050, 332.000, 19, 'Balard', 1826, 0.474, 4, 7);
INSERT INTO element VALUES (36, 'Krypton', 'Kr', 83.798, 48, 36, 36, 4, 18, 'gas', null, true, null, true, null, 'Noble Gas', 1.000, null, 14.000, 0.00373, 115.930, 119.930, 23, 'Ramsay and Travers', 1898, 0.248, 4, 8);
INSERT INTO element VALUES (37, 'Rubidium', 'Rb', 85.468, 48, 37, 37, 5, 1, 'solid', null, true, true, null, null, 'Alkali Metal', 3.000, 0.820, 4.177, 1.53, 312.790, 961.000, 20, 'Bunsen and Kirchoff', 1861, 0.363, 5, 1);
INSERT INTO element VALUES (38, 'Strontium', 'Sr', 87.620, 50, 38, 38, 5, 2, 'solid', null, true, true, null, null, 'Alkaline Earth Metal', 2.500, 0.950, 5.695, 2.64, 1042.150, 1655.000, 18, 'Davy', 1808, 0.301, 5, 2);
INSERT INTO element VALUES (39, 'Yttrium', 'Y', 88.906, 50, 39, 39, 5, 3, 'solid', null, true, true, null, null, 'Transition Metal', 2.300, 1.220, 6.217, 4.47, 1799.150, 3609.000, 21, 'Gadolin', 1794, 0.298, 5, null);
INSERT INTO element VALUES (40, 'Zirconium', 'Zr', 91.224, 51, 40, 40, 5, 4, 'solid', null, true, true, null, null, 'Transition Metal', 2.200, 1.330, 6.634, 6.51, 2125.150, 4682.000, 20, 'Klaproth', 1789, 0.278, 5, null);
INSERT INTO element VALUES (41, 'Niobium', 'Nb', 92.906, 52, 41, 41, 5, 5, 'solid', null, true, true, null, null, 'Transition Metal', 2.100, 1.600, 6.759, 8.57, 2741.150, 5017.000, 24, 'Hatchett', 1801, 0.265, 5, null);
INSERT INTO element VALUES (42, 'Molybdenum', 'Mo', 95.960, 54, 42, 42, 5, 6, 'solid', null, true, true, null, null, 'Transition Metal', 2.000, 2.160, 7.092, 10.2, 2890.150, 4912.000, 20, 'Scheele', 1778, 0.251, 5, null);
INSERT INTO element VALUES (43, 'Technetium', 'Tc', 98.000, 55, 43, 43, 5, 7, 'artificial', true, null, true, null, null, 'Transition Metal', 2.000, 1.900, 7.280, 11.5, 2473.150, 5150.000, 23, 'Perrier and Segr�', 1937, null, 5, null);
INSERT INTO element VALUES (44, 'Ruthenium', 'Ru', 101.070, 57, 44, 44, 5, 8, 'solid', null, true, true, null, null, 'Transition Metal', 1.900, 2.200, 7.361, 12.4, 2523.150, 4423.000, 16, 'Klaus', 1844, 0.238, 5, null);
INSERT INTO element VALUES (45, 'Rhodium', 'Rh', 102.906, 58, 45, 45, 5, 9, 'solid', null, true, true, null, null, 'Transition Metal', 1.800, 2.280, 7.459, 12.4, 2239.150, 3968.000, 20, 'Wollaston', 1803, 0.243, 5, null);
INSERT INTO element VALUES (46, 'Palladium', 'Pd', 106.420, 60, 46, 46, 5, 10, 'solid', null, true, true, null, null, 'Transition Metal', 1.800, 2.200, 8.337, 12, 1825.150, 3236.000, 21, 'Wollaston', 1803, 0.244, 5, null);
INSERT INTO element VALUES (47, 'Silver', 'Ag', 107.868, 61, 47, 47, 5, 11, 'solid', null, true, true, null, null, 'Transition Metal', 1.800, 1.930, 7.576, 10.5, 1234.150, 2435.000, 27, 'Prehistoric', null, 0.235, 5, null);
INSERT INTO element VALUES (48, 'Cadmium', 'Cd', 112.411, 64, 48, 48, 5, 12, 'solid', null, true, true, null, null, 'Transition Metal', 1.700, 1.690, 8.994, 8.69, 594.330, 1040.000, 22, 'Stromeyer', 1817, 0.232, 5, null);
INSERT INTO element VALUES (49, 'Indium', 'In', 114.818, 66, 49, 49, 5, 13, 'solid', null, true, true, null, null, 'Metal', 2.000, 1.780, 5.786, 7.31, 429.910, 2345.000, 34, 'Reich and Richter', 1863, 0.233, 5, 3);
INSERT INTO element VALUES (50, 'Tin', 'Sn', 118.710, 69, 50, 50, 5, 14, 'solid', null, true, true, null, null, 'Metal', 1.700, 1.960, 7.344, 7.29, 505.210, 2875.000, 28, 'Prehistoric', null, 0.228, 5, 4);
INSERT INTO element VALUES (51, 'Antimony', 'Sb', 121.760, 71, 51, 51, 5, 15, 'solid', null, true, null, null, true, 'Metalloid', 1.500, 2.050, 8.608, 6.69, 904.050, 1860.000, 29, 'Early historic times', null, 0.207, 5, 5);
INSERT INTO element VALUES (52, 'Tellurium', 'Te', 127.600, 76, 52, 52, 5, 16, 'solid', null, true, null, null, true, 'Metalloid', 1.400, 2.100, 9.010, 6.23, 722.800, 1261.000, 29, 'von Reichenstein', 1782, 0.202, 5, 6);
INSERT INTO element VALUES (53, 'Iodine', 'I', 126.904, 74, 53, 53, 5, 17, 'solid', null, true, null, true, null, 'Halogen', 1.300, 2.660, 10.451, 4.93, 386.650, 457.400, 24, 'Courtois', 1811, 0.214, 5, 7);
INSERT INTO element VALUES (54, 'Xenon', 'Xe', 131.293, 77, 54, 54, 5, 18, 'gas', null, true, null, true, null, 'Noble Gas', 1.200, null, 12.130, 0.00589, 161.450, 165.030, 31, 'Ramsay and Travers', 1898, 0.158, 5, 8);
INSERT INTO element VALUES (55, 'Cesium', 'Cs', 132.905, 78, 55, 55, 6, 1, 'solid', null, true, true, null, null, 'Alkali Metal', 3.300, 0.790, 3.894, 1.87, 301.700, 944.000, 22, 'Bunsen and Kirchoff', 1860, 0.242, 6, 1);
INSERT INTO element VALUES (56, 'Barium', 'Ba', 137.327, 81, 56, 56, 6, 2, 'solid', null, true, true, null, null, 'Alkaline Earth Metal', 2.800, 0.890, 5.212, 3.59, 1002.150, 2170.000, 25, 'Davy', 1808, 0.204, 6, 2);
INSERT INTO element VALUES (57, 'Lanthanum', 'La', 138.905, 82, 57, 57, 6, 3, 'solid', null, true, true, null, null, 'Lanthanide', 2.700, 1.100, 5.577, 6.15, 1193.150, 3737.000, 19, 'Mosander', 1839, 0.195, 6, null);
INSERT INTO element VALUES (58, 'Cerium', 'Ce', 140.116, 82, 58, 58, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.700, 1.120, 5.539, 6.77, 1071.150, 3716.000, 19, 'Berzelius', 1803, 0.192, 6, null);
INSERT INTO element VALUES (59, 'Praseodymium', 'Pr', 140.908, 82, 59, 59, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.700, 1.130, 5.473, 6.77, 1204.150, 3793.000, 15, 'von Welsbach', 1885, 0.193, 6, null);
INSERT INTO element VALUES (60, 'Neodymium', 'Nd', 144.242, 84, 60, 60, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.600, 1.140, 5.525, 7.01, 1289.150, 3347.000, 16, 'von Welsbach', 1885, 0.190, 6, null);
INSERT INTO element VALUES (61, 'Promethium', 'Pm', 145.000, 84, 61, 61, 6, null, 'artificial', true, null, true, null, null, 'Lanthanide', 2.600, 1.130, 5.582, 7.26, 1204.150, 3273.000, 14, 'Marinsky et al.', 1945, null, 6, null);
INSERT INTO element VALUES (62, 'Samarium', 'Sm', 150.360, 88, 62, 62, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.600, 1.170, 5.644, 7.52, 1345.150, 2067.000, 17, 'Boisbaudran', 1879, 0.197, 6, null);
INSERT INTO element VALUES (63, 'Europium', 'Eu', 151.964, 89, 63, 63, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.600, 1.200, 5.670, 5.24, 1095.150, 1802.000, 21, 'Demarcay', 1901, 0.182, 6, null);
INSERT INTO element VALUES (64, 'Gadolinium', 'Gd', 157.250, 93, 64, 64, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.500, 1.200, 6.150, 7.9, 1585.150, 3546.000, 17, 'de Marignac', 1880, 0.236, 6, null);
INSERT INTO element VALUES (65, 'Terbium', 'Tb', 158.925, 94, 65, 65, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.500, 1.200, 5.864, 8.23, 1630.150, 3503.000, 24, 'Mosander', 1843, 0.182, 6, null);
INSERT INTO element VALUES (66, 'Dysprosium', 'Dy', 162.500, 97, 66, 66, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.500, 1.220, 5.939, 8.55, 1680.150, 2840.000, 21, 'de Boisbaudran', 1886, 0.170, 6, null);
INSERT INTO element VALUES (67, 'Holmium', 'Ho', 164.930, 98, 67, 67, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.500, 1.230, 6.022, 8.8, 1743.150, 2993.000, 29, 'Delafontaine and Soret', 1878, 0.165, 6, null);
INSERT INTO element VALUES (68, 'Erbium', 'Er', 167.259, 99, 68, 68, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.500, 1.240, 6.108, 9.07, 1795.150, 3503.000, 16, 'Mosander', 1843, 0.168, 6, null);
INSERT INTO element VALUES (69, 'Thulium', 'Tm', 168.934, 100, 69, 69, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.400, 1.250, 6.184, 9.32, 1818.150, 2223.000, 18, 'Cleve', 1879, 0.160, 6, null);
INSERT INTO element VALUES (70, 'Ytterbium', 'Yb', 173.054, 103, 70, 70, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.400, 1.100, 6.254, 6.97, 1097.150, 1469.000, 16, 'Marignac', 1878, 0.155, 6, null);
INSERT INTO element VALUES (71, 'Lutetium', 'Lu', 174.967, 104, 71, 71, 6, null, 'solid', null, true, true, null, null, 'Lanthanide', 2.300, 1.270, 5.426, 9.84, 1936.150, 3675.000, 22, 'Urbain/ von Welsbach', 1907, 0.154, 6, null);
INSERT INTO element VALUES (72, 'Hafnium', 'Hf', 178.490, 106, 72, 72, 6, 4, 'solid', null, true, true, null, null, 'Transition Metal', 2.200, 1.300, 6.825, 13.3, 2500.150, 4876.000, 17, 'Coster and von Hevesy', 1923, 0.144, 6, null);
INSERT INTO element VALUES (73, 'Tantalum', 'Ta', 180.948, 108, 73, 73, 6, 5, 'solid', null, true, true, null, null, 'Transition Metal', 2.100, 1.500, 7.550, 16.7, 3269.150, 5731.000, 19, 'Ekeberg', 1801, 0.140, 6, null);
INSERT INTO element VALUES (74, 'Wolfram', 'W', 183.840, 110, 74, 74, 6, 6, 'solid', null, true, true, null, null, 'Transition Metal', 2.000, 2.360, 7.864, 19.3, 3680.150, 5828.000, 22, 'J. and F. d''Elhuyar', 1783, 0.132, 6, null);
INSERT INTO element VALUES (75, 'Rhenium', 'Re', 186.207, 111, 75, 75, 6, 7, 'solid', null, true, true, null, null, 'Transition Metal', 2.000, 1.900, 7.834, 21, 3453.150, 5869.000, 21, 'Noddack, Berg, and Tacke', 1925, 0.137, 6, null);
INSERT INTO element VALUES (76, 'Osmium', 'Os', 190.230, 114, 76, 76, 6, 8, 'solid', null, true, true, null, null, 'Transition Metal', 1.900, 2.200, 8.438, 22.6, 3300.150, 5285.000, 19, 'Tennant', 1803, 0.130, 6, null);
INSERT INTO element VALUES (77, 'Iridium', 'Ir', 192.217, 115, 77, 77, 6, 9, 'solid', null, true, true, null, null, 'Transition Metal', 1.900, 2.200, 8.967, 22.6, 2716.150, 4701.000, 25, 'Tennant', 1804, 0.131, 6, null);
INSERT INTO element VALUES (78, 'Platinum', 'Pt', 195.084, 117, 78, 78, 6, 10, 'solid', null, true, true, null, null, 'Transition Metal', 1.800, 2.280, 8.959, 21.5, 2045.150, 4098.000, 32, 'Ulloa/Wood', 1735, 0.133, 6, null);
INSERT INTO element VALUES (79, 'Gold', 'Au', 196.967, 118, 79, 79, 6, 11, 'solid', null, true, true, null, null, 'Transition Metal', 1.800, 2.540, 9.226, 19.3, 1337.730, 3129.000, 21, 'Prehistoric', null, 0.129, 6, null);
INSERT INTO element VALUES (80, 'Mercury', 'Hg', 200.590, 121, 80, 80, 6, 12, 'liq', null, true, true, null, null, 'Transition Metal', 1.800, 2.000, 10.438, 13.5, 234.430, 630.000, 26, 'Prehistoric', null, 0.140, 6, null);
INSERT INTO element VALUES (81, 'Thallium', 'Tl', 204.383, 123, 81, 81, 6, 13, 'solid', null, true, true, null, null, 'Metal', 2.100, 2.040, 6.108, 11.9, 577.150, 1746.000, 28, 'Crookes', 1861, 0.129, 6, 3);
INSERT INTO element VALUES (82, 'Lead', 'Pb', 207.200, 125, 82, 82, 6, 14, 'solid', null, true, true, null, null, 'Metal', 1.800, 2.330, 7.417, 11.3, 600.750, 2022.000, 29, 'Prehistoric', null, 0.129, 6, 4);
INSERT INTO element VALUES (83, 'Bismuth', 'Bi', 208.980, 126, 83, 83, 6, 15, 'solid', null, true, true, null, null, 'Metal', 1.600, 2.020, 7.286, 9.81, 544.670, 1837.000, 19, 'Geoffroy the Younger', 1753, 0.122, 6, 5);
INSERT INTO element VALUES (84, 'Polonium', 'Po', 210.000, 126, 84, 84, 6, 16, 'solid', true, true, null, null, true, 'Metalloid', 1.500, 2.000, 8.417, 9.32, 527.150, 1235.000, 34, 'Curie', 1898, null, 6, 6);
INSERT INTO element VALUES (85, 'Astatine', 'At', 210.000, 125, 85, 85, 6, 17, 'solid', true, true, null, true, null, 'Noble Gas', 1.400, 2.200, 9.300, 7, 575.150, 610.000, 21, 'Corson et al.', 1940, null, 6, 7);
INSERT INTO element VALUES (86, 'Radon', 'Rn', 222.000, 136, 86, 86, 6, 18, 'gas', true, true, true, null, null, 'Alkali Metal', 1.300, null, 10.749, 0.00973, 202.150, 211.300, 20, 'Dorn', 1900, 0.094, 6, 8);
INSERT INTO element VALUES (87, 'Francium', 'Fr', 223.000, 136, 87, 87, 7, 1, 'solid', true, true, true, null, null, 'Alkaline Earth Metal', null, 0.700, 4.073, 1.87, 300.150, 950.000, 21, 'Perey', 1939, null, 7, 1);
INSERT INTO element VALUES (88, 'Radium', 'Ra', 226.000, 138, 88, 88, 7, 2, 'solid', true, true, true, null, null, 'Actinide', null, 0.900, 5.278, 5.5, 973.150, 2010.000, 15, 'Pierre and Marie Curie', 1898, null, 7, 2);
INSERT INTO element VALUES (89, 'Actinium', 'Ac', 227.000, 138, 89, 89, 7, 3, 'solid', true, true, true, null, null, 'Actinide', null, 1.100, 5.170, 10.1, 1323.150, 3471.000, 11, 'Debierne/Giesel', 1899, 0.120, 7, null);
INSERT INTO element VALUES (90, 'Thorium', 'Th', 232.038, 142, 90, 90, 7, null, 'solid', true, true, true, null, null, 'Actinide', null, 1.300, 6.307, 11.7, 2028.150, 5061.000, 12, 'Berzelius', 1828, 0.113, 7, null);
INSERT INTO element VALUES (91, 'Protactinium', 'Pa', 231.036, 140, 91, 91, 7, null, 'solid', true, true, true, null, null, 'Actinide', null, 1.500, 5.890, 15.4, 1873.150, 4300.000, 14, 'Hahn and Meitner', 1917, null, 7, null);
INSERT INTO element VALUES (92, 'Uranium', 'U', 238.029, 146, 92, 92, 7, null, 'solid', true, true, true, null, null, 'Actinide', null, 1.380, 6.194, 19, 1405.150, 4404.000, 15, 'Peligot', 1841, 0.116, 7, null);
INSERT INTO element VALUES (93, 'Neptunium', 'Np', 237.000, 144, 93, 93, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.360, 6.266, 20.5, 913.150, 4273.000, 153, 'McMillan and Abelson', 1940, null, 7, null);
INSERT INTO element VALUES (94, 'Plutonium', 'Pu', 244.000, 150, 94, 94, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.280, 6.026, 19.8, 913.150, 3501.000, 163, 'Seaborg et al.', 1940, null, 7, null);
INSERT INTO element VALUES (95, 'Americium', 'Am', 243.000, 148, 95, 95, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 5.974, 13.7, 1267.150, 2880.000, 133, 'Seaborg et al.', 1944, null, 7, null);
INSERT INTO element VALUES (96, 'Curium', 'Cm', 247.000, 151, 96, 96, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 5.992, 13.5, 1340.150, 3383.000, 133, 'Seaborg et al.', 1944, null, 7, null);
INSERT INTO element VALUES (97, 'Berkelium', 'Bk', 247.000, 150, 97, 97, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 6.198, 14.8, 1259.150, 983.000, 83, 'Seaborg et al.', 1949, null, 7, null);
INSERT INTO element VALUES (98, 'Californium', 'Cf', 251.000, 153, 98, 98, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 6.282, 15.1, 1925.150, 1173.000, 123, 'Seaborg et al.', 1950, null, 7, null);
INSERT INTO element VALUES (99, 'Einsteinium', 'Es', 252.000, 153, 99, 99, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 6.420, 13.5, 1133.150, null, 123, 'Ghiorso et al.', 1952, null, 7, null);
INSERT INTO element VALUES (100, 'Fermium', 'Fm', 257.000, 157, 100, 100, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 6.500, null, null, null, 103, 'Ghiorso et al.', 1953, null, 7, null);
INSERT INTO element VALUES (101, 'Mendelevium', 'Md', 258.000, 157, 101, 101, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 6.580, null, null, null, 33, 'Ghiorso et al.', 1955, null, 7, null);
INSERT INTO element VALUES (102, 'Nobelium', 'No', 259.000, 157, 102, 102, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, 1.300, 6.650, null, null, null, 73, 'Ghiorso et al.', 1958, null, 7, null);
INSERT INTO element VALUES (103, 'Lawrencium', 'Lr', 262.000, 159, 103, 103, 7, null, 'artificial', true, null, true, null, null, 'Actinide', null, null, null, null, null, null, 203, 'Ghiorso et al.', 1961, null, 7, null);
INSERT INTO element VALUES (104, 'Rutherfordium', 'Rf', 261.000, 157, 104, 104, 7, 4, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, 18.1, null, null, null, 'Ghiorso et al.', 1969, null, 7, null);
INSERT INTO element VALUES (105, 'Dubnium', 'Db', 262.000, 157, 105, 105, 7, 5, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, 39, null, null, null, 'Ghiorso et al.', 1970, null, 7, null);
INSERT INTO element VALUES (106, 'Seaborgium', 'Sg', 266.000, 160, 106, 106, 7, 6, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, 35, null, null, null, 'Ghiorso et al.', 1974, null, 7, null);
INSERT INTO element VALUES (107, 'Bohrium', 'Bh', 264.000, 157, 107, 107, 7, 7, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, 37, null, null, null, 'Armbruster and M�nzenberg', 1981, null, 7, null);
INSERT INTO element VALUES (108, 'Hassium', 'Hs', 267.000, 159, 108, 108, 7, 8, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, 41, null, null, null, 'Armbruster and M�nzenberg', 1983, null, 7, null);
INSERT INTO element VALUES (109, 'Meitnerium', 'Mt', 268.000, 159, 109, 109, 7, 9, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, 35, null, null, null, 'GSI, Darmstadt, West Germany', 1982, null, 7, null);
INSERT INTO element VALUES (110, 'Darmstadtium ', 'Ds', 271.000, 161, 110, 110, 7, 10, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, null, null, null, null, null, 1994, null, 7, null);
INSERT INTO element VALUES (111, 'Roentgenium ', 'Rg', 272.000, 161, 111, 111, 7, 11, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, null, null, null, null, null, 1994, null, 7, null);
INSERT INTO element VALUES (112, 'Copernicium ', 'Cn', 285.000, 173, 112, 112, 7, 12, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, null, null, null, null, null, 1996, null, 7, null);
INSERT INTO element VALUES (113, 'Nihonium', 'Nh', 284.000, 171, 113, 113, 7, 13, 'artificial', true, null, true, null, null, null, null, null, null, null, null, null, null, null, 2004, null, 7, 3);
INSERT INTO element VALUES (114, 'Flerovium', 'Fl', 289.000, 175, 114, 114, 7, 14, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, null, null, null, null, null, 1999, null, 7, 4);
INSERT INTO element VALUES (115, 'Moscovium', 'Mc', 288.000, 173, 115, 115, 7, 15, 'artificial', true, null, true, null, null, null, null, null, null, null, null, null, null, null, 2010, null, 7, 5);
INSERT INTO element VALUES (116, 'Livermorium', 'Lv', 292.000, 176, 116, 116, 7, 16, 'artificial', true, null, true, null, null, 'Transactinide', null, null, null, null, null, null, null, null, 2000, null, 7, 6);
INSERT INTO element VALUES (117, 'Tennessine', 'Ts', 295.000, 178, 117, 117, 7, 17, 'artificial', true, null, null, true, null, null, null, null, null, null, null, null, null, null, 2010, null, 7, 7);
INSERT INTO element VALUES (118, 'Oganesson', 'Og', 294.000, 176, 118, 118, 7, 18, 'artificial', true, null, null, true, null, 'Noble Gas', null, null, null, null, null, null, null, null, 2006, null, 7, 8);
