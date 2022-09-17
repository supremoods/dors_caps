$(document).ready(function() {
    $("#auth_reg").on("submit", function(e) {
        e.preventDefault();
        var form_data = new FormData(this);
        $.ajax({
            url: "client/controller/reg_controller.php",
            method: "POST",
            data: form_data,
            dataType: "JSON",
            processData: false,
            contentType: false,
            success: function(data) {
                console.log(data);
            },
            error: function(request, status, error) {
                console.log(request.responseText);
            }
        });
    });
});