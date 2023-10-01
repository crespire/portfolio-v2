---
layout: page
title: Projects
---

<% site.data.projects.each do |project| %>
  <% next if project.skip %>
  <span><%= project.name %></span>
  <p><%= project.blurb %></p>
  <ul>
    <% project.tech.each do |entry| %>
      <li><%= entry %></li>
    <% end %>
  </ul>
<% end %>
