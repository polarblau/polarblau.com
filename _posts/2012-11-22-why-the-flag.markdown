---
layout: post
body_class: post
title: Why the flag?
---

A few days ago I “published” [whytheflag.com](http://www.whytheflag.com), a small app which shows you if a country’s flags are supposed to be raised for a given day and location and if so, why.

whytheflag.com has been on my desk in different forms for a few years and has served me well as example project in a few cases. The app is small enough for a two day training session, yet has a few more challenging aspects (such as date look-up across timezones) to it as well.

### Background

I’ve been living as an expat in Finland for some years now. In Finland — if you e.g. own or rent a row house — chances are that there’s a flag pole somewhere out front. And since the housing communities usually assign rotating “janitor” shifts amongst all members, chances also are, that you’ll actually have to hoist the Finnish flag every now and then yourself.

Without initially looking further into it, it always seemed to me that Finland must have a lot of these flag days, too. During some parts of the year the flags are raised — what feels like — every other day, yet very few people seem to know *why* the flags are up if you ask them.

The general idea of nationality, borders, currencies etc. seems for many reasons strange to me, but I do occasionally enjoy the ceremony that comes with national holidays and such.
Finland is a fairly nationalistic country by my standards, with strict traditions and a lot of ceremony and so it seemed initially odd to me that people would hoist their own country’s flag without knowing **why**, simply as an act of habit.

And while I had to realize in this context that tradition often is likely not much more than an old habit, ceremony without knowledge just doesn’t seem worth the effort. Besides, you can’t question what you don’t know or understand and ceremony is the kind of thing which should be questioned at all times in my opinion.

So, there you have it: If nothing else, whytheflag.com will serve me further as example app and platform for small scale experiments. It will also remind me (and maybe others) of my “flag–day—duties”. And maybe someone might even learn something they didn’t know yet about the country they live in — I sure did so far.

### The future

I’m planning on adding new features, fixing issues and generally using whytheflag.com for experiments in a very small an controlled environment. I'll also make the code open source soon as well):

* **More countries** — Currently there’s information on flag days for three countries available — Finland, Germany and Poland. Sweden will follow likely during the next week.
I’d like to add many more countries over the next months and preferably allow visitors to add, extend and correct information through a wiki–like system.
* **Alerts** — You can already get information on upcoming flag days via the [@whytheflag](http://twitter.com/whytheflag) Twitter account. However, it might be handy to receive an email for certain flag days one day ahead of time. E.g. in Finland you’re supposed to hoist the flag usually around eight in the morning which easily comes as a surprise on a weekend and I — for one — have missed it on quite a few occasions.
* **Experiments and bugs** — There’s a whole bunch of technical details I’d like to sort out. As an example — the date parser (Chronic) currently looks for US dates of the format YYYY-MM-DD while in Europe many countries are using a different format like DD-MM-YYYY. This is only partly relevant but leads to unexpected results.

***

On a closing note: *If you are interested in this subject and would like to help out by maintaining the flag days for a/your country I’d be eternally grateful. — Please get in touch!*
