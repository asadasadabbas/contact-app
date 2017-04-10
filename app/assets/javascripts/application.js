// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap
//= require js/flot/jquery.flot.js
//= require js/flot/jquery.flot.pie.js
//= require js/flot/jquery.flot.orderBars.js
//= require js/flot/jquery.flot.time.min.js
//= require js/flot/date.js
//= require js/flot/jquery.flot.spline.js
//= require js/flot/jquery.flot.stack.js
//= require js/flot/curvedLines.js
//= require js/flot/jquery.flot.resize.js
//= require js/parsley/parsley.min.js
//= require js/progressbar/bootstrap-progressbar.min.js
//= require js/icheck/icheck.min.js
//= require js/moment/moment.min.js
//= require js/datepicker/daterangepicker.js
//= require js/chartjs/chart.min.js
//= require js/pace/pace.min.js
//= require  js/nprogress.js

//BirthDay Picker Dialog
jQuery(document).ready(function($){
	  $('#birthday').daterangepicker({
	    singleDatePicker: true,
	    calender_style: "picker_4"
	  }, function(start, end, label) {
	    console.log(start.toISOString(), end.toISOString(), label);
	  });
	});

    jQuery(document).ready(function($) {
      $.listen('parsley:field:validate', function() {
        validateFront();
      });
      $('.form-horizontal .btn').on('click', function() {
        $('.form-horizontal').parsley().validate();
        validateFront();
      });
      var validateFront = function() {
        if (true === $('.form-horizontal').parsley().isValid()) {
          $('.bs-callout-info').removeClass('hidden');
          $('.bs-callout-warning').addClass('hidden');
        } else {
          $('.bs-callout-info').addClass('hidden');
          $('.bs-callout-warning').removeClass('hidden');
        }
      };
    });
    try {
      hljs.initHighlightingOnLoad();
    } catch (err) {}