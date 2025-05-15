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

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
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
| Clothing | Personal | -- | -- | $250 |
| Self-care | Personal | -- | $40 | -- |
| Cleaning | Household | -- | $25 | -- |
| Washing | Household | -- | -- | $40 |
| Laundry | Household | -- | $15 | -- |
| Fabrics | Household | -- | -- | $100 |
| Homeliness | Household | -- | -- | $50 |
| Gym fees | Subscriptions | -- | $179.91 | -- |
| Cell phone | Subscriptions | -- | $50.00 | -- |
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

The next stage is moving on from renting an apartment towards proper home ownership. This could be a condo, a townhome, or even a single-family home. I've used an estimated mortgage cost, but this could very well vary. The idea is to have the items structured correctly, and later on we can tweak the exact numbers as needed.

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Mortgage | Housing | -- | $3600 | -- |
| HoA fees | Housing | -- | $200 | -- |
| Property tax | Housing | -- | $850 | -- |
| Insurance | Housing | -- | -- | $300 |
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
| Clothing | Personal | -- | -- | $250 |
| Self-care | Personal | -- | $40 | -- |
| Cleaning | Household | -- | $25 | -- |
| Washing | Household | -- | -- | $40 |
| Laundry | Household | -- | $15 | -- |
| Fabrics | Household | -- | -- | $100 |
| Homeliness | Household | -- | -- | $50 |
| Gym fees | Subscriptions | -- | $179.91 | -- |
| Cell phone | Subscriptions | -- | $50.00 | -- |
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

Some notable additions to this chart vis-a-vis the first one include the HoA fees, separation of utility fees, and an implied car purchase (with associated costs). These do all add up -- home ownership hemorrhages a lot of additional expenses, but does accord some benefits. For example, practicing an instrument or listening to music at odd hours of the day become more viable in a detached housing setup (such as a landed property). The above chart does assume a single-family home purchase. However, in the case of a condo in a major city, car ownership may not be necessary.

### Chart 3: Early retirement

As we stated in an earlier post, we're structured our costs around an assumption of retirement within the United States. For folks who have multiple citizenships or family around the world, it could be possible to retire abroad (in a lower cost-of-living region). This isn't the case for my personal situation, so I have assumed below a retirement within the lower 48. As much as I'd love to retire in Hawaii, it just doesn't make sense from a groceries or gasoline standpoint.

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| HoA fees | Housing | -- | $200 | -- |
| Property tax | Housing | -- | $850 | -- |
| Insurance | Housing | -- | -- | $300 |
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
| Bronze health plan | Personal | -- | $400 | -- |
| Clothing | Personal | -- | -- | $250 |
| Self-care | Personal | -- | $40 | -- |
| Cleaning | Household | -- | $25 | -- |
| Washing | Household | -- | -- | $40 |
| Laundry | Household | -- | $15 | -- |
| Fabrics | Household | -- | -- | $100 |
| Homeliness | Household | -- | -- | $50 |
| Gym fees | Subscriptions | -- | $179.91 | -- |
| Cell phone | Subscriptions | -- | $50.00 | -- |
| _The Economist_ | Subscriptions | -- | -- | $265.50 |
| Books | Hobbies | -- | -- | $400 |
| Art supplies | Hobbies | -- | -- | $500 |
| Piano scores | Hobbies | -- | -- | $100 |
| Entertainment | Hobbies | -- | -- | $600 |
| Appliances | Miscellaneous | -- | -- | $350 |
| Vacation | Miscellaneous | -- | -- | $8000 |

I will not retire before paying off the house purchase. This could involve some larger defrays towards the end of my working period, so that I can minimize the expenses in retirement. As Papa ERN [says][ern-mortgages]:

> mortgages and FIRE don't work well together

We'll discuss why in a future installment. For now, let's assume that we safely retire the year after the house is paid off. Note that this _substantially_ lowers the cost of living in retirement, as monthly payments no longer exist. Of course, there are still upkeep costs, but on the whole they comprise a smaller fraction of the total annual expenses.

