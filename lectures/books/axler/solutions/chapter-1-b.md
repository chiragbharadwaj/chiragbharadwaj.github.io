---
layout: solutions
title: books | axler | ch 1b
roman: 1b
chapter_name: Vector Spaces
section_name: Definition of Vector Space
date: 2025-04-26
---

**Problem 1.** Let $\mathbf{w} = -\mathbf{v}$. Because $V$ is closed under scalar multiplication and $\mathbf{v} \in V$, we know that $\mathbf{w} \in V$, as we can write $-\mathbf{v}$ as $-\mathbf{v} = (-1)\mathbf{v} = \lambda\mathbf{v}$. Thus, all of the properties of $V$ that apply to $\mathbf{v}$ also apply to $\mathbf{w}$. It follows that

$$
\begin{aligned}
  -(-\mathbf{v}) &= -\mathbf{w} \\
  &= (-1)\mathbf{w} && \text{(def. of $-_{V}$)} \\
  &= (-1)[-\mathbf{v}] \\
  &= (-1)[(-1)\mathbf{v}] && \text{(def. of $-_{V}$)} \\
  &= [(-1)(-1)]\mathbf{v} && \text{($\cdot_V$ is assoc.)} \\
  &= 1\mathbf{v} \\
  &= \mathbf{v}, && \text{(id. for $\cdot_V$)}
\end{aligned}
$$

where we used the intermediate variable $\mathbf{w}$ to clarify the flow of logic.

----

**Problem 2.** Consider towards a contradiction that

\\[a \neq 0 \enspace \text{and} \enspace \mathbf{v} \neq \mathbf{0}, \enspace \text{yet} \enspace a\mathbf{v} = \mathbf{0}.\\]

Let $\mathbf{w} = a\mathbf{v}$. Because $a \in \mathcal{F}$ and $a \neq 0$, we know that there exists a multiplicative inverse $a^{-1} \in \mathcal{F}$ such that

\\[aa^{-1} = 1 \enspace \text{and} \enspace a^{-1}a = 1.\\]

We proceed as follows:

$$
\begin{aligned}
a\mathbf{v} &\triangleq \mathbf{0} \\
\mathbf{w} &= \mathbf{0} \\
a^{-1}\mathbf{w} &= a^{-1}\mathbf{0} && \text{(mult. by $a^{-1}$)} \\
a^{-1}(a\mathbf{v}) &= \mathbf{0} && \text{($\mathbf{0}$ absorbs)} \\
(a^{-1}a)\mathbf{v} &= \mathbf{0} && \text{($\cdot_V$ is assoc.)} \\
1\mathbf{v} &= \mathbf{0} && \text{(inv. of $\cdot_{\mathcal{F}}$)} \\
\mathbf{v} &= \mathbf{0}, && \text{(id. for $\cdot_V$)}
\end{aligned}
$$

which is a contradiction. Thus, either $a = 0$ or $\mathbf{v} = \mathbf{0}$ (or both). Note that we again used the intermediate variable $\mathbf{w}$ to clarify the flow of logic.

----

**Problem 3.** To prove this result, we need to establish both existence and uniqueness. We proceed as follows:

*Existence.* Consider $\mathbf{x}$, defined as

\\[\mathbf{x} = \dfrac{1}{3}(\mathbf{w} - \mathbf{v}).\\]

First, we must show that such an $\mathbf{x} \in V$ as well. Because $V$ is closed under scalar multiplication and $\mathbf{v}, \mathbf{w} \in V$, we know

- $\mathbf{s} = -\mathbf{v} = (-1)\mathbf{v} = \lambda\mathbf{v}$, &nbsp; so $\mathbf{s} \in V$;
- $\mathbf{t} = \mathbf{w} - \mathbf{v} = \mathbf{w} + (-\mathbf{v}) = \mathbf{w} + \mathbf{s}$, &nbsp; so $\mathbf{t} \in V$;
- $\mathbf{x} = \tfrac{1}{3}(\mathbf{w} - \mathbf{v}) = \tfrac{1}{3}\mathbf{t} = \lambda\mathbf{t}$, &nbsp; so $\mathbf{x} \in V$.

Then, we see that

$$
\begin{aligned}
\mathbf{v} + 3\mathbf{x} &\triangleq \mathbf{v} + 3\left[\tfrac{1}{3}(\mathbf{w} - \mathbf{v})\right] \\
&= \mathbf{v} + 3\left(\tfrac{1}{3}\mathbf{t}\right) \\
&= \mathbf{v} + \left(3 \cdot \tfrac{1}{3}\right) \mathbf{t} && \text{($\cdot_V$ is assoc.)} \\
&= \mathbf{v} + 1 \mathbf{t} && \text{(inv. of $\cdot_{\mathcal{F}}$)} \\
&= \mathbf{v} + \mathbf{t} && \text{(id. for $\cdot_V$)} \\
&= \mathbf{v} + (\mathbf{w} - \mathbf{v}) \\
&= \mathbf{v} + [\mathbf{w} + (-\mathbf{v})] && \text{(def. of $-_{V}$)} \\
&= \mathbf{v} + (\mathbf{w} + \mathbf{s}) \\
&= \mathbf{v} + (\mathbf{s} + \mathbf{w}) && \text{($+_{V}$ is comm.)} \\
&= (\mathbf{v} + \mathbf{s}) + \mathbf{w} && \text{($+_{V}$ is assoc.)} \\
&= [\mathbf{v} + (-\mathbf{v})] + \mathbf{w} \\
&= \mathbf{0} + \mathbf{w} && \text{(inv. of $+_{V}$)} \\
&= \mathbf{w}, && \text{(id. for $+_{V}$)}
\end{aligned}
$$

