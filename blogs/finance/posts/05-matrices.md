---
layout: post
title: blogs | finance | note 5
date: 2025-05-21
post_no: 3
post_name: The cost and budget matrices
excerpt: We take a look at how to extract monthly expenses from the erstwhile expense chart. Similarly, we can produce arbitrary granularities of costs using the chart. We aim to encode the chart in the language of linear algebra, so that such transformations and metrics can be seamlessly reported with an unparalleled level of succinctness. To do this, we take an abstract approach to the problem space.
---

## Moving to the abstract

In the last several installments, we represented expenses as a chart with **one-hot rows** (i.e. each row [only had][one-hot] a value in one of the 3 cost columns). Broadly, the chart may have resembled something like this:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Item 1 | Category 1 | $10 | -- | -- |
| $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ |
| Item k | Category r | -- | $50 | -- |
| $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ |
| Item N | Category M | -- | -- | $100 |

In order to broaden our analysis and generalize our results, let's focus on a more _abstract_ expenses chart. Recall that in the [third installment][post-3], we described the expenses chart as follows:

{:.mono-table}
| Item | Category | $/week | $/month | $/year |
| --- | --- | --- | --- | --- |
| $x_1$ | $\pi(x_1)$ | $c_{w,1}$ | $c_{m,1}$ | $c_{y,1}$ |
| $x_2$ | $\pi(x_2)$ | $c_{w,2}$ | $c_{m,2}$ | $c_{y,2}$ |
| $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ |
| $x_{n-1}$ | $\pi(x_{n-1})$ | $c_{w,n-1}$ | $c_{m,n-1}$ | $c_{y,n-1}$ |
| $x_n$ | $\pi(x_n)$ | $c_{w,n}$ | $c_{m,n}$ | $c_{y,n}$ |

Again, each $x_i$ represents an individual item. Then, $\pi$ represents a function from items to categories (i.e. $\pi(x_i)$ is a specific category). Finally, if $g$ represents the temporal granularity and $i$ represents the item index as above, then $c_{g,i}$ is the cost of item $x_i$ when measured at granularity $g$.

For the next several installments, we will work with the framework above. It follows that a [specific][expenses] expenses chart can easily be created by simply substituting numerical values for each of the $c_{g,i}$s.

## The cost matrix

Astute readers might notice that the indices alone [provide information][indices] about items (and categories, by virtue of $\pi$). As a result, we might as well focus on just the numerical components of the generalized expenses chart:

{:.mono-table}
| $/week | $/month | $/year |
| --- | --- | --- |
| $c_{w,1}$ | $c_{m,1}$ | $c_{y,1}$ |
| $\vdots$ | $\vdots$ | $\vdots$ |
| $c_{w,n}$ | $c_{m,n}$ | $c_{y,n}$ |

Naturally, we can do away with the headers and switch from a table format towards a [matrix][matrices] instead:

$$
C =
\begin{pmatrix}
  c_{w,1} & c_{m,1} & c_{y,1} \\
  \vdots  & \vdots  & \vdots  \\
  c_{w,n} & c_{m,n} & c_{y,n}
\end{pmatrix}
.
$$

Of course, in the incarnation of the expenses chart that we constructed, we had used the subscript $w$ to index weekly costs, the subscript $m$ to index monthly costs, and finally the subscript $y$ to index annual costs. However, one can easily envision a more [general framework][generalization] in which an arbitrary number of temporal granularities exist. If these are notated as $g_1, \ldots, g_k$, then we can write the most general form of the cost matrix as

$$
C =
\begin{pmatrix}
  c_{g_1,1} & \cdots & c_{g_k,1} \\
  \vdots    & \ddots & \vdots    \\
  c_{g_1,n} & \cdots & c_{g_k,n}
\end{pmatrix}
.
$$

Our previous installments' charts represent the instance when $k = 3$.

Finally, there is one additional layer of complexity: there are actually _two_ senses of temporal differences being measured. The first is as we just discussed: costs are different when measured at different granularities. However, the second is something we alluded to in the previous installment; namely, that the _entire_ expense chart evolves over time. In other words, at each time $t$, there is actually a separate expense chart $C^{(t)}$. As a result, we should also superscript by $t$ as needed:

$$
C^{(t)} =
\begin{pmatrix}
  c^{(t)}_{g_1,1} & \cdots & c^{(t)}_{g_k,1} \\[2px]
  \vdots          & \ddots & \vdots          \\[4px]
  c^{(t)}_{g_1,n} & \cdots & c^{(t)}_{g_k,n}
\end{pmatrix}
,
$$

where each entry $c^{(t)}_{g_r,i}$ represents the cost of item $x_i$ at time step $t$, when measured with granularity $g_r$. For the rest of this series, **we will sweep out time steps $t$ in month-level evolutions**. Thus, if $C^{(t)}$ represents costs in month $t$, then $C^{(t+1)}$ represents the evolution of those costs in month $t+1$. Each such $C^{(t)}$ is known as a **cost matrix**.

As an aside, one thing that we noticed with our own exercise in expense evolution was that the items included in the expense chart _also_ varied with time. As a result, we should probably have instead indexed the items using $1_t$ through $n_t$ rather than $1$ through $n$. However, we can remove the need for this added complexity by simply allowing $n$ to be large enough to contain the union of *all* items across *all* expense charts. Then, for specific timesteps $t$, a particular item $x\_i$ can have its cost $c^{(t)}\_{g\_r,i}$ set to 0 (unilaterally, across all granularities $g\_r$) if that expense doesn't exist for that chart evolution.

This ensures a fixed-dimensional $C^{(t)}$ for all $t$, which simplifies the linear algebra (and the resulting Python code).

### The mask matrix

The cost matrix exhibits a curious property: recall that we used one-hot rows to encode costs. As a result, each row has exactly one non-zero entry. Matrices with this property are known as **monomial matrices**, or sometimes [generalized permutation matrices][gpms]. Notice that we can write $C^{(t)}$ either as a collection of column vectors or row vectors:

$$
C^{(t)} =
\begin{pmatrix}
  c^{(t)}_{g_1,1} & \cdots & c^{(t)}_{g_k,1} \\[2px]
  \vdots          & \ddots & \vdots          \\[4px]
  c^{(t)}_{g_1,n} & \cdots & c^{(t)}_{g_k,n}
\end{pmatrix}
=
\begin{pmatrix}
  \mathbf{c}^{(t)}_{g_1} & \cdots & \mathbf{c}^{(t)}_{g_k}
\end{pmatrix}
=
\begin{pmatrix}
  \mathbf{c}^{(t)}_{1} \\[2px]
  \vdots               \\[4px]
  \mathbf{c}^{(t)}_{n}
\end{pmatrix}
.
$$

Now, let $\mathbf{1}_{k}$ be the vector of all ones in $\mathcal{R}^k$; that is,

$$
\mathbf{1}_{k}
=
\begin{pmatrix}
  1      \\[2px]
  \vdots \\[4px]
  1
\end{pmatrix}
.
$$

Well, we can multiply these two together to get a vector of sums along rows:

$$
\begin{aligned}
  C^{(t)}\mathbf{1}_{k} &= 
      \begin{pmatrix}
        c^{(t)}_{g_1,1} & \cdots & c^{(t)}_{g_k,1} \\[2px]
        \vdots          & \ddots & \vdots          \\[4px]
        c^{(t)}_{g_1,n} & \cdots & c^{(t)}_{g_k,n}
      \end{pmatrix}
      \begin{pmatrix}
        1      \\[2px]
        \vdots \\[4px]
        1
      \end{pmatrix}
  \\

  &=
      \begin{pmatrix}
        \sum\limits_{r = 1}^{k} c^{(t)}_{g_r,1} & \cdots & \sum\limits_{r = 1}^{k} c^{(t)}_{g_r,n}
      \end{pmatrix}^\top
  \\

  &=
      \begin{pmatrix}
        \mathbf{c}^{(t)}_{1} \mathbf{1}_k & \cdots & \mathbf{c}^{(t)}_{n} \mathbf{1}_k
      \end{pmatrix}^\top.
\end{aligned}
$$

From there, we can invoke the $\mathbf{diag}$ operator. Recall that $\mathbf{diag}$ works as follows:

$$
\mathbf{diag}(\mathbf{v}^\top) = \mathbf{diag}(v_1, \ldots, v_n) = 
  \begin{pmatrix}
    v_1    & \cdots & 0      \\[2px]
    \vdots & \ddots & \vdots \\[4px]
    0      & \cdots & v_n
  \end{pmatrix}
.
$$

Then, we see that $\mathbf{diag}(C^{(t)}\mathbf{1}_{k})^{\top}$ is given by

$$
\begin{aligned}
  \mathbf{diag}(C^{(t)}\mathbf{1}_{k})^{\top} &= 
    \mathbf{diag}
    \begin{pmatrix}
      \mathbf{c}^{(t)}_{1} \mathbf{1}_k & \cdots & \mathbf{c}^{(t)}_{n} \mathbf{1}_k
    \end{pmatrix}
  \\

  &= \mathbf{diag} (\mathbf{c}^{(t)}_{1} \mathbf{1}_k, \ldots, \mathbf{c}^{(t)}_{n} \mathbf{1}_k)
  \\

  &=
    \begin{pmatrix}
      \mathbf{c}^{(t)}_{1} \mathbf{1}_k & \cdots & 0                                 \\[2px]
      \vdots                            & \ddots & \vdots                            \\[4px]
      0                                 & \cdots & \mathbf{c}^{(t)}_{n} \mathbf{1}_k
    \end{pmatrix}
.
\end{aligned}
$$

Now, recall that inverses of diagonal matrices are given by

$$
\begin{aligned}
  \mathbf{diag}^{-1}(\mathbf{v}^\top) &= \mathbf{diag}^{-1}(v_1, \ldots, v_n) \\
  &=
    \begin{pmatrix}
      v_1    & \cdots & 0      \\[2px]
      \vdots & \ddots & \vdots \\[4px]
      0      & \cdots & v_n
    \end{pmatrix}^{-1}
  \\
  &=
    \begin{pmatrix}
      1/v_1  & \cdots & 0      \\[2px]
      \vdots & \ddots & \vdots \\[4px]
      0      & \cdots & 1/v_n
    \end{pmatrix}
  \\
  &= \mathbf{diag}\left( \dfrac{1}{v_1}, \ldots, \dfrac{1}{v_n} \right),
\end{aligned}
$$

which is only well-defined when each $v_i \neq 0$. In our situation, because of the one-hot encoding structure, we know that each $\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,i} \neq 0$. As a result, the diagonal matrix above contains only non-zero elements on its diagonal. It follows that

$$
\begin{aligned}
  \mathbf{diag}^{-1}(C^{(t)}\mathbf{1}_{k})^{\top} &= \mathbf{diag}^{-1}(\mathbf{c}^{(t)}_{1} \mathbf{1}_k, \ldots, \mathbf{c}^{(t)}_{n} \mathbf{1}_k) \\

  &= \mathbf{diag}\left( \dfrac{1}{\mathbf{c}^{(t)}_{1} \mathbf{1}_k}, \ldots, \dfrac{1}{\mathbf{c}^{(t)}_{n} \mathbf{1}_k} \right) \\

  &=
    \begin{pmatrix}
      \dfrac{1}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,1}} & \cdots & 0                                                  \\[2px]
      \vdots                                             & \ddots & \vdots                                             \\[4px]
      0                                                  & \cdots & \dfrac{1}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,n}}
    \end{pmatrix}
.
\end{aligned}
$$

Finally, we can define the following matrix:

