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

Then, we know that

$$
\begin{aligned}
  \beta_1 &= \beta_1 + 0 && \text{(id. for $+_\mathcal{C}$)} \\
  &\triangleq \beta_1 + (\alpha + \beta_2) \\
  &= (\beta_1 + \alpha) + \beta_2 && \text{(Problem 2)} \\
  &= (\alpha + \beta_1) + \beta_2 && \text{(Problem 1)} \\
  &\triangleq 0 + \beta_2 \\
  &= \beta_2 + 0 && \text{(Problem 1)} \\
  &= \beta_2, && \text{(id. for $+_\mathcal{C}$)}
\end{aligned}
$$

which is a contradiction. Thus, such a $\beta$ must be unique.

----

**Problem 6.** Following the approach in Problem 5, we again seek to establish existence and uniqueness. 

*Existence.* Let $\alpha \in \mathcal{C}$ be given by $\alpha = a + bi$, where $\alpha \neq 0$ and $a, b \in \mathcal{R}$. Consider $\beta \in \mathcal{C}$, defined as

\\[\beta = \dfrac{a}{a^2 + b^2} + \left(\dfrac{-b}{a^2 + b^2}\right)i = w + zi.\\]

Note that because $\alpha \neq 0$, we know that $a^2 + b^2 \neq 0\_\mathcal{R}$. Thus $\beta$ is well-defined, as $w, z \in \mathcal{R}$. Then, we see that

$$
\begin{aligned}
  \alpha\beta &\triangleq (a + bi) \cdot (w + zi) \\
  &= (aw - bz) + (az + bw)i && \text{(def. of $\cdot_\mathcal{C}$)} \\
  &= \left[\left(\dfrac{a^2}{a^2 + b^2}\right) - \left(\dfrac{-b^2}{a^2 + b^2}\right)\right] + \left[\left(\dfrac{-ab}{a^2 + b^2}\right) + \left(\dfrac{ba}{a^2 + b^2}\right)\right]i \\
  &= \left(\dfrac{a^2 + b^2}{a^2 + b^2}\right) + \left(\dfrac{-ab + ba}{a^2 + b^2}\right)i \\
  &= \left(\dfrac{a^2 + b^2}{a^2 + b^2}\right) + \left(\dfrac{-ab + ab}{a^2 + b^2}\right)i && \text{($\cdot_\mathcal{R}$ is comm.)} \\
  &= 1_\mathcal{R} + \left(\dfrac{0_\mathcal{R}}{a^2 + b^2}\right)i && \text{(def. of $1_\mathcal{R}$, $0_\mathcal{R}$)} \\
  &= 1_\mathcal{R} + 0_\mathcal{R}i && \text{($0_\mathcal{R}$ absorbs)} \\
  &\triangleq 1.
\end{aligned}
$$

Thus, by construction, such a $\beta$ exists.

*Uniqueness.* Consider towards a contradiction some $\beta_1, \beta_2 \in \mathcal{C}$ such that

\\[\alpha\beta_1 = 1 \enspace \text{and} \enspace \alpha\beta_2 = 1, \enspace \text{yet} \enspace \beta_1 \neq \beta_2.\\]

Then, we know that

$$
\begin{aligned}
  \beta_1 &= \beta_1 \cdot 1 && \text{(id. for $\cdot_\mathcal{C}$)} \\
  &\triangleq \beta_1 (\alpha\beta_2) \\
  &= (\beta_1\alpha)\beta_2 && \text{(Problem 3)} \\
  &= (\alpha\beta_1)\beta_2 && \text{($\cdot_\mathcal{C}$ is comm.)} \\
  &\triangleq 1 \cdot \beta_2 \\
  &= \beta_2 \cdot 1 && \text{($\cdot_\mathcal{C}$ is comm.)} \\
  &= \beta_2, && \text{(id. for $\cdot_\mathcal{C}$)}
\end{aligned}
$$

which is a contradiction. Thus, such a $\beta$ must be unique.

----

**Problem 7.** If $\alpha$ is a cube root of unity, then by definition $\alpha^3 = 1$. We show this below:

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

**Problem 8.** If $\alpha$ is a square root of $i$, then by definition $\alpha^2 = i$. Suppose that such a $\alpha \in \mathcal{C}$ is defined as $\alpha = a + bi$, where $a, b \in \mathcal{R}$. We proceed as follows:

