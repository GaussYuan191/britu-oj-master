// 录音主要的js
function reclog(s,color){
    var now=new Date();
    var t=("0"+now.getHours()).substr(-2)
        +":"+("0"+now.getMinutes()).substr(-2)
        +":"+("0"+now.getSeconds()).substr(-2);
    $(".reclog").prepend('<div style="color:'+(!color?"":color==1?"red":color==2?"#0b1":color)+'">['+t+']'+s+'</div>');
};
$(window).bind("error",function(e){
    reclog('<span style="color:red">【Error】:<pre>'+(e.error?e.error.stack:event.message)+'</pre></span>');
});

if(/mobile/i.test(navigator.userAgent)){
    //移动端加载控制台组件
    var elem=document.createElement("script");
    elem.setAttribute("type","text/javascript");
    elem.setAttribute("src","https://cdn.bootcss.com/eruda/1.5.4/eruda.min.js");
    $("head")[0].appendChild(elem);
    elem.onload=function(){
        eruda.init();
    };
};