$$
\begin{aligned}
  M^{(t)} &= \mathbf{diag}^{-1}(C^{(t)}\mathbf{1}_{k})^{\top} \cdot C^{(t)} \\

  &= 
    \begin{pmatrix}
      \dfrac{1}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,1}} & \cdots & 0                                                  \\[2px]
      \vdots                                             & \ddots & \vdots                                             \\[4px]
      0                                                  & \cdots & \dfrac{1}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,n}}
    \end{pmatrix}
    \begin{pmatrix}
      c^{(t)}_{g_1,1} & \cdots & c^{(t)}_{g_k,1} \\[2px]
      \vdots          & \ddots & \vdots          \\[4px]
      c^{(t)}_{g_1,n} & \cdots & c^{(t)}_{g_k,n}
    \end{pmatrix}
  \\

  &= 
    \begin{pmatrix}
      \dfrac{c^{(t)}_{g_1,1}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,1}} & \cdots & \dfrac{c^{(t)}_{g_k,1}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,1}} \\[2px]
      \vdots                                                           & \ddots & \vdots                                                           \\[4px]
      \dfrac{c^{(t)}_{g_1,n}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,n}} & \cdots & \dfrac{c^{(t)}_{g_k,n}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,n}}
    \end{pmatrix}
  \\

  &=
    \begin{pmatrix}
      \dfrac{\mathbf{c}^{(t)}_{1}}{\mathbf{c}^{(t)}_{1} \mathbf{1}_k} \\[2px]
      \vdots                                                          \\[4px]
      \dfrac{\mathbf{c}^{(t)}_{n}}{\mathbf{c}^{(t)}_{n} \mathbf{1}_k}
    \end{pmatrix}
.
\end{aligned}
$$

This is actually a [row-normalized][normalized] version of $C^{(t)}$; in other words, all of the rows of $M^{(t)}$ sum to unity. For compactness, we will represent this matrix as follows:

$$
M^{(t)} 
  = \mathbf{diag}^{-1}(C^{(t)}\mathbf{1}_{k})^{\top} \cdot C^{(t)}
  =
    \begin{pmatrix}
      \dfrac{\mathbf{c}^{(t)}_{1}}{\mathbf{c}^{(t)}_{1} \mathbf{1}_k} & \cdots & \dfrac{\mathbf{c}^{(t)}_{n}}{\mathbf{c}^{(t)}_{n} \mathbf{1}_k}
    \end{pmatrix}^{\top}
.
$$

This is known as the **mask matrix**, as it contains non-zero entries in the exact same positions as in $C^{(t)}$, but only contains ones in those positions. That is, $M^{(t)}$ is essentially a _true_ permutation matrix that tells us which exact indices in $C^{(t)}$ do not vanish. Given a specific cost matrix, computing the mask matrix can be done extremely quickly with a linear algebra library in Python. We'll see more of this [later on][repo].

## The budget matrix

It seems natural that a "backfilled" version of the cost matrix could be useful. That is, instead of having zeroes in all but one column for the costs of each item, we could instead have the appropriately-scaled version of the cost for that column's granularity. For example, consider this very simple cost matrix with 2 levels of granularity and 2 items:

$$
C^{(1)} = 
  \begin{pmatrix}
    1 & 0  \\
    0 & 14
  \end{pmatrix}
.
$$

Let's say the first granularity $g_1$ is cost-per-day, while the second granularity $g_2$ is cost-per-week. Then, it is conceivable that a matrix like the following would be useful:

$$
B^{(1)} = 
  \begin{pmatrix}
    1 & 7  \\
    2 & 14
  \end{pmatrix}
.
$$

For posterity, we derived this by using the fact that there are 7 days in a week; alternatively, we used the fact that a day is 1/7th of a week. This hints at a broader idea: there are **conversion factors** between the various granularities. It seems that between any two arbitrary granularities $g_i$ and $g_j$, there is some conversion factor between them. In a moment, we'll make this notion more precise.

Before that, let's look at _why_ this is useful: if we now sum down the first column, we can see that the total cost-per-day is $\\$3$. Similarly, if we sum down the second column, we can see that the total cost-per-week is $\\$21$. In the case of our original expense charts, this allows us to derive monthly expenses or annual expenses, even if the original underlying costs were specified at the week-level for some items.

As a result, what we need to do is examine how these conversions work.

### The conversion factors matrix

Let's start by outlining some obvious traits: between any two granularities $g_i$ and $g_j$, there exists a conversion factor $\lambda_{i,j}$. Moreover, this $\lambda_{i,j}$ exhibits the following properties:

- $\lambda_{i,j} \neq 0$ for all $i, j$;
- $\lambda_{i,i} = 1$ for all $i$;
- $\lambda_{j,i} = 1/\lambda_{i,j}$ for all $i, j$;
- $\lambda_{i,j} \cdot \lambda_{j,l} = \lambda_{i,l}$ for all $i, j, l$.

Then, we can define a **conversion factors matrix** for granularities $g_1, \ldots, g_k$ using the intuitive construction:

$$
\Lambda = 
  \begin{pmatrix}
    \lambda_{1,1} & \cdots & \lambda_{1,k} \\
    \vdots        & \ddots & \vdots        \\
    \lambda_{k,1} & \cdots & \lambda_{k,k}
  \end{pmatrix}
.
$$

Note that entry $\lambda_{i,j}$ should be interpreted as "the conversion factor to multiply by to get from $g_i$ to $g_j$". We can also define the so-called **marginal conversion matrices**, which provide only the conversions for a specific granularity:

