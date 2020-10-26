# Création d'une application web en Ruby On Rails

Site internet comportant une base de données en PostgreSQL. 
Les tables sont : 
- users
- potins
- cities
- tags
- taggossips

Un user peut être à l'origine de plusieurs potins, stockés dans la table potins. Un potin peut être taggué plusieurs fois. Et un tag peut représenter plusieurs potins. C'est la table de jointure taggossips qui les relie. 

L'application permet d'afficher un User et un Potin sur des pages dédiées, pour avoir plus d'informations.
