function like(rev_id) {
        if ( (document.querySelector('[name=csrfmiddlewaretoken]') ) == null) {
                Swal.fire(  'You need to be logged in to like reviews',  '', 'error')
                window.location.replace("https://ratezone.io/login");

        }

        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
//        alert('Review ID is ' + rev_id)
        $.ajax({
            method: "POST",
            url: '/like/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'rev_id': rev_id,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
//                alert('Response is: ' + res['likes'] + ' and ' + res['dislikes'])
//                alert('Type of response is: ' + typeof(res))
                var likes = res['likes']
                var dislikes = res['dislikes']

                if (likes !== undefined) {
//                    alert('Review id is: ' + rev_id)
//                    alert('Number of likes sent back is ' +  parseInt(likes));
                    var like = document.getElementById('like'+rev_id);
                    like.style.color = 'blue';
                    var button = document.getElementById('upvotes'+rev_id);
                    button.innerHTML = parseInt(likes);
                    var dis = document.getElementById('downvotes'+rev_id);
                    dis.innerHTML = parseInt(dislikes);
                } else {
                    alert(res);
                }

            },
            error: function(res, status) {
                Swal.fire(  'Cannot like this review',  '', 'error')
            }
        })
}

function dislike(rev_id) {
        if ( (document.querySelector('[name=csrfmiddlewaretoken]') ) == null) {
                Swal.fire(  'You need to be logged in to like reviews',  '', 'error')
                window.location.replace("https://ratezone.io/login");

        }

        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/dislike/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'rev_id': rev_id,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
//                alert('Response is: ' + res['likes'] + ' and ' + res['dislikes'])
//                alert('Type of response is: ' + typeof(res))
                var likes = res['likes']
                var dislikes = res['dislikes']
                if (dislikes !== undefined) {
//                    alert('Number of dislikes sent back is ' + dislikes);
                    var dislike = document.getElementById('dislike'+rev_id);
                    dislike.style.color = 'red';
                    var button = document.getElementById('upvotes'+rev_id);
                    button.innerHTML = likes;
                    var dis = document.getElementById('downvotes'+rev_id);
                    dis.innerHTML = dislikes;
                } else {
                    alert(res);
                }
            },
            error: function(res, status) {
                Swal.fire(  'Cannot dislike this review',  '', 'error')
            }
        })
}