$$
\Lambda_{r}
  = 
    \begin{pmatrix}
      \lambda_{r,1} & \cdots & 0             & \cdots & 0             \\
      \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
      0             & \cdots & \lambda_{r,r} & \cdots & 0             \\
      \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
      0             & \cdots & 0             & \cdots & \lambda_{r,k}
    \end{pmatrix}
  =
    \begin{pmatrix}
      \lambda_{r,1} & \cdots & 0      & \cdots & 0             \\
      \vdots        & \ddots & \vdots & \ddots & \vdots        \\
      0             & \cdots & 1      & \cdots & 0             \\
      \vdots        & \ddots & \vdots & \ddots & \vdots        \\
      0             & \cdots & 0      & \cdots & \lambda_{r,k}
    \end{pmatrix}
.
$$

Consider the standard basis vector $\hat{\mathbf{e}}_{r}^{\top}$ in $\mathcal{R}^k$, given by

$$
\hat{\mathbf{e}}_{r}^{\top} =
  \begin{pmatrix}
    0 & \cdots & 1 & \cdots & 0
  \end{pmatrix}
,
$$

where the 1 is in the $r$th position. Then, we can obtain $\lambda_{r,1}$ through $\lambda_{r,k}$ by multiplying $\hat{\mathbf{e}}_{r}^{\top}$ by $\Lambda$:

$$
\hat{\mathbf{e}}_{r}^{\top} \Lambda
  = 
    \begin{pmatrix}
      0 & \cdots & 1 & \cdots & 0
    \end{pmatrix}
    \begin{pmatrix}
      \lambda_{1,1} & \cdots & \lambda_{1,k} \\
      \vdots        & \ddots & \vdots        \\
      \lambda_{k,1} & \cdots & \lambda_{k,k}
    \end{pmatrix}
  
  = 
    \begin{pmatrix}
      \lambda_{r,1} & \cdots & \lambda_{r,r} & \cdots & \lambda_{r,k}
    \end{pmatrix}

  =
    \begin{pmatrix}
      \lambda_{r,1} \\
      \vdots        \\
      \lambda_{r,r} \\
      \vdots        \\
      \lambda_{r,k}
    \end{pmatrix}^{\top}
.
$$

Finally, the easiest way to derive the marginal conversion matrix $\Lambda_{r}$ from $\Lambda$ is to invoke the $\mathbf{diag}$ operator now:

$$
\Lambda_{r} 
  = \mathbf{diag}(\lambda_{r,1}, \ldots, \lambda_{r,k})
  = \mathbf{diag}
    \begin{pmatrix}
      \lambda_{r,1} \\
      \vdots        \\
      \lambda_{r,r} \\
      \vdots        \\
      \lambda_{r,k}
    \end{pmatrix}^{\top}
  = \mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda)
.
$$

In a few sections, it will become more obvious why the marginal conversion matrices are useful for further construction. Additionally, they provide helpful insights by breaking down the conversion along a specific granularity's axis.

### A practical example

First, let's construct a practical example of a conversion factors matrix for our expenses charts from previous installments. Recall that we are only examining 3 levels of granularity: weekly-, monthly-, and annual costs. As a result, we simply need to define the conversions between these. Somewhat surprisingly, this is not as easy as it sounds! In particular, the factor conversions from weeks to months and weeks to years are tricky to compute (although technically exact).

We are trying to define 9 conversion factors:

$$
\begin{alignat*}{3}
  \lambda_{w,w} &= \enspace ? \quad \lambda_{w,m} &&= \enspace ? \quad \lambda_{w,y} &&= \enspace ? \\
  \lambda_{m,w} &= \enspace ? \quad \lambda_{m,m} &&= \enspace ? \quad \lambda_{m,y} &&= \enspace ? \\
  \lambda_{y,w} &= \enspace ? \quad \lambda_{y,m} &&= \enspace ? \quad \lambda_{y,y} &&= \enspace ?
\end{alignat*}
$$

Some of these are trivial. For example, $\lambda_{w,w} = \lambda_{m,m} = \lambda_{y,y} = 1$. Additionally, we know that $\lambda_{m,y} = 12$, and thus by our axioms $\lambda_{y,m} = 1/12$. All that remains is to calculate $\lambda_{w,m}$ and $\lambda_{w,y}$, and then we can derive their inverses again using the axioms. Actually, by that token, all that's necessary is to define $\lambda_{w,y}$, as then we can use transitivity with $\lambda_{y,m}$ to get $\lambda_{w,m}$.

So how many weeks _are_ there in a year? It might be easier to instead answer how many [days][iso] there are in a year. Due to complex [leap year][calendar] rules, it's probably best to instead calculate how many days there are in 400 years and then normalize. We know that every year has 365 days, except for leap years. Leap years happen every 4 years, and have 366 days instead. However, every 100th year is _not_ a leap year. Still further, every 400th year _is_ a leap year. The inclusion-exclusion stops here, although scholars have proposed a similar extension through the 1000th and 4000th year marks.

Anyway, we need to apply this sort of inclusion-exclusion to obtain the number of days in 400 years:

\\[ \dfrac{400}{1} \cdot 365 + \dfrac{400}{4} \cdot 1 - \dfrac{400}{100} \cdot 1 + \dfrac{400}{400} \cdot 1 = 146097. \\]

Thus, there are 146,097 days per 400 years. It follows that

\\[ \lambda_{d,y} = \dfrac{146097}{400} = 365.2425 \\]

and so

\\[ \lambda_{w,y} = \lambda_{w,d} \cdot \lambda_{d,y} = \dfrac{\lambda_{d,y}}{\lambda_{d,w}} = \dfrac{146097/400}{7} = \dfrac{146097}{2800} = \dfrac{20871}{400} = 52.1775. \\]

The next time someone tells you that there are 52 weeks in a year, you can let them know that that's not true! Actually, it's not true in _any_ year, never mind on average including leap years: 52 weeks' worth of days is only 364 days, not 365 or 366.

And finally, we can derive the $\lambda_{w,m}$ using transitivity:

\\[ \lambda_{w,m} = \lambda_{w,y} \cdot \lambda_{y,m} = \dfrac{\lambda_{w,y}}{\lambda_{m,y}} = \dfrac{20871/400}{12} = \dfrac{20871}{4800} = \dfrac{6957}{1600} = 4.348125. \\]

