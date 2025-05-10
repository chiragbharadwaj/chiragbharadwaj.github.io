---
layout: post
title: blogs | finance | note 2
date: 2025-05-09
post_name: Constructing the high-level picture
excerpt: The golden question that we're aiming to answer is around the necessary and sufficient conditions under which one can retire. Uncovering the exact answer to this question will involve significant analysis of several pieces of information; some of these will be in one's control (e.g. salary, expenditures) while others will not (e.g. inflation, market returns). Combining both and running simulations will be non-trivial.
---

*First and foremost: __this entire series concerns itself with earning, living, and retiring in the United States__. While a lot of the principles of frugality, safe investing, and budgeting do extend to other countries, a lot of what we discuss will be specific to tax laws and retirement accounts only available in the U.S. My own experiences are entirely American-coded, so I can only speak to the optimizations that are relevant for life here. Apologies for any international readers!*

The primary question we'd like to concern ourselves with is:

> Given my current situation and future trajectory, when is the earliest that I could safely retire?

The first thing to note is that an answer to this question supplies both necessary and sufficient conditions for retirement:
- if you retire too early, you may run the risk of insolvency later on (this is why "safely" is important)
- if you amass too much excess wealth, you may not be retired for long before death comes knocking (hence "earliest")

Essentially, we are trying to find the optimal operating point (or points) at which we can retire with close to no risk of outliving our assets; simultaneously, we want to ensure that we can enjoy as long a post-retirement period as possible. Of course, this concept is quite popular among today's youth, particularly in the [millennial generation][millennials]. In the early 2010s, amid a fledgling economic recovery, resources by Jacob Lund Fisker and Peter Adeney helped popularize these retirement planning practices and galvanize them into a whole movement:

> FIRE: **Financially Independent; Retiring Early**.

The concept of [financial independence][freedom] itself is quite archaic and well-established, but these pioneers helped democratize some of the key learnings. In the 15 years since, FIRE has blossomed and gained traction among younger millennials too. Some cite several [different pathways][fire] towards financial independence now:

| Name | Early? | Description| Net worth |
| --- | --- | --- | --- |
| LeanFIRE | yes | retire on a very frugal budget | 1-2MM |
| ChubbyFIRE | yes | retire on an average technocrat's budget | 3-5MM |
| FatFIRE | yes | retire on a business owner's budget | 10MM+ |
| ExpatFIRE | maybe | retire in a foreign country (usually weaker $$) | varies |
| CoastFIRE | no | switch to a less stressful job when nearing target | 1-2MM+ |
| BaristaFIRE | no | make money from hobbies after hitting target | 2-3MM+ |

Undoubtedly, it is tempting to choose a lower budget and retire earlier; unfortunately, a persistent tradeoff between one's budget and degradation of their quality of life rears its head. Furthermore, it is prudent to not sound out of touch with the audience; however, if those budgets seem a bit high, you might be surprised to learn that they _can_ be necessary depending on [how you spend][ynab]. That said, we'll work through all of the math together and customize it as needed. To further clarify, we're not necessarily advocating _early_ retirement in our planning. We just want to find out the earli*<u>est</u>* that we can retire. For some, this may very well be at a [traditional age][milestones] such as 65. For others, it could be in their mid-40s.

To do this, we'll first construct a [flexible framework][framework] that analyzes each of the following:
- monthly and annual budgets
- sources of income
- debts and long-term costs
- tax implications
- investments and portfolio management
- raises, inflation, and market conditions
- home ownership and childcare
- genealogical health concerns
- capital preservation
- *and much, much more!*

Don't worry if you don't understand any of that yet! We'll go through it step by step later on. With our data framework as above, we can arrive at a pair of answers to our high-level question:

> (age, net worth)

These figures essentially report how much money we'd need if we chose to retire at that age, at least with our current set of assumptions. If we're not satisfied, we can always [tweak the assumptions][flexibility] within our control to see what happens:
- current spending habits
- spending habits in retirement
- liquid investments
- career trajectory and target pay

Sliding these around will allow the age and net worth pairs to shift as desired. Some people don't mind working, while others want to "exit the [rat race][rat-race]" -- as it were -- before the physical symptoms of aging catch up to them. After a suitable operating point has been identified and the requisite cash flows have been established, the actual actions needed on a monthly basis are [surprisingly simple][zzz]! You'll barely have to touch (or even check on) your money every year.

Let's begin this journey together!

[millennials]: https://en.wikipedia.org/wiki/Millennials
[freedom]: https://en.wikipedia.org/wiki/Financial_independence
[fire]: https://en.wikipedia.org/wiki/FIRE_movement#Pathways
[ynab]: https://www.ynab.com/
[milestones]: https://www.irs.gov/retirement-plans/retirement-topics-significant-ages-for-retirement-plan-participants
[framework]: https://github.com/chiragbharadwaj/kasai
[flexibility]: https://earlyretirementnow.com/2023/03/10/the-basics-of-fire/
[rat-race]: https://www.reddit.com/r/Fire/comments/1irqrmw
[zzz]: https://www.reddit.com/r/Bogleheads/comments/1allhpk
