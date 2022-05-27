$(document).ready(function() {

    $('#addP-to-queue').click(function(event) {
        event.preventDefault();
        var prof_id = $(this).val();
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
                Swal.fire(  'Professor Added To Queue',  '', 'success')
            },
            error: function(res, status) {
                Swal.fire(  'Professor Already in Queue',  '', 'error')
            }
        })
    })
})
