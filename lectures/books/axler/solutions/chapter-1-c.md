---
layout: solutions
title: books | axler | ch 1c
roman: 1c
chapter_name: Vector Spaces
section_name: Subspaces
date: 2025-05-02
---

**Problem 1.** To verify whether each subset $S$ is indeed a subspace of $\mathcal{F}^3$, we can equivalently verify closure under the space operators and the existence of the additive identity. We do so below.

- *__Problem 1a.__* The additive identity exists in $S$. We know that $\mathbf{0} = (0\_{\mathcal{F}}, 0\_{\mathcal{F}}, 0\_{\mathcal{F}})$ for $\mathcal{F}^3$, and clearly

  \\[ 0\_{\mathcal{F}} + (2 \cdot 0\_{\mathcal{F}}) + (3 \cdot 0\_{\mathcal{F}}) = 0\_{\mathcal{F}}.\\]

  Now, consider arbitrary $\mathbf{u}, \mathbf{v} \in S$ and $\lambda \in \mathcal{F}$ such that

  \\[ \mathbf{u} = (u_1, u_2, u_3) \quad \text{and} \quad \mathbf{v} = (v_1, v_2, v_3), \\]

  where $u_i, v_i \in \mathcal{F}$ for $1 \leq i \leq 3$. Because $\mathbf{u}, \mathbf{v} \in S$, we know that

  \\[ u_1 + 2u_2 + 3u_3 = 0 \quad \text{and} \quad v_1 + 2v_2 + 3v_3 = 0. \\]
  
  We can now establish that $S$ is closed under $+\_S$ (which is $+\_{\mathcal{F}}$):

  <div align="center">
    <table>
      <thead></thead>
      <tbody>
        <tr>
          <td>
            $$
            \begin{aligned}
            \mathbf{t} &= \mathbf{u} + \mathbf{v} \\
            &\circeq (u_1, u_2, u_3) + (v_1, v_2, v_3) \\
            &\triangleq \bigg((u_1 + v_1), (u_2 + v_2), (u_3 + v_3)\bigg) \\
            &= (t_1, t_2, t_3)
            \end{aligned}
            $$
          </td>
          <td>and</td>
          <td>
            $$
            \begin{aligned}
            t_1 + 2t_2 + 3t_3 &\circeq (u_1 + v_1) + 2(u_2 + v_2) + 3(u_3 + v_3) \\
            &= u_1 + v_1 + 2u_2 + 2v_2 + 3u_3 + 3v_3 \\
            &= (u_1 + 2u_2 + 3u_3) + (v_1 + 2v_2 + 3v_3) \\
            &\triangleq 0 + 0 \\
            &= 0.
            \end{aligned}
            $$
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  Similarly, we can establish that $S$ is closed under $\cdot\_S$ (which is $\cdot\_{\mathcal{F}}$):

  <div align="center">
    <table>
      <thead></thead>
      <tbody>
        <tr>
          <td>
            $$
            \begin{aligned}
            \mathbf{s} &= \lambda \mathbf{v} \\
            &\circeq \lambda (v_1, v_2, v_3) \\
            &\triangleq (\lambda v_1, \lambda v_2, \lambda v_3) \\
            &= (s_1, s_2, s_3)
            \end{aligned}
            $$
          </td>
          <td>and</td>
          <td>
            $$
            \begin{aligned}
            s_1 + 2s_2 + 3s_3 &\circeq (\lambda v_1) + 2(\lambda v_2) + 3(\lambda v_3) \\
            &= \lambda v_1 + 2\lambda v_2 + 3\lambda v_3 \\
            &= \lambda v_1 + \lambda (2v_2) + \lambda (3 v_3) \\
            &= \lambda (v_1 + 2v_2 + 3v_3) \\
            &\triangleq \lambda \cdot 0 \\
            &= 0.
            \end{aligned}
            $$
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  Thus, $S$ is indeed a subspace of $\mathcal{F}^3$.

- *__Problem 1b.__* The additive identity does not exist in $S$. We know that $\mathbf{0} = (0\_{\mathcal{F}}, 0\_{\mathcal{F}}, 0\_{\mathcal{F}})$ for $\mathcal{F}^3$, but

  \\[ 0\_{\mathcal{F}} + (2 \cdot 0\_{\mathcal{F}}) + (3 \cdot 0\_{\mathcal{F}}) = 0\_{\mathcal{F}} \neq 4,\\]

  so $\mathbf{0} \notin S$. This alone is sufficient to say that $S$ is not a subspace of $\mathcal{F}^3$.

