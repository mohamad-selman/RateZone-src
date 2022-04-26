$(document).ready(function() {

    $('#addP-to-queue').click(function(event) {
        alert('You are here')
        event.preventDefault();
        var prof_id = $(this).val();
        alert('ID is ' + prof_id);
        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/add_to_queue/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'prof_id': prof_id,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
                alert(res);
            },
            error: function(res, status) {
                alert('Error!' + res + status);
            }
        })
    })
})