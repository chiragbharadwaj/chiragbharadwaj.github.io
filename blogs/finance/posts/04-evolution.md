---
layout: post
title: blogs | finance | note 4
date: 2025-05-14
post_no: 2
post_name: Evolution of expenses
excerpt: Our expenses constantly change throughout our lifetime. There are often major events that completely alter our future costs. Let's examine these inflection points and devise a sequence of expense charts that accurately reflect the course of life's trajectory.
---

## The expense trajectory

In the previous installment, we constructed an expense chart for our current living conditions. However, life is long and one's situation is highly variable. While stability is cherishable, there is no doubt that expenses will evolve as individuals age. As a result, we will need to identify these key changes and construct new expense charts as needed.

The approach we will take is to first identify milestones at which we believe the course of our expenses will substantially alter from the previous status quo. Then, we can pen projected expense charts for these new situations _as if they were occurring today_ (i.e. as measured in 2025 dollars). In a later post, we will properly project them out to the requisite ages with inflation adjustments.

## Inflection points in expenses

Some typical milestones that Americans experience throughout their lives include:

- move in with a partner
- get married
- have a first child
- buy a single-family house
- (optional) have a second/third child
- develop a chronic condition
- pay for children's education
- pay off the house
- retire from work (at 65)
- move to a retirement home
- death of partner

Not all of these will be relevant for all readers. It can be wise to construct one's own path based on a projected vision of the future. For example, I have no plans on getting married or having children. Additionally, my family is quite healthy, with my grandparents still regularly taking walks and living without medicinal intervention in their late 80s and early 90s in Asia. Furthermore, I work in tech and am able to amass savings at a reasonable pace in my late 20s.

As a result, I might expect my own milestones to look something like this:

- buy a small landed property (or condo)
- retire early (at 42 ish)
- pay off the property
- turn 60 (withdraw earnings without [penalty][penalties])

It can similarly be educational to set up your own expected trajectory. The actual ages (besides 60) don't matter much -- we will play around with them, treating these "spikes" as [hyperparameters][hyperparameters] for optimization later. Recall that one of my express goals in this exercise was to answer a few questions:
- when should I purchase a house?
- when can I retire?
- how much do I need to retire at that point?

The other constraints on the optimization problem are merely hyperparameters; for example, the cost of the house, the desired down payment scheme, the expected death date, etc. Below, we'll construct the expected expense charts for each of the above changes. Remember: this will all be reported using today's costs and dollar values (for now)!

## Constructing the expense sequence

Obviously, it's not possible to predict so much in advance. If one's fortune changes, the requisite mending of the projections can be introduced to intervene and force the behavior to evolve in accordance with the new information. For example, if a child has an unexpected affliction, this can definitely increase the household healthcare costs. Similarly, many staunch bachelors and bachelorettes may find themselves getting married [after all][bachelors] eventually.

With that in mind, let's construct our expected expense sequence. Like last time, I'll present each chart and provide some commentary. Luckily for readers, this time I won't do a detailed analysis by category.

### Chart 1: Working and renting (already done)

We've already worked this one out in the previous installment, so let's reproduce it verbatim:

