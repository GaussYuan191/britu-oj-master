

var rec;
function recopen(){
    var type=$("[name=type]:checked").val();
    var bit=+$(".bit").val();
    var sample=+$(".sample").val();

    window.waveStore={};
    window.sonicAsync=null;
    window.takeoffChunks=[];

    var disableEnvInFixSet=$(".disableEnvInFixSet")[0].checked;
    if(disableEnvInFixSet){
        reclog("已禁用设备卡顿时音频输入丢失补偿，可以通过别的程序大量占用CPU来模拟设备卡顿，然后录音听听未补偿时的播放效果，然后再试试不禁用的效果");
    };

    var realTimeSendSet=$(".realTimeSendSet")[0].checked;
    var realTimeSendTime=+$(".realTimeSend").val();

    var takeoffEncodeChunkSet=$(".takeoffEncodeChunkSet")[0].checked;

    rec=Recorder({
        type:type
        ,bitRate:bit
        ,sampleRate:sample
        ,disableEnvInFix:disableEnvInFixSet
        ,onProcess:function(buffers,powerLevel,duration,sampleRate,newBufferIdx,asyncEnd){
            //优先进行pcm处理，可能会发生数据修改，对于需要大量运算的处理需要开启异步模式，onProcess返回true即可开启，异步操作完成后必须回调asyncEnd

            //实时混合按键信号
            if(dtmfMix){
                var val=dtmfMix.mix(buffers, sampleRate, newBufferIdx);
                if(val.newEncodes.length>0){
                    rec.PlayBufferDisable=true;
                    DemoFragment.PlayBuffer(rec,val.newEncodes[0].data,sampleRate);
                };
            };
            //变速变调
            var beginAsync=sonicProcess(buffers,sampleRate,newBufferIdx,asyncEnd);

            $(".recpowerx").css("width",powerLevel+"%");
            $(".recpowert").text(formatMs(duration,1)+" / "+powerLevel);

            //可视化图形绘制
            if(waveStore.choice!=recwaveChoiceKey){
                waveStore.choice=recwaveChoiceKey;
                $(".recwave").html("").append(waveStore[recwaveChoiceKey].elem);
            };
            waveStore[recwaveChoiceKey].input(buffers[buffers.length-1],powerLevel,sampleRate);

            //实时传输
            if(realTimeSendSet&&window.realTimeSendTry){
                realTimeSendTry(rec.set,realTimeSendTime,buffers,sampleRate);
            };

            return beginAsync;//返回true转成异步操作
        }
        ,takeoffEncodeChunk:!takeoffEncodeChunkSet?null:function(chunkBytes){
            takeoffChunks.push(chunkBytes);
        }
    });

    dialogInt=setTimeout(function(){//定时8秒后打开弹窗，用于监测浏览器没有发起权限请求的情况，在open前放置定时器利于收到了回调能及时取消（不管open是同步还是异步回调的）
        showDialog();
    },8000);

    rec.open(function(){
        dialogCancel();
        var typeSize="，<span style='border:1px solid #bbb;background:#f5f5f5;'>";
        if(type=="wav"){
            typeSize+="1秒的wav文件大小(字节)估算公式：采样率 × 位数 ÷ 8，当前："+sample+"*"+bit+"/8≈"+(sample*bit/8)+"b/s";
        }else if(type=="mp3"){
            typeSize+="1秒的mp3文件大小(字节)估算公式：比特率 × 1000 ÷ 8，当前："+bit+"*1000/8≈"+(bit*1000/8)+"b/s";
        }else{
            typeSize="";
        };
        typeSize&&(typeSize+="</span>");

        reclog("<span style='color:#0b1'>已打开:"+type+" "+sample+"hz "+bit+"kbps</span>"+typeSize);

        //此处创建这些音频可视化图形绘制浏览器支持妥妥的
        waveStore.WaveView=Recorder.WaveView({elem:".recwave"});
        waveStore.SurferView=Recorder.WaveSurferView({elem:".recwave"});
        waveStore.Histogram1=Recorder.FrequencyHistogramView({elem:".recwave"});
        waveStore.Histogram2=Recorder.FrequencyHistogramView({
            elem:".recwave"
            ,lineCount:90
            ,position:0
            ,minHeight:1
            ,stripeEnable:false
        });
        waveStore.Histogram3=Recorder.FrequencyHistogramView({
            elem:".recwave"
            ,lineCount:10
            ,position:0
            ,minHeight:1
            ,fallDuration:400
            ,stripeEnable:false
            ,mirrorEnable:true
            ,linear:[0,"#0ac",1,"#0ac"]
        });
    },function(e,isUserNotAllow){
        dialogCancel();
        reclog((isUserNotAllow?"UserNotAllow，":"")+"打开失败："+e);
    });

    window.waitDialogClick=function(){
        dialogCancel();
        reclog("打开失败：权限请求被忽略，<span style='color:#f00'>用户主动点击的弹窗</span>");
    };
};

