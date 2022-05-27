function removeFromQ(pid) {

        $.ajax({
            url: '/remove_from_queue/' + pid,
            success: function() {
                Swal.fire(  'Professor Removed From Queue',  '', 'success')
            },
            error: function(retval, status) {
                Swal.fire(  'Professor Could Not be Removed From Queue',  '', 'error')
            }
        })
    }