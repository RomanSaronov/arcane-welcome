$("#loginModalLabel .modal-content").html('<%= j render "devise/sessions/new" %>');
$("#loginModalLabel").modal();