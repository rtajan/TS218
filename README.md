# TS218
## Introduction
Ce dépôt contient les fichiers suivants : 
  - `signal_recu.mat` : le signal reçu
  - `bitSynchro.mat` : contient les valeurs binaires de la trame de synchronisation,
  - `code_recepteur.m` : contient le code principal de votre récepteur.
  
Le but de ce projet est de trouver l'image cachée dans `signal_recu.mat`.

## 1) Identification

Dans cette partie, vous proposerez une méthode permettant d'identifier les divers paramètres de la communication : 
  - Ordre de modulation
  - type et paramètres du filtre de mise en forme (Roll-off, facteur de sur-échantillonnage...)
  
## 2) Synchronisation fréquentielle
Le facteur de sur-échantillonnage `F` est ici suffisemment grand pour que la synchronisation temporelle puisse être réalisée "à la main".
Après avoir déterminé la phase de l'échantillonneur, proposez une architechture de récepteur qui utilise une boucle à verrouillage de phase pour réaliser la synchronisation fréquentielle.

## 3) Chaîne complète
Pour cette partie, nous décimerons volontairement le signal d'un facteur `F/2` abaissant le facteur de sur-échantillonnage à `F=2`.
Proposez une architechture de récepteur dans ce cas là.
