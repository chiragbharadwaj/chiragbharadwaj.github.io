---
layout: solutions
title: books | axler | ch 1a
roman: 1a
chapter_name: Vector Spaces
section_name: $\mathcal{R}^n$ and $\mathcal{C}^n$
date: 2025-01-04
---

**Problem 1.** Let $\alpha = a + bi$ and $\beta = c + di$, where $a, b, c, d \in \mathcal{R}$. Then, it follows that

$$
\begin{aligned}
  \alpha + \beta &\triangleq (a + bi) + (c + di) \\
  &= (a + c) + (b + d)i && \text{(def. of $+_{\mathcal{C}}$)} \\
  &= (c + a) + (d + b)i && \text{($+_{\mathcal{R}}$ is comm.)} \\
  &= (c + di) + (a + bi) && \text{(def. of $+_{\mathcal{C}}$)} \\
  &\triangleq \beta + \alpha.
\end{aligned}
$$

----

**Problem 2.** Define $\alpha, \beta, \lambda \in \mathcal{C}$ such that:
- $\alpha = a + bi$, &nbsp; where $a, b \in \mathcal{R}$;
- $\beta = c + di$, &nbsp; where $c, d \in \mathcal{R}$;
- $\lambda = x + yi$, &nbsp; where $x, y \in \mathcal{R}$.

Then, it follows that

$$
\begin{aligned}
  (\alpha + \beta) + \lambda &\triangleq [(a + bi) + (c + di)] + (x + yi) \\
  &= [(a + c) + (b + d)i] + (x + yi) && \text{(def. of $+_{\mathcal{C}}$)} \\
  &= (w + zi) + (x + yi) \\
  &= (w + x) + (z + y)i && \text{(def. of $+_{\mathcal{C}}$)} \\
  &= [(a + c) + x] + [(b + d) + y]i \\
  &= [a + (c + x)] + [b + (d + y)]i && \text{($+_{\mathcal{R}}$ is assoc.)} \\
  &= (a + s) + (b + t)i \\
  &= (a + bi) + (s + ti) && \text{(def. of $+_{\mathcal{C}}$)} \\
  &= (a + bi) + [(c + x) + (d + y)i] \\
  &= (a + bi) + [(c + di) + (x + yi)] && \text{(def. of $+_{\mathcal{C}}$)} \\
  &\triangleq \alpha + (\beta + \lambda),
\end{aligned}
$$

where we used intermediate variables $w, z, s, t \in \mathcal{R}$ to clarify the flow of logic.

----

**Problem 3.** Following the approach in Problem 2, define $\alpha, \beta, \lambda \in \mathcal{C}$ such that:
- $\alpha = a + bi$, &nbsp; where $a, b \in \mathcal{R}$;
- $\beta = c + di$, &nbsp; where $c, d \in \mathcal{R}$;
- $\lambda = x + yi$, &nbsp; where $x, y \in \mathcal{R}$.

Again, it follows that

$$
\begin{aligned}
  (\alpha\beta)\lambda &\triangleq [(a + bi) \cdot (c + di)] \cdot (x + yi) \\
  &= [(ac - bd) + (ad + bc)i] \cdot (x + yi) && \text{(def. of $\cdot_{\mathcal{C}}$)} \\
  &= (w + zi) \cdot (x + yi) \\
  &= (wx - zy) + (wy + zx)i && \text{(def. of $\cdot_{\mathcal{C}}$)} \\
  &= [(ac - bd)x - (ad + bc)y] + [(ac - bd)y + (ad + bc)x]i \\
  &= [(ac)x - (bd)x - (ad)y - (bc)y] + [(ac)y - (bd)y + (ad)x + (bc)x]i && \text{($\cdot_{\mathcal{R}}$ is distr.)} \\
  &= [a(cx) - b(dx) - a(dy) - b(cy)] + [a(cy) - b(dy) + a(dx) + b(cx)]i && \text{($\cdot_{\mathcal{R}}$ is assoc.)} \\
  &= [a(cx) - a(dy) - b(cy) - b(dx)] + [a(cy) + a(dx) + b(cx) - b(dy)]i && \text{($+_{\mathcal{R}}$ is comm.)} \\
  &= [a(cx - dy) - b(cy + dx)] + [a(cy + dx) + b(cx - dy)]i && \text{($\cdot_{\mathcal{R}}$ is distr.)} \\
  &= (as - bt) + (at + bs)i \\
  &= (a + bi) \cdot (s + ti) && \text{(def. of $\cdot_{\mathcal{C}}$)} \\
  &= (a + bi) \cdot [(cx - dy) + (cy + dx)i] \\
  &= (a + bi) \cdot [(c + di) \cdot (x + yi)] && \text{(def. of $\cdot_{\mathcal{C}}$)} \\
  &\triangleq \alpha(\beta\lambda),
