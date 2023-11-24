// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

$(document).ready(function() {
  $('#search').autocomplete({
    source: $('#search').data('autocomplete-source')
  });
});