where we used the intermediate variables $\mathbf{s}$ and $\mathbf{t}$ to clarify the flow of logic. Thus, by construction, such an $\mathbf{x}$ exists.

*Uniqueness.* Consider towards a contradiction some $\mathbf{x}_1, \mathbf{x}_2 \in V$ such that

\\[\mathbf{v} + 3\mathbf{x}_1 = \mathbf{w} \enspace \text{and} \enspace \mathbf{v} + 3\mathbf{x}_2 = \mathbf{w}, \enspace \text{yet} \enspace \mathbf{x}_1 \neq \mathbf{x}_2.\\]

Then, we know that

$$
\begin{aligned}
\mathbf{v} + 3\mathbf{x}_1 &\triangleq \mathbf{w} \\
&\triangleq \mathbf{v} + 3\mathbf{x}_2 \\
\mathbf{s} + (\mathbf{v} + 3\mathbf{x}_1) &= \mathbf{s} + (\mathbf{v} + 3\mathbf{x}_2) && \text{(add $\mathbf{s}$)} \\
(\mathbf{s} + \mathbf{v}) + 3\mathbf{x}_1 &= (\mathbf{s} + \mathbf{v}) + 3\mathbf{x}_2 && \text{($+_{V}$ is assoc.)} \\
[(-\mathbf{v}) + \mathbf{v}] + 3\mathbf{x}_1 &= [(-\mathbf{v}) + \mathbf{v}] + 3\mathbf{x}_2 \\
\mathbf{0} + 3\mathbf{x}_1 &= \mathbf{0} + 3\mathbf{x}_2 && \text{(inv. of $+_{V}$)} \\
3\mathbf{x}_1 &= 3\mathbf{x}_2 && \text{(id. for $+_{V}$)} \\
\tfrac{1}{3}(3\mathbf{x}_1) &= \tfrac{1}{3}(3\mathbf{x}_2) && \text{(mult. by $\tfrac{1}{3}$)} \\
(\tfrac{1}{3} \cdot 3)\mathbf{x}_1 &= (\tfrac{1}{3} \cdot 3)\mathbf{x}_2 && \text{($\cdot_V$ is assoc.)} \\
1 \mathbf{x}_1 &= 1 \mathbf{x}_2 && \text{(inv. of $\cdot_{\mathcal{F}}$)} \\
\mathbf{x}_1 &= \mathbf{x}_2, && \text{(id. for $\cdot_V$)}
\end{aligned}
$$

which is a contradiction. Thus, such an $\mathbf{x}$ must be unique.

----

**Problem 4.** We can write out all of the properties of a vector space $V$ using predicate calculus:

- *Commutativity.*

\\[\forall \mathbf{u}, \mathbf{v} \in V \qquad \mathbf{u} + \mathbf{v} = \mathbf{v} + \mathbf{u};\\]

- *Associativity.*

$$
\begin{aligned}
\forall \mathbf{u}, \mathbf{v}, \mathbf{w} \in V &\qquad (\mathbf{u} + \mathbf{v}) + \mathbf{w} = \mathbf{u} + (\mathbf{v} + \mathbf{w}) \\
\forall \mathbf{v} \in V \enspace \text{and} \enspace \forall a, b \in \mathcal{F} &\qquad (ab)\mathbf{v} = a(b\mathbf{v});
\end{aligned}
$$

- *Additive identity.*

\\[\exists \mathbf{0} \in V \enspace \text{s.t.} \enspace \forall \mathbf{v} \in V \qquad \mathbf{v} + \mathbf{0} = \mathbf{v};\\]

- *Additive inverse.*

\\[\forall \mathbf{v} \in V \qquad \exists \mathbf{v}^{-1} \in V \enspace \text{s.t.} \enspace \mathbf{v} + \mathbf{v}^{-1} = \mathbf{0};\\]

- *Multiplicative identity.*

\\[\forall \mathbf{v} \in V \qquad 1\mathbf{v} = \mathbf{v};\\]

- *Distributive properties.*

$$
\begin{aligned}
\forall \mathbf{u}, \mathbf{v} \in V \enspace \text{and} \enspace \forall a \in \mathcal{F} &\qquad a(\mathbf{u} + \mathbf{v}) = a\mathbf{u} + a\mathbf{v} \\
\forall \mathbf{v} \in V \enspace \text{and} \enspace \forall a, b \in \mathcal{F} &\qquad (a + b)\mathbf{v} = a\mathbf{v} + b\mathbf{v}.
\end{aligned}
$$

Let us now consider the case when $V = \emptyset$. Almost all of the properties are first qualified using the universal quantifier; thus, they are all vacuously true. That is, any statement starting with "for all elements in $\emptyset$" is true, as there are no such elements. However, the **additive identity** property fails to hold: it is qualified using the existential quantifier, and asserts the existence of an element in $\emptyset$. However, because $\emptyset$ contains no elements at all, it in particular does not contain such a $\mathbf{0}$.

It follows that $\emptyset$ cannot form a vector space over $\mathcal{F}$.

----

**Problem 5.**

To show that one condition can be replaced with another, it suffices to show that they both imply each other; in other words, we must show that

\\[\forall \mathbf{v} \in V \qquad \exists \mathbf{v}^{-1} \in V \enspace \text{s.t.} \enspace \mathbf{v} + \mathbf{v}^{-1} = \mathbf{0} \quad \text{iff} \quad 0\mathbf{v} = \mathbf{0}.\\]

We proceed as follows:

*Forward $(\Rightarrow)$.* Let $\mathbf{w} = 0\mathbf{v}$. Because $V$ is closed under scalar multiplication and $\mathbf{v} \in V$, we know that $\mathbf{w} \in V$, as we can write $0\mathbf{v}$ as $\lambda\mathbf{v}$. Thus, all of the properties of $V$ that apply to $\mathbf{v}$ also apply to $\mathbf{w}$. In particular, there exists $\mathbf{w}^{-1} \in V$ such that

\\[\mathbf{w} + \mathbf{w}^{-1} = \mathbf{0}.\\]

It follows that

$$
\begin{aligned}
\mathbf{w} &\triangleq 0\mathbf{v} \\
\mathbf{w} &= (0 + 0)\mathbf{v} && \text{(id. for $+_{\mathcal{F}}$)} \\
\mathbf{w} &= 0\mathbf{v} + 0\mathbf{v} && \text{($+_{V}$ is distr.)} \\
\mathbf{w} &\triangleq \mathbf{w} + \mathbf{w} \\
\mathbf{w}^{-1} + \mathbf{w} &= \mathbf{w}^{-1} + (\mathbf{w} + \mathbf{w}) && \text{(add $\mathbf{w}^{-1}$)} \\
\mathbf{w}^{-1} + \mathbf{w} &= (\mathbf{w}^{-1} + \mathbf{w}) + \mathbf{w} && \text{($+_{V}$ is assoc.)} \\
\mathbf{0} &= \mathbf{0} + \mathbf{w} && \text{(inv. of $+_{V}$)} \\
\mathbf{0} &= \mathbf{w} && \text{(id. for $+_{V}$)} \\
\mathbf{0} &\triangleq 0\mathbf{v},
\end{aligned}
$$

as desired. Note that we were able to use the existence of an additive inverse because it forms the implication's premise.

*Reverse $(\Leftarrow)$.* This time, we cannot use the existence of an additive inverse, as this is the desired conclusion. Instead, we must start with the premise that for all $\mathbf{v} \in V$,

\\[0\mathbf{v} = \mathbf{0}.\\]

Let $\mathbf{v}^{-1} = -\mathbf{v}$. Again, because $V$ is closed under scalar multiplication and $\mathbf{v} \in V$, we know that $\mathbf{v}^{-1} \in V$, as we can write $-\mathbf{v}$ as $(-1)\mathbf{v} = \lambda\mathbf{v}$. Thus, all of the properties of $V$ that apply to $\mathbf{v}$ also apply to $\mathbf{v}^{-1}$. It follows that

$$
\begin{aligned}
\mathbf{v} + \mathbf{v}^{-1} &\triangleq \mathbf{v} + (-\mathbf{v}) \\
&= 1\mathbf{v} + (-1)\mathbf{v} && \text{(id. for $\cdot_{V}$)} \\
&= [1 + (-1)]\mathbf{v} && \text{($+_{V}$ is distr.)} \\
&= 0\mathbf{v} && \text{(inv. of $+_{\mathcal{F}}$)} \\
&\triangleq \mathbf{0},
\end{aligned}
$$

as desired. Thus, by construction, such a $\mathbf{v}^{-1}$ exists for every $\mathbf{v} \in V$.

----

**Problem 6.** Let us introduce the notation

\\[V = \mathcal{R} \cup \\{\infty,-\infty\\}\\]

to simplify the analysis. To determine whether $V$ forms a vector space over $\mathcal{R}$, we must simply verify the properties of a vector space. We claim that the **associativity** property fails to hold for $V$. Consider the following:

\\[u = \infty \enspace \text{and} \enspace v = -\infty \enspace \text{and} \enspace w = 1.\\]

Since $1 \in \mathcal{R}$, it is evident that $u, v, w \in \mathcal{R} \cup \\{\infty,-\infty\\}$. In other words, $u, v, w \in V$. We see that

$$
\begin{aligned}
(u + v) + w &\triangleq [\infty + (-\infty)] + 1 \\
&= 0 + 1 \\
&= 1.
\end{aligned}
$$

On the other hand,

$$
\begin{aligned}
u + (v + w) &\triangleq \infty + [(-\infty + 1)] \\
&= \infty + (-\infty) \\
&= 0.
\end{aligned}
$$

Thus, as $1 \neq 0$, there exist $u, v, w \in V$ for which $(u + v) + w \neq u + (v + w)$. It follows that $V$ is not a vector space over $\mathcal{R}$.

----

