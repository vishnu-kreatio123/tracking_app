// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function test (){
    window.onclick = function(e) { console.log(e.target);};
    var width = $(window).height();
    var height = $(window).width();
    var browser = ($.browser.className);
    var browser_version = $.browser.version;
    var browser_name = $.browser.name;
    var is_ipad = (/iPhone|iPod|iPad|Android|BlackBerry/).test(navigator.userAgent);
//    $.ajax({
//        url :'http://localhost:3000/blog/tracking_code',
//        type:'POST',
//        dataType:'html',
//        data : 'browser_width=' + width + '&browser_height=' + height + '&browser_version=' + browser_version + '&browser_version=' + browser_name + '&is_ipad=' + is_ipad,
//        beforeSend: function(xhr){
//            xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
//        }
//
//    });

    var image_src="http://localhost:3000/blog/user_behaviour?browser_width=" + width + "&browser_height=" + height + "&browser_version=" + browser_version + "&browser_version=" + browser_name + "&is_ipad=" + is_ipad ;
    jQuery("body").append("<img src="+image_src+" class=static_test /> ");



//    window.onclick = function(e) { console.log(e.target);};
//    console.log($(window).height());
//    console.log($(window).width());
//    console.log($.browser);
//    console.log($.browser.version);
//    console.log($.browser.name);
//    console.log((/iPhone|iPod|iPad|Android|BlackBerry/).test(navigator.userAgent));

})


