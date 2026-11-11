# Explications Inférence Causale

On se donne un groupe de $`n`$ individus, une action $`a`$ et un résultat $`Y`$.

>[!NOTE]
> Le résultat $`Y`$ est une variable aléatoire et $`a`$ est déterministe, on aura la notation $`A`$ pour la variable aléatoire qui assigne une action aléatoirement à un individu.

On va se donner un exemple explicite pour la suite pour mieux comprendre la définition de l'effet causale.  
- L'action a 
  - $`a=0`$ => "on donne un placebo"
  - $`a=1`$ => "on donne un vaccin"
- Le résultat Y
  - $`Y=0`$ => "on ne contracte pas la maladie"
  - $`Y=1`$ => "on contracte la maladie"

On définit les résultats contrefactuelles :
- $`Y^{a=0}`$
  - $`Y^{a=0}=0`$ => "On ne contracte pas la maladie sachant que on a donné un placebo"
  - $`Y^{a=0}=1`$ => "On contracte la maladie sachant que on a donné un placebo"
- $`Y^{a=1}`$
  - $`Y^{a=1}=0`$ => "On ne contracte pas la maladie sachant que on a donné un vaccin"
  - $`Y^{a=1}=1`$ => "On contracte la maladie sachant que on a donné un vaccin"