If we wanted to calculate that by hand, it would probably be pretty annoying to calculate the number of weeks per month and deal with February. Conversion factors with the axioms are much easier! Interestingly, this means if you do a certain activity 4 times every week, then on average you will do it slightly over 17 times per month (not 16)!

With all of these numbers, we can define the conversion factors matrix $\Lambda^{*}$ for our expense charts:

$$
\Lambda^{*} 
  = 
    \begin{pmatrix}
      \lambda_{w,w} & \lambda_{w,m} & \lambda_{w,y} \\
      \lambda_{m,w} & \lambda_{m,m} & \lambda_{m,y} \\
      \lambda_{y,w} & \lambda_{y,m} & \lambda_{y,y}
    \end{pmatrix}

  =
    \begin{pmatrix}
      1                 & \frac{6957}{1600} & \frac{20871}{400} \\[4px]
      \frac{1600}{6957} & 1                 & 12                \\[4px]
      \frac{400}{20871} & \frac{1}{12}      & 1
    \end{pmatrix}

  \approx
    \begin{pmatrix}
      1.000  & 4.348  & 52.178 \\[4px]
      0.230  & 1.000  & 12.000 \\[4px]
      0.0192 & 0.0833 & 1.000
    \end{pmatrix}
.
$$

One thing to note that we haven't mentioned up until this point is that $\Lambda$ (and thus $\Lambda^{*}$) is _not_ dependent on the evolution time $t$ at all. That is, these conversion matrices are completely static and use very little memory in computational settings.

### Putting it all together

To generate the budget matrix from the cost matrix, it can help to first think about the needed computation step-by-step. Let's consider the example from earlier, where the cost matrix looks like this:

$$
C^{(1)} = 
  \begin{pmatrix}
    1 & 0  \\
    0 & 14
  \end{pmatrix}
.
$$

Recall that $g_1$ represents day-level granularity while $g_2$ represents week-level granularity. As a result, for this example, the conversion factors matrix looks like this:

$$
\Lambda = 
  \begin{pmatrix}
    1           & 7 \\
    \frac{1}{7} & 1
  \end{pmatrix}
.
$$

We can derive the marginal conversion matrices as well (proof omitted):

$$
\Lambda_{1} = 
  \begin{pmatrix}
    1 & 0 \\
    0 & 7
  \end{pmatrix}

\quad
\text{and}
\quad

\Lambda_{2} = 
  \begin{pmatrix}
    \frac{1}{7} & 0 \\
    0           & 1
  \end{pmatrix}
.
$$

We know from our intuitive construction earlier that the final result is

$$
B^{(1)} = 
  \begin{pmatrix}
    1 & 7  \\
    2 & 14
  \end{pmatrix}
.
$$

However, it stands to reason that we could maybe construct some $B^{(1)}_1$ and $B^{(1)}_2$ using the $\Lambda_1$ and $\Lambda_2$ as filters on $C^{(1)}$. For example, let's take a look at the following construction:

$$
B^{(1)} 
  = 
    \begin{pmatrix}
      1 & 7  \\
      2 & 14
    \end{pmatrix}

  =
    \begin{pmatrix}
      1 & 7 \\
      0 & 0 \\
    \end{pmatrix}
  +
    \begin{pmatrix}
      0  & 0 \\
      2 & 14 \\
    \end{pmatrix}

  =
    \begin{pmatrix}
      1 & 1 \\
      0 & 0 \\
    \end{pmatrix}
    \begin{pmatrix}
      1 & 0 \\
      0 & 7
    \end{pmatrix}
  +
    \begin{pmatrix}
      0  & 0  \\
      14 & 14 \\
    \end{pmatrix}
    \begin{pmatrix}
      \frac{1}{7} & 0 \\
      0           & 1
    \end{pmatrix}
.
$$

This might not seem like much, but let's first notice that the columns of $C^{(1)}$ are given by

$$
C^{(1)}
  = 
    \begin{pmatrix}
      1 & 0  \\
      0 & 14
    \end{pmatrix}
  =
    \begin{pmatrix}
      \mathbf{c}^{(1)}_1 & \mathbf{c}^{(1)}_2
    \end{pmatrix}
,

\enspace
\text{so}
\enspace

\mathbf{c}^{(1)}_1
  =
    \begin{pmatrix}
      1 \\
      0
    \end{pmatrix}

\enspace
\text{and}
\enspace

\mathbf{c}^{(1)}_2
  =
    \begin{pmatrix}
      0  \\
      14
    \end{pmatrix}
.
$$

Let's look at the following **vector broadcast** operation, given by the outer product:

$$
\begin{aligned}
  C^{(1)}_1 &= \mathbf{c}^{(1)}_1 \otimes \mathbf{1}_2 \\
    &= \mathbf{c}^{(1)}_1 \mathbf{1}_2^\top \\
    &=
      \begin{pmatrix}
        1 \\
        0
      \end{pmatrix}
    \cdot
      \begin{pmatrix}
        1 & 1
      \end{pmatrix} \\

    &=
      \begin{pmatrix}
        1 & 1 \\
        0 & 0
      \end{pmatrix} \\
    
    &=
      \begin{pmatrix}
        \mathbf{c}^{(1)}_1 & \mathbf{c}^{(1)}_1
      \end{pmatrix},
\end{aligned}
$$

and similarly $C^{(1)}_2 = \begin{pmatrix} \mathbf{c}^{(1)}_2 & \mathbf{c}^{(1)}_2 \end{pmatrix}$. With this notation, we can see that $B^{(1)}$ is given by

\\[ B^{(1)} = B^{(1)}_1 + B^{(1)}_2 = C^{(1)}_1 \Lambda_1 + C^{(1)}_2 \Lambda_2 = \mathbf{c}^{(1)}_1 \mathbf{1}_2^\top \Lambda_1 + \mathbf{c}^{(1)}_2 \mathbf{1}_2^\top \Lambda_2. \\]

