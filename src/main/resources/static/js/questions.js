
var rec;
window.onload = function (){
    window.waveStore={};
    rec=Recorder({
        onProcess:function(buffers,a,b){
            waveStore["WaveView"].input(buffers[buffers.length-1],a,b);
        }
    });
    rec.start();
    rec.open(function(){
        //此处创建这些音频可视化图形绘制浏览器支持妥妥的
        waveStore.WaveView=Recorder.WaveView({elem:".recwave"});
    })
};
function recopen() {
    window.waveStore={};
    rec=Recorder({
        onProcess:function(buffers,a,b){
            waveStore["WaveView"].input(buffers[buffers.length-1],a,b);
        }
    });
    rec.start();
    rec.open(function(){
        //此处创建这些音频可视化图形绘制浏览器支持妥妥的
        waveStore.WaveView=Recorder.WaveView({elem:".recwave"});
    })
}


var send =document.getElementById('send');
// var pic =document.getElementById('pic');
var text =document.getElementById('text');
// var info_box = document.getElementsByClassName('info_box')[0];
var x = document.getElementById('x');

x.onclick=function(){
    document.getElementById("chatbox").style.bottom = "-1000px";
};
var chat = document.getElementById('chat');
var status;
chat.onclick=function(){
    document.getElementById("chatbox").style.bottom = "10px";

};
//上传录音
var recording = document.getElementById('Recording');
var recorder;
recording.onclick = function(){
    startRecording();
    alert("开始语音识别，再点击录音按钮结束");
    document.getElementById("box").style.visibility = "visible";
    status='1';
    alert(status);
};
var stop = document.getElementById('stop');
stop.onclick = function () {
    stopRecording();
    document.getElementById("box").style.visibility = "hidden";
    uploadAudio();
    if (status==='1') {
        var div = document.createElement('div');
        var span_1 = document.createElement('span');
        var span_2 = document.createElement('span');
        var img = document.createElement('div');
        var content = document.getElementsByClassName('content')[0];
        //声明请求变量
        span_1.className = 'bubble_3';
        span_2.className = 'img_2';
        img.className = 'wait';
        div.id = 'bubble_meme';
        div.appendChild(span_2);
        div.appendChild(span_1);
        div.appendChild(img);
        content.insertBefore(div, content.lastChild);
        content.scrollTop = content.scrollHeight;//自动跟进最新消息
        status = '0';
    }
};
function startRecording(){
    swrecorder.get(function(rec) {
        recorder = rec;
        recorder.start();
    })

}

function stopRecording(){
    recorder.stop();
}
function playRecording() {
    recorder.play(document.querySelector("audio"));

}
function uploadAudio(){
    recorder.upload("http://127.0.0.1:9944/aliSubmit", function(state,e) {
        console.log(e,state);
    })
}

send.onclick=function(){
        if(text.value===''){
            alert('请输入内容');
        } else{
            var div = document.createElement('div');
            var span_1 = document.createElement('span');
            var span_2 = document.createElement('span');
            var span_3 = document.createElement('span');

            var txt = document.createTextNode(text.value);
            var content = document.getElementsByClassName('content')[0];
            //声明请求变量
            var xhr = new XMLHttpRequest();
            var fd = new FormData();

            span_1.className='bubble_2';
            span_2.className='img_2';
            span_3.className='tri_2';
            div.className='bubble_me';
            span_1.appendChild(txt);
            span_1.appendChild(span_3);
            div.appendChild(span_2);
            div.appendChild(span_1);
            content.insertBefore(div,content.lastChild);
            content.scrollTop = content.scrollHeight;//自动跟进最新消息
            // imgs.src='img/2.jpg';
            //请求后台
            var url = 'http://127.0.0.1:9944/api/qa?msg='+ text.value;
            xhr.open("GET", url);
            xhr.send(fd);

            //处理请求的返回值
            xhr.onreadystatechange = function() {//Call a function when the state changes.
                if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {//xhr.readyState == 4等价于XMLHttpRequest.DONE
                    // 请求结束后,在此处写处理代码

                    var jsoncontent = JSON.parse(xhr.responseText);/*将获取的信息解析为json对象*/

                    if(jsoncontent['code'] == 200){


                        var message = jsoncontent['message'];
                        var data = jsoncontent['data'];
                        if(message == 'Success'){
                            // 创建节点
                            var txt2 = document.createTextNode(data);
                            var div = document.createElement('div');
                            var span_1 = document.createElement('span');
                            var span_2 = document.createElement('span');
                            var span_3 = document.createElement('span');
                            var content = document.getElementsByClassName('content')[0];
                            span_1.className='bubble_1';
                            span_2.className='img_1';
                            span_3.className='tri_1';
                            div.className='bubble_you';
                            span_1.appendChild(txt2);
                            span_1.appendChild(span_3);
                            div.appendChild(span_2);
                            div.appendChild(span_1);
                            content.insertBefore(div,content.lastChild);

                            var ttsDiv = document.getElementById('bdtts_div_id');
                            var ttsAudio = document.getElementById('tts_autio_id');
                            var ttsText = data;

                            // 文字转语音
                            ttsDiv.removeChild(ttsAudio);
                            var au1 = '<audio id="tts_autio_id" autoplay="autoplay">';
                            var sss = '<source id="tts_source_id" src="http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&per=3&spd=5&text=' + ttsText + '" type="audio/mpeg">';
                            var eee = '<embed id="tts_embed_id" height="0" width="0" src="">';
                            var au2 = '</audio>';
                            ttsDiv.innerHTML = au1 + sss + eee + au2;

                            ttsAudio = document.getElementById('tts_autio_id');
                            ttsAudio.play();

                        }
                        else{
                            // 创建节点
                            var txt2 = document.createTextNode(message);
                            var div = document.createElement('div');
                            var span_1 = document.createElement('span');
                            var span_2 = document.createElement('span');
                            var span_3 = document.createElement('span');
                            var content = document.getElementsByClassName('content')[0];
                            span_1.appendChild(txt2);
                            span_1.appendChild(span_3);
                            div.appendChild(span_2);
                            div.appendChild(span_1);
                            content.insertBefore(div,content.lastChild);
                            span_1.className='bubble_1';
                            span_2.className='img_1';
                            span_3.className='tri_1';
                            div.className='bubble_you';

                            var ttsDiv = document.getElementById('bdtts_div_id');
                            var ttsAudio = document.getElementById('tts_autio_id');
                            var ttsText = message;

                            // 文字转语音
                            ttsDiv.removeChild(ttsAudio);
                            var au1 = '<audio id="tts_autio_id" autoplay="autoplay">';
                            var sss = '<source id="tts_source_id" src="http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&per=3&spd=5&text=' + ttsText + '" type="audio/mpeg">';
                            var eee = '<embed id="tts_embed_id" height="0" width="0" src="">';
                            var au2 = '</audio>';
                            ttsDiv.innerHTML = au1 + sss + eee + au2;

                            ttsAudio = document.getElementById('tts_autio_id');
                            ttsAudio.play();
                        }
                        content.scrollTop = content.scrollHeight;//自动跟进最新消息

                    }




                }
            }
        }
        text.value='';
    }