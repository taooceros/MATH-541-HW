#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Math 541 Midterm Prime",
  authors: (
    "Hongtao Zhang",
  ),
)

Midterm 

= Problem 1

==

Normalizer of N is G

==

We know that N is a normal subgroup of G. So we have
$ forall g in G : N g = g N $

Then for any $n' in N sect H$, we will have $exists n'' in N: n' h = h n''$ for all $h in G$.

However we also know that $forall n' in H$, so $h n'' in H$, which means $h n'' in N sect H$.

So $N sect H nsg H$.


= Problem 2

#[  
    ==
    For every complex number $a+b i$, we can write it as $r e^(i theta)$ for some $r, theta$.

    Let's define the map from $RR \/ ZZ arrow SS$

    $ overline(x) arrow.bar e^(i 2pi x) $

    This is a homomorphic map from $R \/ Z$ to $SS$ because

    $ 
        phi(overline(x+y)) = e^(i 2pi (x+y))  = e^(i 2pi x) r e^(i 2pi y) = phi(overline(x)) + phi(overline(y))
    $

    Also it is obvious that this is both injective and surjective
    ==
    $ phi^(-1) = QQ \/ ZZ $

]

= Problem 3

#proof[
    Because we are in the modular group, so we can can map $n$ to the $n mod q$, 
    and use the group operation to get the result.

    By Lagurange theorem, for any element $n mod q$ in $(ZZ \/ q ZZ)^times$, its order divides out 
    the order of the group, which is $p-1$.

    Therefore we will have $n^(q-1) ident id " " (mod q)$, which means $n^q ident n " " (mod q)$.
]

= Problem 4

#[
    ==

    for $(g M, g N)$ to be the identity in $G \/ M times G\/ N$, we need to have $g M = M, g N = N$,
    which means $g in M sect N$.

    ==

    By second isomoprhism theorem

    $ (M N) / (N) cong (M) / (M sect N) $
    
    then by Lagurange theorem 

    $ |M| |N| = |M N| |M sect N| $

    The original question by Lagurange theorem is 

    $ |G| / |M sect N| = |G| / |M| |G|/|N| "where" |G| = |M N| $

    By previous statement, $|M N| / |M| = |N|/|M sect N| =>$ the original question is correct by some subsitution.

    == 

    Because it is a natural morphism, and we have that the domain and codomain have the same size,
    which implies that the kernel is trivial, which means that the morphism is a isomoprhism.
]

= Problem 5

#proof[
    #let to = sym.arrow;
    It suffices to show that both $r$ and $s$ have even order in $D_10$.

    For $r$, the natural morphism from $D_10 to S_5$ will map $r to (5,4,3,2,1)$, which obviously have even order.

    For $s$, it is obvious that $s$ can be composed by two length 2 cycle, which means that $s$ has even order.

    Therefore both $r$ and $s$ have even order, so $D_10 <= A_5$.
]

= Problem 6

it suffices to show that $(1,2)D(1,2) != D$

#proof[
    #let to = sym.arrow;
    use $r$ as an example.

    $ (1,2)r(1,2) = (1,2,5,4,3) $
    which is obviously not in $D_10$, becauses 
    for any composition with $s$, it will not be a cycle.

    If it is composed by $r^n$, which is not possible because element wise there is 
    different interval between two elements in $(1,2,5,4,3)$, which means that
    it is not in $D_10$.
]