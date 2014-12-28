// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= jquery.simplesidebar.min.js
//= jquery.infinitescroll.min.js
//= jquery.socialbutton-1.9.0.min.js
//= require turbolinks
//= require_tree .


$(function(){

var $content = $('#content');
// Masonryを適用する
$content.masonry({
	columnWidth: 10,
	itemSelector: '.post'
});

$('#content').infinitescroll({
    navSelector  : "div.navigation",
        // ナビゲーション要素を指定します。
    nextSelector : "div.navigation a",
        // ナビゲーションの「次へ」の要素を指定します。
    itemSelector : "#content div.post-group"
        // コンテンツ要素を指定します。
},
// InfinityScrollのコールバック関数（InfinityScrollが呼び出された後に実行される関数）を記述する
function( newElements ) {
	// 新しく読み込まれた要素にMasonryを適用する
	$content.masonry( 'appended', $(newElements), true );
});

/*
$('.post').each(function(){
	$(this).width(Math.round(Math.random()*300));
});*/

});