\end{aligned}
$$

where we again used intermediate variables $w, z, s, t \in \mathcal{R}$ to clarify the flow of logic.

----

**Problem 4.** Following the approach in Problems 2 and 3, define $\alpha, \beta, \lambda \in \mathcal{C}$ such that:
- $\alpha = a + bi$, &nbsp; where $a, b \in \mathcal{R}$;
- $\beta = c + di$, &nbsp; where $c, d \in \mathcal{R}$;
- $\lambda = x + yi$, &nbsp; where $x, y \in \mathcal{R}$.

Yet again, it follows that

$$
\begin{aligned}
  \lambda(\alpha + \beta) &\triangleq (x + yi) \cdot [(a + bi) + (c + di)] \\
  &= (x + yi) \cdot [(a + c) + (b + d)i] && \text{(def. of $+_\mathcal{C}$)} \\
  &= (x + yi) \cdot (w + zi) \\
  &= (xw - yz) + (xz + yw)i && \text{(def. of $\cdot_\mathcal{C}$)} \\
  &= [x(a + c) - y(b + d)] + [x(b + d) + y(a + c)]i \\
  &= [xa + xc - yb - yd] + [xb + xd + ya + yc]i && \text{($\cdot_{\mathcal{R}}$ is distr.)} \\
  &= [(xa - yb) + (xc - yd)] + [(xb + ya) + (xd + yc)]i && \text{($+_{\mathcal{R}}$ is comm.)} \\
  &= (s + u) + (t + v)i \\
  &= (s + ti) + (u + vi) && \text{(def. of $+_\mathcal{C}$)} \\
  &= [(xa - yb) + (xb + ya)i] + [(xc - yd) + (xd + yc)i] \\
  &= (x + yi) \cdot (a + bi) + (x + yi) \cdot (c + di) && \text{(def. of $\cdot_\mathcal{C}$)} \\
  &\triangleq \lambda\alpha + \lambda\beta,
\end{aligned}
$$

where yet again we used intermediate variables $w, z, s, t, u, v \in \mathcal{R}$ to clarify the flow of logic.

----

**Problem 5.** To prove this result, we need to establish both existence and uniqueness. We proceed as follows:

*Existence.* Let $\alpha \in \mathcal{C}$ be given by $\alpha = a + bi$, where $a, b \in \mathcal{R}$. Consider $\beta \in \mathcal{C}$, defined as

\\[\beta = -a + (-b)i.\\]

Then, we see that

$$
\begin{aligned}
  \alpha + \beta &\triangleq [a + bi] + [-a + (-b)i] \\
  &= [a + (-a)] + [b + (-b)]i && \text{(def. of $+_\mathcal{C}$)} \\
  &= 0_\mathcal{R} + 0_\mathcal{R}i && \text{(def. of $0_\mathcal{R})$} \\
  &\triangleq 0.
\end{aligned}
$$

Thus, by construction, such a $\beta$ exists.

*Uniqueness.* Consider towards a contradiction some $\beta_1, \beta_2 \in \mathcal{C}$ such that

\\[\alpha + \beta_1 = 0 \enspace \text{and} \enspace \alpha + \beta_2 = 0, \enspace \text{yet} \enspace \beta_1 \neq \beta_2.\\]

We will define $\alpha$, $\beta_1$, and $\beta_2$ such that:
- $\alpha = a + bi$, &nbsp; where $a, b \in \mathcal{R}$;
- $\beta_1 = c + di$, &nbsp; where $c, d \in \mathcal{R}$;
- $\beta_2 = x + yi$, &nbsp; where $x, y \in \mathcal{R}$.

Then, we know that

$$
\begin{aligned}
  \alpha + \beta_1 &= 0 &&= \alpha + \beta_2 \\
  (a + bi) + (c + di) &\triangleq 0_\mathcal{R} + 0_\mathcal{R}i &&\triangleq (a + bi) + (x + yi) \\
  (a + c) + (b + d)i &= 0_\mathcal{R} + 0_\mathcal{R}i &&= (a + x) + (b + y)i,
