// //Simple Sidebar v1.1.0 by DcDeiv https://github.com/dcdeiv
// // GPLv2 http://www.gnu.org/licenses/gpl-2.0-standalone.html
// !function(a){a.fn.simpleSidebar=function(b){var c,d,e,h={settings:{opener:void 0,wrapper:void 0,ignore:void 0,data:"ssbplugin",animation:{duration:500,easing:"swing"}},sidebar:{align:void 0,width:350,gap:64,closingLinks:"a",style:{zIndex:3e3}},mask:{style:{backgroundColor:"black",opacity:.5,filter:"Alpha(opacity=50)"}}},i=a.extend(!0,h,b),j=this,k=a(i.settings.opener),l=a(i.settings.wrapper),m=a(i.settings.ignore),n=i.settings.data,o=i.settings.animation.duration,p=i.settings.animation.easing,q=i.sidebar.align,r=i.sidebar.width,s=i.sidebar.gap,t=i.sidebar.closingLinks,u=i.sidebar.style,v=i.mask.style,w=r+s,x=a("*").not(m).not(j).filter(function(){return"fixed"==a(this).css("position")}),y=a("*").not(m).filter(function(){return"absolute"==a(this).css("position")}),z=x.add(y).add(j).add(l).not(m),A=a(window).width(),B={position:"fixed",top:-200,right:-200,left:-200,bottom:-200,zIndex:i.sidebar.style.zIndex-1},C=a.extend({},v,B),D=0,E=function(){a("body, html").css({overflow:"hidden"}),D=0},F=function(){a("body, html").css({overflow:"auto"}),D=1};j.css(u).wrapInner("<div data-"+n+'="sub-wrapper"></div>');var G=j.children().filter(function(){return"sub-wrapper"===a(this).data(n)});G.css({width:"100%",height:"100%",overflow:"auto"}),a("body").append("<div data-"+n+'="mask"></div>');var H=a("body").children().filter(function(){return"mask"===a(this).data(n)});return H.css(C).hide(),c=w>A?A-s:r,void 0===q||"left"===q?j.css({position:"fixed",top:0,bottom:0,left:0,width:c,marginLeft:-c}):j.css({position:"fixed",top:0,right:0,bottom:0,width:c,marginRight:-c}),k.click(function(){var b=j.width();d=void 0===q||"left"===q?{marginLeft:"+="+b,marginRight:"-="+b}:{marginRight:"+="+b,marginLeft:"-="+b},z.each(function(){a(this).animate(d,{duration:o,easing:p,complete:E})}),H.fadeIn()}),H.click(function(){D++;var b=j.width();countClicks=function(a){return 0===a%2?!0:!1},void 0===q||"left"===q?(d={marginLeft:"+="+b,marginRight:"-="+b},e={marginRight:"+="+b,marginLeft:"-="+b}):(d={marginRight:"+="+b,marginLeft:"-="+b},e={marginLeft:"+="+b,marginRight:"-="+b}),!1===countClicks(D)?(z.each(function(){a(this).animate(e,{duration:o,easing:p,complete:F})}),H.fadeOut()):!0===countClicks(D)&&(z.each(function(){a(this).animate(d,{duration:o,easing:p,complete:E})}),H.fadeIn())}),j.on("click",t,function(){var b=j.width();e=void 0===q||"left"===q?{marginRight:"+="+b,marginLeft:"-="+b}:{marginLeft:"+="+b,marginRight:"-="+b},z.each(function(){a(this).animate(e,{duration:o,easing:p,complete:F}),H.fadeOut()})}),a(window).resize(function(){var b,c,d=a(this).width();b=w>d?d-s:r,j.css({width:b}),void 0===q||"left"===q?(c=parseInt(j.css("margin-left")),0>c?j.css({marginLeft:-b}):z.not(j).css({marginLeft:+b,marginRight:-b})):(c=parseInt(j.css("margin-right")),0>c?j.css({marginRight:-b}):z.not(j).css({marginLeft:-b,marginRight:+b}))}),this}}(jQuery);



//     $( ".sidebar" ).simpleSidebar({
//       sidebar: {
//         align: 'left' //'right'
//       }
//     });

//   $( '.sidebar' ).simpleSidebar({
//     settings: {
//         opener: "#open-sb",
//         wrapper: "#wrapper",
//     },
//     sidebar: {
//         align: "left"
//         width: 250,
//         closingLinks: "a",
//         style: {
//             zIndex: 100
//         }
//     },
//     mask: {
//         style: {
//             backgroundColor: "grey",
//             opacity: 0.9,
//             filter: 'Alpha(opacity=90)'
//         }
//     }
// });
