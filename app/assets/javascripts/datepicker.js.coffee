$(document).on "focus", "[data-behaviour~='datepicker']", (e) ->
- $(this).datepicker
- format: "yy-mm-dd"
- weekStart: 1
- autoclose: true