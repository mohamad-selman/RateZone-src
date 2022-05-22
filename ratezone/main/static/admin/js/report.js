function report(rev_id) {
        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        alert('Review ID is ' + rev_id)
        $.ajax({
            method: "POST",
            url: '/report/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'rev_id': rev_id,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },
            success: function(res, status) {
                alert(' Successfully reported => ' + res)
            },
            error: function(res, status) {
                alert(' Error!' + res + status);
            }
        })
}
