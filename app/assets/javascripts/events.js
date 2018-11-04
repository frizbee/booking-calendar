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

      $("#submit_btn").on('click', function() {
        let valid = self.validate();
        if(valid) {
          console.log('valid');
          let form = document.querySelector('#add_event_form');
          Rails.fire(form, 'submit');
        }else{
          $(".error-text").show();
        }
      });
    },

    getModal: function(date) {
      $("#eventModal").modal('toggle');
      $("#event_begin_date").val(date);
    },

    validate: function() {
      let valid = true;

      try {
        $("#add_event_form .required").each(function() {
          let $group = $(this);
          $group.removeClass('error');
          let val = '';

          val = $group.find('input').val();
          console.log('valid', val);

          if( !val || val.length <= 0) {
            $group.addClass('error');
            valid = false;
          }
        });
      } catch (e) {
        console.log("ERROR: ",e);
      }
      console.log('end valid', valid);
      return valid;
    }

  }

  Event.init();
});
