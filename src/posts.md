---
layout: page
title: Posts
paginate:
  collection: posts
---

<div>
  <% paginator.resources.each do |post| %>
    <%= render PostCard.new(post) %>
  <% end %>

  <ul class="pagination">
    <% if paginator.previous_page %>
      <li>
        <a href="<%= paginator.previous_page_path %>">Previous Page</a>
      </li>
    <% end %>
    <li><strong><%= paginator.page %></strong></li>
    <% if paginator.next_page %>
    <li>
      <a href="<%= paginator.next_page_path %>">Next Page</a>
    </li>
    <% end %>
  </ul>
</div>

