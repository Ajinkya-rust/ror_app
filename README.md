# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


 <%= link_to "Edit", edit_article_path(@article), class: "btn btn-outline-info" %>
          <%= link_to "Delete", article_path(@article), class: "btn btn-outline-danger", method: :delete, data: {confirm: "Are you sure?"} %>

           <%= link_to "Edit", edit_article_path(@article), class: "btn btn-outline-info" %>
          <%= link_to "Delete", article_path(@article), class: "btn btn-outline-danger", method: :delete, data: {confirm: "Are you sure?"} %>


          <div class="container">
  <div class="row justify-content-md-center">
    <div class="col-8 mt-4">
      <div class="card text-center shadow mb-5 bg-white rounded">
        <div class="card-header font-italic">
          by Ajinkya Deshmukh
        </div>
        <div class="card-body">
          <div class="card-text text-left"><%= simple_format(@article.description) %></div>
          <%= link_to "Edit", edit_article_path(@article), class: "btn btn-outline-info" %>
          <%= link_to "Delete", article_path(@article), class: "btn btn-outline-danger", method: :delete, data: {confirm: "Are you sure?"} %>
        </div>
        <div class="card-footer text-muted">
          <small>Created <%= time_ago_in_words(@article.created_at) %> ago, 
          edited <%= time_ago_in_words(@article.updated_at) %> ago</small>
        </div>
      </div>
    </div>
  </div>
</div>


<li class="nav-item dropdown">
	              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                Articles
	              </a>
	              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	                <%= link_to 'Create new Article', new_article_path, class: "dropdown-item" %>
	                <%= link_to 'View Article', articles_path, class: "dropdown-item" %>
	                <div class="dropdown-divider"></div>
	                <a class="dropdown-item" href="#">Something else here</a>
	              </div>
	            </li>