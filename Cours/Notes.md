# Introduction

## Cryptographie

### Fonctions de hashage
C'est une fonction pure et déterministe qui prend en entrée un message de taille arbitraire et qui produit en sortie un ensemble de taille fixe appelé hash ou digest de l'entrée. 

Elles ont un déterminisme, une vitesse, une résistance aux collisions et sont non inversible.

Elles sont au coeurdu maintiien de l'intégrité des bases de données et forment la base du mécanisme de preuve de travail utilisé pour sécuriser les blockchains de type Bitcoin.

### La cryptographie asymétrique ou à clé publique
C'est un type de cryptographie qui repose sur une paire de clés distinctes : une clé publique pour le chiffrement et une clé privée pour le déchiffrement. La clé publique peut être partagée avec tout le monde pour chiffrer des données, tandis que la clé privée, conservée secrète, permet de déchiffrer ces données et garantit l'authenticité de l'utilisateur, empêchant quiconque de se faire passer pour lui.

### La blockchain en bref
La blockchain est une base de données distribuée et sécurisée qui permet de stocker des informations de manière transparente et indélébile. Elle fonctionne sans intermédiaire et est composée de blocs d'informations liés entre eux de façon chronologique et cryptographique. Chaque modification ou ajout de données est validé par un réseau décentralisé, garantissant ainsi la sécurité et l'intégrité des transactions.


### Les transaction et les blocs
1. Transactions
Chaque changement d'état dans une blockchain est enregistré sous forme de transaction. Une transaction peut être considérée comme une opération d'écriture atomique dans une base de données globale, permettant à un utilisateur de modifier un ou plusieurs enregistrements. Tout utilisateur du réseau peut soumettre une transaction pour être exécutée.

2. Blocs et chaîne
Les transactions sont regroupées en blocs. Chaque bloc contient un ensemble de transactions qui, une fois validées, sont ajoutées à la chaîne de blocs (blockchain). Les blocs sont liés entre eux pour former un historique immuable. Ce processus est décentralisé : chaque nœud du réseau vérifie l'exactitude des transactions, mais cela limite la capacité de traitement en raison des coûts de calcul.

3. Validation et incitations
Le processus de validation des transactions et de création de blocs est appelé minage. Les frais de transaction, payés dans la monnaie native de la blockchain, visent à éviter les attaques par surcharge et à encourager les nœuds à participer à la validation et à l'ajout de nouveaux blocs.


### Une chaine de hash
Une blockchain est une chaine de hash avec des blocs qui contiennent chacun le hash du bloc précédent afin de lier les bloc entre eux et de former une chaine, s'il est modifié son hash change et donc le hash du bloc suivant également afin de facilement détécter les modification sur la blockchain


### Methodes de consensus
Dans une blockchain décentralisée, il n'y a pas d'autorité centrale pour valider les transactions. Les nœuds du réseau doivent donc s'accorder sur l'état de la blockchain. Les algorithmes de consensus permettent de résoudre ce problème en décidant comment les transactions sont validées et ordonnées.

Par exemple, si deux acheteurs tentent d'acheter un bien simultanément, le réseau doit déterminer qui a effectué l'achat en premier et empêcher le vendeur de vendre deux fois le même bien. Les méthodes de consensus garantissent ainsi qu'un seul état valide de la blockchain est maintenu.

Le processus de minage consiste à résoudre un puzzle cryptographique. Chaque bloc est identifié par un hash qui inclut l'identifiant du bloc précédent, les transactions et un nonce. En modifiant le nonce, le hash change, et pour qu'un bloc soit ajouté à la blockchain, son hash doit respecter un certain critère (par exemple, commencer par un certain nombre de zéros). Les mineurs essaient plusieurs nonces jusqu'à trouver un hash valide, un processus nécessitant de nombreuses tentatives, appelé preuve de travail.

### Bitcoin