- *__Problem 1c.__* $S$ is not closed under $+\_S$ (which is $+\_{\mathcal{F}^3}$). To see why, consider $\mathbf{u}, \mathbf{v} \in S$, such that

  \\[\mathbf{u} = (0\_{\mathcal{F}}, 1\_{\mathcal{F}}, 0\_{\mathcal{F}}) \quad \text{and} \quad \mathbf{v} = (1\_{\mathcal{F}}, 0\_{\mathcal{F}}, 1\_{\mathcal{F}}),\\]

  where $0\_{\mathcal{F}}, 1\_{\mathcal{F}} \in \mathcal{F}$. Clearly

  \\[ 0\_{\mathcal{F}} \cdot 1\_{\mathcal{F}} \cdot 0\_{\mathcal{F}} = 0\_{\mathcal{F}} \quad \text{and} \quad 1\_{\mathcal{F}} \cdot 0\_{\mathcal{F}} \cdot 1\_{\mathcal{F}} = 0\_{\mathcal{F}}, \\]

  so $\mathbf{u}, \mathbf{v} \in S$. Then, it is evident that $\mathbf{u} + \mathbf{v}$ is given by

  <div align="center">
    <table>
      <thead></thead>
      <tbody>
        <tr>
          <td>
            $$
            \begin{aligned}
            \mathbf{t} &= \mathbf{u} + \mathbf{v} \\
            &\circeq (0_{\mathcal{F}}, 1_{\mathcal{F}}, 0_{\mathcal{F}}) + (1_{\mathcal{F}}, 0_{\mathcal{F}}, 1_{\mathcal{F}}) \\
            &\triangleq \bigg((0_{\mathcal{F}} + 1_{\mathcal{F}}), (1_{\mathcal{F}} + 0_{\mathcal{F}}), (0_{\mathcal{F}} + 1_{\mathcal{F}})\bigg) \\
            &= (1_{\mathcal{F}}, 1_{\mathcal{F}}, 1_{\mathcal{F}}) \\
            &= (t_1, t_2, t_3),
            \end{aligned}
            $$
          </td>
          <td>yet</td>
          <td>
            $$
            \begin{aligned}
            t_1 t_2 t_3 &= 1_{\mathcal{F}} \cdot 1_{\mathcal{F}} \cdot 1_{\mathcal{F}} \\
            &= 1_{\mathcal{F}} \\
            &\neq 0_{\mathcal{F}},
            \end{aligned}
            $$
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  so $\mathbf{t} = \mathbf{u} + \mathbf{v} \notin S$. This alone is sufficient to say that $S$ is not a subspace of $\mathcal{F}^3$.

- *__Problem 1d.__* The additive identity exists in $S$. We know that $\mathbf{0} = (0\_{\mathcal{F}}, 0\_{\mathcal{F}}, 0\_{\mathcal{F}})$ for $\mathcal{F}^3$, and clearly

  \\[ 0\_{\mathcal{F}} = 5 \cdot 0\_{\mathcal{F}}.\\]

  Now, consider arbitrary $\mathbf{u}, \mathbf{v} \in S$ and $\lambda \in \mathcal{F}$ such that

  \\[ \mathbf{u} = (u_1, u_2, u_3) \quad \text{and} \quad \mathbf{v} = (v_1, v_2, v_3), \\]

  where $u_i, v_i \in \mathcal{F}$ for $1 \leq i \leq 3$. Because $\mathbf{u}, \mathbf{v} \in S$, we know that

  \\[ u_1 = 5u_3 \quad \text{and} \quad v_1 = 5v_3. \\]
  
  We can now establish that $S$ is closed under $+\_S$ (which is $+\_{\mathcal{F}}$):

  <div align="center">
    <table>
      <thead></thead>
      <tbody>
        <tr>
          <td>
            $$
            \begin{aligned}
            \mathbf{t} &= \mathbf{u} + \mathbf{v} \\
            &\circeq (u_1, u_2, u_3) + (v_1, v_2, v_3) \\
            &\triangleq \bigg((u_1 + v_1), (u_2 + v_2), (u_3 + v_3)\bigg) \\
            &= (t_1, t_2, t_3)
            \end{aligned}
            $$
          </td>
          <td>and</td>
          <td>
            $$
            \begin{aligned}
            t_1 &\circeq u_1 + v_1 \\
            &\triangleq (5u_3) + (5v_3) \\
            &= 5(u_3 + v_3) \\
            &\circeq 5t_3.
            \end{aligned}
            $$
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  Similarly, we can establish that $S$ is closed under $\cdot\_S$ (which is $\cdot\_{\mathcal{F}}$):

  <div align="center">
    <table>
      <thead></thead>
      <tbody>
        <tr>
          <td>
            $$
            \begin{aligned}
            \mathbf{s} &= \lambda \mathbf{v} \\
            &\circeq \lambda (v_1, v_2, v_3) \\
            &\triangleq (\lambda v_1, \lambda v_2, \lambda v_3) \\
            &= (s_1, s_2, s_3)
            \end{aligned}
            $$
          </td>
          <td>and</td>
          <td>
            $$
            \begin{aligned}
            s_1 &\circeq \lambda v_1 \\
            &\triangleq \lambda (5 v_3) \\
            &= 5 (\lambda v_3) \\
            &\circeq 5 s_3.
            \end{aligned}
            $$
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  Thus, $S$ is indeed a subspace of $\mathcal{F}^3$.

