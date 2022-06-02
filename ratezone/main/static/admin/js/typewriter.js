var ratezone_app = document.getElementById('ratezone_app');
var ratezone_app_ar = document.getElementById('ratezone_app_ar');

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

var typewriter_ar = new Typewriter(ratezone_app_ar, {
    loop: true,
    delay: 70
});

typewriter_ar.typeString('في RateZone لدينا المئات من التقاييم')
    .pauseFor(2500)
    .deleteAll()
    .typeString('ابحث عما تريد من المدرسين، الاقسام العلميه، أو المواد')
    .pauseFor(1500)
    .start();

