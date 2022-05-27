function delete_review(rev_id) {
        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/delete_review/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'rev_id': rev_id,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
                Swal.fire(  'Review successfully deleted',  '', 'success')
                location.reload();
            },
            error: function(res, status) {
                Swal.fire(  'Review could not be deleted',  '', 'error')
            }
        })
}