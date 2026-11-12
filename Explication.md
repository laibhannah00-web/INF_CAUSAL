# Explications Inférence Causale

On se donne un groupe de $`n`$ individus, une action $`a`$ et un résultat $`Y`$. Les résultats contrefactuelles $`Y^{a=0}`$ et $`Y^{a=1}`$ d'un individu sont les résultats que l'on obtiendrait si on appliquait l'action $`a`$.

>[!NOTE]
> Le résultat $`Y`$ est une variable aléatoire et $`a`$ est déterministe, on aura la notation $`A`$ pour la variable aléatoire qui assigne une action aléatoirement à un individu.  
> Les résultats contrefactuelles $`Y^{a=0}`$ et $`Y^{a=1}`$ sont aussi des variables aléatoires.

 ## Exemple 
 
On va se donner un exemple explicite pour la suite pour mieux comprendre la définition de l'effet causale.  
- L'action $`a \in \{0,1\}`$ 
  - $`a=0`$ => "on donne un placebo"
  - $`a=1`$ => "on donne un vaccin"
- Le résultat $`Y \in \{0,1\}`$
  - $`Y=0`$ => "on ne contracte pas la maladie"
  - $`Y=1`$ => "on contracte la maladie"
  
On définit les résultats contrefactuelles :
- $`Y^{a=0} ~ B(1/2) `$
  - $`Y^{a=0}=0`$ => "On ne contracte pas la maladie sachant que on a donné un placebo"
  - $`Y^{a=0}=1`$ => "On contracte la maladie sachant que on a donné un placebo"
- $`Y^{a=1} ~ B(1/4)`$
  - $`Y^{a=1}=0`$ => "On ne contracte pas la maladie sachant que on a donné un vaccin"
  - $`Y^{a=1}=1`$ => "On contracte la maladie sachant que on a donné un vaccin"

Dans cet exemple les individus on 1 chance sur 2 de tomber malade sans vaccin et 1 chance sur 4 avec le vaccin.  
L'exemple a été construit pour que l'on ait un effet causale qui semble évident.  
  
On prend 20 individus avec leurs réalisation des résultats contrefactuelles.

| 1:n| $`Y^{a=0}`$ | $`Y^{a=1}`$ |
|---:|---:|---:|
|   1|   1|   1|
|   2|   0|   0|
|   3|   0|   0|
|   4|   0|   0|
|   5|   1|   0|
|   6|   0|   0|
|   7|   0|   1|
|   8|   0|   0|
|   9|   1|   0|
|  10|   1|   0|
|  11|   0|   0|
|  12|   1|   1|
|  13|   0|   1|
|  14|   1|   0|
|  15|   1|   0|
|  16|   0|   0|
|  17|   0|   0|
|  18|   1|   1|
|  19|   1|   0|
|  20|   0|   0|

> [!IMPORTANT]
> En réalité on ne peut pas connaitre les deux résultats contrefactuelles en même temps. On définit l'effet causale en supposant que l'on connait les résultats contrefactuelle et dans la pratique on l'estimera.

### Effet causale individuelle

Avec le tableau ci-dessus on observe 2 cas possibles:
- $`(Y^{a=0},Y^{a=1})=`$ (0,0) ou (1,1) où l'action ne change pas le résultat
- $`(Y^{a=0},Y^{a=1})=`$ (1,0) ou (0,1) où l'action change le résultat

>[!NOTE]
>L'effet causale individuelle d'un individu est $`Y^{a=0}-Y^{a=1}`$.  
>En particulier si $`Y^{a=0}-Y^{a=1}=0`$ il n'y pas d'effet causale.

Cet effet n'est pas très intéressant car on doit connaitre les deux résultats contrefactuelles pour le calculer.

### Effet causale moyen

On remplace l'effet causale individuelle par l'effet causale moyen :
>[!NOTE]
>On définit l'effet causale moyen par $`E[Y^{a=0}]-E[Y^{a=1}]`$.

En pratique, dans notre exemple on a :
- L'effet causale théorique  $`E[Y^{a=0}]-E[Y^{a=1}]=E[B(\frac{1}{2})]-E[B(\frac{1}{4})]=\frac{1}{2}-\frac{1}{4}=\frac{1}{4}=0,25`$.
- L'effet causale réel que l'on calcule avec le tableau $`E[Y^{a=0}]-E[Y^{a=1}]=\frac{9}{20}-\frac{5}{20}=\frac{1}{5}=0,2`$

## Experience randomisée 

Dans la réalité on ne peut pas avoir les deux résultats contrefactuelles en même temps. On suppose que lorsque que l'on applique une action on obtient le résultat contrefactuelle qui correspond.
On appelle cela la consistance
>[!NOTE]
>Soit $`A`$ une variable aléatoire, on dit que on a consistance quand $`A=i \implies Y^A=Y^{a=i}`$.

Une expérience randomisée a pour but de pouvoir ignoré toutes les variables qui pourrait influencer le résultat.  
En pratique on ne peut pas calculer l'effet causale sans condition.  
On peut calculer l'association :
$`E[Y|A=i] (\neq E[Y^{a=i}]`$, la causalité)


<table>
<tr><th>Tableau expérimental </th><th>Tableau idéal </th></tr>
<tr><td>

| 1:n|  A|  Y|$`Y^{a=0}`$ |$`Y^{a=1}`$ |
|---:|--:|--:|:---|:---|
|   1|  1|  1|*   |1   |
|   2|  0|  0|0   |*   |
|   3|  0|  0|0   |*   |
|   4|  0|  0|0   |*   |
|   5|  1|  0|*   |0   |
|   6|  0|  0|0   |*   |
|   7|  0|  0|0   |*   |
|   8|  1|  0|*   |0   |
|   9|  0|  1|1   |*   |
|  10|  1|  0|*   |0   |
|  11|  1|  0|*   |0   |
|  12|  1|  1|*   |1   |
|  13|  0|  0|0   |*   |
|  14|  0|  1|1   |*   |
|  15|  0|  1|1   |*   |
|  16|  1|  0|*   |0   |
|  17|  0|  0|0   |*   |
|  18|  0|  1|1   |*   |
|  19|  1|  0|*   |0   |
|  20|  1|  0|*   |0   |

</td><td>
 
| 1:n|  A|  Y| $`Y^{a=0}`$| $`Y^{a=1}`$|
|---:|--:|--:|---:|---:|
|   1|  1|  1|   1|   1|
|   2|  0|  0|   0|   0|
|   3|  0|  0|   0|   0|
|   4|  0|  0|   0|   0|
|   5|  1|  0|   1|   0|
|   6|  0|  0|   0|   0|
|   7|  0|  0|   0|   1|
|   8|  1|  0|   0|   0|
|   9|  0|  1|   1|   0|
|  10|  1|  0|   1|   0|
|  11|  1|  0|   0|   0|
|  12|  1|  1|   1|   1|
|  13|  0|  0|   0|   1|
|  14|  0|  1|   1|   0|
|  15|  0|  1|   1|   0|
|  16|  1|  0|   0|   0|
|  17|  0|  0|   0|   0|
|  18|  0|  1|   1|   1|
|  19|  1|  0|   1|   0|
|  20|  1|  0|   0|   0|

</td></tr> </table>
