--Projet sur une entreprise fictive dans le domaine de la mine du nom de Minex Africa
--Creation de la base de données:
create database Minex_africa; 
use  Minex_africa;
--Creation des tables dans la base de données: 
CREATE TABLE sites_miniers (
    id_site INT AUTO_INCREMENT PRIMARY KEY,
    nom_site VARCHAR(100) NOT NULL,
    pays VARCHAR(50) NOT NULL,
    ville VARCHAR(50),
    date_ouverture DATE,
    nombre_employes INT
);
CREATE TABLE employes (
    id_employe INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    poste VARCHAR(100),
    salaire DECIMAL(10,2),
    date_embauche DATE,
    id_site INT,

    FOREIGN KEY (id_site)
        REFERENCES sites_miniers(id_site)
);
CREATE TABLE minerais (
    id_minerai INT AUTO_INCREMENT PRIMARY KEY,
    nom_minerai VARCHAR(50) NOT NULL,
    categorie VARCHAR(50),
    prix_unitaire DECIMAL(12,2),
    unite VARCHAR(20)
);

CREATE TABLE extractions (
    id_extraction INT AUTO_INCREMENT PRIMARY KEY,
    id_site INT NOT NULL,
    id_minerai INT NOT NULL,
    date_extraction DATE,
    quantite DECIMAL(12,2),
    cout_extraction DECIMAL(12,2),

    FOREIGN KEY (id_site)
        REFERENCES sites_miniers(id_site),

    FOREIGN KEY (id_minerai)
        REFERENCES minerais(id_minerai)
);

CREATE TABLE ventes (
    id_vente INT AUTO_INCREMENT PRIMARY KEY,
    id_minerai INT NOT NULL,
    date_vente DATE,
    quantite_vendue DECIMAL(12,2),
    prix_unitaire DECIMAL(12,2),
    client VARCHAR(100),

    FOREIGN KEY (id_minerai)
        REFERENCES minerais(id_minerai)
);

--Insertions des données dans chaque tables:
INSERT INTO sites_miniers
(nom_site, pays, ville, date_ouverture, nombre_employes)
VALUES
('Mine de Kouroussa', 'Guinée', 'Kouroussa', '2015-03-12', 145),
('Mine de Boké', 'Guinée', 'Boké', '2012-06-20', 210),
('Mine de Siguiri', 'Guinée', 'Siguiri', '2010-09-15', 185),
('Mine de Kindia', 'Guinée', 'Kindia', '2018-04-10', 120),
('Mine de Fria', 'Guinée', 'Fria', '2016-11-05', 98),
('Mine de Kamsar', 'Guinée', 'Kamsar', '2014-02-18', 175),
('Mine de Freetown', 'Sierra Leone', 'Freetown', '2017-08-22', 130),
('Mine de Bo', 'Sierra Leone', 'Bo', '2019-01-17', 110),
('Mine de Kenema', 'Sierra Leone', 'Kenema', '2020-05-14', 90),
('Mine de Tarkwa', 'Ghana', 'Tarkwa', '2011-07-30', 240),
('Mine de Obuasi', 'Ghana', 'Obuasi', '2009-03-25', 260),
('Mine de Kumasi', 'Ghana', 'Kumasi', '2013-10-12', 150),
('Mine de Lubumbashi', 'RDC', 'Lubumbashi', '2016-06-08', 190),
('Mine de Kolwezi', 'RDC', 'Kolwezi', '2018-09-19', 225),
('Mine de Likasi', 'RDC', 'Likasi', '2021-02-11', 105);

