// app/javascript/application.js
import { Turbo } from "@hotwired/turbo-rails";
import "controllers";
import "bootstrap";
import "jquery";
import "outer";

// Ensure jQuery is available globally
import * as jQuery from "jquery";
window.$ = window.jQuery = jQuery;

Turbo.start();
