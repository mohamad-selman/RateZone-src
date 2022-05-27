var ratezone_app = document.getElementById('ratezone_app');

var typewriter = new Typewriter(ratezone_app, {
    loop: true
});

typewriter.typeString('At RateZone, we have hundreds of professors, TAs, and courses ratings')
    .pauseFor(2500)
    .deleteAll()
    .start();
