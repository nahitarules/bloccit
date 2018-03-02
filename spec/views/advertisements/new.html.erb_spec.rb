<h1>New Ad</h1>
<div class="row">
  <%= form_for @advertisement do |f| %>
    <div class="form-group">
      <%= f.label :title %>
      <%= f.text_field :title, class: 'form-control', placeholder:"Enter post title" %>
    </div>
    <div class="form-group">
      <%= f.label :copy %>
      <%= f.text_area :copy, rows: 8, class: 'form-control', placeholder: "Enter post body" %>
    </div>
    <div class="form-group">
      <%= f.label :price %>
      <%= f.number_field :price, class: 'form-control', placeholder: 99 %>
    </div>
    <div class="form-group">
      <%= f.submit "Save", class: 'btn btn-success' %>
    </div>
    <% end %>
  </div>
