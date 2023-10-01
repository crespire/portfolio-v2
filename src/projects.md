---
layout: page
title: Projects
---
<% collections.projects.resources.each do |project| %>
  <a href="<%= project.relative_url %>"><%= project.data.title %></a>
<% end %>
