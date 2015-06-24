$(function() {
  $('#new_image').fileupload({
    dataType: "script",
    add: function(e, data) {
      data.context = $(tmpl("template-upload", data.files[0]));
      $('#new_image').append(data.context);
      data.submit();
    },
    progress: function(e, data) {
      if (data.context) {
        progress = parseInt(data.loaded / data.total * 100, 10);
        data.context.find('.bar').css('width', progress + '%');
      }
    }
  });
});