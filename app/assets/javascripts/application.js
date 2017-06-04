// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/carousel
//= require bootstrap/collapse
//= require bootstrap/dropdown
//= require_tree .
//= require autosize

 // Products#show 切换显示图片

$(document).on('mouseover', '.list-photo', function () {
  var src_thumb = $(this).find('img').attr('src') //抓取小圖圖片路徑
  var src_medium = src_thumb.toString().replace("thumb", "medium") //更改圖片路徑

  $('.big-photo').find('img').attr('src', src_medium) //變更大圖圖片路徑
})
