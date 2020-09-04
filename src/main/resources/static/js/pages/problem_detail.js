"use strict";
/**
 *  ace editor init
 */
var editor = ace.edit("editor");
ace.require("ace/ext/language_tools");
editor.$blockScrolling = Infinity;
editor.setFontSize(18);
editor.getSession().setTabSize(4);
//代码折叠
editor.getSession().setUseWrapMode(true);
//设置打印边距可见度
editor.setShowPrintMargin(false);
editor.session.setMode("ace/mode/java");
editor.setTheme("ace/theme/textmate");
editor.setOptions({
    enableBasicAutocompletion: false,
    enableSnippets: false,
    enableLiveAutocompletion: true

});

function change() {
    var typel = $('#key_option option:selected').val()
    if (typel=='c') {
        $('#show2').html(`<div class="chengguo-details text-center">
                            <a class="chengguo" data-toggle="modal" data-href="#stack1" href="#stack1">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic1.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C语言简单历史</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center" style="margin: 0 30px">
                            <a class="chengguo" data-toggle="modal" data-href="#stack2" href="#stack2">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic2.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C语言循环</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center" style="margin-right: 30px;">
                            <a class="chengguo" data-toggle="modal" data-href="#stack3" href="#stack3">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/konglong.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C语言常量与变量</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center">
                            <a class="chengguo" data-toggle="modal" data-href="#stack4" href="#stack4">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic4.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C语言求最大公约数</h5>
                                </div>
                            </a>
                        </div>

									`)
    }
    else if (typel=='c++') {
        $('#show2').html(`<div class="chengguo-details text-center">
                            <a class="chengguo" data-toggle="modal" data-href="#stack1" href="#stack1">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic5.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C++语言简单历史</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center" style="margin: 0 30px">
                            <a class="chengguo" data-toggle="modal" data-href="#stack2" href="#stack2">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic6.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C++语言循环</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center" style="margin-right: 30px;">
                            <a class="chengguo" data-toggle="modal" data-href="#stack3" href="#stack3">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic7.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C++语言常量与变量</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center">
                            <a class="chengguo" data-toggle="modal" data-href="#stack4" href="#stack4">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic8.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>C++语言求最大公约数</h5>
                                </div>
                            </a>
                        </div>

									`)
    }
    else {
        $('#show2').html(`<div class="chengguo-details text-center">
                            <a class="chengguo" data-toggle="modal" data-href="#stack1" href="#stack1">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic9.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>java语言简单历史</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center" style="margin: 0 30px">
                            <a class="chengguo" data-toggle="modal" data-href="#stack2" href="#stack2">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic10.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>java语言循环</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center" style="margin-right: 30px;">
                            <a class="chengguo" data-toggle="modal" data-href="#stack3" href="#stack3">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic11.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>java语言常量与变量</h5>
                                </div>
                            </a>
                        </div>
                        <div class="chengguo-details text-center">
                            <a class="chengguo" data-toggle="modal" data-href="#stack4" href="#stack4">
                                <img class="play" style="display: block" src="img/play.png">
                                <img class="cover" src="img/pic12.jpg" alt="">
                                <div class="chengguo-bottom">
                                    <h5>java语言求最大公约数</h5>
                                </div>
                            </a>
                        </div>
									`)
    }
}

/**
 * 代码编辑器
 * @param
 */

function changeEditor() {
    var theme = $('#id_theme_option option:selected').val()
    var tabsize = $('#id_tab_size_option option:selected').val()
    var fontsize = $('#id_key_binding_option option:selected').val()

    editor.setTheme("ace/theme/"+theme);
    editor.getSession().setTabSize(tabsize);
    editor.setFontSize(parseInt(fontsize));
}

/**
 * 代码重置
 * @param
 */

function refresh() {
    editor.setValue('')
}


/**
 * 选择语言
 * @param type
 */
function setCodeType(type) {

    $.message({
        message: '正在切换编程语言...',
        type: 'warning'
    });
    $("#dropdownMenuButton").html(type);
    $("#type").val(type);

    if ("C" == type) {

        editor.session.setMode("ace/mode/c_cpp");
        editor.setValue("#include <stdio.h>\n" +
            "\n" +
            "int main() {\n" +
            "    \n" +
            "    return 0;\n" +
            "}");
    } else if ("C++" == type) {
        editor.session.setMode("ace/mode/c_cpp");
        editor.setValue("#include <iostream>\n" +
            "#include <cstdio>\n" +
            "\n" +
            "using namespace std;\n" +
            "\n" +
            "int main() {\n" +
            "    \n" +
            "    return 0;\n" +
            "}");
    } else if ("Java8" == type) {
        editor.session.setMode("ace/mode/java");
        editor.setValue("import java.io.*;\n" +
            "import java.util.*;\n" +
            "public class Main {\n" +
            "    public static void main(String args[]) throws Exception {\n" +
            "       \n" +

            "    }\n" +
            "}");
    } else if ("Python2" == type) {
        editor.session.setMode("ace/mode/python");
        editor.setValue(
            "print ('这是Python2!')");
        $("#dropdownMenuButton").html("python2");
    } else if ("Python3" == type) {
        editor.session.setMode("ace/mode/python");
        editor.setValue(
            "print ('这是Python3!')");
    }
    editor.moveCursorTo(0, 0);
};


