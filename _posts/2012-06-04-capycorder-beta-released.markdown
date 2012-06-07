---
layout: post
body_class: post
title: Capycorder beta is out
---

Capycorder is an [extension](https://chrome.google.com/webstore/detail/niijdolnjmjdjakbanogihdlhcbhfkho) for Google Chrome. Once enabled, it first records unser interactions with forms and links across page loads, allows to define matchers by selecting elements or highlighting text and finally generates simple request specs. These code snippets are then copied into the clipboard for use in the actual specs.

### Motivation

I’ve build Capycorder for myself and for the use in the development of [Please Revise!](http://pleaserevise.com). PR! has an extensive Cucumber test suite for the fallback application, but not the Javascript–heavy client version. Cucumber just didn't feel like the right tool to test all the client interactions (and in addition I’m just not very happy with Cucumber in general). So I decided to cover the full application with a new set of [Capybara](https://github.com/jnicklas/capybara) tests.

Creating specs for an existing application is not all that much fun, but I wanted to have a good test coverage before moving onto new features and refactoring. Since PR! seemed to behave okay in development (and beta production), simply "recording" user interaction and automatically producing some of the needed specs or seemed like a logical thing to do.

### Usage

{% post_image button_off.png | Enable the extension | inline %} Enable the extension with the first click on the extension icon next to the browser bar. You are prompted to provide an optional name for the test — usually an expectation in the suggested `should do something` -format.

{% captioned_post_image  Enter a name for your test. %}
  {% post_image  02.png | Screenshot of step 1  %}
{% endcaptioned_post_image %}

{% post_image button_capture_actions.png | Capture actions | inline %} A
second click enables the action recorder. Every interaction with forms
and links will be recorder.

{% captioned_post_image  Interact with input elements to record actions. %}
  {% post_image  03.png | Screenshot of step 2  %}
{% endcaptioned_post_image %}

{% post_image button_capture_matchers.png | Capture matchers | inline %} Once all necessary actions have been recorder, click the extension icon again to enable the matchers recorder.
Clicking DOM elements and selecting text by highlighting it will record
expectations on what the current page should contain.

{% captioned_post_image Select elements or highlight text to record matchers. %}
  {% post_image  04.png | Screenshot of step 3  %}
{% endcaptioned_post_image %}

{% post_image button_generate.png | Generate specs | inline %} When
you're done, hit the extension icon once more to generate the specs,
to wrap recorded actions into form scopes and copy everything into
the clipboard.

The output looks something like this:

    it 'should log the user in' do
      visit('/login') do
      within('login') do
        fill_in('email', :with => 'user@example.com')
        fill_in('password', :with => 'secret')
        check('remember_me')
        click_button('submit')
      end
      page.should have_content('Account')
    end

### Technical background

Capycorder is built using [Coffeescript]( http://coffeescript.org) and a dash of HTML/CSS for the GUI. I’ve added a small build script written in Ruby (using [Thor](https://github.com/wycats/thor) and [Nokogiri](http://nokogiri.org)) which takes care of compiling, copying and packaging the extension files.

### A word about BDD

Some might feel that this helper and what it does goes against the "tests first" philosophy and may support bad habbits.

Test driven development is great in my opinion and should definitely be prefered over adding tests after the fact. But we all know, that realisticly sometimes testing just doesn't happen at all or that projects come with a few unit tests only.

I'm hoping that in this case, a small tool like Capycorder can lower the barrier and help to get some specs up and running a tad faster.

### Links

* [Capycorder at the Chrome webstore](https://chrome.google.com/webstore/detail/niijdolnjmjdjakbanogihdlhcbhfkho)
* [Capycorder source on Github](https://github.com/polarblau/capycorder/)
* [Capybara on Github](https://github.com/jnicklas/capybara)
* [Capybara docs on Rubydoc](http://rubydoc.info/github/jnicklas/capybara)
