async function change_username() {
        var tmp = document.getElementById('uname');
        var uname = tmp.innerHTML;
        const { value: username } = await Swal.fire({
          title: 'Enter your new username',
          input: 'text',
          inputLabel: 'New username',
          inputValue: uname,
          showCancelButton: true,
          inputValidator: (value) => {
            if (!value) {
              return 'You need to write something!'
            }
          }
        })

        if (username) {
          Swal.fire(`Your new username is ${username}`)
        }

        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/change_username/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'uname': username,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
                // res will contain the new username
                var tmp = document.getElementById('uname');
                tmp.innerHTML = res;
            },
            error: function(res, status) {
                alert('Error!' + res + status);
            }
        })
}

async function change_fname() {
        var tmp = document.getElementById('Fname');
        var fname = tmp.innerHTML;
        const { value: firstname } = await Swal.fire({
          title: 'Enter your new first name',
          input: 'text',
          inputLabel: 'New first name',
          inputValue: fname,
          showCancelButton: true,
          inputValidator: (value) => {
            if (!value) {
              return 'You need to write something!'
            }
          }
        })

        if (firstname) {
          Swal.fire(`Your new username is ${firstname}`)
        }

        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/change_fname/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'fname': firstname,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
                // res will contain the new username
                var tmp = document.getElementById('Fname');
                tmp.innerHTML = res;
            },
            error: function(res, status) {
                alert('Error!' + res + status);
            }
        })
}


async function change_lname() {
        var tmp = document.getElementById('Lname');
        if (tmp === null) {

        }
        var lname = tmp.innerHTML;
        const { value: lastname } = await Swal.fire({
          title: 'Enter your new last name',
          input: 'text',
          inputLabel: 'New username',
          inputValue: lname,
          showCancelButton: true,
          inputValidator: (value) => {
            if (!value) {
              return 'You need to write something!'
            }
          }
        })

        if (lastname) {
          Swal.fire(`Your new username is ${lastname}`)
        }

        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/change_lname/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'lname': lastname,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
                // res will contain the new username
                var tmp = document.getElementById('Lname');
                tmp.innerHTML = res;
            },
            error: function(res, status) {
                alert('Error!' + res + status);
            }
        })
}


async function change_major() {
        var tmp = document.getElementById('major');
        var major = tmp.innerHTML;
        const { value: maj } = await Swal.fire({
          title: 'Enter your new major',
          input: 'text',
          inputLabel: 'New major',
          inputValue: major,
          showCancelButton: true,
          inputValidator: (value) => {
            if (!value) {
              return 'You need to write something!'
            }
          }
        })

        if (maj) {
          Swal.fire(`Your new username is ${maj}`)
        }

        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/change_major/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'major': maj,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
                // res will contain the new username
                var tmp = document.getElementById('major');
                tmp.innerHTML = res;
            },
            error: function(res, status) {
                alert('Error!' + res + status);
            }
        })
}


async function change_email() {
        var tmp = document.getElementById('email');
        var e = tmp.innerHTML;
        const { value: email } = await Swal.fire({
          title: 'Enter your new email',
          input: 'text',
          inputLabel: 'New email',
          inputValue: e,
          showCancelButton: true,
          inputValidator: (value) => {
            if (!value) {
              return 'You need to write something!'
            }
          }
        })

        if (email) {
          Swal.fire(`Your new username is ${email}`)
        }

        const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        $.ajax({
            method: "POST",
            url: '/change_email/',
            headers: {'X-CSRFToken': csrftoken},
            data: {
                'email': email,
                csrfmiddlewaretoken:$('input[name=csrfmiddlewaretoken]').val()
            },

            success: function(res, status) {
                // res will contain the new username
                var tmp = document.getElementById('email');
                tmp.innerHTML = res;
            },
            error: function(res, status) {
                alert('Error!' + res + status);
            }
        })
}