\end{aligned}
$$

where the last line follows from the definition of $+\_\mathcal{C}$. Then, it follows by the uniqueness of $0$ that

\\[a + c = 0\_\mathcal{R} = a + x \enspace \text{and} \enspace b + d = 0\_\mathcal{R} = b + y.\\]

Because these are all real numbers, we can simply subtract in $\mathcal{R}$ to arrive at

\\[c = -a = x \enspace \text{and} \enspace d = -b = y.\\]

It follows that

\\[\beta_1 = c + di = -a + (-b)i = x + yi = \beta_2,\\]

which is a contradiction. Thus, such a solution must be unique.

----

**Problem 6.** Following the approach in Problem 5, we again seek to establish existence and uniqueness. 

*Existence.* Let $\alpha \in \mathcal{C}$ be given by $\alpha = a + bi$, where $\alpha \neq 0$ and $a, b \in \mathcal{R}$. Consider $\beta \in \mathcal{C}$, defined as

\\[\beta = \dfrac{a}{a^2 + b^2} + \left(\dfrac{-b}{a^2 + b^2}\right)i = w + zi.\\]

Note that because $\alpha \neq 0$, we know that $a^2 + b^2 \neq 0\_\mathcal{R}$. Thus $\beta$ is well-defined, as $w, z \in \mathcal{R}$. Then, we see that

$$
\begin{aligned}
  \alpha\beta &\triangleq (a + bi) \cdot (w + zi) \\
  &= (aw - bz) + (az + bw)i && \text{(def. of $\cdot_\mathcal{C}$)} \\
  &= \left[\left(\frac{a^2}{a^2 + b^2}\right) - \left(\frac{-b^2}{a^2 + b^2}\right)\right] + \left[\left(\frac{-ab}{a^2 + b^2}\right) + \left(\frac{ba}{a^2 + b^2}\right)\right]i \\
  &= \left(\frac{a^2 + b^2}{a^2 + b^2}\right) + \left(\frac{-ab + ba}{a^2 + b^2}\right)i \\
  &= \left(\frac{a^2 + b^2}{a^2 + b^2}\right) + \left(\frac{-ab + ab}{a^2 + b^2}\right)i && \text{($\cdot_\mathcal{R}$ is comm.)} \\
  &= 1_\mathcal{R} + \left(\tfrac{0_\mathcal{R}}{a^2 + b^2}\right)i && \text{(def. of $1_\mathcal{R}$, $0_\mathcal{R}$)} \\
  &= 1_\mathcal{R} + 0_\mathcal{R}i && \text{($0_\mathcal{R}$ absorbs)} \\
  &\triangleq 1.
\end{aligned}
$$

Thus, by construction, such a $\beta$ exists.

*Uniqueness.* Consider towards a contradiction some $\beta_1, \beta_2 \in \mathcal{C}$ such that

\\[\alpha\beta_1 = 1 \enspace \text{and} \enspace \alpha\beta_2 = 1, \enspace \text{yet} \enspace \beta_1 \neq \beta_2.\\]

We will define $\alpha$, $\beta_1$, and $\beta_2$ such that:
- $\alpha = a + bi$, &nbsp; where $\alpha \neq 0$ and $a, b \in \mathcal{R}$;
- $\beta_1 = c + di$, &nbsp; where $c, d \in \mathcal{R}$;
- $\beta_2 = x + yi$, &nbsp; where $x, y \in \mathcal{R}$.

Then, we know that

$$
\begin{aligned}
  \alpha\beta_1 &= 1 &&= \alpha\beta_2 \\
  (a + bi) \cdot (c + di) &\triangleq 1_\mathcal{R} + 0_\mathcal{R}i &&\triangleq (a + bi) \cdot (x + yi) \\
  (ac - bd) + (ad + bc)i &= 1_\mathcal{R} + 0_\mathcal{R}i &&= (ax - by) + (ay + bx)i,
\end{aligned}
$$

where the last line follows from the definition of $\cdot\_\mathcal{C}$. Then, it follows by the uniqueness of $1$ that

\\[ac - bd = 1\_\mathcal{R} = ax - by \enspace \text{and} \enspace ad + bc = 0\_\mathcal{R} = ay + bx.\\]

Focusing on the extreme LHS and RHS of each equation, we arrive at

\\[ac - ax = bd - by \enspace \text{and} \enspace ad - ay = bx - bc.\\]