INSERT INTO employes
(nom, prenom, poste, salaire, date_embauche, id_site)
VALUES
('Camara', 'Ibrahima', 'Ingénieur minier', 3200.00, '2021-03-15', 1),
('Diallo', 'Mamadou', 'Technicien', 2100.00, '2022-06-10', 1),
('Bangoura', 'Fatoumata', 'Comptable', 1900.00, '2020-09-12', 2),
('Condé', 'Abdoulaye', 'Ingénieur géologue', 3500.00, '2019-02-20', 2),
('Sylla', 'Aminata', 'Responsable RH', 2800.00, '2018-07-14', 3),
('Touré', 'Mohamed', 'Conducteur', 1800.00, '2023-01-10', 3),
('Keita', 'Moussa', 'Technicien', 2200.00, '2022-04-18', 4),
('Soumah', 'Mariama', 'Analyste', 2500.00, '2021-11-05', 5),
('Camara', 'Ousmane', 'Ingénieur minier', 3300.00, '2020-05-22', 6),
('Diallo', 'Aïssatou', 'Comptable', 1950.00, '2023-03-17', 7),
('Bangoura', 'Alpha', 'Technicien', 2150.00, '2022-08-09', 8),
('Condé', 'Sékou', 'Responsable production', 3900.00, '2017-06-12', 10),
('Traoré', 'Mariam', 'Ingénieur géologue', 3400.00, '2020-10-21', 11),
('Kouassi', 'Jean', 'Conducteur', 1750.00, '2023-02-15', 13),
('Kabongo', 'Patrick', 'Technicien', 2300.00, '2021-09-30', 14);

INSERT INTO minerais
(nom_minerai, categorie, prix_unitaire, unite)
VALUES
('Or', 'Métal précieux', 58000.00, 'kg'),
('Cuivre', 'Métal', 8500.00, 'tonne'),
('Fer', 'Métal', 120.00, 'tonne'),
('Bauxite', 'Minerai industriel', 65.00, 'tonne'),
('Diamant', 'Pierre précieuse', 45000.00, 'kg'),
('Cobalt', 'Métal stratégique', 28000.00, 'tonne'),
('Manganèse', 'Métal', 320.00, 'tonne'),
('Nickel', 'Métal', 18500.00, 'tonne'),
('Zinc', 'Métal', 2600.00, 'tonne'),
('Lithium', 'Métal stratégique', 14500.00, 'tonne'),
('Argent', 'Métal précieux', 820.00, 'kg'),
('Plomb', 'Métal', 2100.00, 'tonne'),
('Chrome', 'Métal', 310.00, 'tonne'),
('Uranium', 'Métal stratégique', 62000.00, 'tonne'),
('Titane', 'Métal', 4500.00, 'tonne');

INSERT INTO extractions
(id_site, id_minerai, date_extraction, quantite, cout_extraction)
VALUES
(1, 1, '2025-01-15', 125.50, 450000.00),
(2, 4, '2025-01-20', 5200.00, 180000.00),
(3, 1, '2025-02-05', 98.40, 390000.00),
(4, 4, '2025-02-12', 4300.00, 150000.00),
(5, 2, '2025-02-20', 1850.00, 420000.00),
(6, 4, '2025-03-02', 6100.00, 210000.00),
(7, 5, '2025-03-15', 45.80, 280000.00),
(8, 7, '2025-03-22', 3200.00, 350000.00),
(9, 3, '2025-04-10', 12500.00, 510000.00),
(10, 1, '2025-04-18', 210.60, 620000.00),
(11, 1, '2025-05-03', 185.30, 580000.00),
(12, 2, '2025-05-14', 2400.00, 530000.00),
(13, 6, '2025-06-01', 850.00, 410000.00),
(14, 6, '2025-06-15', 1120.00, 520000.00),
(15, 9, '2025-07-04', 1750.00, 290000.00),
(1, 1, '2025-07-15', 142.70, 470000.00),
(2, 4, '2025-07-28', 5700.00, 195000.00),
(3, 1, '2025-08-10', 110.20, 410000.00),
(10, 1, '2025-08-25', 225.40, 650000.00),
(14, 6, '2025-09-12', 980.00, 460000.00);

