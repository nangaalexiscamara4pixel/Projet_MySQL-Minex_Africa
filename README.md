# MINEX AFRICA — Analyse de données avec SQL

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Project](https://img.shields.io/badge/Type-Data%20Analysis-16a34a?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## Présentation du projet

**MINEX AFRICA** est un projet fictif d'analyse de données réalisé avec **MySQL**, dans le cadre de la mise en pratique des compétences en SQL et en analyse de données.

Ce projet simule l'activité d'une entreprise minière opérant sur plusieurs sites. Il permet d'analyser les ressources humaines, les opérations d'extraction, les ventes et les performances commerciales à partir d'une base de données relationnelle.

L'objectif est de répondre à des questions métier à l'aide de requêtes SQL et de produire des indicateurs clés de performance (KPI) utiles à la prise de décision.

> **Note :** MINEX AFRICA et toutes les données de ce projet sont fictifs. Ce projet est réalisé à des fins pédagogiques et de portfolio.

## Objectifs du projet

- Concevoir et exploiter une base de données relationnelle avec MySQL.
- Manipuler et analyser des données provenant de plusieurs tables.
- Utiliser les jointures pour relier des informations.
- Calculer des indicateurs de performance à l'aide de fonctions d'agrégation.
- Répondre à des problématiques métier concrètes.
- Développer des compétences pratiques en analyse de données SQL.

## Technologies utilisées

| Technologie | Utilisation |
|---|---|
| MySQL | Gestion et interrogation de la base de données |
| SQL | Extraction, transformation et analyse des données |
| GitHub | Hébergement et présentation du projet |

## Structure de la base de données

La base de données **minex_africa** est composée de cinq tables principales :

| Table | Description |
|---|---|
| `sites_miniers` | Informations sur les sites miniers |
| `employes` | Informations sur les employés et leurs salaires |
| `minerais` | Liste des minerais et leurs prix unitaires |
| `extractions` | Historique des opérations d'extraction |
| `ventes` | Historique des ventes et informations clients |

### Relations entre les tables

- `sites_miniers` et `employes` : un site peut accueillir plusieurs employés.
- `sites_miniers` et `extractions` : un site peut enregistrer plusieurs opérations d'extraction.
- `minerais` et `extractions` : un minerai peut faire l'objet de plusieurs opérations d'extraction.
- `minerais` et `ventes` : un minerai peut être vendu plusieurs fois.

## Volume des données

| Table | Nombre d'enregistrements |
|---|---:|
| Sites miniers | 15 |
| Employés | 15 |
| Minerais | 15 |
| Extractions | 20 |
| Ventes | 18 |
| **Total** | **83** |

## Analyses réalisées

Le projet comprend 28 questions SQL réparties en six niveaux de difficulté.

### Niveau 1 — Manipulation des données
- Sélection des données avec `SELECT`.
- Filtrage avec `WHERE`.
- Tri avec `ORDER BY`.

### Niveau 2 — Fonctions d'agrégation
- Nombre d'employés.
- Salaire moyen.
- Salaire minimum et maximum.
- Quantité totale et moyenne extraite.

### Niveau 3 — Calculs commerciaux
- Calcul du chiffre d'affaires par vente.
- Calcul du chiffre d'affaires total.
- Identification des cinq ventes les plus importantes.

### Niveau 4 — Regroupement des données
- Salaire moyen par poste.
- Nombre d'employés par site.
- Quantité extraite par minerai.
- Chiffre d'affaires par client.
- Nombre de ventes par minerai.

### Niveau 5 — Jointures
- Association des employés à leurs sites.
- Association des extractions aux sites et aux minerais.
- Affichage des ventes avec le nom des minerais.
- Calcul du chiffre d'affaires par minerai.

### Niveau 6 — Analyse métier
- Identification du minerai le plus extrait.
- Identification du site ayant la plus grande quantité extraite.
- Identification du client ayant généré le plus gros chiffre d'affaires.
- Identification des minerais dépassant un seuil de chiffre d'affaires.
- Identification des sites dépassant un seuil d'extraction.
- Calcul du salaire moyen par site.

## Indicateurs clés de performance (KPI)

Le projet permet de calculer sept indicateurs principaux :

| Indicateur | Description |
|---|---|
| Nombre total d'employés | Effectif enregistré dans l'entreprise |
| Nombre total de sites | Nombre de sites miniers |
| Nombre de minerais | Nombre de minerais enregistrés |
| Quantité totale extraite | Somme des quantités extraites |
| Coût total d'extraction | Somme des coûts d'extraction |
| Nombre total de ventes | Nombre de transactions commerciales |
| Chiffre d'affaires total | Somme des montants des ventes |

## Compétences SQL mobilisées

- `SELECT`, `FROM` et `WHERE`
- `ORDER BY` et `LIMIT`
- `COUNT()`, `SUM()`, `AVG()`, `MIN()` et `MAX()`
- `GROUP BY` et `HAVING`
- `INNER JOIN`
- Calculs arithmétiques en SQL
- Sous-requêtes
- Création de bases de données et de tables
- Gestion des clés primaires et étrangères

## Installation et utilisation

### 1. Prérequis

- MySQL Server 8.0 ou une version compatible.
- MySQL Workbench ou un autre client MySQL.

### 2. Cloner le dépôt

```bash
git clone https://github.com/VOTRE-USERNAME/minex-africa-sql.git
cd minex-africa-sql
```

Remplacez `VOTRE-USERNAME` par votre nom d'utilisateur GitHub.

### 3. Importer le projet

Ouvrez le script SQL du projet dans MySQL Workbench, puis exécutez-le pour créer la base de données, les tables et insérer les données fictives.

### 4. Sélectionner la base de données

```sql
USE minex_africa;
```

### 5. Exécuter les requêtes

Exécutez les requêtes SQL pour reproduire les analyses et obtenir les indicateurs présentés dans le projet.

## Résultats et enseignements

Ce projet permet de simuler le travail d'un Data Analyst chargé d'exploiter les données d'une entreprise minière.

Il met en pratique la création d'une base de données relationnelle, l'extraction de données, les calculs d'indicateurs et la résolution de questions métier avec SQL.

Il constitue également un support de démonstration des compétences SQL dans un portfolio professionnel.

## Limites du projet

- Les données sont fictives et ne représentent pas les performances d'une entreprise réelle.
- Les quantités extraites peuvent être exprimées dans des unités différentes (kg et tonnes). Leur somme brute ne représente donc pas une quantité physique homogène.
- Le chiffre d'affaires est calculé à partir des quantités vendues et des prix unitaires enregistrés. Il ne correspond pas au bénéfice net de l'entreprise.
- Les coûts d'extraction ne sont pas déduits du chiffre d'affaires pour calculer une marge complète.

## Auteur

**Nanga Alexis Camara**

Data Analyst junior | Excel | Power Query | Power BI | SQL

Ce projet a été réalisé dans le cadre de mon apprentissage pratique de l'analyse de données et de la constitution de mon portfolio professionnel.

## Licence

Ce projet est destiné à des fins pédagogiques et de démonstration de compétences.# Projet_MySQL-Minex_Africa
Ce projet est basé sur une entreprise fictive du nom de Minex_Africa evoluant dans le domaine minier contexte Africain
