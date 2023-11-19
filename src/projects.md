---
layout: default
title: Projects
---
<div class="grid">
  <% collections.projects.resources.filter { |p| !p.data.hidden }.each do |project| %>
    <%= render ProjectCard.new(project) %>
  <% end %>
</div>