//我们可以选择性的弹一个对话框：为了防止移动端浏览器存在第三种情况：用户忽略，并且（或者国产系统UC系）浏览器没有任何回调
var showDialog=function(){
    if(!/mobile/i.test(navigator.userAgent)){
        return;//只在移动端开启没有权限请求的检测
    };
    dialogCancel();
    $("body").append(''
        +'<div class="waitDialog" style="z-index:99999;width:100%;height:100%;top:0;left:0;position:fixed;background:rgba(0,0,0,0.3);">'
        +'<div style="display:flex;height:100%;align-items:center;">'
        +'<div style="flex:1;"></div>'
        +'<div style="width:240px;background:#fff;padding:15px 20px;border-radius: 10px;">'
        +'<div style="padding-bottom:10px;">录音功能需要麦克风权限，请允许；如果未看到任何请求，请点击忽略~</div>'
        +'<div style="text-align:center;"><a onclick="waitDialogClick()" style="color:#0B1">忽略</a></div>'
        +'</div>'
        +'<div style="flex:1;"></div>'
        +'</div>'
        +'</div>');
};
var dialogInt;
var dialogCancel=function(){
    clearTimeout(dialogInt);
    $(".waitDialog").remove();
};
//弹框End


function recclose(){
    if(rec){
        rec.close(function(){
            reclog("已关闭");
        });
    }else{
        reclog("未打开录音",1);
    };
};
function recstart(call){
    call||(call=function(msg){
        msg&&reclog(msg,1);
    });
    if(rec&&Recorder.IsOpen()){
        window.realTimeSendTryReset&&realTimeSendTryReset();

        sonicAsync&&sonicAsync.flush();//丢弃不管，省的去同步麻烦
        sonicAsync=null;

        takeoffChunks=[];

        rec.start();
        var set=rec.set;
        reclog("录制中："+set.type+" "+set.sampleRate+"hz "+set.bitRate+"kbps");
        call();
    }else{
        call("未打开录音");
    };
};
function recpause(){
    if(rec){
        rec.pause();
        reclog("已暂停");
    };
};
function recresume(){
    if(rec){
        rec.resume();
        reclog("继续录音中...");
    };
};
var recblob={};
function recstop(call){

    recstopFn(call,true,function(err,blob,time){
        setTimeout(function(){
            window.realTimeSendTryStop&&realTimeSendTryStop(rec.set);

            if(!err && rec.set.takeoffEncodeChunk){
                reclog("启用takeoffEncodeChunk后stop返回的blob长度为0不提供音频数据","#f60");
                reclog("takeoffEncodeChunk接收到"+takeoffChunks.length+"片音频片段，正在合并成一个音频文件...");
                var len=0;
                for(var i=0;i<takeoffChunks.length;i++){
                    len+=takeoffChunks[i].length;
                };
                var chunkData=new Uint8Array(len);
                for(var i=0,idx=0;i<takeoffChunks.length;i++){
                    var itm=takeoffChunks[i];
                    chunkData.set(itm,idx);
                    idx+=itm.length;
                };
                var blob=new Blob([chunkData],{type:"audio/"+rec.set.type});
                addRecLog(time,"合并",blob,rec.set,Date.now());
                recUpload(blob);
            };
        });
    });
    recUpload();
};
function recstopFn(call,isClick,endCall,rec){
    call||(call=function(msg){
        msg&&reclog(msg,1);
    });
    rec=rec||window.rec;
    if(rec){
        if(isClick){
            reclog("正在编码"+rec.set.type+"...");
        };
        var t1=Date.now();
        rec.stop(function(blob,time){
            var tag=endCall("",blob,time);
            if(tag==-1){
                return;
            };

            addRecLog(time,tag||"已录制",blob,rec.set,t1);

            call(null,{data:blob,duration:time});
        },function(s){
            endCall(s);
            call("失败："+s);
        });
    }else{
        call("未打开录音");
    };
};
/**上传**/
function recUpload(blob){

    if(!blob){
        reclog("请先录音，然后停止后再上传",1);
        return;
    };

    //本例子假设使用原始XMLHttpRequest请求方式，实际使用中自行调整为自己的请求方式
    //录音结束时拿到了blob文件对象，可以用FileReader读取出内容，或者用FormData上传
    var api="http://127.0.0.1:8888/aliSubmit";
    alert(1)
    var onreadystatechange=function(title){
        return function(){
            if(xhr.readyState==4){
                if(xhr.status==200){
                    reclog(title+"上传成功",2);
                }else{
                    reclog(title+"没有完成上传，演示上传地址无需关注上传结果，只要浏览器控制台内Network面板内看到的请求数据结构是预期的就ok了。", "#d8c1a0");

                    console.error(title+"上传失败",xhr.status,xhr.responseText);
                };
            };
        };
    };
    reclog("开始上传到"+api+"，请求稍后...");

    // /***方式一：将blob文件转成base64纯文本编码，使用普通application/x-www-form-urlencoded表单上传***/
    // var reader=new FileReader();
    // reader.onloadend=function(){
    // 	var postData="";
    // 	postData+="mime="+encodeURIComponent(blob.type);//告诉后端，这个录音是什么格式的，可能前后端都固定的mp3可以不用写
    // 	postData+="&upfile_b64="+encodeURIComponent((/.+;\s*base64\s*,\s*(.+)$/i.exec(reader.result)||[])[1]) //录音文件内容，后端进行base64解码成二进制
    // 	//...其他表单参数
    //
    // 	var xhr=new XMLHttpRequest();
    // 	xhr.open("POST", api);
    // 	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    // 	xhr.onreadystatechange=onreadystatechange("上传方式一【Base64】");
    // 	xhr.send(postData);
    // };
    // reader.readAsDataURL(blob);

    /***方式二：使用FormData用multipart/form-data表单上传文件***/
    var form=new FormData();
    form.append("file",blob,"recorder.mp3"); //和普通form表单并无二致，后端接收到upfile参数的文件，文件名为recorder.mp3
    //...其他表单参数

    var xhr=new XMLHttpRequest();
    xhr.open("POST", 'http://127.0.0.1:8888/aliSubmit');
    xhr.onreadystatechange=onreadystatechange("上传方式二【FormData】");
    xhr.send(form);
};
var recLogLast;
var addRecLog=function(time,tag,blob,set,t1){
    var id=RandomKey(16);
    recLogLast={blob:blob,set:$.extend({},set),time:time};
    recblob[id]=recLogLast;
    reclog(tag+":"+intp(set.bitRate,3)+"kbps "+intp(set.sampleRate,5)+"hz 花"+intp(Date.now()-t1,4)+"ms编码"+intp(blob.size,6)+"b ["+set.type+"]"+formatMs(time)+'ms <button onclick="recdown(\''+id+'\')">下载</button> <button onclick="recplay(\''+id+'\')">播放</button> <span class="p'+id+'"></span> <span class="d'+id+'"></span>');
};
var intp=function(s,len){
    s=s==null?"-":s+"";
    if(s.length>=len)return s;
    return ("_______"+s).substr(-len);
};
var formatMs=function(ms,all){
    var f=Math.floor(ms/60000),m=Math.floor(ms/1000)%60;
    var s=(all||f>0?(f<10?"0":"")+f+":":"")
        +(all||f>0||m>0?("0"+m).substr(-2)+"″":"")
        +("00"+ms%1000).substr(-3);
    return s;
};
function recstop2(){
    if(!rec||!rec.buffers){
        reclog("需先录个音");
        return;
    };

    var type=$("[name=type]:checked").val();
    var sample=+$(".sample").val();
    var bits=/(\d+)\s+to\s+(\d+)\s+step\s+(\d+)\s*/i.exec($(".bits").val());
    if(!bits){
        reclog("码率列表有误，需要? to ? step ?结构");
        return;
    };
    reclog("开始批量编码，请勿进行其他操作~");

    rec.set.type=type;
    rec.set.sampleRate=sample;

    var list=[];
    for(var i=+bits[1];i<+bits[2]+1;i+=+bits[3]){
        list.push(i);
    };
    if(rec.set.type=="wav"){
        list=[8,16];
    };


    var i=-1;
    var bak=rec.set.bitRate;
    var run=function(){
        i++;
        if(i>=list.length){
            rec.set.bitRate=bak;
            reclog("批量编码完成");
            return;
        };
        rec.set.bitRate=list[i];
        rec.isMock=1;
        recstopFn(null,0,function(){
            setTimeout(run);
        });
    };
    run();
};
function recplay(key){
    var audio=$(".recPlay")[0];
    audio.controls=true;
    if(!(audio.ended || audio.paused)){
        audio.pause();
    };

    var o=recblob[key];
    if(o){
        o.play=(o.play||0)+1;
        var logmsg=function(msg){
            $(".p"+key).html('<span style="color:green">'+o.play+'</span> '+new Date().toLocaleTimeString()+" "+msg);
        };
        logmsg("");
        audio.onerror=function(e){
            logmsg('<span style="color:red">播放失败['+audio.error.code+']'+audio.error.message+'</span>');
        };

        if(o.play2Name){
            audio.src="assets/audio/"+o.play2Name;
            audio.play();
            return;
        };
        var end=function(blob){
            audio.src=(window.URL||webkitURL).createObjectURL(blob);
            audio.play();
            recUpload(blob);
        };
        var wav=Recorder[o.set.type+"2wav"];
        if(wav){
            logmsg("正在转码成wav...");
            wav(o.blob,function(blob){
                recUpload(blob);
                end(blob);
                logmsg("已转码成wav播放");
            },function(msg){
                logmsg("转码成wav失败："+msg);
            });
        }else{
            end(o.blob);
        };
    };
};
function recplay2(elem,name){
    elem=$(elem);
    var key="recplay2"+elem.html();
    recblob[key]||(recblob[key]={
        play2Name:name
    });
    if(!$(".p"+key).length){
        elem.before('<br>');
        elem.after('<span class="p'+key+'"></span><br>');
    };

    recplay(key);
};
function recdown(key){
    var o=recblob[key];
    if(o){
        var cls=RandomKey(16);
        var name="rec-"+o.time+"ms-"+o.set.bitRate+"kbps-"+o.set.sampleRate+"hz."+o.set.type;

        o.down=(o.down||0)+1;
        $(".d"+key).html('<span style="color:red">'+o.down+'</span> 点击 <span class="'+cls+'"> 下载，或复制文本<button onclick="recdown64(\''+key+'\',\''+cls+'\')">生成Base64文本</button></span>');

        var downA=document.createElement("A");
        downA.innerHTML="下载 "+name;
        downA.href=(window.URL||webkitURL).createObjectURL(o.blob);
        downA.download=name;
        $("."+cls).prepend(downA);
        //downA.click(); 某些软件内会跳转页面到恶心推广页
    };
};
function recdown64(key, cls){
    var o=recblob[key];

    var reader = new FileReader();
    reader.onloadend = function() {
        var id=RandomKey(16);
        $("."+cls).append('<textarea class="'+id+'"></textarea>');
        $("."+id).val(reader.result);
    };
    reader.readAsDataURL(o.blob);
};
var ReadBlob=function(blob,call){
    var reader = new FileReader();
    reader.onloadend = function(e){
        call(reader.result);
    };
    reader.readAsArrayBuffer(blob);
};
var DecodeAudio=function(fileName,arrayBuffer,True,False){
    True=True||function(){};
    False=False||function(){};
    if(!Recorder.Support()){//强制激活Recorder.Ctx 不支持大概率也不支持解码
        False("浏览器不支持音频解码");
        return;
    };
    var type=(/[^.]+$/.exec(fileName)||[])[0]||"";
    var srcBlob=new Blob([arrayBuffer],{type:type&&("audio/"+type)||""});

    var ctx=Recorder.Ctx;
    ctx.decodeAudioData(arrayBuffer,function(raw){
        var src=raw.getChannelData(0);
        var sampleRate=raw.sampleRate;
        console.log(fileName,raw,srcBlob);

        var pcm=new Int16Array(src.length);
        for(var i=0;i<src.length;i++){//floatTo16BitPCM
            var s=Math.max(-1,Math.min(1,src[i]));
            s=s<0?s*0x8000:s*0x7FFF;
            pcm[i]=s;
        };

        True({
            sampleRate:sampleRate
            ,duration:Math.round(src.length/sampleRate*1000)
            ,srcBlob:srcBlob
            ,type:type
            ,data:pcm
        });
    },function(e){
        console.error("audio解码失败",e);
        False(fileName+"解码失败:"+(e&&e.message||"-"));
    });
};



