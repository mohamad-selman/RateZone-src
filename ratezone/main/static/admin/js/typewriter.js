var ratezone_app = document.getElementById('ratezone_app');

var typewriter = new Typewriter(ratezone_app, {
    loop: true,
    delay: 70
});

typewriter.typeString('At RateZone, we have hundreds of professors, TAs, and courses ratings')
    .pauseFor(2500)
    .deleteAll()
    .typeString('Search for a professor, department or course and check out the reviews')
    .pauseFor(1500)
    .start();