INSERT INTO ventes
(id_minerai, date_vente, quantite_vendue, prix_unitaire, client)
VALUES
(1, '2025-01-25', 50.00, 58000.00, 'Global Gold Ltd'),
(4, '2025-02-02', 3000.00, 65.00, 'Africa Minerals'),
(1, '2025-02-18', 35.00, 59000.00, 'Global Gold Ltd'),
(2, '2025-03-05', 1200.00, 8500.00, 'Copper Trading Co'),
(4, '2025-03-20', 2500.00, 68.00, 'Minerals International'),
(5, '2025-04-02', 12.50, 45000.00, 'Diamond World'),
(7, '2025-04-15', 1800.00, 320.00, 'African Metals'),
(3, '2025-04-28', 7000.00, 120.00, 'Steel Africa'),
(1, '2025-05-10', 70.00, 60000.00, 'Global Gold Ltd'),
(2, '2025-05-22', 1500.00, 8600.00, 'Copper Trading Co'),
(6, '2025-06-08', 400.00, 28000.00, 'Battery Minerals'),
(6, '2025-06-25', 350.00, 28500.00, 'Battery Minerals'),
(9, '2025-07-10', 900.00, 2600.00, 'Metal Trading Africa'),
(1, '2025-07-22', 80.00, 61000.00, 'Global Gold Ltd'),
(4, '2025-08-05', 3200.00, 70.00, 'Africa Minerals'),
(2, '2025-08-18', 1350.00, 8700.00, 'Copper Trading Co'),
(6, '2025-09-01', 500.00, 29000.00, 'Battery Minerals'),
(1, '2025-09-15', 65.00, 60500.00, 'Global Gold Ltd');

--Verifications de la base de données 
select * from minerais;
select * from extractions;
select * from employes;
select* from sites_miniers;
select * from ventes;

--QUESTION BUSINESS : 
--Question 1 Affichez tous les employes avec nom ,prenom, poste et salaire
select nom ,prenom , poste , salaire from employes; 

--Question 2 : Afficher les employés dont le salaire est supérieur à 2 500.
Trier du salaire le plus élevé au plus faible:
select nom , prenom , poste , salaire from employes where salaire > 2500 order by salaire desc;

--Question 3 : Afficher les sites miniers qui comptent plus de 150 employés.
Trier du nombre demployés le plus élevé au plus faible:

select nom_site , nombre_employes from sites_miniers where nombre_employes > 150 
order by nombre_employes desc;

--Question 4 : Afficher uniquement les minerais appartenant à la catégorie:Métal
select nom_minerai , categorie from minerais where categorie = "Métal";

Question 5 : Afficher les ventes réalisées pendant lannée 2025, avec 
client,date de vente,quantité vendue,prix unitaire :

select client , date_vente , quantite_vendue , prix_unitaire 
from ventes 
where year(date_vente) = "2025";

--Question 6 : Combien demployés sont enregistrés dans lentreprise ?
select count(*) from employes as nombre_total_employes;

--Question 7 : Quel est le salaire moyen des employés ?
select avg(salaire) from employes as salaire_moyen_employes;

--Question 8 : Quel est le salaire minimum et le salaire maximum ?
select min(salaire) from employes;
select max(salaire) from employes;

--Question 9 : Quelle est la quantité totale de minerai extraite ?
select sum(quantite) as quantite_total_extrait from extractions ;

--Question 11 : Pour chaque vente, calcule le chiffre daffaires: 
select quantite_vendue,prix_unitaire, 
quantite_vendue * prix_unitaire as chiffre_affaire 
from ventes;

--Question 12 : Calcule le chiffre daffaires total de toutes les ventes:
select sum(quantite_vendue * prix_unitaire) as chiffre_affaire_total 
from ventes;

--Question 13 : Trouve les 5 ventes ayant généré le plus gros chiffre daffaires: 
select quantite_vendue , prix_unitaire,
quantite_vendue * prix_unitaire as gros_chiffre_affaire
from ventes
order by gros_chiffre_affaire
limit 5; 

--Question 14 : Calcule le salaire moyen par poste:
select poste , avg(salaire) as salaire_moyen_poste
from employes
group by poste;

--Question 15 Calcule le nombre demployés par site: 
select s.nom_site, count(*) nombre_employes_site
from employes e
join sites_miniers s 
on e.id_site = s.id_site
group by S.id_site , s.nom_site;
use minex_africa;

SELECT id_site, COUNT(*) AS nombre_employes_site
FROM employes
GROUP BY id_site;

--Question 16: Calcule la quantité totale extraite par minerai.
SELECT m.nom_minerai, SUM(e.quantite) AS quantite_totale
FROM extractions e
JOIN minerais m
    ON e.id_minerai = m.id_minerai
GROUP BY m.nom_minerai, m.id_minerai;
use minex_africa;
--Question 17 : Calcule le chiffre daffaires total par client: 
SELECT client,
       SUM(quantite_vendue * prix_unitaire) AS chiffre_affaires
