$(document).ready(function() {

    $('#removeFrom-queue').click(function(event) {
        event.preventDefault();
        alert('You are here');
        var tmp = $(this).val();
        alert(tmp);
        $.ajax({
            url: '/remove_from_queue/' + tmp,
            success: function() {
                alert('Professor removed from queue');
            },
            error: function(retval, status) {
                alert(retval + ' : ' + status);
            }
        })
    })

})