Here is a summary of all of the results:

| Part | Additive identity | Closure under $+_S$ | Closure under $\cdot_S$ | Conclusion |
| --- | --- | --- | --- | --- |
| (a) | exists | yes | yes | is a subspace |
| (b) | does not exist | no | no | not a subspace |
| (c) | exists | no | yes | not a subspace |
| (d) | exists | yes | yes | is a subspace |

----

**Problem 2.** Each claim is slightly different and thus requires a separate proof. We take a look at each one separately.

- *__Problem 2a.__* We must show that both statements imply each other. We proceed as follows:
  
  *Forward $(\Rightarrow)$.* Let $S$ be a subspace of $\mathcal{F}^4$ such that

  \\[ S = \\{ (x_1, x_2, x_3, x_4) \in \mathcal{F}^4 \ \vert \ x_3 = 5x_4 + b \\} \\]

  for some $b \in \mathcal{F}$. Then, because $S$ is a subspace, we must have that $\mathbf{0} \in S$. We know that $\mathbf{0} = (0\_{\mathcal{F}}, 0\_{\mathcal{F}}, 0\_{\mathcal{F}}, 0\_{\mathcal{F}})$ for $\mathcal{F}^4$. It follows from the definition of $S$ that

  \\[ 0 = 5 \cdot 0 + b, \\]

  which directly shows that $b = 0$, as desired.

  *Reverse $(\Leftarrow)$.* Now assume that $b = 0$. The construction of $S$ is now simpler:
  
  \\[ S = \\{ (x_1, x_2, x_3, x_4) \in \mathcal{F}^4 \ \vert \ x_3 = 5x_4 \\}.\\]

  By a nearly-identical argument to that of Problem 1d, this is indeed a subspace of $\mathcal{F}^4$.

- *__Problem 2b.__* Let $S$ be a subset of $\mathcal{R}^{[0,1]}$ given by

  \\[ S = \\{ f \in \mathcal{R}^{[0,1]} \ \vert \ f \text{ is continuous} \\}. \\]

  Recall that a function $f : [0,1] \rightarrow \mathcal{R}$ is continuous if for every $r \in [0,1]$, the following property holds:

  \\[ \forall \varepsilon > 0 \quad \exists \delta > 0 \enspace \text{s.t.} \enspace \forall x \in [0,1] \qquad \|x - r\| < \delta \Rightarrow \|f(x) - f(r)\| < \varepsilon.\\]

  In $\mathcal{R}^{[0,1]}$, the additive identity $\hat{0}$ is given by $\hat{0}(x) = 0$ uniformly. To show that $\hat{0} \in S$, we can establish continuity. Consider arbitrary $r, x \in [0,1]$. Then, we know that $\hat{0}(x) = \hat{0}(r) = 0$. As a result,

  \\[ \|\hat{0}(x) - \hat{0}(r)\| = \|0 - 0\| = 0 < \varepsilon, \\]

  regardless of what $\delta$ is (i.e. such a $\delta$ always exists). It follows that $\hat{0}$ is continuous, and thus $\hat{0} \in S$.

  Now, consider arbitrary $f, g \in S$ and $\lambda \in \mathcal{R}$ such that $f$ and $g$ are continuous. 
  
  
  Then, $S$ is closed under $+\_S$: