---
layout: post
title: blogs | finance | note 3
date: 2025-05-11
post_no: 1
post_name: An itemized chart of expenses
excerpt: How much money does one spend in a year? Let's break it down and itemize every cost by category. Then, we can look at how much we're spending on different slices of the proverbial pie. No judgement about whether it's too little or too much yet &ndash; just the objective out-flow.
---

## The outflow of cash

One of the first ways to optimize the pathway to retirement is to have a strong grasp of one's financial situation. It stands to reason that the natural origin for this is to analyze one's annual costs. Itemizing the outflow of cash from one's salary can help solidify one's upheld standard of living and identify potential for optimization. If we itemize living costs both categorically (e.g. housing, food, hobbies) and temporally (e.g. weeks, months, years), a plethora of interesting metrics arise. This will enable us to determine safe operating points more smoothly.

## Conceptualizing a cost chart

To begin, we'll want to create space for something that visually resembles the following chart:

{:.mono-table}
| Item | Category | $/week | $/month | $/year |
| --- | --- | --- | --- | --- |
| $x_1$ | $\pi_1$ | $c_{w,1}$ | $c_{m,1}$ | $c_{y,1}$ |
| $x_2$ | $\pi_2$ | $c_{w,2}$ | $c_{m,2}$ | $c_{y,2}$ |
| $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ |
| $x_{n-1}$ | $\pi_{n-1}$ | $c_{w,n-1}$ | $c_{m,n-1}$ | $c_{y,n-1}$ |
| $x_n$ | $\pi_n$ | $c_{w,n}$ | $c_{m,n}$ | $c_{y,n}$ |

