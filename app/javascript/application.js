// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
// app/javascript/packs/application.js

import $ from "jquery";
import "datatables.net";
// app/javascript/packs/application.js
import "datatables.net-dt/css/jquery.dataTables.css";

document.addEventListener("turbo:load", () => {
  var tableId = "#kt_table_widget_5_table";

  // Check if DataTable is already initialized
  if ($.fn.DataTable.isDataTable(tableId)) {
    // Destroy the existing DataTable
    $(tableId).DataTable().destroy();
  }

  // Initialize the DataTable
  $(tableId).DataTable({
    // Your DataTable options here
  });
});