Additionally, recall that $\mathbf{c}^{(1)}_r$ is given by $C^{(1)}\hat{\mathbf{e}}_r$, so we have that

\\[ B^{(1)} = C^{(1)}\hat{\mathbf{e}}_1 \mathbf{1}_2^\top \Lambda_1 + C^{(1)}\hat{\mathbf{e}}_2 \mathbf{1}_2^\top \Lambda_2 = C^{(1)} ( \hat{\mathbf{e}}_1 \mathbf{1}_2^\top \Lambda_1 + \hat{\mathbf{e}}_2 \mathbf{1}_2^\top \Lambda_2 ). \\]

Finally, the $\Lambda_r$s were also ultimately derived from $\Lambda$ using the $\mathbf{diag}$ operator. Thus, we finally arrive at the following:

\\[ B^{(1)} = C^{(1)} \Bigg[ \hat{\mathbf{e}}\_1 \mathbf{1}\_2^\top \mathbf{diag}(\hat{\mathbf{e}}\_{1}^{\top} \Lambda) + \hat{\mathbf{e}}\_2 \mathbf{1}\_2^\top \mathbf{diag}(\hat{\mathbf{e}}\_{2}^{\top} \Lambda) \Bigg]. \\]

That is, $B^{(1)}$ can be represented in closed-form in terms of $C^{(1)}$, $\Lambda$, and primitive quantities such as $\mathbf{1}$ and $\hat{\mathbf{e}}$. In other words, the budget matrix only really depends on the cost matrix and the conversion factors matrix.

We can now generalize the result we stated above. Using a similar approach, we can show that if there are granularities $g_1, \ldots, g_k$, then the relevant matrices are as follows:

$$
\begin{aligned}

C^{(t)} &=
  \begin{pmatrix}
    c^{(t)}_{g_1,1} & \cdots & c^{(t)}_{g_k,1} \\[2px]
    \vdots          & \ddots & \vdots          \\[4px]
    c^{(t)}_{g_1,n} & \cdots & c^{(t)}_{g_k,n}
  \end{pmatrix}
\\
\\

\Lambda &= 
  \begin{pmatrix}
    \lambda_{1,1} & \cdots & \lambda_{1,k} \\
    \vdots        & \ddots & \vdots        \\
    \lambda_{k,1} & \cdots & \lambda_{k,k}
  \end{pmatrix}
\\
\\

M^{(t)} &= 
  \mathbf{diag}^{-1}(C^{(t)}\mathbf{1}_{k})^{\top} \cdot C^{(t)}
\\

B^{(t)} &= 
  C^{(t)} \sum\limits_{r=1}^{k} \hat{\mathbf{e}}_r \mathbf{1}_k^\top \cdot \mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda).
\end{aligned}
$$

This $B^{(t)}$ is the backfilled cost matrix, where all conversions have taken place. We call this the **budget matrix**. This helps answer one of the questions from the previous installment: we have created a fully-populated version of the matrix. This essentially acts as a "complete table", and as we will see it can be helpful in answering certain objectives.

Finally, it can also be shown that

\\[ C^{(t)} = M^{(t)} \odot B^{(t)}, \\]

where $\odot$ represents the **Hadamard product** (sometimes called the [element-wise product][element-wise]). This might seem like a bunch of arduous definitions, but these operations are lightning-fast to compute in Python, and will be very scalable when we sweep them out over 1850+ time evolutions. If we hadn't encoded things in the language of linear algebra, we would not be able to make the use of vectorized linear algebra packages, thereby massively slowing down analysis of full-scale data.

### Sanity check

A pretty reasonable thing to sanity-check would be to verify that the final claim listed above indeed holds. Since $M^{(t)}$ and $B^{(t)}$ are defined in terms of $C^{(t)}$ themselves, presumably everything would cancel out and some identity would emerge. However, because there are many non-linear elements involved, this is actually a bit non-trivial to show.

Because the result above relies on _element-wise_ products, it would be helpful to be able to describe representative elements of $M^{(t)}$ and $B^{(t)}$, respectively. Let's start with $B^{(t)}$. We can write the elements as follows:

$$
  B^{(t)} = 
    \begin{pmatrix}
      b^{(t)}_{g_1,1} & \cdots & b^{(t)}_{g_k,1} \\[2px]
      \vdots          & \ddots & \vdots          \\[4px]
      b^{(t)}_{g_1,n} & \cdots & b^{(t)}_{g_k,n}
    \end{pmatrix}

  =
    C^{(t)} \sum\limits_{r=1}^{k} \hat{\mathbf{e}}_r \mathbf{1}_k^\top \cdot \mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda).
$$

Because matrix multiplication is associative, we can take our time and multiply terms out in the grouped order as needed, as long as we preserve left-to-right ordering. Let's start with

$$
\hat{\mathbf{e}}_r \mathbf{1}_k^\top = 
  \begin{pmatrix}
    0      \\
    \vdots \\
    1      \\
    \vdots \\
    0
  \end{pmatrix}
  \cdot
  \begin{pmatrix}
    1 \cdots 1
  \end{pmatrix}
=
  \begin{pmatrix}
    0      &\cdots  & 0      & \cdots & 0      \\
    \vdots & \ddots & \vdots & \ddots & \vdots \\
    1      & \cdots & 1      & \cdots & 1      \\
    \vdots & \ddots & \vdots & \ddots & \vdots \\
    0      & \cdots & 0      & \cdots & 0
  \end{pmatrix}
.
$$

Then, we can compute the $\mathbf{diag}$ term next. Let's do it step-by-step:

