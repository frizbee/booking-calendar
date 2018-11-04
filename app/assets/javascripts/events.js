$(document).on('turbolinks:load', function() {
  var Event;
  Event = {
    init: function() {
      this.__construct();
    },

    __construct: function() {
      const self = this;
      $(document.body).on('click', '[data-date]', function() {
        self.getModal($(this).attr("data-date"));
      });
    },

    getModal: function(date) {
      $("#eventModal").modal('toggle');
      $("#event_begin_date").val(date);
    }

  }

  Event.init();
});
