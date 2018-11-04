$(document).on('turbolinks:load', function() {
  var Event;
  Event = {
    init: function() {
      this.__construct();
    },

    __construct: function() {
      const self = this;
      $(document.body).on('click', '[data-date]', function() {
        self.getModal();
        console.log('click', $(this).attr("data-date"));
      });
    },

    getModal: function() {
      $("#eventModal").modal('toggle');
    }

  }

  Event.init();
});
