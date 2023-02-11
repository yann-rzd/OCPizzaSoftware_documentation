# 📚Documentation de la nouvelle solution informatique d'OC Pizza

## 📌 Contexte
OC Pizza est spécialisé dans les pizzas livrées ou à emporter. Il compte déjà 5 points de vente et prévoit d’en ouvrir au moins 3 de plus d’ici 6 mois.

### Mise en place d'un système informatique pour l'ensemble des pizzerias du groupe :
- Être plus efficace dans la gestion des commandes
- Suivre les commandes en temps réel
- Suivre les stocks en temps réel
- Proposer un site internet pour que le client puisse commander en ligne
- Proposer un aide-mémoire aux pizzaiolos

## 🗂️ Livrables

### Le dossier de conception fonctionnelle :
- Décrire les fonctionnalités
- Décrire les utilisateurs finaux
- Décrire les processus métier
- Décrire les données impliquées

### Le dossier de conception technique :
- Décrire les plateformes logicielles et matérielles
- Décrire les configurations du système

### Le dossier d'exploitation :
- Décrire les processus d'installation
- Décrire les processus de maintenance

### Le procès verbal de la livraison :
- Certifier que la solution informatique a été livrée et installée conformément aux conditions convenues

## 💻 Solutions techniques retenues

<img src="https://i.imgur.com/a9tiFVE.png" width=auto height=30>&nbsp; Front-end avec la bibliothèque React JS de Javascript

<img src="https://i.imgur.com/jHtsrSK.png" width=auto height="30">&nbsp; Back-end côté serveur avec la bibliothèque Vapor de Swift

<img src="https://i.imgur.com/rQCdGr9.png" width="50" height=auto>&nbsp; PostgreSQL pou le Back-end côté base de données

<img src="https://i.imgur.com/dOyc2Oe.jpg" width="50" height=auto>&nbsp; S3 Bucket d'AWS pour le serveur de fichiers

<img src="https://i.imgur.com/IRtj4VC.jpg" width=auto height="30">&nbsp; Heroku pour le déploiement

## 🔌 Base de données

Le fichier `ocpizza_db_deployment.sql` permet de déployer la base de données

Le fichier `ocpizza_db_data_insert.sql` permet d'injecter des données de test
