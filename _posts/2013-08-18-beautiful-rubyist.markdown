---
layout: post
body_class: post
title: Beautiful Rubyist
---

*This is a rough transcript (aka not a blog post) of “Beautiful Rubyist” — a talk I gave this year during [eurucamp](http://eurucamp.org). I’ve added some of the slides where it made sense, please find the whole set at [Speakerdeck](https://speakerdeck.com/polarblau/beautiful-rubyist).*

{% post_image slides.001.jpg | Rami quote %} 

Most of us work on the web, on apps or sites, most of which will have user interfaces. The way we build these interfaces matters. It affects peoples lives every day.
I would like to find a good, but even more important, an “interesting” way to make visual design more accessible to Rubyists.This is a process and I don’t claim to have the right answer to do this, but maybe you pick something up that you can use or that tickles your interest.

But first, let me tell you a bit about where I’m coming from.I grew up as the oldest of four children. Artistic expression was strongly encouraged by my immediate environment and I was shown the value of arts and crafts early on.Through-out my entire school time I kept drawing and doodle-ing, but the written word as a form of expression became increasingly important to me. However, I never felt fully proficient in either field (and I don’t do until today). 

At some point I discovered “journalism”, if you can call it that. Around that time that it became clear to me that it was not so much the urge to publish news but rather to find a good and appealing way to present them. And although I probably didn‘t realize that back then, it was the possibility to manipulate the appearance of information that gave me the most pleasure: to find ways on how to present often complex circumstances in a pleasing and understandable way.And I guess in many ways this is what I still do today.

I went on to study Graphic Design primarily out of a strong desire to learn all it‘s intrinsic technical details (—don’t visit an University for Arts and Design if that’s what your after, btw.), but discovered soon that print design didn’t satisfy my passion for ‘problem–solving’ fully. It always felt “flat”.Interaction design through the tools I already knew felt static, so I went on to teach myself Flash and — although I had proclaimed loudly that I’d never want to nor would have to learn how to code — soon ActionScript. After that came design for the web with it’s countless technical requirements you’re all well aware of, including the inevitable drama known as PHP.Today I’m speaking at a Ruby conference. In preparation for this talk, while trying to justify *why I should be the one* to speak on this subject, I came to realize that all my (professional) life I have been more interested in the channel than the message, the “how” more than the ”what”. This approach led me to try to constantly expand my field of interest in the search for a better suitable tool to get the job at hand done. And while I certainly don’t consider myself a master in any distinct discipline as of now, I’m actually pretty fine with that. I’m a slow but avid learner and I believe that by constantly digging I had the chance to gain a perspective for myself which would have remained hidden would I have become a pure-bred Graphic Designer.

Why am I telling you this? — The “internet industry” doesn’t really encourage specialization per se. A wide field of interests makes it laborious to gain depth in any of the included sub fields which sometimes makes it hard to stay on top of things. Clearly, one has to continuously learn a lot more. So it occurred to me that it might be possible to take shortcuts and to transfer knowledge between disciplines through shared underlying ideas. One of these ideas in my mind is the concept of communication. Code as well as most sub disciplines of visual design try to communicate ideas. So let’s start with language.

## Language

In order to get a clearer idea of what I'm after, let’s take a look at language in general. 

{% post_image slides.007.jpg | Teaching materials %} 

We consider language to be system for communication using arbitrary signals like sounds, gestures, or symbols. Language systems usually also include rules for the combination of their components, e.g. words.While there’s certainly a lot more to be said about language in general, I’d like to take a peek at a few things that I found personally interesting in the wider context.

### Contextual learning

Contextual learning in it’s original meaning presents the idea that learning happens when a student can construct meaning from a subject based on their own experiences.I’d like to extend the definition a bit further however and consider as well the context under which the actual learning takes place as enhancing factor.
I’ve been living as foreigner in Finland for soon eight years and partly thanks to the Finnish willingness to speak English my language skills have remained embarrassingly poor. However, I’m able to follow conversations more or less okay, also due to what I’ve learned in context of other’s conversations. While it might be disputable, it appears to me, that — even though I’m far from the accurate understanding of the language an comprehensive set of language courses might have given me — I’ve been allowed to gain insights into aspects of the language a more conventional education might have not given me.

## Design

### Semantic change

And one more excursion. Linguistics knows of a phenomena called “semantic change”, the “evolution of word usage” over time. And while there’s naturally more to it, the basic idea is simple — at some point in the past a word meant something else than it means now.

#### “Backlog”

“A backlog was the huge log placed in the back of the fire that would smolder for days” became “An accumulation of something, esp. uncompleted work or matters that need to be dealt with”.
And this is something that has always fascinated me. It’s a truly human aspect of language and while it’s a testimony to our ability to adapt, it shows one of the biggest issues with human language as well — it’s context-dependency. 

#### “Design”

The understanding of what the term “Design” means is very much depending on the context as well. While it — in it’s dictionary–definition “to form or conceive in the mind; to contrive; to plan” — very much describes the act of programming and we’re in fact talking about e.g. API design it’s unlikely that a programmer would define herself as “Designer”. It’s our common definition of a designer that makes him a person who works on the visual level.To close the loop: We recognize that Visual Design and Programming are — per definition — related disciplines but to avoid confusion we’ll stick with a subset. Since most of us are working on the web, for the time being we’ll use the term “design” to describe the design of graphical user interfaces.

## Design & Language

The idea of a visual language refers to communication through visual symbols while a human language spoken or written uses verbal symbols — words — to express meaning. And as you can see by this definition already, visual and human language are strongly connected, sharing a lot of the same metaphoric. 

### Programming

#### Formal language

As you might well know, a programming language is what’s called a formal language, a concept known to Mathematics, computer science and linguistics alike. A set of strings and symbols constrained by rules specific to the language.

## Design vs. Code

Traditionally we experience a lot of tension between design and implementation and I imagine Justine might talk about that more. Personally, I started out on one end of the spectrum and have found myself lately repeatedly on the other, which made for a funny paradigm shift, once I realized that the same type of people I used confide into are now the ones I secretly curse (sometimes).

{% post_image slides.017.jpg | Robin Mathew quote %} 

Many issues seem to be caused by communication or the lack thereof. We don’t realize that our partners on the other side are living in a different universe and most likely have been for a long time. Terms used here might mean something very different over there and others might just not exist.

{% post_image slides.018.jpg | Jeffrey Zeldman quote %} 

Through the increase in requirements on the classic “web designer”, many are thankfully learning to code. Yet very few programmers have been found to dabble on the visual side. Why? Developers, programmers consider themselves incapable to deal with visual things. We love our command line interfaces.

## Code vs. Design

Yet I’ve noticed that many programmers love to play around with interfaces if nobody’s looking. And why not — it’s the first thing the user will get in contact with, it’s the Star Gate. It's real, exciting.But if you (as a designer) catch a programmer do work on a graphical user interface it’s common to hear excuses:

{% post_image slides.020.jpg | Quote %} 
{% post_image slides.021.jpg | Quote %} 
{% post_image slides.022.jpg | Quote %} 
{% post_image slides.023.jpg | Quote %} 

The common understanding seems to be that being able to design a useful and possibly appealing interface is a magical gift, given only to few chosen ones and definitely nothing that could ever be learned. 

{% post_image slides.024.jpg | Stephen King quote %} 

I will venture a theory: talent (in the arts and design) is not much more than intuition and can be trained just like the ability to think logically. Everything else is just hard work and the right tools.The truth is, by choosing Ruby a programmer has already proven that she is perceptive to visual aesthetics. We don’t select Ruby for it’s concurrency support or because Rails scales so well — primarily we use Ruby because it feels good, easy, human.I hope that this opens a door, but I’ll go one step further and claim: although our languages differ, we share the fundamental concepts of language and communications.

## Principles of Design

### Elements of design

{% post_image slides.027.jpg | Excluded elements of Design %} 

Design elements describe things like color, shape, texture, space etc.. While these are certainly important to understand I feel that they are for one more easily to learn in context and due to their explicit nature less suitable for this talk.

So as we go on, I’d like to rather focus on a few selected “Design principles”.

{% post_image slides.029.jpg | Principles of Design %}

### Simplicity vs. ornamentation 

{% post_image slides.031.jpg | Edward Tuft quote %}

{% post_image slides.032.jpg | Edward Tuft quote %}

If we talk about simplicity what we actually mean is “freedom of complexity and intricacy” — a non–fragmented, unified whole which is capable to communicate a message clearly and directly.{% post_image slides.033.jpg | Apple touchpad %}
How do we move from complexity to simplicity? — In order to make things easier and faster to understand we have to remove what’s obvious and add what’s meaningful.```cucumber
Feature: Recover password
  In order to …
```

We have to go and try to find out what’s the core identity of our object at hand and understand what the object truly is or what it wants to be. The technique of the “5 whys”, or “popping the why stack” as Luke Barret called it, is a great way to just that. The first time I heard about it was when Cucumber started to become more successful. And generally, the way we write features, is a good way to — Try to find out what it is that you’re doing and why.And once we know what’s at the core of our object, we step back and start to make changes and remove the unnecessary in order to make every part consistent with this very core.— And while this might sound theoretical it’s really not. Find a piece of interface that causes people to leave your app and apply.     string.empty?

If we succeed, the result will be easier to use, will less need for support and usually it will automatically become more aesthetically pleasing. 

    list << member

Ruby’s expression is very clear, often even on a symbolic level. Just the way the code looks often communicates what it does. 

    a, b = b, aAnd while we might not really always notice it — I’d attribute a lot of the “ease of use” of Ruby to this factor.

{% post_image slides.038.jpg | Matz quote %}
    drink! unless glass.empty?

We relate the concept of simplicity to truth — you all know Occam’s razor. We relate it to the labor required by someone to understand something.We also link simplicity with focus, the ability identify what’s most important.

{% post_image slides.040.jpg | Ara T. Howard quote %}
    class User      has_many :friends    end

Law 9 of John Maeda’s “Laws of simplicty” — “Failure” states: “Some things can never be made simple.” — And while I’m sure that’s true, we don’t have to pass the complexity on to whoever has to work with our APIs. Ruby allows us to define very easily a wrapper of simplicity around more complex circumstances.

{% post_image slides.042.jpg | Johannes Kepler quote %}

{% post_image slides.043.jpg | google.com %}

Some of the most successful interfaces are also the most simplest ones. Ornamentation is really only used to support a brand or an identity.

{% post_image slides.044.jpg | Password confirmation %}

Engineers have a tendency to simply map the technical requirements to an interface. But this might not always reflect the core, the answer to the last “why”.

{% post_image slides.045.jpg | Password confirmation, better %}

Often a better, simpler solution can be found. 

### Similarity

#### Gestalt theory

Psychology knows the term “Gestalt” which means basically "unified whole" and it describes some theories in regards to visual perception, namely how people tend to organize visual elements into groups.The Gestalt theory is based on what items look like not what they are like and this single–dimensionality destines it for our purpose.  

{% post_image slides.048.jpg | Gestalt theory principles %}

Gestalt theory defines a whole set of techniques used to identify a set of elements as group. Grouping is a universal technique used to reduce complexity. 

{% post_image slides.049.jpg | Example for similarity %}

One of these techniques is Similarity. Similarity occurs when objects look similar to one another and people will often perceive them as a group or pattern.The human brain tends to simplify a complex visual pattern through grouping. Visual designers and artists use a various concepts to aid the association of separate elements as group, one of these concepts is called ‘similarity’. Similarity is only concerned with ‘what items look like’ not with what they actually are and hence allows it to express unity and and variety simultaneously.Btw.: We can of course use similarity also in reverse. An object can be emphasised by making it dissimilar to the others.The eagle and the sun rays create unity, because of the triangular shapes at the bottom of the symbol.

{% post_image slides.050.jpg | Example for similarity %}

We perceive the rows of filled circles as horizontal lines since they share a property although all circles are in equal distance to each other.

{% post_image slides.051.jpg | Example for similarity %}

The large circles appear to belong together due to their similarity in size.

    x = 42

In Ruby there’s we don’t define the type of a variable and we can change type dynamically.

    duck.respond_to?(:quack)

The concept Duck typing describes that an object‘s methods and properties determine the valid semantics, rather than its inheritance from a particular class or implementation of a specific interface.When writing Ruby, we rely less on the type (or class) of an object and more on its capabilities. Hence, Duck Typing means an object type is defined by what it can do, not by what it is. Duck Typing refers to the tendency of Ruby to be less concerned with the class of an object and more concerned with what methods can be called on it and what operations can be performed on it.One could argue, that duck typing reduces complexity and makes our code more approachable and readable.

{% post_image slides.054.jpg | Example for the use of similarity on the web %}

A simple example are links. In order to be able to identify them quickly we usually treat them in a way that has them appear similar, at least in a given context.

### Contrast

Contrast describes the state of something being very different from another closely associated object or set of objects, usually via on primary property.

{% post_image slides.056.jpg | Apple iPod ad %}

In visual design properties can include color, size, type, etc..

{% post_image slides.057.jpg | Windows 8 %}

As most other design principles listed here, contrast helps to organize information visually and to pull focus to certain areas. And it usually aids readability — I remember when Dan Benjamin wouldn’t mention a certain project in his Ruby show if the contrast of it’s website was too low or sported bright text on dark background.

    class Person      def eat      end      private      def digest      end    end

Contrast is generally something we try to avoid when writing code. In fact, many guidelines tell contributors to try and write code as if a single person would have written it.We do understand contrast and it’s effects because we’re often trying to reach harmony. One of the cases where we do use contrast purposefully is access control. By defining public and private methods on an object, we’re making a clear distinction on what’s important (towards the “outside”) and what’s not. We use the property of access to generate contrast and finally simplify. We place focus on what we define as API.

{% post_image slides.059.jpg | Mac Pro web site %}

### Hierarchy

A hierarchy defines if an element is “above”, “below” or “on the same level” as another element in some regard. 

{% post_image slides.061.jpg | Hierarchy example %}

Usually we want to define if an element is important and should be recognized earlier or later than the other.Hierarchy introduces structure which again helps to make complex circumstances more tangible.

    <h1></h1>    <h2></h2>    <h3></h3>    <h4></h4>    <h5></h5>    <h6></h6>

When defining a hierarchy through — in context — semantic identifiers we give meaning to a previously uniform blob.

{% post_image slides.063.jpg | Hierarchy example %}

In visual design we can use principles like contrast to define a visual hierarchy. Elements with the highest contrast will likely be identified first. The same goes for size, typography or color as well as the principles from the Gestalt theory like proximity.“A good design contains elements that lead the reader through each element in order of its significance. The type and images should be expressed starting from most important to the least.“

    class Giraffe < Animal    end

The idea of hierarchy runs through Ruby’s backbone. Everything is an object. All objects are instances of a class and classes inherit from other classes. However in comparison to visual hierarchy, Ruby’s hierarchy runs backwards. The child element, not the root is the most potent hence most important and attracts the focus. Nonetheless — Object Oriented Programming is centered around hierarchy, using tools in context like extends, include, super, modules etc. to create structure.{% post_image slides.065.jpg | Exercise example %}In order to improve a project you’re working on, go and rank the 4 or 5 most important elements and see if the result meets the problem you‘re trying to solve.

## Summary

If you recall the list of design principles I had shown earlier, you’ll see that this is a mere excerpt. But I also hope you can see that our two worlds communicate through very similar means and visual design first of all follows strict and — most importantly — learnable rules and secondly that many of these rules and ways to communicate are used on the other side.

{% post_image slides.067.jpg | Summary %}

***

## Images

* [[1] Can These Cute Flashcards Make Learning Chinese a Snap?](http://www.wired.com/design/2013/08/chineasy-teaches-chinese-language-visually/#slideid-192771)
* [[2] The Gestalt Principles](http://graphicdesign.spokanefalls.edu/tutorials/process/gestaltprinciples/gestaltprinc.htm#similarity)