This can easily be accomplished in a spreadsheet tool of your choice (I'm partial to Google Sheets for ease of editing files across devices). In this case, I'll put it in a Python DataFrame. The reason will become apparent in a future post, but a code rendering of everything we do will enable the use of analytic tools when placed in the `data` section of a Python project.

After all, spreadsheets [are just sparse matrices][matrices].

### What do the different columns mean?

It can be easy to get a bit taken aback by the sudden infusion of mathematical notation with what seems like a routine exercise. Let's take some time to explain what each term means.

The **items** are the actual objects with costs; for example, they could be _rent_, _groceries_, _gas_, etc. The **categories** are the grouping mechanism to which each item belongs; for example, perhaps rent belongs to the _housing_ category while gas belongs to the _transportation_ category. It can be helpful to have each item categorized so that we can derive metrics such as annual transportation costs (a category-level metric).

The three **cost columns** exist to populate the actual dollar value of the expense associated with each item. Because some costs are weekly (e.g. groceries) while others are monthly (e.g. rent) and still others are annual (e.g. vacations), it is instructive to break costs down for all three time horizons. For now, we'll just fill in the column that's relevant for each item and ignore the other two columns; for example, for rent we can just fill in the **cost/month** column and leave the weekly and annual cost columns empty.

If you want to cut to the chase, [here's a link](#putting-it-all-together) to the chart we drafted.

## Constructing a simple cost chart

To start, let's not worry about the past or the future. It's [easier][presence] to understand our expenses through the lens of the present day; people tend to have hindsight bias about the past, and projecting into the future is a complex topic that we'll save for another future post. In other words, when constructing this cost chart, we'll think about everything as measured in 2025. 

Let's work through an example step by step. Individual expenses are highly variable across households; as a result, it can be helpful to first think about relevant categories that might apply more universally:

- housing
- food and groceries
- transportation
- Personal
- Household
- subscriptions and memberships
- hobbies
- miscellaneous costs

The ultimate source of truth for our expenses will likely come from our [credit card bills][bills]. I highly recommend looking at your YTD or 2024 credit card history and earnestly itemizing your incurred expenses. Below, I'll present my findings from my own iteration of this exercise. For each of the categories, I will provide a chart and some educational commentary.

### Food and groceries

Housing is a bit complicated, so let's start with something simpler. Broadly, there are really only two things at play here: **buying groceries** and **eating out**. Groceries include the items bought for meals as well as for hosting events sporadically. Similarly, eating out might include the bill at restaurants but also at bars (if that's [your scene][bars-declining]). Let's take a look:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Groceries | Food | $100 | -- | -- |
| Restaurants | Food | $50 | -- | -- |

I don't eat out often, usually around twice a week. As a result, I do spend a bit more on groceries. As you can see, we're rounding a bit here. Some estimated amounts are fine; we basically want to get an order of magnitude estimate of our costs, not spend hours [min-maxing][optimality] to the dollar over the average sticker price of our food.

I'm not married and I don't have kids, so this budget is for a single person. Of course, this may be different for others. For now, please just write down the dollar figure that accurately reports your household's spending on food per week. If you live in a more remote region (like rural Montana) where shopping is more of a monthly cadence due to extended driving distances, the sole difference is reporting the figure in the monthly cost column instead.

Now, you might be surprised to see a single person spending $\\$150$ per week on food. As we stated earlier, budgets are highly personal (hence _personal_ finance). Our goal is to set up the flexible framework, not pass judgement on decisions that suit an individual's lifestyle. Later, we'll start tinkering around by adjusting these numbers and seeing what happens to our retirement plan if we do; this will give us a strong intuition about how these [microstates][micro] can impact a macrostate.

### Transportation

We proceed. Generally, at least in the U.S., folks tend to have three to four expenses related to transportation: **fuel** (gas), **bus fares**, sometimes **train tickets** (in the Northeast), and optionally **tolls** (some states have mostly freeways). However, with the advent of hybrid and especially [electric vehicles][evs], it may very well be the case that the fuel incidence on one's budget is lower than in the past. Charging costs would ideally be included, too. It's difficult to categorize, as it could be drawing from a home power source in some cases (so should it be a housing cost?). For now, "fuel" will encompass <u>both</u> types of costs: gas and electric charging alike.

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Car rentals | Transportation | -- | -- | $125 |
| Fuel | Transportation | -- | -- | $35 |
| Tolls | Transportation | -- | -- | $20 |
| Bus fares | Transportation | -- | $25 | -- |
| MTA fares | Transportation | -- | $29 | -- |
| PATH fares | Transportation | $30 | -- | -- |

I live within proximity of New York City, so I don't have a car. Generally, I prefer to vacation outside of the U.S. rather than within; however, I do occasionally need to rent a car for various reasons. This might come up about once a year, and the associated tolls from that travel do as well. But since it's not a recurring cost, this has been relegated to the annual cost column above. For most other readers, the fuel cost of a car is likely weekly while the toll cost is monthly (e.g. EZ-PASS).

However, when living near New York City, bus fares and train tickets _are_ a more regular occurrence. On average, I estimate that I use the MTA about 10 times a month, and the PATH about 10 times a week for work. As a result, I've separated these out into two separate items above. A one-way trip on the MTA is $\\$2.90$, while a one-way trip on the PATH from Newport to the World Trade Center is $\\$3$ at the time of this writing. Similarly, a round-trip bus ticket from Port Authority to parts of New Jersey can cost around $\\$25$ (the actual figure is a [bit closer][bus] to $\\$28$). I visit the areas around my alma mater monthly.

One last point: if you _do_ own a car, you will almost certainly be paying monthly **car insurance**. Additionally, if the car was financed, you'll have monthly **loan payments**. As we can see, what we wrote is completely different from the description preceding the table. There is a strong degree of versatility available per category, but the key is to remain honest.

### Personal

As the name of the category suggests, the expenses therein exhibit a high degree of variegation. Most people probably spend some amount of money on **clothing** per year for sure (including outerwear such as jackets or shoes). Then, there are products used for **personal grooming** (such as deodorant, hair products, makeup, nails, body soap, shampoo and conditioner, etc.) which are likely monthly purchases. This leads to a relatively simple chart:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Clothing | Personal | -- | -- | $250 |
| Self-care | Personal | -- | $40 | -- |

Actually, I doubt I spend even $\\$250$ per year on clothing. I still wear shirts, pants, and shoes from 2022; my fall and winter coats are from 2013. Still, it's good to give an upper bound estimate sometimes. Things like watches, undershirts, gym clothes, socks, etc., all add up. I don't have an exact itemized bill on my credit provider's portal, but I can roughly estimate how much I'm spending based on the purchase amounts at Uniqlo and J. Crew.

As for self-care products... it's hard to say. I'm not the type to set up recurring purchases on Amazon, but instead just visit Costco as needed when things run out. Since the purchases are staggered, my best estimate for the monthly cost is around $\\$40$ between Old Spice deodorant, a new shaving blade, some shaving cream and aftershave, hand lotion, body wash, and shampoo (I don't buy conditioner, as I am bald). If you go to the salon or spa often, it's good to include that here too. And similarly for haircuts (I haven't included it; again, I am bald).

By the way, if you take **medicine** or buy multivitamins, it's worth including them here too. I try pretty hard to avoid any unnecessary medication, so this is empty for me for now. You'll also notice that I haven't included any dentist fees, doctor's visits, or emergency room fees. At the moment, I'm fortunte to be in good health and have nearly zero costs per year. However, I do still have to submit a co-pay for annual checkups and the like. This is handled via a combination of insurance and a health savings account (HSA). We'll discuss this in great detail later on, but in terms of out-of-pocket costs I don't pay anything for **healthcare**, as insurance from my employer covers the usual.

### Household

Unlike Personal, Household refers to the products that are not related to personal care. For example, some items might include **Cleaning** (such as Lysol, Swiffer, mops, brooms), **Washing** (hand soap, dish soap), **laundry** (Tide pods, dryer sheets, fabric softener, potentially quarters), and **fabrics** (hand towels, face towels, bedsheets need to all be replaced about once a year). It's important to include lightbulbs, garbage liners, and maybe water bottles under a broader **Homeliness** umbrella. And so another chart arrives:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Cleaning | Household | -- | $25 | -- |
| Washing | Household | -- | -- | $40 |
| Laundry | Household | -- | $15 | -- |
| Fabrics | Household | -- | -- | $100 |
| Homeliness | Household | -- | -- | $50 |

Wow, there are a lot of hidden costs to living! It's not just the sticker price on the apartment, condo, townhouse, or single-family home -- these maintenance costs really add up. One of the common ways to remain frugal is to cut back on the maintenance costs, but I'd personally advise against it. I'd rather live someplace with a cheaper month-to-month rent but still maintain a clean, fresh living environment.

Some folks instead elect to pay for a **cleaning service**. Usually I've seen these cost around $\\$125$ for a once-a-month visit. This is pretty expensive in my opinion, so I clean my place myself. It's possible that the cleaning service may bring some of their own Cleaning, but nonetheless you'd probably still maintain your own supplies for laundry, fabrics, etc.

### Subscriptions and memberships

Ah, yes. There's [no doubt][gen-z] that younger folks maintain a variety of digital memberships in their portfolio. The subscription economy can be quite expensive, and it's very important to track these costs. Amazon Prime, Netflix, Hulu, HBO, Disney+, AppleTV... the list goes on. **Subscriptions** are going to be an important part of costs. Similarly, **memberships** form the other half of these core (monthly) recurring expenses. For example, a Gym fees or a country club membership would also count. Here's my chart, using sticker prices:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Gym fees | Subscriptions | -- | $165 | -- |
| Cell phone | Subscriptions | -- | $50 | -- |
| Board games | Subscriptions | -- | -- | $150 |
| Discord Nitro | Subscriptions | -- | -- | $100 |
| Amazon Prime | Subscriptions | -- | -- | $139 |
| _The Economist_ | Subscriptions | -- | -- | $249 |

Actually, it turns out that this is all a lie: some subscriptions [charge sales tax][sales-tax], at least in New Jersey. The billing companies know which tax laws to apply based on where your credit card is registered. Here's an updated version of the chart with a 6.625% sales tax tacked on to reflect that revelation:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Gym fees | Subscriptions | -- | $179.91 | -- |
| Cellular | Subscriptions | -- | $50.00 | -- |
| Games | Subscriptions | -- | -- | $150.00 |
| Nitro | Subscriptions | -- | -- | $106.62 |
| Prime | Subscriptions | -- | -- | $148.21 |
| _Economist_ | Subscriptions | -- | -- | $265.50 |

I don't really watch any television, as most of my entertainment either comes from books, digital articles, YouTube, or board games. As a result, I don't have any subscriptions to any of the usual streaming services that are popular today. Some notable costs above include a $\\$180$ Gym fees, a Discord Nitro subscription, and a (very!) expensive subscription to _The Economist_, which probably makes up for the lack of the usual suspects -- and more.

The [gym][gym] I frequent costs $\\$225$ per month, and my insurance reimburses policyholders $\\$60$ per month if they attend 12 or more times in that month. This encourages folks to (presumably) remain healthy, which in the long-term would cost the insurance company less in emergency pay-outs. As for Nitro, I do spend a [lot of time][introverts] online and derive enjoyment from the expressiveness that a premium subscription to Discord proffers. Finally, _The Economist_ is, in my opinion, one of the only truly global news troves available today. I have yet to find a suitable replacement that is more friendly on the budget, so this is one of my few splurges as a relatively frugal person. I haven't managed to find a friend with whom to split the annual subscription cost in the company I keep, but I'm always on the hunt!

I also set an annual budget of $\\$150$ for board games. This usually corresponds to a combination of games I've played at friends' places and games I've found myself. Regardless, I try to not spend more than this per year, as it's easy and quick for these costs to pile up. And I certainly would never play a [gacha game][gacha].

There's no doubt that, should my annual costs be too extreme, this would be the place to draw from to save some money. There's easily well over $\\$500$ in annual costs that can be saved from subscriptions, both in the form of finding cheaper alternatives as well as cutting certain luxuries entirely. However, we haven't done any analysis on whether expenses are "within budget" just yet. For now, we're just laying out our costs objectively, remember.

### Hobbies

Hobbies can be another major source of expenses. There aren't really any broad classes of items, since people like different things. Here's how I spend discretionary income on my interests:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Books | Hobbies | -- | -- | $400 |
| Art supplies | Hobbies | -- | -- | $500 |
| Piano scores | Hobbies | -- | -- | $100 |
| Entertainment | Hobbies | -- | -- | $600 |

No doubt that many would call this kind of spending egregious. Personally, I think it can be helpful to remember that $\\$600$ per year is "only" $\\$50$ a month. It's very possible that others' spending habits look different. It's worth noting that the broad umbrella of **entertainment** includes things like visiting museums, attending live events, or even going to theme parks. With that broad of a definition, the figures seem a little less unreasonable -- at least in my opinion.

Some people like to take certain online classes. Maybe you sign up for a weekly $\\$75$ [Chinese lesson][language]. Or maybe you want to do yoga classes. Whatever it may be, these additional costs should be itemized as well. Actually, I found largely that the cost of 50 weeks' worth of language lessons would far outweigh any of the other costs listed above (and even the costs from the subscriptions section). As a result, I decided to cut that from my budget after some soul-searching.

Yes, I definitely spend more than the average consumer on books and art per year. These are both incredibly soothing activities for me. As of this writing, I have 9 different bags' worth of books from Barnes and Noble in my room, still packed (it's a 3-year backlog, as I have other projects in-flight right now). These expenses form an even larger set from which I can cut if needed. Later on, we'll calculate important metrics such as **percentage of gross income saved**, and we can decide what actions to take from there.

### Miscellaneous costs

There are various other costs that can arise. For example, perhaps you have to pay monthly [childcare][childcare] fees to a former spouse. Maybe you dislike filing taxes, so you pay an accountant $\\$400$ annually. There's the ever-increasing cost of daycare (some say as high as $\\$4000$ a month!). And, of course, there's vacations (both domestic and international). Some folks also participate in what I like to call _appliance creep_: they constantly get new tinker-toys (usually in the kitchen). With all that in mind, here's my miscellaneous expenses chart:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Appliances | Miscellaneous | -- | -- | $350 |
| Vacation | Miscellaneous | -- | -- | $4500 |

Yes, I am also one of those people that likes buying into the appliance trend. I haven't bought an [air fryer][air-fryer] yet, though... 

For vacations, I like to budget around $\\$4000$ to $\\$5000$. As I stated earlier, I do prefer to travel internationally. Later on, when I'm older and can't handle 16-hour flights to Asia, I'll probably stick to mostly domestic traveling via driving or buses or shorter domestic flights. There are [plenty of][national-parks] beautiful sights within the contiguous U.S. as well.

Again, please note that out-of-pocket costs for things like contact lenses are coming from a dedicated Health Savings Account (HSA). So yes, we will account for healthcare-related cash flow, but it's actually important to treat the money differently (because we draw from a pre-tax account). More on that later.

### Housing

Finally, we've reached the most complex of the costs. This is because housing can vary substantially depending on your setup. People live variously in apartments, condos, townhouses, single-family homes, duplexes, etc. Additionally, in some of those cases, the payments are likely financed, so there are some calculations in order. To complicate the matter further, maintenance may vary depending on the structure (e.g. townhome owners often don't have to shovel, as the township will take care of it... but it may show up as a fee or be reflected in the property tax). I recommend going through your landlord's or municipality's billing system and candidly reporting all costs related to your housing situation.

To give some ideas, almost everyone will have some sort of **monthly payment**, and additionally pay for **gas** (heating), **electricity** (power), **water** (washing), **trash** (services rendered), and even **sewer**. These utility bills add quite a bit to the monthly sticker price of any place. Additionally, depending on whether your dwelling has implemented [sub-metering][sub-meter] on the premises, your billing situation may differ.

If you are in a mortgage situation, you will probably have to additionally pay **property tax**, secure **homeowner's insurance**, and fork over **HoA fees**. Even renters often pay **renter's insurance**, although not all landlords require it. 

Finally, seeing as you're reading this on the **Internet**, you will probably have to pay for that too. Some cell phone providers actually do offer a bundle, so it's possible you can eke favorable terms for this expense. And so we get:

{:.mono-table}
| Item | Category | $/wk | $/mo | $/yr |
| --- | --- | --- | --- | --- |
| Rent | Housing | -- | $2900 | -- |
| Insurance | Housing | -- | -- | $200 |
| Electric | Housing | -- | $75 | -- |
| Water | Housing | -- | $15 | -- |
| Internet | Housing | -- | $70 | -- |

Most units around where I stay are fully [electrified][electrification], so there's no separate gas cost. Additionally, the sewer cost is merged with the water cost. Finally, in most high rises, trash is covered as part of the rental agreement with the landlord. Of course, it's possible that this results in higher rental fees on average. Regardless, that's the situation.

There's not much else to add here; these are just kind of the costs that exist. The biggest savings would come from driving down the rental price by moving to a cheaper place. However, not only is moving a tedious process (changing addresses, transporting furniture, etc.), but I would also caution readers against the temptation for [infinite descent][descent]. It may very well sound like a slippery slope; however, accepting slightly worse quality-of-life for $\\$200$ saved a month (when rent is $\\$3000$ already) may work for the first few optimizations, but soon you're living in a roach-infested shoebox 45 minutes away.

## Putting it all together

Finally, if we stitch together all of the mini-charts from above, we might arrive at a first-order cost chart like this:

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

Well, something about this chart feels incomplete! There are probably at least 4 reasonable questions to ask now:

- Why do we need to itemize individual costs instead of just grouping?
- What if my life situation evolves? My budget will inevitably change.
- How should we be accounting for one-time purchases?
- What should we do about all of the empty values?

Let's address each of them briefly.

### Why is itemization important?

The simple reason is that costs don't inflate uniformly. In other words, if rent goes up by 10%, say, it doesn't mean that you will suddenly spend 10% more on books next year. There is a variable shift and different expenses will be affected differently. Velocity of pricing is not uniform across the proverbial [consumption basket][basket-of-goods], so later when we start modeling inflation and projecting our expenses into the future, we will need to adjust each cost separately.

### What if my budget evolves?

Yes, it is unlikely that a static budget will capture an entire lifetime's behavior. I'm not foolish enough to believe that this budget -- which might be suitable for a 20-something -- would work for a married couple in their mid-40s with children. In fact, in the next post, we'll discuss exactly this: how to account for **lifestyle evolution**. We'll darn a "piecewise budget" where the endpoints are variable. That is: we'll identify the inflection points when the course of life changes, but will leave the exact ages unspecified, so that we can tweak them. This amounts to something like a [Bézier curve][curve] with multiple loci of control, and will accord a high degree of customization while still adhering to an optimizable framework.

### What about one-off expenses?

This is a bit tricky. Later, when we do a month-by-month simulation of our portfolio, we'll need to identify "entry points" at which we can insert these expenses. The exact timing could vary with market conditions as well, seeing as the typical large one-off expenses are usually down payments for financed loans (mortgages, car loans, education loans, etc.). For now, let's ignore these -- they're not part of **recurring cost analysis**, which is what the above chart constructs. However, we will definitely do our due diligence and subtract one-off payments from our net worth when the time is ripe.

### How do we fill in the missing entries?

In a forthcoming post, we will discuss how to backfill the missing entries using linear algebra. One of the main reasons I elected to code up the cost chart in a Python DataFrame was to secure this benefit. The advantage of this approach is that it generalizes very well to newly-added entries. Additionally, setting it up is simpler than it looks. We'll just need to define a matrix of appropriate conversion factors between weeks, months, and years.

With the above framework in place, we can start discussing how to analyze the costs. We'll do so in the next installment.

[matrices]: https://stackoverflow.com/a/12670285
[presence]: https://www.marketwatch.com/story/groceries-are-more-affordable-now-than-in-2019-so-why-are-people-still-so-mad-about-prices-74b5a6db
[bills]: https://www.nerdwallet.com/article/credit-cards/read-credit-card-statement
[bars-declining]: https://time.com/7203140/gen-z-drinking-less-alcohol/
[optimality]: https://en.wikipedia.org/wiki/Program_optimization#When_to_optimize
[micro]: https://en.wikipedia.org/wiki/Microstate_(statistical_mechanics)
[evs]: https://www.eia.gov/todayinenergy/detail.php?id=62924
[bus]: https://www.coachusa.com/bus-schedules/mercer-middlesex-somerset/fares
[gen-z]: https://www.nytimes.com/2024/04/20/business/media/streaming-subscription-jumping.html
[sales-tax]: https://stripe.com/resources/more/what-subscription-businesses-need-to-know-about-sales-tax#knowing-where-you-have-tax-obligations
[gym]: https://www.lifetime.life/
[introverts]: https://www.millennial-revolution.com/freedom/fire-is-full-of-introverts/
[gacha]: https://www.washingtonpost.com/video-games/2020/10/06/genshin-impact-gambling/
[language]: https://www.italki.com/en/teachers/chinese
[childcare]: https://actforearlyyears.org/media/new-national-us-poll-finds-almost-70-of-parents-struggle-to-pay-for-childcare/
[air-fryer]: https://www.theguardian.com/food/2022/feb/15/air-fryers-miraculous-kitchen-must-have-or-just-a-load-of-hot-air
[national-parks]: https://imgur.com/a/idea-cross-country-road-trip-dGDck
[sub-meter]: https://en.wikipedia.org/wiki/Utility_submeter
[electrification]: https://www.njspotlightnews.org/2023/05/new-jerseys-slow-road-to-electrification-of-buildings-gas-stoves-elections-regulations/
[descent]: https://en.wikipedia.org/wiki/Proof_by_infinite_descent
[basket-of-goods]: https://en.wikipedia.org/wiki/Market_basket
[curve]: https://en.wikipedia.org/wiki/B%C3%A9zier_curve