$(".recinfoCode").text($(".recinfoCode").text().replace(/\$\{(.+?)\}/g,function(a,b){return eval(b)}));

var s="https://github.com/xiangyuecn/Recorder/blob/master/src/extensions/";
var extensionsInfo={
    WaveView:'<b>WaveView</b> (<a href="'+s+'waveview.js">waveview.js</a> 动态波形)'
    ,SurferView:'<b>WaveSurferView</b> (<a href="'+s+'wavesurfer.view.js">wavesurfer.view.js</a> 音频可视化波形)'
    ,Histogram:'<b>FrequencyHistogramView</b> (<a href="'+s+'frequency.histogram.view.js">frequency.histogram.view.js</a> + <a href="'+s+'lib.fft.js">lib.fft.js</a> 音频可视化频率直方图)'
    ,Sonic:'<b>Sonic</b> (<a href="'+s+'sonic.js">sonic.js</a> 变速变调)'
    ,DTMF:'<b>DTMF</b> (<a href="'+s+'dtmf.decode.js">dtmf.decode.js</a> + <a href="'+s+'dtmf.encode.js">dtmf.encode.js</a> （电话拨号按键信号）解码、编码)'
};
var recwaveChoiceKey=localStorage["RecWaveChoiceKey"]||"WaveView";
$(".recwaveChoice").bind("click",function(e){
    var elem=$(e.target);
    $(".recwaveChoice").removeClass("slc");
    var val=elem.addClass("slc").attr("key");
    var info=extensionsInfo[val.replace(/\d+$/,"")];
    if(recwaveChoiceKey!=val){
        reclog("已切换波形显示为："+info);
    };
    recwaveChoiceKey=val;
    localStorage["RecWaveChoiceKey"]=recwaveChoiceKey;
});
if(!$(".recwaveChoice[key="+recwaveChoiceKey+"]").length){
    recwaveChoiceKey="WaveView";
};
$(".recwaveChoice[key="+recwaveChoiceKey+"]").click();