**Problem 7.** Let $V$ be a vector space over $\mathcal{F}$ and $S$ be some non-empty set. Then, we can define $V^S$ as

\\[V^S = \\{f\ \vert\ f : S \rightarrow V\\}.\\]

Now, consider arbitrary $f, g \in V^S$ and $\lambda \in \mathcal{F}$. We can define the natural operations on $V^S$ as follows:

\\[\forall x \in S \qquad (f + g)(x) = f(x) + g(x) \enspace \text{and} \enspace (\lambda f)(x) = \lambda f(x).\\]

It is worth noting that on the left-hand side of each expression, the operation (addition or scalar multiplication) is in $V^S$, while on the right-hand side of the same expression it is a similar-looking operation in $V$ instead. In other words, a fully-disambiguated version of the definition might be

\\[\forall x \in S \qquad (f +\_{V^S} g)(x) = f(x) +\_V g(x) \enspace \text{and} \enspace (\lambda \cdot\_{V^S} f)(x) = \lambda \cdot\_{V} f(x).\\]

We will use the former for simplicity of notation. To show that $V^S$ forms a vector space over $\mathcal{F}$, we must verify the usual properties of a vector space:

- *Commutativity.* Consider $f, g \in V^S$. Then, for all $x \in S$,

$$
\begin{aligned}
f + g &\circeq (f + g)(x) \\
&\triangleq f(x) + g(x) && \text{(def. of $+_{V^S}$)} \\
&= g(x) + f(x) && \text{($+_{V}$ is comm.)} \\
&\triangleq (g + f)(x) && \text{(def. of $+_{V^S}$)} \\
&\circeq g + f.
\end{aligned}
$$

- *Associativity.* Consider $f, g, h \in V^S$ and $a, b \in \mathcal{F}$. Then, for all $x \in S$,

  $$
  \begin{aligned}
  (f + g) + h &= m + h \\
  &\circeq (m + h)(x) \\
  &\triangleq m(x) + h(x) && \text{(def. of $+_{V^S}$)} \\
  &= (f + g)(x) + h(x) \\
  &= [f(x) + g(x)] + h(x) && \text{(def. of $+_{V^S}$)} \\
  &= f(x) + [g(x) + h(x)] && \text{($+_{V}$ is assoc.)} \\
  &= f(x) + (g + h)(x) && \text{(def. of $+_{V^S}$)} \\
  &= f(x) + n(x) \\
  &\triangleq (f + n)(x) && \text{(def. of $+_{V^S}$)} \\
  &\circeq f + n \\
  &= f + (g + h);
  \end{aligned} \\
  $$

  Similarly, for all $x \in S$,

  $$
  \begin{aligned}
  (ab)f &= \lambda f \\
  &\circeq (\lambda f)(x) \\
  &\triangleq \lambda f(x) && \text{(def. of $\cdot_{V^S}$)} \\
  &= (ab) f(x) \\
  &= a (b f(x)) && \text{($\cdot_{V}$ is assoc.)} \\
  &\triangleq a [(bf)(x)] && \text{(def. of $\cdot_{V^S}$)} \\
  &\circeq a(bf).
  \end{aligned}
  $$

- *Additive identity.* Let $\hat{0} : S \rightarrow V$ be defined as $\hat{0}(x) = \mathbf{0}$ for all $x \in S$. Clearly, $\hat{0} \in V^S$. Now, consider $f \in V^S$. Then, for all $x \in S$,

$$
\begin{aligned}
f + \hat{0} &\circeq (f + \hat{0})(x) \\
&\triangleq f(x) + \hat{0}(x) && \text{(def. of $+_{V^S}$)} \\
&= f(x) + \mathbf{0} && \text{(def. of $\hat{0}$)} \\
&= f(x) && \text{(id. for $+_{V}$)} \\
&\circeq f.
\end{aligned}
$$

- *Additive inverse.* Consider $f \in V^S$. Let $f^{-1} : S \rightarrow V$ be defined as $f^{-1}(x) = -f(x)$ for all $x \in S$.

  Because $V$ is closed under scalar multiplication and $f(x) \in V$, we know that $f^{-1}(x) \in V$, as we can write $-f(x)$ as $(-1)f(x) = \lambda f(x)$. Thus, all of the properties of $V$ that apply to $f(x)$ also apply to $f^{-1}(x)$.
  
  Note that this says nothing about the properties of $V^S$ on $f$ and $f^{-1}$, respectively. Then, for all $x \in S$,

$$
\begin{aligned}
f + f^{-1} &\circeq (f + f^{-1})(x) \\
&\triangleq f(x) + f^{-1}(x) && \text{(def. of $+_{V^S}$)} \\
&\triangleq f(x) + [-f(x)] && \text{(def. of $f^{-1}$)} \\
&= 1 \cdot f(x) + (-1) \cdot f(x) && \text{(id. for $\cdot_{V}$)} \\
&= [1 + (-1)] f(x) && \text{($+_{V}$ is distr.)} \\
&= 0 \cdot f(x) && \text{(inv. of $+_{\mathcal{F}}$)} \\
&= \mathbf{0} && \text{(Problem 5)}\\
&\triangleq \hat{0}(x) && \text{(def. of $\hat{0}$)} \\
&\circeq \hat{0}.
\end{aligned}
$$