$$
\begin{aligned}
  (a + bi)^2 &= i \\
  (a + bi) \cdot (a + bi) &\triangleq 0_\mathcal{R} + 1_\mathcal{R} i \\
  (a^2 - b^2) + (ab + ba)i &= 0_\mathcal{R} + 1_\mathcal{R} i && \text{(def. of $\cdot_\mathcal{C}$)} \\
  (a^2 - b^2) + (ab + ab)i &= 0_\mathcal{R} + 1_\mathcal{R} i && \text{($\cdot_\mathcal{C}$ is comm.)} \\
  (a^2 - b^2) + (2ab)i &= 0_\mathcal{R} + 1_\mathcal{R} i,
\end{aligned}
$$

which leads to 

\\[a^2 - b^2 = 0\_\mathcal{R} \enspace \text{and} \enspace 2ab = 1\_\mathcal{R}.\\]

Because these are real numbers, the second equation tells us that $a = 1/2b$. Substitution into the first equation yields $4b^4 = 1$. Let $t \in \mathcal{R}$ be defined as $t = b^2$. Then, this equation reduces to $4t^2 = 1$. It follows that

\\[t = \dfrac{1}{2} \enspace \text{or} \enspace t = -\dfrac{1}{2}.\\]

Because $b \in \mathcal{R}$, it must be the case that $t = b^2 \geq 0$. As a result, the only solution is $b^2 = t = 1/2$. It follows that

\\[b = \dfrac{1}{\sqrt{2}} \enspace \text{or} \enspace b = -\dfrac{1}{\sqrt{2}}.\\]

Finally, since $a = 1/2b$, we have that

\\[a = \dfrac{1}{\sqrt{2}} \enspace \text{or} \enspace a = -\dfrac{1}{\sqrt{2}} \enspace \text{as well}.\\]

Putting the respective parts together, we develop two solutions for the square root of $i$:

\\[\alpha = \dfrac{1}{\sqrt{2}} + \dfrac{1}{\sqrt{2}}i \quad \text{or} \quad \alpha = -\dfrac{1}{\sqrt{2}} -\dfrac{1}{\sqrt{2}}i.\\]

----

**Problem 9.** Denote such an $\mathbf{x} \in \mathcal{R}^4$ as $\mathbf{x} = (x_1, x_2, x_3, x_4)$, where each $x_i \in \mathcal{R}$ for $1 \leq i \leq 4$. Then, we can reason equationally to obtain the following result:

$$
\begin{aligned}
  (4, -3, 1, 7) + 2\mathbf{x} &= (5, 9, -6, 8) \\
  (4, -3, 1, 7) + 2(x_1, x_2, x_3, x_4) &= (5, 9, -6, 8) \\
  2(x_1, x_2, x_3, x_4) &= (5, 9, -6, 8) - (4, -3, 1, 7) \\
  (2x_1, 2x_2, 2x_3, 2x_4) &= (5, 9, -6, 8) + (-4, 3, -1, -7) \\
  (2x_1, 2x_2, 2x_3, 2x_4) &= (1, 12, -7, 1).
\end{aligned}
$$

This leads to four simple equations:

\\[2x_1 = 1 \quad \text{and} \quad 2x_2 = 12 \quad \text{and} \quad 2x_3 = -7 \quad \text{and} \quad 2x_4 = 1.\\]

We get four solutions in $\mathcal{R}$:

\\[x_1 = \dfrac{1}{2} \quad \text{and} \quad x_2 = 6 \quad \text{and} \quad x_3 = -\dfrac{7}{2} \quad \text{and} \quad x_4 = \dfrac{1}{2}.\\]

This leads us to the final result for $\mathbf{x}$:

\\[\mathbf{x} = \left(\dfrac{1}{2}, 6, -\dfrac{7}{2}, \dfrac{1}{2}\right).\\]

----

**Problem 10.** Assume towards a contradiction that such a $\lambda \in \mathcal{C}$ exists. Then, we know that scalar multiplication over $\mathcal{F}^n$ distributes over the components of the list; in other words, for $\mathbf{z} \in \mathcal{C}^3$ such that $\mathbf{z} = (z_1, z_2, z_3)$ and $z_1, z_2, z_3 \in \mathcal{C}$,

\\[\lambda(z_1, z_2, z_3) = (\lambda z_1, \lambda z_2, \lambda z_3).\\]

Define $\lambda = a + bi$, where $a, b \in \mathcal{R}$. Then, we know that

\\[(a + bi) \cdot (2 - 3i, 5 + 4i, -6 + 7i) = (12 - 5i, 7 + 22i, -32 - 9i).\\]

In other words,