if(window.isSecureContext===false){
    reclog("当前网页不是安全环境（HTTPS），将无法获取录音权限，<a href='https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia#Privacy_and_security'>MDN Privacy and security</a>",1);
}else if(window.isSecureContext){
    reclog("<span style='color:#0b1'>当前网页处在安全环境中</span>(<a href='https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia#Privacy_and_security'>https、file:///等</a>)");
};

reclog("点击打开录音开始哦，此浏览器<span style='color:"+(Recorder.Support()?"green'>":"red'>不")+"支持录音</span>");
reclog('已启用Extensions：'
    +extensionsInfo.WaveView
    +'、'+extensionsInfo.SurferView
    +'、'+extensionsInfo.Histogram
    +'、'+extensionsInfo.Sonic
    +'、'+extensionsInfo.DTMF);


function goiframe(){
    $(".demoHead").hide();
    $(".demoMain").html(''
        +'<div>IFrame测试，提示：`RecordApp测试`可以模拟跨域，跨域时未设置相应策略权限永远是拒绝的</div>'
        +'<iframe src="?t='+Date.now()+'" style="width:98%;height:'+($(window).height()-100)+'px; border:4px solid #0B1"></iframe>');
};
if(window.top!=window){
    var isSelf=false;
    try{
        window.top.aa=123;
        isSelf=true;
    }catch(e){};

    reclog("<span style='color:#f60'>当前页面处在在iframe中，但故意未进行任何处理，"+(isSelf?"当前是同域":"并且已发生跨域，未设置相应策略权限永远是拒绝的")+"</span>");
};


