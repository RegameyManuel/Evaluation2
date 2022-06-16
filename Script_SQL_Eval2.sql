DROP DATABASE IF EXISTS eval2;

CREATE DATABASE eval2;

USE eval2;

CREATE TABLE Client(
   N_Client COUNTER,
   NomClient VARCHAR(50),
   PrenomClient VARCHAR(50),
   PRIMARY KEY(N_Client)
);

CREATE TABLE Commande(
   N_Commande COUNTER,
   DateCommande DATE,
   MontantCommande CURRENCY,
   N_Client INT NOT NULL,
   PRIMARY KEY(N_Commande),
   FOREIGN KEY(N_Client) REFERENCES Client(N_Client)
);

CREATE TABLE Article(
   N_Article COUNTER,
   DesignationArticle VARCHAR(50),
   PUArticle CURRENCY,
   PRIMARY KEY(N_Article)
);

CREATE TABLE SeComposeDe(
   N_Commande INT,
   N_Article INT,
   Qte INT,
   TauxTva DOUBLE,
   PRIMARY KEY(N_Commande, N_Article),
   FOREIGN KEY(N_Commande) REFERENCES Commande(N_Commande),
   FOREIGN KEY(N_Article) REFERENCES Article(N_Article)
);


End Sub