$$
\hat{\mathbf{e}}_{r}^{\top} \Lambda = 
  \begin{pmatrix}
    0 \cdots 1 \cdots 0 
  \end{pmatrix}
  \cdot
  \begin{pmatrix}
    \lambda_{1,1} & \cdots & \lambda_{1,k} \\
    \vdots        & \ddots & \vdots        \\
    \lambda_{k,1} & \cdots & \lambda_{k,k}
  \end{pmatrix}
=
  \begin{pmatrix}
    \lambda_{r,1} & \cdots & \lambda_{r,r} & \cdots & \lambda_{r,k} 
  \end{pmatrix}
;
$$

$$
\mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda)
  = \mathbf{diag}(\lambda_{r,1}, \ldots, \lambda_{r,k})
  =
    \begin{pmatrix}
      \lambda_{r,1} & \cdots & 0             & \cdots & 0             \\
      \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
      0             & \cdots & \lambda_{r,r} & \cdots & 0             \\
      \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
      0             & \cdots & 0             & \cdots & \lambda_{r,k}
    \end{pmatrix}
.
$$

And now we can multiply the two parts together to derive a matrix that represents the summand:

$$
\begin{aligned}
  \hat{\mathbf{e}}_r \mathbf{1}_k^\top \cdot \mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda)
    &=
      \begin{pmatrix}
        0      &\cdots  & 0      & \cdots & 0      \\
        \vdots & \ddots & \vdots & \ddots & \vdots \\
        1      & \cdots & 1      & \cdots & 1      \\
        \vdots & \ddots & \vdots & \ddots & \vdots \\
        0      & \cdots & 0      & \cdots & 0
      \end{pmatrix}
      \begin{pmatrix}
        \lambda_{r,1} & \cdots & 0             & \cdots & 0             \\
        \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
        0             & \cdots & \lambda_{r,r} & \cdots & 0             \\
        \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
        0             & \cdots & 0             & \cdots & \lambda_{r,k}
      \end{pmatrix}
    \\
    &=
      \begin{pmatrix}
        0             & \cdots & 0             & \cdots & 0             \\
        \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
        \lambda_{r,1} & \cdots & \lambda_{r,r} & \cdots & \lambda_{r,k} \\
        \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
        0             & \cdots & 0             & \cdots & 0
      \end{pmatrix}
  .
\end{aligned}
$$

After left-multiplying by $C^{(t)}$, each term in the summand looks like this:

$$
\begin{aligned}
  C^{(t)} \cdot \hat{\mathbf{e}}_r \mathbf{1}_k^\top \cdot \mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda)
    &=
      \begin{pmatrix}
        c^{(t)}_{g_1,1} & \cdots & c^{(t)}_{g_k,1} \\[2px]
        \vdots          & \ddots & \vdots          \\[4px]
        c^{(t)}_{g_1,n} & \cdots & c^{(t)}_{g_k,n}
      \end{pmatrix}  
    \cdot
      \begin{pmatrix}
        0             & \cdots & 0             & \cdots & 0             \\
        \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
        \lambda_{r,1} & \cdots & \lambda_{r,r} & \cdots & \lambda_{r,k} \\
        \vdots        & \ddots & \vdots        & \ddots & \vdots        \\
        0             & \cdots & 0             & \cdots & 0
      \end{pmatrix}
    \\
    &=
      \begin{pmatrix}
        \lambda_{r,1} c^{(t)}_{g_r,1} & \cdots & \lambda_{r,k} c^{(t)}_{g_r,1} \\[2px]
        \vdots                        & \ddots & \vdots                        \\[4px]
        \lambda_{r,1} c^{(t)}_{g_r,n} & \cdots & \lambda_{r,k} c^{(t)}_{g_r,n}
      \end{pmatrix} 
  .
\end{aligned}
$$

Finally, summing everything together, we get the following:

$$
\begin{aligned}
  B^{(t)} &=
    \sum\limits_{r=1}^{k} C^{(t)} \cdot \hat{\mathbf{e}}_r \mathbf{1}_k^\top \cdot \mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda) \\
  &=
    \sum\limits_{r=1}^{k}
    \begin{pmatrix}
      \lambda_{r,1} c^{(t)}_{g_r,1} & \cdots & \lambda_{r,k} c^{(t)}_{g_r,1} \\[2px]
      \vdots                        & \ddots & \vdots                        \\[4px]
      \lambda_{r,1} c^{(t)}_{g_r,n} & \cdots & \lambda_{r,k} c^{(t)}_{g_r,n}
    \end{pmatrix} \\
  &=
    \begin{pmatrix}
      \sum\limits_{r=1}^{k} \lambda_{r,1} c^{(t)}_{g_r,1} & \cdots & \sum\limits_{r=1}^{k} \lambda_{r,k} c^{(t)}_{g_r,1} \\[2px]
      \vdots                                              & \ddots & \vdots                                              \\[4px]
      \sum\limits_{r=1}^{k} \lambda_{r,1} c^{(t)}_{g_r,n} & \cdots & \sum\limits_{r=1}^{k} \lambda_{r,k} c^{(t)}_{g_r,n}
    \end{pmatrix} \\
  &=
    \begin{pmatrix}
      b^{(t)}_{g_1,1} & \cdots & b^{(t)}_{g_k,1} \\[2px]
      \vdots          & \ddots & \vdots          \\[4px]
      b^{(t)}_{g_1,n} & \cdots & b^{(t)}_{g_k,n}
    \end{pmatrix}
  .
\end{aligned}
$$

This leads to the following definition of the representative elements of $B^{(t)}$:

\\[ b^{(t)}\_{g,i} = \sum\limits\_{r=1}^{k} \lambda\_{r,g} c^{(t)}\_{r,i}. \\]

Determining the representative element of $M^{(t)}$ is actually something we've already done. Recall that we derived earlier the following form for $M^{(t)}$:

