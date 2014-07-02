$('#opener').click(function() {

    $('#target').html('sending..');

    $.ajax({
      url : '/topics.json',
      type : 'POST',
      contentType : "application/json",
      beforeSend : function(xhr) {
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
      },
      dataType : 'json',
      success : function(data) {
        $('#sign_up_topic_id').empty();
        
        $('#sign_up_topic_id')
          .append($("<option></option>")
          .attr("value", data.id)
          .text(data.description));
      },
      data : '{"topic": {"description": "' + $("#topic-description").val() +'"}}'
    });
  });