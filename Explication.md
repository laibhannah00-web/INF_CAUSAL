# Explications Inférence Causale

On se donne un groupe de $`n`$ individus, une action $`a`$ et un résultat $`Y`$. Les résultats contrefactuelles $`Y^{a=0}`$ et $`Y^{a=1}`$ d'un individu sont les résultats que l'on obtiendrait si on appliquait l'action $`a`$.

>[!NOTE]
> Le résultat $`Y`$ est une variable aléatoire et $`a`$ est déterministe, on aura la notation $`A`$ pour la variable aléatoire qui assigne une action aléatoirement à un individu.  
> Les résultats contrefactuelles $`Y^{a=0}`$ et $`Y^{a=1}`$ sont aussi des variables aléatoires.
 
On va se donner un exemple explicite pour la suite pour mieux comprendre la définition de l'effet causale.  
- L'action $`a \in \{0,1\}`$ 
  - $`a=0`$ => "on donne un placebo"
  - $`a=1`$ => "on donne un vaccin"
- Le résultat $`Y \in \{0,1\}`$
  - $`Y=0`$ => "on ne contracte pas la maladie"
  - $`Y=1`$ => "on contracte la maladie"
  
On définit les résultats contrefactuelles :
- $`Y^{a=0}`$
  - $`Y^{a=0}=0`$ => "On ne contracte pas la maladie sachant que on a donné un placebo"
  - $`Y^{a=0}=1`$ => "On contracte la maladie sachant que on a donné un placebo"
- $`Y^{a=1}`$
  - $`Y^{a=1}=0`$ => "On ne contracte pas la maladie sachant que on a donné un vaccin"
  - $`Y^{a=1}=1`$ => "On contracte la maladie sachant que on a donné un vaccin"

<table>
<tr><th>Tableau expérimental </th><th>Tableau idéal </th></tr>
<tr><td>

| 1:n|  A|  Y|Y_0 |Y_1 |
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
 
| 1:n|  A|  Y| Y_0| Y_1|
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
