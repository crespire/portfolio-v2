---
layout: default
title: Projects
---
<div class="grid">
  <% collections.projects.resources.each do |project| %>
    <a href="<%= project.relative_url %>"><%= project.data.title %></a>
  <% end %>
</div>
