var hostUrl = "assets/";
src = "assets/plugins/global/plugins.bundle.js";
src = "assets/js/scripts.bundle.js";
src = "assets/plugins/custom/datatables/datatables.bundle.js";
src = "assets/plugins/custom/vis-timeline/vis-timeline.bundle.js";
src = "assets/js/widgets.bundle.js";
src = "assets/js/custom/apps/chat/chat.js";
src = "assets/js/custom/utilities/modals/upgrade-plan.js";
src = "assets/js/custom/utilities/modals/users-search.js";
src = "assets/plugins/global/plugins.bundle.js";
src = "assets/js/scripts.bundle.js";
src = "assets/plugins/custom/datatables/datatables.bundle.js";
src = "assets/js/custom/account/settings/signin-methods.js";
src = "assets/js/custom/account/settings/profile-details.js";
src = "assets/js/custom/account/settings/deactivate-account.js";
src = "assets/js/custom/pages/user-profile/general.js";
src = "assets/js/widgets.bundle.js";
src = "assets/js/custom/apps/chat/chat.js";
src = "assets/js/custom/utilities/modals/upgrade-plan.js";
src = "assets/js/custom/utilities/modals/create-campaign.js";
src = "assets/js/custom/utilities/modals/two-factor-authentication.js";
src = "assets/js/custom/utilities/modals/users-search.js";

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