We can factor out common components using the fact that $\cdot_\mathcal{R}$ is distributive:

\\[a(c - x) = b(d - y) \enspace \text{and} \enspace a(d - y) = b(x - c) = -b(c - x),\\]

where we also used the commutativity of $+\_\mathcal{R}$. Finally, we multiply the first equation by $b$ and the second equation by $a$:

\\[ab(c - x) = b^2(d - y) \enspace \text{and} \enspace a^2(d - y) = -ab(c - x).\\]

We can now reason equationally:

$$
\begin{aligned}
  0_\mathcal{R} &= ab(c - x) + [-ab(c - x)] \\
  &= b^2(d - y) + a^2(d - y) \\
  &= (b^2 + a^2)(d - y) \\
  &= (a^2 + b^2)(d - y),
\end{aligned}
$$

which implies that $d - y = 0\_\mathcal{R}$, as by assumption $a^2 + b^2 \neq 0\_\mathcal{R}$. In turn, this shows that

\\[bd - by = b(d - y) = b \cdot 0\_\mathcal{R} = 0\_\mathcal{R}.\\]

Then, since $ac - ax = bd - by = 0\_\mathcal{R}$, we see that $a(c - x) = ac - ax = 0\_\mathcal{R}$. This yields two cases:

|Case|Condition|
|---|---|
|I|$a = 0\_\mathcal{R}$|
|II|$c - x = 0\_\mathcal{R}$|

In Case I, we can clean up $\alpha\beta_1$ and $\alpha\beta_2$:

$$
\begin{aligned}
  \alpha\beta_1 &= 1 &&= \alpha\beta_2 \\
  (bi) \cdot (c + di) &\triangleq 1_\mathcal{R} + 0_\mathcal{R}i &&\triangleq (bi) \cdot (x + yi) \\
  (bd) + (bc)i &= 1_\mathcal{R} + 0_\mathcal{R}i &&= (by) + (bx)i.
\end{aligned}
$$

We cannot have $b = 0\_\mathcal{R}$, as otherwise $bd \neq 1\_\mathcal{R}$. Thus, we instead have $c = 0\_\mathcal{R}$ and $x = 0\_\mathcal{R}$. We already know from above that $d = y$ by the uniqueness of additive inverses in $\mathcal{R}$ for $d - y = 0\_\mathcal{R}$. Thus:

\\[\beta_1 = c + di = 0\_\mathcal{R} + di = 0\_\mathcal{R} + yi = x + yi = \beta_2.\\]

In Case II, by the uniqueness of additive inverses in $\mathcal{R}$ we have that $c = x$. Again, we already know that $d = y$, so

\\[\beta_1 = c + di = x + yi = \beta_2.\\]

In both cases, this is a contradiction. Thus, such a solution must be unique.

----

**Problem 7.** If $z$ is a cube root of unity, then by definition $z^3 = 1$. We show this below:

$$
\begin{aligned}
  \left(\tfrac{-1 + \sqrt{3}i}{2}\right)^3 &= \left(-\tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i\right)^3 \\
  &\triangleq \left[\left(-\tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i\right) \cdot \left(-\tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i\right)\right] \cdot \left(-\tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i\right) \\
  &= \left\{\left[\left(-\tfrac{1}{2}\right)^2 - \left(\tfrac{\sqrt{3}}{2}\right)^2\right] + \left[\left(-\tfrac{1}{2}\right)\left(\tfrac{\sqrt{3}}{2}\right) + \left(\tfrac{\sqrt{3}}{2}\right)\left(-\tfrac{1}{2}\right)\right]i\right\} \cdot \left(-\tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i\right) \\
  &= \left(-\tfrac{1}{2} - \tfrac{\sqrt{3}}{2}i\right) \cdot \left(-\tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i\right) \\
  &= \left[\left(-\tfrac{1}{2}\right)^2 - \left(-\tfrac{\sqrt{3}}{2}\right)\left(\tfrac{\sqrt{3}}{2}\right)\right] + \left[\left(-\tfrac{1}{2}\right)\left(\tfrac{\sqrt{3}}{2}\right) + \left(-\tfrac{\sqrt{3}}{2}\right)\left(-\tfrac{1}{2}\right)\right]i \\
  &= 1_\mathcal{R} + 0_\mathcal{R}i \\
  &\triangleq 1.
\end{aligned}
$$

----

**Problem 8.** Forthcoming.