$$
\begin{aligned}
  (a + bi) \cdot (2 - 3i) &= 12 - 5i \\
  (a + bi) \cdot (5 + 4i) &= 7 + 22i \\
  (a + bi) \cdot (-6 + 7i) &= -32 -9i.
\end{aligned}
$$

Using the definition of $\cdot\_\mathcal{C}$, we have three simplified equations:

$$
\begin{aligned}
  (2a + 3b) + (-3a + 2b)i &= 12 - 5i \\
  (5a - 4b) + (4a + 5b)i &= 7 + 22i \\
  (-6a - 7b) + (7a - 6b)i &= -32 -9i,
\end{aligned}
$$

leading to the following system of six equations:

$$
\begin{aligned}
  2a + 3b &= 12 &\quad -3a + 2b &= -5 \\
  5a - 4b &= 7 &\quad 4a + 5b &= 22 \\
  -6a - 7b &= -32 &\quad 7a - 6b &= -9.
\end{aligned}
$$

Each row of equations yields a different set of solutions in $a$ and $b$:

$$
\begin{aligned}
  a = 3 \enspace &\text{and} \enspace b = 2 \\
  a = 3 \enspace &\text{and} \enspace b = 2 \\
  a = \dfrac{129}{85} \enspace &\text{and} \enspace b = \dfrac{278}{85}.
\end{aligned}
$$

Because $\dfrac{129}{85} \neq 3$ and $\dfrac{278}{85} \neq 2$, such a $\lambda$ cannot exist, as if it did then the equations would not be satisfiable.

----

**Problem 11.** Define $\mathbf{x}, \mathbf{y}, \mathbf{z} \in \mathcal{F}^n$ such that:
- $\mathbf{x} = (x_1, \dots, x_n)$, &nbsp; where each $x_i \in \mathcal{F}$ for $1 \leq i \leq n$;
- $\mathbf{y} = (y_1, \dots, y_n)$, &nbsp; where each $y_i \in \mathcal{F}$ for $1 \leq i \leq n$;
- $\mathbf{z} = (z_1, \dots, z_n)$, &nbsp; where each $z_i \in \mathcal{F}$ for $1 \leq i \leq n$.

Then, it follows that

$$
\begin{aligned}
  (\mathbf{x} + \mathbf{y}) + \mathbf{z} &\triangleq [(x_1, \dots, x_n) + (y_1, \dots, y_n)] + (z_1, \dots, z_n) \\
  &= \bigg((x_1 + y_1), \dots, (x_n + y_n)\bigg) + (z_1, \dots, z_n) && \text{(def. of $+_{\mathcal{F}^n}$)} \\
  &= (w_1, \dots, w_n) + (z_1, \dots, z_n) \\
  &= \bigg((w_1 + z_1), \dots, (w_n + z_n)\bigg) && \text{(def. of $+_{\mathcal{F}^n}$)} \\
  &= \bigg([(x_1 + y_1) + z_1], \dots, [(x_n + y_n) + z_n]\bigg) \\
  &= \bigg([x_1 + (y_1 + z_1)], \dots, [x_n + (y_n + z_n)]\bigg) && \text{($+_{\mathcal{F}}$ is assoc.)} \\
  &= \bigg((x_1 + s_1), \dots, (x_n + s_n)\bigg) \\
  &= (x_1, \dots, x_n) + (s_1, \dots, s_n) && \text{(def. of $+_{\mathcal{F}}$)} \\
  &= (x_1, \dots, x_n) + \bigg((y_1 + z_1), \dots, (y_n + z_n)\bigg) \\
  &= (x_1, \dots, x_n) + [(y_1, \dots, y_n) + (z_1, \dots, z_n)] && \text{(def. of $+_{\mathcal{F}}$)} \\
  &\triangleq \mathbf{x} + (\mathbf{y} + \mathbf{z}),
\end{aligned}
$$

where we used intermediate variables $w_i = x_i + y_i$ and $s_i = y_i + z_i$ in $\mathcal{F}$ for all $1 \leq i \leq n$ to clarify the flow of logic.

----

**Problem 12.** Following the approach in Problem 11, define $\mathbf{x} \in \mathcal{F}^n$ as $\mathbf{x} = (x_1, \dots, x_n)$, where each $x_i \in \mathcal{F}$ for $1 \leq i \leq n$. Moreover, we will take $a, b \in \mathcal{F}$. Then, it follows that