- *Multiplicative identity.* Consider $f \in V^S$. Then, for all $x \in S$,

$$
\begin{aligned}
1 \cdot f &\circeq 1 \cdot f(x) \\
&= f(x) && \text{(id. for $\cdot_{V}$)} \\
&\circeq f.
\end{aligned}
$$

- *Distributive properties.* Consider $f, g \in V^S$ and $a, b \in \mathcal{F}$. Then, for all $x \in S$,

  $$
  \begin{aligned}
  a(f + g) &\circeq [a(f + g)](x) \\
  &\triangleq a [(f + g)(x)] && \text{(def. of $\cdot_{V^S}$)} \\
  &\triangleq a[f(x) + g(x)] && \text{(def. of $+_{V^S}$)} \\
  &= a \cdot f(x) + a \cdot g(x) && \text{($\cdot_{V}$ is distr.)} \\
  &\triangleq (af)(x) + (ag)(x) && \text{(def. of $\cdot_{V^S}$)} \\
  &\circeq af + ag.
  \end{aligned}
  $$

  Similarly, for all $x \in S$,

  $$
  \begin{aligned}
  (a + b)f &\circeq [(a + b)f](x) \\
  &\triangleq (a + b) f(x) && \text{(def. of $\cdot_{V^S}$)} \\
  &= a \cdot f(x) + b \cdot f(x) && \text{($+_{V}$ is distr.)} \\
  &\triangleq (af)(x) + (bf)(x) && \text{(def. of $\cdot_{V^S}$)} \\
  &\circeq af + bf.
  \end{aligned}
  $$

----

**Problem 8.** Let $V$ be a vector space over $\mathcal{R}$. Then, we can define $V_{\mathcal{C}}$ as

\\[V_{\mathcal{C}} = V \times V.\\]

We will denote elements of $V$ as $\mathbf{v}$ and elements of $V_{\mathcal{C}}$ as $\tilde{\mathbf{v}}$, respectively. The expanded form of $\tilde{\mathbf{v}}$ is given by $\tilde{\mathbf{v}} = (\mathbf{v}\_1, \mathbf{v}\_2)$. Now, consider arbitrary $\tilde{\mathbf{z}}, \tilde{\mathbf{w}} \in V_{\mathcal{C}}$ and $\lambda \in \mathcal{C}$ such that $\lambda = \lambda\_1 + \lambda\_2 i$, where $\lambda\_1, \lambda\_2 \in \mathcal{R}$. We can define natural operations on $V_{\mathcal{C}}$ as follows:

$$
\tilde{\mathbf{z}} + \tilde{\mathbf{w}} = (\mathbf{z}_1, \mathbf{z}_2) + (\mathbf{w}_1, \mathbf{w}_2) = \bigg((\mathbf{z}_1 + \mathbf{w}_1), (\mathbf{z}_2 + \mathbf{w}_2)\bigg) \\

\ \\
\text{and} \\
\ \\

\lambda \tilde{\mathbf{z}} = (\lambda_1 + \lambda_2 i) \cdot (\mathbf{z}_1, \mathbf{z}_2) = \bigg((\lambda_1 \mathbf{z}_1 - \lambda_2 \mathbf{z}_2), (\lambda_1 \mathbf{z}_2 + \lambda_2 \mathbf{z}_1)\bigg).
$$

Note that expressions of the form $\lambda\_i \mathbf{v}\_j$ are well-defined elements of $V$, as $\lambda\_i \in \mathcal{R}$ and $\mathbf{v}\_j \in V$; recall that $V$ is a vector space over $\mathcal{R}$, so in particular it is closed under scalar multiplication. Now, to show that $V_{\mathcal{C}}$ forms a vector space over $\mathcal{C}$ (n.b. _not_ $\mathcal{R}$), we must verify the usual properties of a vector space:

- *Commutativity.* Consider $\tilde{\mathbf{u}}, \tilde{\mathbf{v}} \in V_{\mathcal{C}}$. Then,

$$
\begin{aligned}
\tilde{\mathbf{u}} + \tilde{\mathbf{v}} &\circeq (\mathbf{u}_1, \mathbf{u}_2) + (\mathbf{v}_1, \mathbf{v}_2) \\
&\triangleq \bigg((\mathbf{u}_1 + \mathbf{v}_1), (\mathbf{u}_2 + \mathbf{v}_2)\bigg) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
&= \bigg((\mathbf{v}_1 + \mathbf{u}_1), (\mathbf{v}_2 + \mathbf{u}_2)\bigg) && \text{($+_{V}$ is comm.)} \\
&\triangleq (\mathbf{v}_1, \mathbf{v}_2) + (\mathbf{u}_1, \mathbf{u}_2) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
&\circeq \tilde{\mathbf{v}} + \tilde{\mathbf{u}}.
\end{aligned}
$$

- *Associativity.* Consider $\tilde{\mathbf{u}}, \tilde{\mathbf{v}}, \tilde{\mathbf{w}} \in V_{\mathcal{C}}$. Then,

  $$
  \begin{aligned}
  (\tilde{\mathbf{u}} + \tilde{\mathbf{v}}) + \tilde{\mathbf{w}} &\circeq \bigg[(\mathbf{u}_1, \mathbf{u}_2) + (\mathbf{v}_1, \mathbf{v}_2)\bigg] + (\mathbf{w}_1, \mathbf{w}_2) \\
  &\triangleq \bigg((\mathbf{u}_1 + \mathbf{v}_1), (\mathbf{u}_2 + \mathbf{v}_2)\bigg) + (\mathbf{w}_1, \mathbf{w}_2) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &= (\mathbf{t}_1, \mathbf{t}_2) + (\mathbf{w}_1, \mathbf{w}_2) \\
  &= \bigg((\mathbf{t}_1 + \mathbf{w}_1), (\mathbf{t}_2 + \mathbf{w}_2)\bigg) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &= \bigg([(\mathbf{u}_1 + \mathbf{v}_1) + \mathbf{w}_1], [(\mathbf{u}_2 + \mathbf{v}_2) + \mathbf{w}_2]\bigg) \\
  &= \bigg([\mathbf{u}_1 + (\mathbf{v}_1 + \mathbf{w}_1)], [\mathbf{u}_2 + (\mathbf{v}_2 + \mathbf{w}_2)]\bigg) && \text{($+_{V}$ is assoc.)}  \\
  &= \bigg((\mathbf{u}_1 + \mathbf{s}_1), (\mathbf{u}_2 + \mathbf{s}_2)\bigg) \\
  &= (\mathbf{u}_1, \mathbf{u}_2) + (\mathbf{s}_1, \mathbf{s}_2) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &= (\mathbf{u}_1, \mathbf{u}_2) + \bigg((\mathbf{v}_1 + \mathbf{w}_1), (\mathbf{v}_2 + \mathbf{w}_2)\bigg) \\
  &\triangleq (\mathbf{u}_1, \mathbf{u}_2) + \bigg[(\mathbf{v}_1, \mathbf{v}_2) + (\mathbf{w}_1, \mathbf{w}_2)\bigg] && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &\circeq \tilde{\mathbf{u}} + (\tilde{\mathbf{v}} + \tilde{\mathbf{w}}),
  \end{aligned}
  $$

  where we used the intermediate variables $\mathbf{t}\_i = \mathbf{u}\_i + \mathbf{v}\_i$ and $\mathbf{s}\_i = \mathbf{v}\_i + \mathbf{w}\_i$ for $i \in \\{1, 2\\}$ to clarify the flow of logic.

- *Additive identity.* Since $V$ is a vector space, it has an additive identity, which we will denote as $\mathbf{0}$. Let $\tilde{\mathbf{0}} = (\mathbf{0}, \mathbf{0})$. Clearly, $\tilde{\mathbf{0}} \in V_{\mathcal{C}}$. Now, consider $\tilde{\mathbf{v}} \in V_{\mathcal{C}}$. Then,

$$
\begin{aligned}
\tilde{\mathbf{v}} + \tilde{\mathbf{0}} &\circeq (\mathbf{v}_1, \mathbf{v}_2) + (\mathbf{0}, \mathbf{0}) \\
&\triangleq \bigg((\mathbf{v}_1 + \mathbf{0}), (\mathbf{v}_2 + \mathbf{0})\bigg) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
&= (\mathbf{v}_1, \mathbf{v}_2) && \text{(id. for $+_{V}$)} \\
&\circeq \tilde{\mathbf{v}}.
\end{aligned}
$$

- *Additive inverse.* Consider $\tilde{\mathbf{v}} \in V_{\mathcal{C}}$. Let $\tilde{\mathbf{v}}^{-1}$ be defined as $\tilde{\mathbf{v}}^{-1} = -\tilde{\mathbf{v}}$.

  Because $V_{\mathcal{C}}$ is closed under scalar multiplication and $\tilde{\mathbf{v}} \in V_{\mathcal{C}}$, we know that $\tilde{\mathbf{v}}^{-1} \in V_{\mathcal{C}}$, as we can write $-\tilde{\mathbf{v}}$ as $(-1)\tilde{\mathbf{v}} = (-1 + 0i) \tilde{\mathbf{v}} = \lambda \tilde{\mathbf{v}}$. Thus, all of the properties of $V_{\mathcal{C}}$ that apply to $\tilde{\mathbf{v}}$ also apply to $\tilde{\mathbf{v}}^{-1}$.
  
  Now, if $\tilde{\mathbf{v}} = (\mathbf{v}_1, \mathbf{v}_2)$, then 

  $$
  \begin{aligned}
  \tilde{\mathbf{v}}^{-1} &\triangleq -\tilde{\mathbf{v}} \\
  &\circeq -(\mathbf{v}_1, \mathbf{v}_2) \\
  &= (-1) \cdot (\mathbf{v}_1, \mathbf{v}_2) \\
  &= (-1 + 0i) \cdot (\mathbf{v}_1, \mathbf{v}_2) \\
  &\triangleq \bigg([(-1) \mathbf{v}_1 - 0 \mathbf{v}_2], [(-1) \mathbf{v}_2 + 0 \mathbf{v}_1]\bigg) && \text{(def. of $\cdot_{V_{\mathcal{C}}}$)} \\
  &= \bigg((-\mathbf{v}_1 + \mathbf{0}), (-\mathbf{v}_2 + \mathbf{0})\bigg) && \text{(Problem 5)} \\
  &= (-\mathbf{v}_1, -\mathbf{v}_2). && \text{(id. for $+_{V}$)}
  \end{aligned}
  $$

  Then, we see that

  $$
  \begin{aligned}
  \tilde{\mathbf{v}} + \tilde{\mathbf{v}}^{-1} &\circeq (\mathbf{v}_1, \mathbf{v}_2) + (-\mathbf{v}_1, -\mathbf{v}_2) \\
  &\triangleq \bigg([\mathbf{v}_1 + (-\mathbf{v}_1)], [\mathbf{v}_2 + (-\mathbf{v}_2)]\bigg) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &= \bigg([1 \mathbf{v}_1 + (-1) \mathbf{v}_1], [1 \mathbf{v}_2 + (-1) \mathbf{v}_2]\bigg) && \text{(id. for $\cdot_{V}$)} \\
  &= \bigg([1 + (-1)] \mathbf{v}_1, [1 + (-1)] \mathbf{v}_2 \bigg) && \text{($+_{V}$ is distr.)} \\
  &= (0 \mathbf{v}_1, 0 \mathbf{v}_2) && \text{(inv. of $+_{\mathcal{R}}$)} \\
  &= (\mathbf{0}, \mathbf{0}) && \text{(Problem 5)} \\
  &\circeq \tilde{\mathbf{0}}. && \text{(def. of $\tilde{\mathbf{0}}$)}
  \end{aligned}
  $$