| Item | Category | Cost/week | Cost/month | Cost/year |
| --- | --- | --- | --- | --- |
| Rent | Housing | -- | $2900 | -- |
| Insurance | Housing | -- | -- | $200 |
| Electric | Housing | -- | $75 | -- |
| Water | Housing | -- | $15 | -- |
| Internet | Housing | -- | $70 | -- |
| Groceries | Food | $100 | -- | -- |
| Restaurants | Food | $50 | -- | -- |
| Car rentals | Transportation | -- | -- | $125 |
| Fuel | Transportation | -- | -- | $35 |
| Tolls | Transportation | -- | -- | $20 |
| Bus fares | Transportation | -- | $25 | -- |
| MTA fares | Transportation | -- | $29 | -- |
| PATH fares | Transportation | $30 | -- | -- |
| Clothing | Personal upkeep | -- | -- | $250 |
| Self-care | Personal upkeep | -- | $40 | -- |
| Cleaning supplies | Household upkeep | -- | $25 | -- |
| Washing supplies | Household upkeep | -- | -- | $40 |
| Laundry | Household upkeep | -- | $15 | -- |
| Fabrics | Household upkeep | -- | -- | $100 |
| Around the house | Household upkeep | -- | -- | $50 |
| Gym membership | Subscriptions | -- | $179.91 | -- |
| Cell phone plan | Subscriptions | -- | $50.00 | -- |
| Board games | Subscriptions | -- | -- | $150.00 |
| Discord Nitro | Subscriptions | -- | -- | $106.62 |
| Amazon Prime | Subscriptions | -- | -- | $148.21 |
| _The Economist_ | Subscriptions | -- | -- | $265.50 |
| Books | Hobbies | -- | -- | $400 |
| Art supplies | Hobbies | -- | -- | $500 |
| Piano scores | Hobbies | -- | -- | $100 |
| Entertainment | Hobbies | -- | -- | $600 |
| Appliances | Miscellaneous | -- | -- | $350 |
| Vacation | Miscellaneous | -- | -- | $4500 |

Not much more to add.

### Chart 2: Working while owning

TBD

| Item | Category | Cost/week | Cost/month | Cost/year |
| --- | --- | --- | --- | --- |
| Mortgage | Housing | -- | $3600 | -- |
| HoA fees | Housing | -- | $200 | -- |
| Property tax | Housing | -- | $850 | -- |
| Insurance | Housing | -- | -- | $200 |
| Gas | Housing | -- | $60 | -- |
| Electric | Housing | -- | $80 | -- |
| Water | Housing | -- | $70 | -- |
| Sewer | Housing | -- | $30 | -- |
| Internet | Housing | -- | $70 | -- |
| Groceries | Food | $100 | -- | -- |
| Restaurants | Food | $50 | -- | -- |
| Car insurance | Transportation | -- | -- | $125 |
| Fuel | Transportation | -- | -- | $35 |
| Tolls | Transportation | -- | -- | $20 |
| MTA fares | Transportation | -- | $29 | -- |
| PATH fares | Transportation | $30 | -- | -- |
| Clothing | Personal upkeep | -- | -- | $250 |
| Self-care | Personal upkeep | -- | $40 | -- |
| Cleaning supplies | Household upkeep | -- | $25 | -- |
| Washing supplies | Household upkeep | -- | -- | $40 |
| Laundry | Household upkeep | -- | $15 | -- |
| Fabrics | Household upkeep | -- | -- | $100 |
| Around the house | Household upkeep | -- | -- | $50 |
| Gym membership | Subscriptions | -- | $179.91 | -- |
| Cell phone plan | Subscriptions | -- | $50.00 | -- |
| Board games | Subscriptions | -- | -- | $150.00 |
| Discord Nitro | Subscriptions | -- | -- | $106.62 |
| Amazon Prime | Subscriptions | -- | -- | $148.21 |
| _The Economist_ | Subscriptions | -- | -- | $265.50 |
| Books | Hobbies | -- | -- | $400 |
| Art supplies | Hobbies | -- | -- | $500 |
| Piano scores | Hobbies | -- | -- | $100 |
| Entertainment | Hobbies | -- | -- | $600 |
| Appliances | Miscellaneous | -- | -- | $350 |
| Vacation | Miscellaneous | -- | -- | $4500 |

TBD

### Chart 3: Early retirement

TBD

