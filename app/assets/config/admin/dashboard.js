var hostUrl = "assets/";

import "assets/plugins/global/plugins.bundle.js";
import "assets/js/scripts.bundle.js";
import "assets/plugins/custom/datatables/datatables.bundle.js";
import "assets/js/custom/account/settings/signin-methods.js";
import "assets/js/custom/account/settings/profile-details.js";
import "assets/js/custom/account/settings/deactivate-account.js";
import "assets/js/custom/pages/user-profile/general.js";
import "assets/js/widgets.bundle.js";
import "assets/js/custom/apps/chat/chat.js";
import "assets/js/custom/utilities/modals/upgrade-plan.js";
import "assets/js/custom/utilities/modals/create-campaign.js";
import "assets/js/custom/utilities/modals/two-factor-authentication.js";
import "assets/js/custom/utilities/modals/users-search.js";

$(document).ready(function () {
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
var defaultThemeMode = "light";
var themeMode;
if (document.documentElement) {
  if (document.documentElement.hasAttribute("data-bs-theme-mode")) {
    themeMode = document.documentElement.getAttribute("data-bs-theme-mode");
  } else {
    if (localStorage.getItem("data-bs-theme") !== null) {
      themeMode = localStorage.getItem("data-bs-theme");
    } else {
      themeMode = defaultThemeMode;
    }
  }
  if (themeMode === "system") {
    themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches
      ? "dark"
      : "light";
  }
  document.documentElement.setAttribute("data-bs-theme", themeMode);
}
