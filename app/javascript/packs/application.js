// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "stylesheets/application";


Rails.start()
Turbolinks.start()
ActiveStorage.start()

// $("th").click(function(){
//     $("td.selected").removeClass("selected");
//     $(this).addClass("selected");
// });
$(".delete-button").click(function() {
    var id = $(this).attr("id").split("_")[1]
      $(`#overlay_${id}`).show();
        });

