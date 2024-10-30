import excel "C:\Users\HP\Desktop\base\Données_Transactionnelles.xlsx",sheet("Feuil1") firstrow
///CHANGER LES NOMS DES VARIABLES 
rename Transaction_ID ID_Transaction
label variable ID_Transaction "Identifiant unique pour chaque transaction"

label variable Date "Date de la transaction"
rename Product Produit 
label variable Produit "Nom du produit vendu"

rename Category Catégorie 
label variable Catégorie "Catégorie du produit"

rename Price Prix 
label variable Prix "Prix unitaire du produit"

rename Quantity Quantité
label variable Quantité "Quantité vendue"

rename Customer_ID ID_Client
label variable ID_Client "Identifiant du client"

rename Payment_Method Mode_Paiement
label variable Mode_Paiement "Mode de paiement utilisé"

rename Location Ville
label variable Ville "Ville du client"

///VERIFICATION DES DONNEES MANQUANTES ET DOUBLONS
***Données manquantes (Il y a deux variables qui ont des données: ID_Transaction et Prix)
misstable summarize
codebook
***Recherchons l'emplacement des données manquantes 
*(Visionnage de la donnée manquante pour la variable ID_Transaction)
brow if ID_Transaction==. 
*Visionnage de la donnée manquante pour la variable Prix)
brow if Prix==.
*(visionage de la donnée manquante pour la variables
brow if prix==.
*visionnage de la donnée manquante pour la variable prix)
brow if prix==.
***resolution du probleme de missing
***par la valeur constante
**au cas ou la moyenne de prix est notre constante
sum prix
**imputation de la constante

  