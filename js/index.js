var modal;
// Get the modal
$('.login_page').on('click', function(event) {
    modal = document.getElementById("login");
    modal.style.display = "block";
});
$('.join_page').on('click', function(event) {
    modal = document.getElementById("join");
    modal.style.display = "block";
});
$('.login_page1').on('click', function(event) {
    modal.style.display = "none";
    modal = document.getElementById("login");
    modal.style.display = "block";
});
$('.join_page1').on('click', function(event) {
    modal.style.display = "none";
    modal = document.getElementById("join");
    modal.style.display = "block";
});

// Get the button that opens the modal
// var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
var span1 = document.getElementsByClassName("close")[1];

// When the user clicks on the button, open the modal
/* btn.onclick = function() {
    var modal = document.getElementById("login");
} */


// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}
span1.onclick = function() {
    modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}






function login() {
    window.location.href = 'index.html#login'
}