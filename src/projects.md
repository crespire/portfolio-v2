---
layout: default
title: Projects
---
<div class="grid">
  <% collections.projects.resources.each do |project| %>
    <%= render ProjectCard.new(project) %>
  <% end %>
</div>