/**
 * 提交代码
 */
function submit(problemName, compId) {

    var type = $("#type").val();
    var sourceCode = editor.getValue();


    if (!type || type == -1) {
        $.message({
            message: "请选择编程语言",
            type: 'warning'
        });
        return;
    }
    if (!sourceCode) {

        $.message({
            message: "请编写代码",
            type: 'warning'
        });
        return;
    }

    // if (typeof(Storage) !== "undefined") {
    //     if (localStorage) {
    //         localStorage.setItem('btn',type)
    //         localStorage.setItem('code',sourceCode)
    //     } else {
    //         localStorage.setItem('1',"#include <stdio.h>\n" +
    //             "\n" +
    //             "int main() {\n" +
    //             "    \n" +
    //             "    return 0;\n" +
    //             "}")
    //     }
    //     editor.setValue(localStorage.getItem('1'))
    //
    // }

    swal({
        title: '确认提交代码?',
        // text: '提醒',
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#EF6F6C',
        cancelButtonColor: '#4fb7fe',
        confirmButtonText: '确定',
        cancelButtonText: '取消'
    }).then(function () {
        $.post("problemResult/submit", {
            "problemId": problemId,
            "compId": compId,
            "type": type,
            "sourceCode": sourceCode
        }, function (resp) {
            if (resp.status == 200) {
                var runNum = resp.data;
                var html = "<div class='text-center' id = '" + runNum + "'>" +
                    "<i class='fa fa-circle-o-notch fa-lg fa-spin text-primary'></i>" +
                    "<span class='ml-3' id = '" + runNum + "-Str'>队列中</span></div>";

                naranja()["log"]({
                    icon: false,
                    title: problemName,
                    text: html,
                    timeout: 'keep'
                });
                var problemResultNowInterval = window.setInterval(function () {
                    problemResultNow(runNum, problemResultNowInterval)
                }, 500);
            } else {
                $.message({
                    message: resp.msg,
                    type: 'error'
                });
            }
        });
    }).catch(function (reason) {

    });

}

/**
 * 拉取题目测评结果
 * @param runNum
 * @param problemResultNowInterval
 */
function problemResultNow(runNum, problemResultNowInterval) {
    $.post("problemResult/problemResultNow", {"runNum": runNum}, function (resp) {
        if (resp.status == 200) {
            if (resp.data.status != 0 && resp.data.status != 8 && resp.data.status != 9) {
                window.clearInterval(problemResultNowInterval);
                var color = getColorByStatus(resp.data.status);
                var str = getStrByStatus(resp.data.status);
                var usedTime = resp.data.time;
                var usedMemory = resp.data.memory;
                var problemResultId = resp.data.id;
                var href = "/problemResult/problemResultDetailPage?problemResultId=" + problemResultId;
                var html = "<a class='mr-2 btn-sm text-white' style='background-color: " + color + "'>" + str + "</a>" +
                    "<a class='btn-success mr-2 btn-sm text-white'>" + usedTime + "ms</a>" +
                    "<a class='btn-success mr-2 btn-sm text-white'>" + usedMemory + "KB</a>" +
                    "<a href=" + href + " class='btn btn-info btn-sm text-white'>查看详情</a>";

                var runNumItem = $("#" + runNum + "");
                runNumItem.html(html);
                runNumItem.attr("class","text-left");
            } else {
                var str = getStrByStatus(resp.data.status);
                $("#" + runNum + "-Str").html(str);
            }
        } else {
            window.clearInterval(problemResultNowInterval);
            $.message({
                message: resp.msg,
                type: 'error'
            });
        }
    });
}

/**
 * end of 提交代码
 */


/**
 * 测试样例运行
 */
function testRun() {

    var inputHtml = $("#testInput").val();
    var eOutputHtml = $("#eOutput").val();
    if (!inputHtml || !eOutputHtml) {
        $.message({
            message: '输入不能为空',
            type: 'warning'
        });
    }

    submit();
}


/**
 * 复制测试样例
 */
function copyToClipboard() {
    $.message({
        message: '复制成功',
        type: 'success'
    });
}



