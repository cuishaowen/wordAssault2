setTimeout(function(){
    var x = document.getElementById("music");
    x.src='videos/bgmusic.mp3';
    x.volume = 0.02;
},500);

$('#music-B,#music-R').hover(function () {
    openAudio();
});

$('#music').mouseleave(function(){
    $('#music').removeAttr('controls');
});

function openAudio(){
    $('#music').addClass('nav-fixed').attr('controls','controls');
}

// 播放
// $('#music-B').on('click',function () {
//     var music = $('#music');
//     $('#music-B').hide();
//     $('#music-R').show();
//     music[0].pause();
// });
// // 暂停
// $('#music-R').on('click',function () {
//     var music = $('#music');
//     music.volume = 0.2;
//     $('#music-B').show();
//     $('#music-R').hide();
//     music[0].play();
// });