FROM ventes
GROUP BY client
ORDER BY chiffre_affaires DESC;
Question 18 : Nombre de ventes réalisées par minerai
SELECT m.nom_minerai,
       COUNT(v.id_vente) AS nombre_ventes
FROM ventes v
JOIN minerais m
    ON v.id_minerai = m.id_minerai
GROUP BY m.id_minerai, m.nom_minerai
ORDER BY nombre_ventes DESC;
Question 19 : Nom du site et nom de chaque employé
SELECT s.nom_site,
       e.nom,
       e.prenom
FROM employes e
JOIN sites_miniers s
    ON e.id_site = s.id_site;
Question 20 : Détails des extractions
SELECT s.nom_site,
       m.nom_minerai,
       e.date_extraction,
       e.quantite
FROM extractions e
JOIN sites_miniers s
    ON e.id_site = s.id_site
JOIN minerais m
    ON e.id_minerai = m.id_minerai;
Question 21 — Toutes les ventes avec le nom du minerai    
SELECT v.id_vente,
       m.nom_minerai,
       v.date_vente,
       v.quantite_vendue,
       v.prix_unitaire,
       v.client
FROM ventes v
JOIN minerais m
    ON v.id_minerai = m.id_minerai;
Question 22 : Chiffre daffaires total par minerai
SELECT m.nom_minerai,
       SUM(v.quantite_vendue * v.prix_unitaire)
           AS chiffre_affaires
FROM ventes v
JOIN minerais m
    ON v.id_minerai = m.id_minerai
GROUP BY m.id_minerai, m.nom_minerai
ORDER BY chiffre_affaires DESC;

Question 23 — Le minerai extrait en plus grande quantité
SELECT m.nom_minerai,
       SUM(e.quantite) AS quantite_totale
FROM extractions e
JOIN minerais m
    ON e.id_minerai = m.id_minerai
GROUP BY m.id_minerai, m.nom_minerai
ORDER BY quantite_totale DESC
LIMIT 1;

Question 24:Le site ayant la plus grande quantité dextraction
SELECT s.nom_site,
       SUM(e.quantite) AS quantite_totale
FROM extractions e
JOIN sites_miniers s
    ON e.id_site = s.id_site
GROUP BY s.id_site, s.nom_site
ORDER BY quantite_totale DESC
LIMIT 1;

Question 25 — Le client ayant généré le plus gros chiffre daffaires
SELECT client,
       SUM(quantite_vendue * prix_unitaire)
           AS chiffre_affaires
FROM ventes
GROUP BY client
ORDER BY chiffre_affaires DESC
LIMIT 1;

Question 26:Les minerais ayant un chiffre daffaires supérieur à 1000000
SELECT m.nom_minerai,
       SUM(v.quantite_vendue * v.prix_unitaire)
           AS chiffre_affaires
FROM ventes v
JOIN minerais m
    ON v.id_minerai = m.id_minerai
GROUP BY m.id_minerai, m.nom_minerai
HAVING SUM(v.quantite_vendue * v.prix_unitaire) > 1000000
ORDER BY chiffre_affaires DESC;

Question 27 — Le salaire moyen par site minier
SELECT s.nom_site,
       AVG(e.salaire) AS salaire_moyen
FROM employes e
JOIN sites_miniers s
    ON e.id_site = s.id_site
GROUP BY s.id_site, s.nom_site
ORDER BY salaire_moyen DESC;

--Les KPI clés : 
1. Nombre total employés: 
SELECT COUNT(*) AS nombre_total_employes
FROM employes;
2. Nombre total de sites miniers
SELECT COUNT(*) AS nombre_total_sites
FROM sites_miniers;
3. Nombre total de minerais
SELECT COUNT(*) AS nombre_total_minerais
FROM minerais;
4. Quantité totale extraite
SELECT SUM(quantite) AS quantite_totale_extraite
FROM extractions;
5. Coût total dextraction
SELECT SUM(cout_extraction) AS cout_total_extraction
FROM extractions;
6. Nombre total de ventes
SELECT COUNT(*) AS nombre_total_ventes
FROM ventes;

7. Chiffre daffaires total
SELECT SUM(quantite_vendue * prix_unitaire)
       AS chiffre_affaires_total
FROM ventes;