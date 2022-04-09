$(document).ready(function() {

    $('#add-to-queue').click(function(event) {
        event.preventDefault();
        var tmp = $(this).val();
        alert(tmp);
        $.ajax({
            url: '/queue/' + tmp,
            success: function() {
                alert('Professor added to queue');
            },
            error: function() {
                alert('Error! Professor already exists in queue');
            }
        })
    })

})