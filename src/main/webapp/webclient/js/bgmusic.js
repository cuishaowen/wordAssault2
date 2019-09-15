function alreadyBuyCourses(courseId) {
    window.location.href = getContextPath() + '/webclient/dcxl.html?courseId=' + courseId;
}
setTimeout(function(){
    var x = document.getElementById("music");
    x.src='videos/bgmusic.mp3';
    x.volume = 0.2;
},500);