//实时传输数据模拟开关
$(".realTimeSendSet").bind("change",function(e){
    var open=e.target.checked;
    $(".webrtcView")[open?"show":"hide"]();
    if(open && !window.webrtcCreate){
        var file="zdemo.index.webrtc.js";
        reclog("正在加载"+file+" ...");

        var elem=document.createElement("script");
        elem.setAttribute("type","text/javascript");
        elem.setAttribute("src",window.webrtcJSPath||("assets/"+file));
        $("head")[0].appendChild(elem);
    };
});



//变速变调
var sonicCtrlSet={};
$(".sonicCtrlInput").bind("change",function(e){
    sonicCtrlSet[/sonicCtrl([^ ]+)$/.exec(e.target.className)[1].toLowerCase()]=+e.target.value;
});
$(".sonicCtrlRange").bind("change",function(e){
    $(e.target).parent().find(".sonicCtrlInput").val(/\d+\.\d+/.exec(e.target.value+".0")[0]).change();
}).change();
var resetSonicCtrl=function(){
    $(".sonicCtrlRange").val(1).change();
    $(".sonicCtrlBufferRange").val(200).change();
};
var sonicRecTransform=function(){
    if(!rec||!rec.buffers){
        reclog("请先录音",1);
        return;
    };
    var type=rec.set.type;
    var sampleRate=rec.set.sampleRate;
    var bitRate=rec.set.bitRate;
    if(type!="mp3"){
        reclog("目前只支持mp3格式的录音重新转换，因为其他格式buffers已被污染",1);
        return;
    };

    sonicAsync&&sonicAsync.flush();
    sonicAsync=null;

    var srcBuffers=rec.buffers;
    var buffers=[];
    var idx=-1;
    var run=function(){
        idx++;
        if(idx>=srcBuffers.length){
            var mockRec=Recorder({type:type,sampleRate:sampleRate,bitRate:bitRate});
            mockRec.mock(Recorder.SampleData(buffers,sampleRate,sampleRate).data,sampleRate);
            recstopFn(null,0,function(){
                return "已转换";
            },mockRec);
            return;
        };

        buffers.push(Recorder.SampleData([srcBuffers[idx]],rec.srcSampleRate,sampleRate).data);
        var beginAsync=sonicProcess(buffers,sampleRate,idx,run);
        if(!beginAsync){
            reclog("不存在变速变调设置，或不能开启转换",1);
        };
        buffers[idx]=new Int16Array(0);
    };
    run();
};
var sonicInfo;
var sonicProcess=function(buffers,sampleRate,newBufferIdx,asyncEnd){
    if(sonicCtrlSet.pitch==1
        &&sonicCtrlSet.rate==1
        &&sonicCtrlSet.speed==1
        &&sonicCtrlSet.volume==1){//不存在变速变调设置
        return;
    };

    if(sonicAsync==-1){
        return;
    };
    if(!sonicAsync||sonicAsync.set.sampleRate!=sampleRate){
        //实时处理只能用异步操作，不能用同步方法，否则必然卡顿
        sonicAsync=Recorder.Sonic.Async({sampleRate:sampleRate});
        sonicInfo={};
        if(!sonicAsync){
            sonicAsync=-1;
            reclog("不能开启Sonic.Async，浏览器不支持WebWorker操作，降级不变速变调",1);
            return;
        };
    };

    sonicAsync.setPitch(sonicCtrlSet.pitch);
    sonicAsync.setRate(sonicCtrlSet.rate);
    sonicAsync.setSpeed(sonicCtrlSet.speed);
    sonicAsync.setVolume(sonicCtrlSet.volume);

    var newBuffers=sonicInfo.buffers||[];
    var newBufferSize=sonicInfo.bufferSize||0;
    var blockSize=sampleRate/1000*sonicCtrlSet.buffer;//缓冲0-1000ms的数据进行处理，200ms以上可避免引入大量杂音
    var lastIdx=buffers.length-1;
    for(var i=newBufferIdx;i<=lastIdx;i++){
        newBuffers.push(buffers[i]);//copy出来，异步onProcess会清空这些数组
        newBufferSize+=buffers[i].length;
    };

    if(newBufferSize<blockSize){
        setTimeout(function(){
            asyncEnd();//缓冲未满，此时并未处理，但也需要进行异步回调
        });
    }else{
        var buffer=newBuffers[0]||[];
        if(newBuffers.length>1){
            buffer=Recorder.SampleData(newBuffers,sampleRate,sampleRate).data;
        };
        newBuffers=[];
        newBufferSize=0;
        var sizeOld=buffer.length,sizeNew=0;

        //推入后台异步转换
        sonicAsync.input(buffer,function(pcm){
            buffers[lastIdx]=pcm;//写回buffers，放到调用时的最后一个位置即可 ，其他内容已在开启异步模式时已经被自动替换成了空数组

            //实时播放反馈
            if(sonicCtrlSet.play&&window.DemoFragment&&DemoFragment.PlayBuffer){
                DemoFragment.PlayBuffer(sonicInfo,pcm,sampleRate);
            };

            asyncEnd();//完成处理必须进行回调
        });
    };

    sonicInfo.buffers=newBuffers;
    sonicInfo.bufferSize=newBufferSize;

    return true;
};