$$
\begin{aligned}
  (ab)\mathbf{x} &\triangleq (ab) \cdot (x_1, \dots, x_n) \\
  &= \bigg((ab)x_1, \dots, (ab)x_n\bigg) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &= \bigg(a(bx_1), \dots, a(bx_n)\bigg) && \text{($\cdot_{\mathcal{F}}$ is assoc.)} \\
  &= a \cdot (bx_1, \dots, bx_n) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &= a \cdot \bigg(b \cdot (x_1, \dots, x_n)\bigg) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &\triangleq a(b\mathbf{x}).
\end{aligned}
$$

----

**Problem 13.** Define $\mathbf{x} \in \mathcal{F}^n$ as $\mathbf{x} = (x_1, \dots, x_n)$, where each $x_i \in \mathcal{F}$ for $1 \leq i \leq n$. Then, it follows that

$$
\begin{aligned}
  1 \cdot \mathbf{x} &\triangleq 1 \cdot (x_1, \dots, x_n) \\
  &= (1 \cdot x_1, \dots, 1 \cdot x_n) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &= (x_1 \cdot 1, \dots, x_n \cdot 1) && \text{($\cdot_{\mathcal{F}}$ is comm.)} \\
  &= (x_1, \dots, x_n) && \text{(id. for $\cdot_\mathcal{F}$)} \\
  &\triangleq \mathbf{x}.
\end{aligned}
$$

----

**Problem 14.** Following the approach in Problem 11, define $\mathbf{x}, \mathbf{y} \in \mathcal{F}^n$ such that:
- $\mathbf{x} = (x_1, \dots, x_n)$, &nbsp; where each $x_i \in \mathcal{F}$ for $1 \leq i \leq n$;
- $\mathbf{y} = (y_1, \dots, y_n)$, &nbsp; where each $y_i \in \mathcal{F}$ for $1 \leq i \leq n$.

Further take some $\lambda \in \mathcal{F}$. Then, it follows that

$$
\begin{aligned}
  \lambda(\mathbf{x} + \mathbf{y}) &\triangleq \lambda \cdot \left[(x_1, \dots, x_n) + (y_1, \dots, y_n)\right] \\
  &= \lambda \cdot \bigg((x_1 + y_1), \dots, (x_n + y_n)\bigg) && \text{(def. of $+_{\mathcal{F}^n}$)} \\
  &= \bigg(\lambda (x_1 + y_1), \dots, \lambda (x_n + y_n)\bigg) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &= \bigg((\lambda x_1 + \lambda y_1), \dots, (\lambda x_n + \lambda y_n)\bigg) && \text{($\cdot_\mathcal{F}$ is distr.)} \\
  &= (\lambda x_1, \dots, \lambda x_n) + (\lambda y_1, \dots, \lambda y_n) && \text{(def. of $+_{\mathcal{F}^n}$)} \\
  &= \lambda \cdot (x_1, \dots, x_n) + \lambda \cdot (y_1, \dots, y_n) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &\triangleq \lambda \mathbf{x} + \lambda \mathbf{y}.
\end{aligned}
$$

----

**Problem 15.** Following the approach in Problem 12, define $\mathbf{x} \in \mathcal{F}^n$ as $\mathbf{x} = (x_1, \dots, x_n)$, where each $x_i \in \mathcal{F}$ for $1 \leq i \leq n$. Moreover, we will take $a, b \in \mathcal{F}$. Then, it follows that

$$
\begin{aligned}
  (a + b)\mathbf{x} &\triangleq (a + b) \cdot (x_1, \dots, x_n) \\
  &= \bigg((a + b)x_1, \dots, (a + b)x_n\bigg) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &= \bigg(x_1(a + b), \dots, x_n(a + b)\bigg) && \text{($\cdot_{\mathcal{F}}$ is comm.)} \\
  &= \bigg((x_1 a + x_1 b), \dots, (x_n a + x_n b)\bigg) && \text{($\cdot_{\mathcal{F}}$ is distr.)} \\
  &= \bigg((a x_1 + b x_1), \dots, (a x_n + b x_n)\bigg) && \text{($\cdot_{\mathcal{F}}$ is comm.)} \\
  &= (ax_1, \dots, ax_n) + (bx_1, \dots, bx_n) && \text{(def. of $+_{\mathcal{F}^n}$)} \\
  &= a \cdot (x_1, \dots, x_n) + b \cdot (x_1, \dots, x_n) && \text{(def. of $\cdot_{\mathcal{F}^n}$)} \\
  &\triangleq a\mathbf{x} + b\mathbf{x}.
\end{aligned}
$$
