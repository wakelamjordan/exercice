DROP DATABASE exercice;

CREATE DATABASE exercice;

USE exercice;

CREATE TABLE
    jw_client (
        id INT AUTO_INCREMENT PRIMARY KEY,
        photo VARCHAR(50) NOT NULL,
        nom VARCHAR(50) NOT NULL,
        prenom VARCHAR(50) NOT NULL,
        adresse VARCHAR(50) NOT NULL
    );

CREATE TABLE
    jw_article (
        id INT AUTO_INCREMENT PRIMARY KEY,
        photo VARCHAR(50) NOT NULL,
        designation VARCHAR(50) NOT NULL,
        prix_unitaire NUMERIC(10, 2),
        stock NUMERIC(10, 3)
    );

CREATE TABLE
    jw_achat (
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_client INT NOT NULL,
        id_article INT NOT NULL,
        date_achat TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        quantite NUMERIC(10, 3),
        FOREIGN KEY (id_client) REFERENCES jw_client (id),
        FOREIGN KEY (id_article) REFERENCES jw_article (id)
    );

SHOW tables;

/* ---------------------ajout client, articles, achats */
DESC jw_client;

DESC jw_article;

DESC jw_achat;

INSERT INTO
    jw_client (photo, nom, prenom, adresse)
VALUES
    (
        "femme1.jpg",
        "Laurent",
        "Christiane",
        "7 Quai Saint-Dominique - Roubaix, CA / 36835"
    ),
    (
        "homme1.jpg",
        "Meyer",
        "Firmin",
        "145 Impasse des Saussaies - La Seyne-sur-Mer, OH / 43844"
    ),
    (
        "femme2.jpg",
        "Marchal",
        "Zoé",
        "844 Allée Zadkine - Nîmes, MD / 13595"
    ),
    (
        "femme4.jpg",
        "Garnier",
        "Reine",
        "52 Impasse d'Assas - Roubaix, WV / 48859"
    ),
    (
        "homme2.jpg",
        "Gonzalez",
        "Annibal",
        "34 Boulevard Dauphine - Montpellier, KS / 24702"
    );

INSERT INTO
    jw_article (photo, designation, prix_unitaire, stock)
VALUES
    ("BA1043.jpg", "J&B", 3.45, 375),
    ("BB0001.jpg", "CASTEL", 4.72, 418),
    ("BB0005.jpg", "Golden", 28.56, 345),
    ("produit5.jpg", "Orange", 3.25, 85),
    ("produit10.jpg", "valise", 7.26, 678);

INSERT INTO
    jw_achat (id_client, id_article, quantite)
VALUES
    (1, 1, 3),
    (2, 4, 5),
    (2, 3, 3),
    (4, 5, 2);