---
layout: post
title:  "Hooking in to Devise controller actions"
date:  2023-10-01 12:27
description: 'A small intro to Devise action hooks.'
categories: rails
published: true
---

<span class="note">Editor's note: this article originally appeared on my [dev.to blog](https://dev.to/crespire/hooking-in-to-devise-controller-actions-3pk2).</span>

Devise is a fantastic authentication gem in the Rails ecosystem that I'm learning more about every day!

I wanted to share how I was able to solve a problem effectively after reading some Devise source code, as it might come in handy for others.

## The problem
I was working on a project using the Devise addition `invitable` and I needed a way to update a user's profile after they accepted an invite so I could set the slug based on their name. When the user invite is created, we use a generic value as a filler for the name.

I had originally used an ActiveRecord callback, but this felt clunky. Not only was it difficult to understand what it was doing, the side effect of the callback happened on the `Profile` model! That would be hard to debug if it was your first time working on the app and something was going wrong with the Profile's slug generation.

I began searching for ways to do what I wanted without callbacks and I decided to take a look at the Devise controllers source code.

## The solve
It turns out, Devise anticipates that you might want to access a resource while it's doing its thing, and so almost every Devise controller action has a line like this:
```ruby
yield resource if block_given?
```

This is fantastic! Because we often inherit from the base Devise controllers, what this line does is let you access the resource under operation if you pass in a block:

```ruby
# sample controller
class Users::RegistrationsController < Devise::RegistrationsController
  def update
    super { |resource| ... }
  end
end
```

This was a game changer! I now had a great way to update the profile's slug with the user's provided name:

```ruby
# app/controllers/users/registrations_controller.rb
def update
  super { |user| user.profile.update(slug: user.full_name.parameterize) }
end
```

Just like that, I was able to get rid of an ActiveRecord callback! So, if you ever need to access the resource to do something inside a Devise controller, this is your ticket.
