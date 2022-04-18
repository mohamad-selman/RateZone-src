$(document).ready(function() {

    $('#addP-to-queue').click(function(event) {
        alert('You are here')
        event.preventDefault();
        var tmp = $(this).val();
        alert('ID is ' + tmp);
        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
//        const object = document.getElementById('#addP-to-queue')
        $.ajax({
//            object.setRequestHeader('X-CSRFToken', csrftoken);
            method: "POST",
            url: '/add_to_queue/' + tmp,
            headers: {'X-CSRFToken': csrftoken},
            data: {
                prof_id: tmp,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },
            dataType:"html",
            contentType: false,
            processData: false,
            success: function(data) {
                alert('Professor added to queue: status: ' + data);
            },
            error: function(data) {
                alert('Error! Professor already exists in queue' + data);
            }
        })
    })

})