$$
  M^{(t)} =
    \begin{pmatrix}
      \dfrac{c^{(t)}_{g_1,1}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,1}} & \cdots & \dfrac{c^{(t)}_{g_k,1}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,1}} \\[2px]
      \vdots                                                           & \ddots & \vdots                                                           \\[4px]
      \dfrac{c^{(t)}_{g_1,n}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,n}} & \cdots & \dfrac{c^{(t)}_{g_k,n}}{\sum\limits_{r = 1}^{k} c^{(t)}_{g_r,n}}
    \end{pmatrix}
.
$$

This immediately yields the following representative element:

\\[ m^{(t)}\_{g,i} = \dfrac{c^{(t)}\_{g,i}}{\sum\limits\_{r = 1}^{k} c^{(t)}\_{r,i}}. \\]

Putting the two derivations together, we see that

$$
\begin{aligned}
  m^{(t)}_{g,i} \circ b^{(t)}_{g,i} &=
    \dfrac{c^{(t)}_{g,i}}{\sum\limits_{r = 1}^{k} c^{(t)}_{r,i}} \cdot \sum\limits_{r=1}^{k} \lambda_{r,g} c^{(t)}_{r,i} \\
  &= \dfrac{\sum\limits_{r=1}^{k} \lambda_{r,g} c^{(t)}_{r,i} c^{(t)}_{g,i}}{\sum\limits_{r = 1}^{k} c^{(t)}_{r,i}}
  .
\end{aligned}
$$

However, recall that $C^{(t)}$ has one-hot encoded rows. Thus, for each $i \in \\{1,\ldots,n\\}$, there exists exactly one $1 \leq g^{\*} \leq k$ for which $c^{(t)}\_{g^{\*},i} \neq 0$. Let us select it using the axiom of choice. Then, we know that for all $1 \leq r \leq k$ such that $r \neq g^{\*}$, it holds that $c^{(t)}\_{r,i} = 0$. With this information, we can quickly modify the above quantities using the [Kronecker delta][kronecker]:

$$
\begin{aligned}
  m^{(t)}_{g,i} \circ b^{(t)}_{g,i} &=
    \dfrac{\sum\limits_{r=1}^{k} \lambda_{r,g} (\delta_{g^{*},r} c^{(t)}_{r,i}) (\delta_{g^{*},g} c^{(t)}_{g,i})}{\sum\limits_{r = 1}^{k} \delta_{g^{*},r} c^{(t)}_{r,i}} \\

  &= \dfrac{\lambda_{g^{*},g} c^{(t)}_{g^{*},i} (\delta_{g^{*},g} c^{(t)}_{g,i})}{c^{(t)}_{g^{*},i}} \\
  &= \delta_{g^{*},g} \lambda_{g^{*},g} c^{(t)}_{g,i}.
\end{aligned}
$$

There are two simple cases now:

- $(g = g^{\*})$. In this case, we get the following:

  $$
    m^{(t)}_{g,i} \circ b^{(t)}_{g,i} = \lambda_{g^{*},g^{*}} c^{(t)}_{g^{*},i} = c^{(t)}_{g^{*},i} = c^{(t)}_{g,i},
  $$

  as expected.

- $(g \neq g^{\*})$. In this case, $\delta_{g^{*},g} = 0$, so we get:

  $$
    m^{(t)}_{g,i} \circ b^{(t)}_{g,i} = 0 = c^{(t)}_{g,i},
  $$

  also as expected (since $C^{(t)}$ has one-hot encoded rows, so if $g \neq g^{\*}$ then this is not the hot column).


Thus, in all cases we indeed have $m^{(t)}\_{g,i} \circ b^{(t)}\_{g,i} = c^{(t)}\_{g,i}$, and so the Hadamard product holds.

### The three horsemen of expenses

Just because it bears repeating, let's restate the important equations that we derived above. This will serve as a summary:

$$
\begin{aligned}
M^{(t)} &= 
  \mathbf{diag}^{-1}(C^{(t)}\mathbf{1}_{k})^{\top} \cdot C^{(t)}
\\

B^{(t)} &= 
  C^{(t)} \sum\limits_{r=1}^{k} \hat{\mathbf{e}}_r \mathbf{1}_k^\top \cdot \mathbf{diag}(\hat{\mathbf{e}}_{r}^{\top} \Lambda)
\\

C^{(t)} &= M^{(t)} \odot B^{(t)}.
\end{aligned}
$$

## Next steps

The natural question to ask next is probably "how do these various matrices actually _evolve_"? We've said that they do so by virtue of superscripting with time evolution $t$. But how does the system actually change between time steps? Is it completely random and memoryless? Is it stateful? Does it evolve via a fixed/constant process? These questions are all great, and we will arrive at reasonable answers over time as we work on developing an increasingly complex framework.

[one-hot]: https://en.wikipedia.org/wiki/One-hot
[post-3]: ./03-costs.html#conceptualizing-a-cost-chart
[expenses]: ./03-costs.html#putting-it-all-together
[indices]: https://en.wikipedia.org/wiki/De_Bruijn_index
[matrices]: https://en.wikipedia.org/wiki/Matrix_(mathematics)
[generalization]: https://en.wikipedia.org/wiki/Generalization#Mathematical_generalizations
[gpms]: https://en.wikipedia.org/wiki/Generalized_permutation_matrix#Properties
[pms]: https://en.wikipedia.org/wiki/Permutation_matrix
[diag-invert]: https://en.wikipedia.org/wiki/Diagonal_matrix#Matrix_operations
[normalized]: https://math.stackexchange.com/questions/1095756/row-normalized-and-column-normalized-matrix-notation
[repo]: https://github.com/chiragbharadwaj/kasai
[iso]: https://en.wikipedia.org/wiki/ISO_week_date
[calendar]: https://en.wikipedia.org/wiki/Gregorian_calendar#Accuracy
[element-wise]: https://en.wikipedia.org/wiki/Hadamard_product_(matrices)#Definition
[kronecker]: https://en.wikipedia.org/wiki/Kronecker_delta