| Item | Category | Cost/week | Cost/month | Cost/year |
| --- | --- | --- | --- | --- |
| HoA fees | Housing | -- | $200 | -- |
| Property tax | Housing | -- | $850 | -- |
| Insurance | Housing | -- | -- | $200 |
| Gas | Housing | -- | $60 | -- |
| Electric | Housing | -- | $80 | -- |
| Water | Housing | -- | $70 | -- |
| Sewer | Housing | -- | $30 | -- |
| Internet | Housing | -- | $70 | -- |
| Groceries | Food | $100 | -- | -- |
| Restaurants | Food | $50 | -- | -- |
| Car insurance | Transportation | -- | -- | $125 |
| Fuel | Transportation | -- | -- | $35 |
| Tolls | Transportation | -- | -- | $20 |
| MTA fares | Transportation | -- | $29 | -- |
| Bronze health plan | Personal upkeep | -- | $400 | -- |
| Clothing | Personal upkeep | -- | -- | $250 |
| Self-care | Personal upkeep | -- | $40 | -- |
| Cleaning supplies | Household upkeep | -- | $25 | -- |
| Washing supplies | Household upkeep | -- | -- | $40 |
| Laundry | Household upkeep | -- | $15 | -- |
| Fabrics | Household upkeep | -- | -- | $100 |
| Around the house | Household upkeep | -- | -- | $50 |
| Gym membership | Subscriptions | -- | $179.91 | -- |
| Cell phone plan | Subscriptions | -- | $50.00 | -- |
| _The Economist_ | Subscriptions | -- | -- | $265.50 |
| Books | Hobbies | -- | -- | $400 |
| Art supplies | Hobbies | -- | -- | $500 |
| Piano scores | Hobbies | -- | -- | $100 |
| Entertainment | Hobbies | -- | -- | $600 |
| Appliances | Miscellaneous | -- | -- | $350 |
| Vacation | Miscellaneous | -- | -- | $8000 |

TBD

### Chart 4: Late retirement

TBD

| Item | Category | Cost/week | Cost/month | Cost/year |
| --- | --- | --- | --- | --- |
| HoA fees | Housing | -- | $200 | -- |
| Property tax | Housing | -- | $850 | -- |
| Insurance | Housing | -- | -- | $200 |
| Gas | Housing | -- | $60 | -- |
| Electric | Housing | -- | $80 | -- |
| Water | Housing | -- | $70 | -- |
| Sewer | Housing | -- | $30 | -- |
| Internet | Housing | -- | $70 | -- |
| Groceries | Food | $100 | -- | -- |
| Restaurants | Food | $50 | -- | -- |
| Car insurance | Transportation | -- | -- | $125 |
| Fuel | Transportation | -- | -- | $35 |
| Tolls | Transportation | -- | -- | $20 |
| Gold health plan | Personal upkeep | -- | $950 | -- |
| Qualified medical | Personal upkeep | -- | -- | $20000 |
| Clothing | Personal upkeep | -- | -- | $250 |
| Self-care | Personal upkeep | -- | $40 | -- |
| Cleaning supplies | Household upkeep | -- | $25 | -- |
| Washing supplies | Household upkeep | -- | -- | $40 |
| Laundry | Household upkeep | -- | $15 | -- |
| Fabrics | Household upkeep | -- | -- | $100 |
| Around the house | Household upkeep | -- | -- | $50 |
| Cell phone plan | Subscriptions | -- | $50 | -- |
| Books | Hobbies | -- | -- | $400 |
| Art supplies | Hobbies | -- | -- | $500 |
| Piano scores | Hobbies | -- | -- | $100 |
| Vacation | Miscellaneous | -- | -- | $6000 |

TBD

## Projecting the expense charts into the future

For good reason, everything we've discussed so far has been from the perspective of and measured in 2025 dollars. It turns out that rigorously developing a model for projecting into the future is tricky. We'll get there in due time, but for now we will stick to a "cross-sectional analysis", whereby we only examine the current year.

Later on, we'll construct a full [time series][panels] of longitudinal data across 10 million lifetimes, and [analyze][mcmc] our performance. Finally, we'll tweak some numbers and see how it changes the outcomes. Hopefully this satisfies the fidgety.

[penalties]: https://www.irs.gov/retirement-plans/plan-participant-employee/retirement-topics-exceptions-to-tax-on-early-distributions
[hyperparameters]: https://en.wikipedia.org/wiki/Hyperparameter_optimization
[bachelors]: https://www.washingtonpost.com/lifestyle/2023/08/24/bachelor-married-93-potenzano-elkind/
[panels]: https://en.wikipedia.org/wiki/Panel_data
[mcmc]: https://www.bogleheads.org/forum/viewtopic.php?p=6091112#p6091112