- *Multiplicative identity.* Consider $\tilde{\mathbf{v}} \in V_{\mathcal{C}}$. Then,

$$
\begin{aligned}
1\tilde{\mathbf{v}} &\circeq 1 \cdot (\mathbf{v}_1, \mathbf{v}_2) \\
&= (1 + 0i) \cdot (\mathbf{v}_1, \mathbf{v}_2) \\
&\triangleq \bigg([1 \mathbf{v}_1 - 0 \mathbf{v}_2], [1 \mathbf{v}_2 + 0 \mathbf{v}_1]\bigg) && \text{(def. of $\cdot_{V_{\mathcal{C}}}$)} \\
&= \bigg((\mathbf{v}_1 + \mathbf{0}), (\mathbf{v}_2 + \mathbf{0})\bigg) && \text{(Problem 5)} \\
&= (\mathbf{v}_1, \mathbf{v}_2) && \text{(id. for $+_{V}$)} \\
&\circeq \tilde{\mathbf{v}}.
\end{aligned}
$$

- *Distributive properties.* Consider $\tilde{\mathbf{u}}, \tilde{\mathbf{v}} \in V_{\mathcal{C}}$ and $\alpha, \beta \in \mathcal{C}$ such that $\alpha = \alpha_1 + \alpha_2 i$ and $\beta = \beta_1 + \beta_2 i$, where all of $\alpha_1, \alpha_2, \beta_1, \beta_2 \in \mathcal{R}$. Then,

  $$
  \begin{aligned}
  \alpha (\tilde{\mathbf{u}} + \tilde{\mathbf{v}}) &\circeq (\alpha_1 + \alpha_2 i) \cdot [(\mathbf{u}_1, \mathbf{u}_2) + (\mathbf{v}_1, \mathbf{v}_2)] \\
  &\triangleq (\alpha_1 + \alpha_2 i) \cdot \bigg((\mathbf{u}_1 + \mathbf{v}_1), (\mathbf{u}_2 + \mathbf{v}_2)\bigg) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &= (\alpha_1 + \alpha_2 i) \cdot (\mathbf{t}_1, \mathbf{t}_2) \\
  &\triangleq \bigg([\alpha_1 \mathbf{t}_1 - \alpha_2 \mathbf{t}_2], [\alpha_1 \mathbf{t}_2 + \alpha_2 \mathbf{t}_1]\bigg) && \text{(def. of $\cdot_{V_{\mathcal{C}}}$)} \\
  &= \bigg([\alpha_1 \mathbf{t}_1 - \alpha_2 \mathbf{t}_2], [\alpha_2 \mathbf{t}_1 + \alpha_1 \mathbf{t}_2]\bigg) && \text{($+_{V}$ is comm.)} \\
  &= \bigg([\alpha_1 (\mathbf{u}_1 + \mathbf{v}_1) - \alpha_2 (\mathbf{u}_2 + \mathbf{v}_2)], [\alpha_2 (\mathbf{u}_1 + \mathbf{v}_1) + \alpha_1 (\mathbf{u}_2 + \mathbf{v}_2)]\bigg) \\
  &= \bigg([\alpha_1 \mathbf{u}_1 + \alpha_1 \mathbf{v}_1 - \alpha_2 \mathbf{u}_2 - \alpha_2 \mathbf{v}_2], [\alpha_2 \mathbf{u}_1 + \alpha_2 \mathbf{v}_1 + \alpha_1 \mathbf{u}_2 + \alpha_1 \mathbf{v}_2]\bigg) && \text{($\cdot_{V}$ is distr.)} \\
  &= \bigg([(\alpha_1 \mathbf{u}_1 - \alpha_2 \mathbf{u}_2) + (\alpha_1 \mathbf{v}_1 - \alpha_2 \mathbf{v}_2)], [(\alpha_1 \mathbf{u}_2 + \alpha_2 \mathbf{u}_1) + (\alpha_1 \mathbf{v}_2 + \alpha_2 \mathbf{v}_1)]\bigg) && \text{($+_{V}$ is comm.)} \\
  &= \bigg((\mathbf{p} + \mathbf{q}), (\mathbf{r} + \mathbf{s})\bigg) \\
  &\triangleq (\mathbf{p}, \mathbf{r}) + (\mathbf{q}, \mathbf{s}) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &= \bigg((\alpha_1 \mathbf{u}_1 - \alpha_2 \mathbf{u}_2), (\alpha_1 \mathbf{u}_2 + \alpha_2 \mathbf{u}_1)\bigg) + \bigg((\alpha_1 \mathbf{v}_1 - \alpha_2 \mathbf{v}_2), (\alpha_1 \mathbf{v}_2 + \alpha_2 \mathbf{v}_1)\bigg) \\
  &\triangleq (\alpha_1 + \alpha_2 i) \cdot (\mathbf{u}_1, \mathbf{u}_2) + (\alpha_1 + \alpha_2 i) \cdot (\mathbf{v}_1, \mathbf{v}_2) && \text{(def. of $\cdot_{V_{\mathcal{C}}}$)} \\
  &\circeq \alpha \tilde{\mathbf{u}} + \alpha \tilde{\mathbf{v}},
  \end{aligned}
  $$

  where we used the intermediate variables $\mathbf{p}, \mathbf{q}, \mathbf{r}, \mathbf{s}, \mathbf{t}$ to clarify the flow of logic. Similarly,

  $$
  \begin{aligned}
  (\alpha + \beta) \tilde{\mathbf{v}} &\circeq [(\alpha_1 + \alpha_2 i) + (\beta_1 + \beta_2 i)] \cdot (\mathbf{v}_1, \mathbf{v}_2) \\
  &= [(\alpha_1 + \beta_1) + (\alpha_2 + \beta_2) i] \cdot (\mathbf{v}_1, \mathbf{v}_2) && \text{(def. of $+_{\mathcal{C}}$)} \\
  &= (\gamma_1 + \gamma_2 i) \cdot (\mathbf{v}_1, \mathbf{v}_2) \\
  &\triangleq \bigg([\gamma_1 \mathbf{v}_1 - \gamma_2 \mathbf{v}_2], [\gamma_1 \mathbf{v}_2 + \gamma_2 \mathbf{v}_1]\bigg) && \text{(def. of $\cdot_{V_{\mathcal{C}}}$)} \\
  &= \bigg([(\alpha_1 + \beta_1) \mathbf{v}_1 - (\alpha_2 + \beta_2) \mathbf{v}_2], [(\alpha_1 + \beta_1)\mathbf{v}_2 + (\alpha_2 + \beta_2) \mathbf{v}_1]\bigg) \\
  &= \bigg([\alpha_1 \mathbf{v}_1 + \beta_1 \mathbf{v}_1 - \alpha_2 \mathbf{v}_2 - \beta_2 \mathbf{v}_2], [\alpha_1 \mathbf{v}_2 + \beta_1 \mathbf{v}_2 + \alpha_2 \mathbf{v}_1 + \beta_2 \mathbf{v}_1]\bigg) && \text{($+_{V}$ is distr.)} \\
  &= \bigg([(\alpha_1 \mathbf{v}_1 - \alpha_2 \mathbf{v}_2) + (\beta_1 \mathbf{v}_1 - \beta_2 \mathbf{v}_2)], [(\alpha_1 \mathbf{v}_2 + \alpha_2 \mathbf{v}_1) + (\beta_2 \mathbf{v}_1 + \beta_1 \mathbf{v}_2)]\bigg) && \text{($+_{V}$ is comm.)} \\
  &= \bigg((\mathbf{p} + \mathbf{q}), (\mathbf{r} + \mathbf{s})\bigg) \\
  &\triangleq (\mathbf{p}, \mathbf{r}) + (\mathbf{q}, \mathbf{s}) && \text{(def. of $+_{V_{\mathcal{C}}}$)} \\
  &= \bigg((\alpha_1 \mathbf{v}_1 - \alpha_2 \mathbf{v}_2), (\alpha_1 \mathbf{v}_2 + \alpha_2 \mathbf{v}_1)\bigg) + \bigg((\beta_1 \mathbf{v}_1 - \beta_2 \mathbf{v}_2), (\beta_1 \mathbf{v}_2 + \beta_2 \mathbf{v}_1)\bigg) \\
  &\triangleq (\alpha_1 + \alpha_2 i) \cdot (\mathbf{v}_1, \mathbf{v}_2) + (\beta_1 + \beta_2 i) \cdot (\mathbf{v}_1, \mathbf{v}_2) && \text{(def. of $\cdot_{V_{\mathcal{C}}}$)} \\
  &\circeq \alpha \tilde{\mathbf{v}} + \beta \tilde{\mathbf{v}},
  \end{aligned}
  $$

  where we again used the intermediate variables $\mathbf{p}, \mathbf{q}, \mathbf{r}, \mathbf{s}, \gamma$ to clarify the flow of logic.
