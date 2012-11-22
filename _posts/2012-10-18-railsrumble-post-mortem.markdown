---
layout: post
body_class: post
title: RailsRumble Post-Mortem
---

***TL;DR** — [@villek](https://twitter.com/villek), [@piotrgega](https://twitter.com/piotrgega) and me have attended RailsRumble this year. It was awesome! Lessons have been learned. This article contains some of them.*

### Leave the reality at the door
The Rails community is big on “best practices“. And while there’s certainly not always a clear consensus over which is the very **best** practice for a given task, we usually agree on the party line: Write tests, keep you code DRY, refactor often etc..

It seems to me, though, that all these rules and recommendations need to be broken on some occasions, just to *get shit done*, and that competitions like Rails Rumble make for just such occasions.

#### Testing
TDD/BDD never comes easy to me. When the excitement of a new project and fresh Rails installation is still warm, writing tests, not even to mention setting up the test environment,  usually feels like ‘getting stuck in the mud’. But of course I know, that writing my tests first will pay of in the long(er) run and sooner or later make up for the initial loss of momentum.

Well, in a competition like Rails Rumble, there’s no such thing as *the long run*. After 48 hours everything is over. So, after realizing about 8 hours in, that working TDD–style would just not allow us to get the necessary features done in time, we dropped it.
Did it feel bad? Oh yes! I lost a good piece of confidence in our code. Confidence we would have needed badly once everybody started to get tired.
However, we got the features we needed to complete our app done. And in the scope of the competition, reducing test coverage feels like an acceptable sacrifice.

#### Take all the shortcuts!
There’s a few things I never make use of when it comes to Rails. One of them is the possibility to render Javascript on AJAX requests. It just doesn’t feel like a very maintainable approach to spread Javascript all over the views.
The alternative, however, usually requires me to write a lot more client side code and often leads to the inclusion of frameworks such as Backbone and client side templating.
While we had considered Backbone initially for our Rails Rumble application, we soon realized that essentially maintaining two apps (we wanted to keep our app functional, even without Javascript) would take simply too much time. Manipulating the DOM via Javascript in AJAX responses was just what we needed to get the job done quickly. Sold!

### Prioritize, all the time
I usually like Github tickets to keep track of smaller (and bigger) to-do items (you can call it a backlog if you must): Everybody on the team has access and can comment on each other’s ideas. However, in case of Rails Rumble, this method felt too slow.
Simply putting everything up on a white board next to us and assigning priorities (high, medium and low) seemed a lot faster and proved to be immensely helpful. (And practical reasons aside, striking items out gave a small motivational boost.)
Only requirement: Keep things updated at all times and don’t shy away from starting a new list every now and then after enough bugs have been sighted or smashed.

### Rails is awesome
Not much else to say. I couldn’t imagine doing the same amount of work in such a short time in any other environment and still loving every minute of it.

### Work with people you trust
I was lucky to be able to work with people I can fully trust: I knew that they would get any job done and that they would not let each other hang. We were all in it for the same reasons and complemented each other well. This setting gave confidence and made for a relaxed atmosphere. Hugs!

### Sleep
It is hard if not impossible to think that we could have completed the app without any sleep all. Even though we had a few hours of sleep in between, sleep deprivation made working really hard during the last night. Working in pairs became somewhat necessary in the end to spot potential problems in time. I can only imagine what even less sleep would have done to the quality of our work and our mood, but I’d imagine that we would have had a lot less fun.

### Otherwise noted:

* Drinking enough (water) will keep you going a lot longer.
* Finnish a few hours early, don’t change stuff in the very last minute.
* Prepare actual content for your app.
* Plan the creation of an explanatory screencast or blog post.

{% captioned_post_image The team %}
  {% post_image  romneys.jpg | The Romneys  %}
{% endcaptioned_post_image %}

Btw., here’s our [entry](http://railsrumble.com/entries/319-hotline) and
the [app](http://hotline.r12.railsrumble.com/). Until the next year.