There are no more PATH fares, as in retirement I'll no longer go into work. I'll assume that I still go into New York City for leisure at a similar frequency to before (about 5 times a month; I'm not very social). The other costs remain relatively static (hobbies, entertainment, etc.). I've upped the vacation expenses to about double its value -- with so much free time, I can probably travel a bit more (and potentially [Airbnb my house][airbnb] while doing so, although it gets complicated very fast).

Finally, take a note of the **Bronze health plan**. I'll assume that Obamacare subsidied and its ilk won't really exist by the time my retirement rolls around. Better to assume that one will have to purchase a private healthcare plan. In my 40s and 50s, I don't expect to get too sick, so a simpler and lower-premium plan should work. We'll get more into this later on, but I just want to put down a framework as quickly as possible. Remember: everything will be a tweakable knob!

### Chart 4: Late retirement

Finally, after age 60, we enter the late retirement period. The nature of costs is not too different at this point, but I did want to separate out this time period for other reasons (which we'll see in the opposite version of the expenses chart: the **income chart**).

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| HoA fees | Housing | -- | $200 | -- |
| Property tax | Housing | -- | $850 | -- |
| Insurance | Housing | -- | -- | $300 |
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
| Gold health plan | Personal | -- | $950 | -- |
| Qualified medical | Personal | -- | -- | $20000 |
| Clothing | Personal | -- | -- | $250 |
| Self-care | Personal | -- | $40 | -- |
| Cleaning | Household | -- | $25 | -- |
| Washing | Household | -- | -- | $40 |
| Laundry | Household | -- | $15 | -- |
| Fabrics | Household | -- | -- | $100 |
| Homeliness | Household | -- | -- | $50 |
| Cell phone | Subscriptions | -- | $50 | -- |
| Books | Hobbies | -- | -- | $400 |
| Art supplies | Hobbies | -- | -- | $500 |
| Piano scores | Hobbies | -- | -- | $100 |
| Vacation | Miscellaneous | -- | -- | $6000 |

Notably, we've kept everything more or less the same as the third expenses chart, but we've decreased the vacation allotment from its peak in our 40s. Additionally, we've removed some expenses around gym and entertainment. At a more advanced age, I expect to spend more time walking and less time running or lifting. That said, there are apparently [some benefits][old-lifter] of lifting weights even deep into old age, so maybe it's not such a good idea to stop.

Finally, we've also upgraded to the **Gold health plan** and added $\\$20000$ in qualified medical expenses per year. In my opinion, this is actually pretty unrealistic: anyone who is spending that much money per year on medicine likely won't live too long without substantial [lifestyle changes][chronic-conditions]. That said, we want to get a conservative lower bound via this kind of worst-case analysis. As a result, the real situation might well play out far better than predicted.

## Projecting the expense charts into the future

For good reason, everything we've discussed so far has been from the perspective of and measured in 2025 dollars. It turns out that rigorously developing a model for projecting into the future is tricky. We'll get there in due time, but for now we will stick to a "cross-sectional analysis", whereby we only examine the current year.

Later on, we'll construct a full [time series][panels] of longitudinal data across 10 million lifetimes, and [analyze][mcmc] our performance. Finally, we'll tweak some numbers and see how it changes the outcomes. Hopefully this satisfies the fidgety.

[penalties]: https://www.irs.gov/retirement-plans/plan-participant-employee/retirement-topics-exceptions-to-tax-on-early-distributions
[hyperparameters]: https://en.wikipedia.org/wiki/Hyperparameter_optimization
[bachelors]: https://www.washingtonpost.com/lifestyle/2023/08/24/bachelor-married-93-potenzano-elkind/
[ern-mortgages]: https://earlyretirementnow.com/2017/10/11/the-ultimate-guide-to-safe-withdrawal-rates-part-21-mortgage-in-retirement/
[airbnb]: https://www.bogleheads.org/forum/viewtopic.php?t=414701
[old-lifter]: https://www.youtube.com/watch?v=assAa1bXhqU
[chronic-conditions]: https://www.cdc.gov/pcd/issues/2024/23_0267.htm
[panels]: https://en.wikipedia.org/wiki/Panel_data
[mcmc]: https://www.bogleheads.org/forum/viewtopic.php?p=6091112#p6091112
