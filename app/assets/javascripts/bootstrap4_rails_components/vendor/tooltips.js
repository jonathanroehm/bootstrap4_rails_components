var init_plugin;

init_plugin = function(parent) {
  // Don't add tooltips for mobile devices
  // TODO: This should probably be a configuration setting (mobile strictness, etc)
  if (!($("[data-toggle='tooltip']").length && !('ontouchstart' in window))) {
    return;
  }

  // When inintializing, dispose of the tooltips.
  $("[data-toggle='tooltip']").tooltip('dispose');

  // Find the parent so we can contextualize which tooltips are initialized
  // Ex: tooltips within an ajax modal
  parent.find("[data-toggle='tooltip']").tooltip();

  // Tooltip!
  return $('body').tooltip({
    selector: "[data-toggle~='tooltip']"
  });
};

$(function() {
  var body, doc, modal;

  doc = $(document);
  body = $('body');
  modal = $('.modal');

  // Turn on tooltips for the page when the DOM is ready
  init_plugin(body);

  // Initialize tooltips for the modal when it loads up
  doc.on('shown.bs.modal', function(e) {
    return init_plugin(modal);
  });

  // Account for ajax modals and re-initialize the tooltips for the modal.
  return doc.on('hidden.bs.modal ajax:success', function(e, xhr, settings) {
    return init_plugin(body);
  });
});