/****DTMF电话按键信号****/
var decodeDTMF=function(){
    if(!recLogLast){
        reclog("请先录音",1);
        return;
    };

    reclog("开始识别DTMF...",2);
    ReadBlob(recLogLast.blob,function(arr){
        DecodeAudio("rec."+recLogLast.set.type,arr,function(data){
            var finds=[];
            var chunk=Recorder.DTMF_Decode(data.data,data.sampleRate);
            for(var i=0;i<chunk.keys.length;i++){
                reclog("发现按键["+chunk.keys[i].key+"]，位于"+chunk.keys[i].time+"ms处");
                finds.push(chunk.keys[i].key);
            };
            reclog("识别完毕，"+(finds.length?"发现按键："+finds.join(""):"未发现按键信息"),2);
        },function(err){
            reclog(err,2);
        });
    });
};
var decodeDTMFStream=function(pcm,sampleRate,chunk){
    chunk=Recorder.DTMF_Decode(pcm,sampleRate,chunk);
    for(var i=0;i<chunk.keys.length;i++){
        reclog("发现按键["+chunk.keys[i].key+"]，位于"+chunk.keys[i].time+"ms处");
    };
    return chunk;
};
var sendDTMFKeyClick=function(e){
    if(e.target.tagName=="TD"){
        sendDTMFKeys(e.target.innerHTML)
    };
};
var sendDTMFKeysClick=function(){
    sendDTMFKeys("*#1234567890#*");
};
var sendDTMFKeys=function(keys){
    if(!dtmfMix){
        dtmfMix=Recorder.DTMF_EncodeMix({
            duration:100 //按键信号持续时间 ms，最小值为30ms
            ,mute:25 //按键音前后静音时长 ms，取值为0也是可以的
            ,interval:200 //两次按键信号间隔时长 ms，间隔内包含了duration+mute*2，最小值为120ms
        });
    };
    if(!rec||!rec.buffers){
        reclog("没有开始录音，按键会存储到下次录音","#bbb");
    };
    dtmfMix.add(keys);
    //添加过去就不用管了，实时处理时会调用mix方法混入到pcm中。
};
var dtmfMix;
