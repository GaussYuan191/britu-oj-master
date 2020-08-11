id,contenthtml,next_id,pre_id,t_name,title,h1,p1,p2
1,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">简介</span></h2> <div class="tutintro"> <p>C++ 是一种静态类型的、编译式的、通用的、大小写敏感的、不规则的编程语言，支持过程化编程、面向对象编程和泛型编程。</p> <p>C++ 被认为是一种<strong>中级</strong>语言，它综合了高级语言和低级语言的特点。</p> <p>C++ 是由 Bjarne Stroustrup 于 1979 年在新泽西州美利山贝尔实验室开始设计开发的。C++ 进一步扩充和完善了 C 语言，最初命名为带类的C，后来在 1983 年更名为 C++。</p> <p>C++ 是 C 的一个超集，事实上，任何合法的 C 程序都是合法的 C++ 程序。</p> <p><strong>注意：</strong>使用静态类型的编程语言是在编译时执行类型检查，而不是在运行时执行类型检查。</p> </div> <h2 class="tutheader">面向对象程序设计</h2> <p>C++ 完全支持面向对象的程序设计，包括面向对象开发的四大特性：</p> <ul class="list"> <li>封装</li> <li>数据隐藏</li> <li>继承</li> <li>多态</li> </ul> <h2 class="tutheader">标准库</h2> <p>标准的 C++ 由三个重要部分组成：</p> <ul class="list"> <li>核心语言，提供了所有构件块，包括变量、数据类型和常量，等等。</li> <li>C++ 标准库，提供了大量的函数，用于操作文件、字符串等。</li> <li>标准模板库（STL），提供了大量的方法，用于操作数据结构等。</li> </ul> <h2 class="tutheader">ANSI 标准</h2> <p>ANSI 标准是为了确保 C++ 的便携性 —— 您所编写的代码在 Mac、UNIX、Windows、Alpha 计算机上都能通过编译。</p> <p>由于 ANSI 标准已稳定使用了很长的时间，所有主要的 C++ 编译器的制造商都支持 ANSI 标准。</p> <h2 class="tutheader">学习 C++</h2> <p>学习 C++，关键是要理解概念，而不应过于深究语言的技术细节。</p> <p>学习程序设计语言的目的是为了成为一个更好的程序员，也就是说，是为了能更有效率地设计和实现新系统，以及维护旧系统。</p> <p>C++ 支持多种编程风格。您可以使用 Fortran、C、Smalltalk 等任意一种语言的编程风格来编写代码。每种风格都能有效地保证运行时间效率和空间效率。</p> <h2 class="tutheader">C++ 的使用</h2> <p>基本上每个应用程序领域的程序员都有使用 C++。</p> <p>C++ 通常用于编写设备驱动程序和其他要求实时性的直接操作硬件的软件。</p> <p>C++ 广泛用于教学和研究。</p> <p>任何一个使用苹果电脑或 Windows PC 机的用户都在间接地使用 C++，因为这些系统的主要用户接口是使用 C++ 编写的。</p></div>
<div style="clear:both"></div>
</div>",2,1,C++教程,C++简介,NULL,NULL,NULL
2,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">环境设置</span></h2> <h2 class="tutheader">本地环境设置</h2> <p>如果您想要设置 C++ 语言环境，您需要确保电脑上有以下两款可用的软件，文本编辑器和 C++ 编译器。</p> <h2 class="tutheader">文本编辑器</h2> <p>这将用于输入您的程序。文本编辑器包括 Windows Notepad、OS Edit command、Brief、Epsilon、EMACS 和 vim/vi。</p> <p>文本编辑器的名称和版本在不同的操作系统上可能会有所不同。例如，Notepad 通常用于 Windows 操作系统上，vim/vi 可用于 Windows 和 Linux/UNIX 操作系统上。</p> <p>通过编辑器创建的文件通常称为源文件，源文件包含程序源代码。C++ 程序的源文件通常使用扩展名 .cpp、.cp 或 .c。</p> <p>在开始编程之前，请确保您有一个文本编辑器，且有足够的经验来编写一个计算机程序，然后把它保存在一个文件中，编译并执行它。</p> <h2 class="tutheader">C++ 编译器</h2> <p>写在源文件中的源代码是人类可读的源。它需要"编译"，转为机器语言，这样 CPU 可以按给定指令执行程序。</p> <p>C++ 编译器用于把源代码编译成最终的可执行程序。</p> <p>大多数的 C++ 编译器并不在乎源文件的扩展名，但是如果您未指定扩展名，则默认使用 .cpp。</p> <p>最常用的免费可用的编译器是 GNU 的 C/C++ 编译器，如果您使用的是 HP 或 Solaris，则可以使用各自操作系统上的编译器。</p> <p>以下部分将指导您如何在不同的操作系统上安装 GNU 的 C/C++ 编译器。这里同时提到 C/C++，主要是因为 GNU 的 gcc 编译器适合于 C 和 C++ 编程语言。</p> <h2 class="tutheader">安装 GNU 的 C/C++ 编译器</h2> <h2>UNIX/Linux 上的安装</h2> <p>如果您使用的是 <b>Linux 或 UNIX</b>，请在命令行使用下面的命令来检查您的系统上是否安装了 GCC：</p> <pre>$ g++ -v
</pre> <p>如果您的计算机上已经安装了 GNU 编译器，则会显示如下消息：</p> <pre>Using built-in specs.
Target: i386-redhat-linux
Configured with: ../configure --prefix=/usr .......
Thread model: posix
gcc version 4.1.2 20080704 (Red Hat 4.1.2-46)
</pre> <p>如果未安装 GCC，那么请按照 <a href="//gcc.gnu.org/install/" rel="external nofollow" target="_blank">http://gcc.gnu.org/install/</a> 上的详细说明安装 GCC。</p> <h2>Mac OS X 上的安装</h2> <p>如果您使用的是 Mac OS X，最快捷的获取 GCC 的方法是从苹果的网站上下载 Xcode 开发环境，并按照安装说明进行安装。一旦安装上 Xcode，您就能使用 GNU 编译器。</p> <p>Xcode 目前可从 <a href="//developer.apple.com/technologies/tools/" rel="external nofollow" target="_blank">developer.apple.com/technologies/tools/</a> 上下载。</p> <h2>Windows 上的安装</h2> <p>为了在 Windows 上安装 GCC，您需要安装 MinGW。为了安装 MinGW，请访问 MinGW 的主页 <a href="//www.mingw.org/" rel="external nofollow" target="_blank">www.mingw.org</a>，进入 MinGW 下载页面，下载最新版本的 MinGW 安装程序，命名格式为 MinGW-&lt;version&gt;.exe。</p> <p>当安装 MinWG 时，您至少要安装 gcc-core、gcc-g++、binutils 和 MinGW runtime，但是一般情况下都会安装更多其他的项。</p> <p>添加您安装的 MinGW 的 bin 子目录到您的 <b>PATH</b> 环境变量中，这样您就可以在命令行中通过简单的名称来指定这些工具。</p> <p>当完成安装时，您可以从 Windows 命令行上运行 gcc、g++、ar、ranlib、dlltool 和其他一些 GNU 工具。</p></div>
<div style="clear:both"></div>
</div>",3,1,C++教程,C++环境设置,NULL,NULL,NULL
3,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">基本语法</span></h2> <div class="tutintro"> <p>C++ 程序可以定义为对象的集合，这些对象通过调用彼此的方法进行交互。现在让我们简要地看一下什么是类、对象，方法、即时变量。</p> <ul class="list"> <li><strong>对象 -</strong> 对象具有状态和行为。例如：一只狗的状态 - 颜色、名称、品种，行为 - 摇动、叫唤、吃。对象是类的实例。</li> <li><strong>类 -</strong> 类可以定义为描述对象行为/状态的模板/蓝图。</li> <li><strong>方法 -</strong> 从基本上说，一个方法表示一种行为。一个类可以包含多个方法。可以在方法中写入逻辑、操作数据以及执行所有的动作。</li> <li><strong>即时变量 -</strong> 每个对象都有其独特的即时变量。对象的状态是由这些即时变量的值创建的。</li> </ul> </div> <h2 class="tutheader">C++ 程序结构</h2> <p>让我们看一段简单的代码，可以输出单词 <em>Hello World</em>。</p> <pre lang="cpp" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-comment">// main() 是程序开始执行的地方</span>

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span>
</span>{
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Hello World"</span>; <span class="hljs-comment">// 输出 Hello World    return 0; </span>
} </code></pre> <p>接下来我们讲解一下上面这段程序：</p> <ul class="list"> <li>C++ 语言定义了一些头文件，这些头文件包含了程序中必需的或有用的信息。上面这段程序中，包含了头文件 <strong>&lt;iostream&gt;</strong>。</li> <li>行 <strong>using namespace std;</strong> 告诉编译器使用 std 命名空间。命名空间是 C++ 中一个相对新的概念。</li> <li>下一行 <strong>// main() 是程序开始执行的地方</strong> 是一个单行注释。单行注释以 // 开头，在行末结束。</li> <li>下一行 <strong>int main()</strong> 是主函数，程序从这里开始执行。</li> <li>下一行 <strong>cout &lt;&lt; "Hello World";</strong> 会在屏幕上显示消息 "Hello World"。</li> <li>下一行 <strong>return 0;</strong> 终止 main( )函数，并向调用进程返回值 0。</li> </ul> <h2 class="tutheader">编译 &amp; 执行 C++ 程序</h2> <p>接下来让我们看看如何把源代码保存在一个文件中，以及如何编译并运行它。下面是简单的步骤：</p> <ul class="list"> <li>打开一个文本编辑器，添加上述代码。</li> <li>保存文件为 hello.cpp。</li> <li>打开命令提示符，进入到保存文件所在的目录。</li> <li>键入 'g++ hello.cpp '，输入回车，编译代码。如果代码中没有错误，命令提示符会跳到下一行，并生成 a.out 可执行文件。</li> <li>现在，键入 ' a.out' 来运行程序。</li> <li>您可以看到屏幕上显示 ' Hello World '。</li> </ul> <pre>$ g++ hello.cpp
$ ./a.out
Hello World
</pre> <p>请确保您的路径中已包含 g++ 编译器，并确保在包含源文件 hello.cpp 的目录中运行它。</p> <p>您也可以使用 makefile 来编译 C/C++ 程序。</p> <h2 class="tutheader">C++ 中的分号 &amp; 块</h2> <p>在 C++ 中，分号是语句结束符。也就是说，每个语句必须以分号结束。它表明一个逻辑实体的结束。</p> <p>例如，下面是三个不同的语句：</p> <pre>x = y;
y = y+1;
add(x, y);
</pre> <p>块是一组使用大括号括起来的按逻辑连接的语句。例如：</p> <pre>{
   cout &lt;&lt; "Hello World"; // 输出 Hello World    return 0; 
} </pre> <p>C++ 不以行末作为结束符的标识，因此，您可以在一行上放置多个语句。例如：</p> <pre>x = y;
y = y+1;
add(x, y);
</pre> <p>等同于</p> <pre>x = y; y = y+1; add(x, y);
</pre> <h2 class="tutheader">C++ 标识符</h2> <p>C++ 标识符是用来标识变量、函数、类、模块，或任何其他用户自定义项目的名称。一个标识符以字母 A-Z 或 a-z 或下划线 _ 开始，后跟零个或多个字母、下划线和数字（0-9）。</p> <p>C++ 标识符内不允许出现标点字符，比如 @、$ 和 %。C++ 是区分大小写的编程语言。因此，在 C++ 中，<strong>Manpower</strong> 和 <strong>manpower</strong> 是两个不同的标识符。</p> <p>下面列出几个有效的标识符：</p> <pre>mohd       zara    abc   move_name  a_123
myname50   _temp   j     a23b9      retVal
</pre> <h2 class="tutheader">C++ 关键字</h2> <p>下表列出了 C++ 中的保留字。这些保留字不能作为常量名、变量名或其他标识符名称。</p> <table class="reference notranslate "> <tbody><tr><td>asm</td><td>else</td><td>new</td><td>this</td></tr> <tr><td>auto</td><td>enum</td><td>operator</td><td>throw</td></tr> <tr><td>bool</td><td>explicit</td><td>private</td><td>true</td></tr> <tr><td>break</td><td>export</td><td>protected</td><td>try</td></tr> <tr><td>case</td><td>extern</td><td>public</td><td>typedef</td></tr> <tr><td>catch</td><td>false</td><td>register</td><td>typeid</td></tr> <tr><td>char</td><td>float</td><td>reinterpret_cast</td><td>typename</td></tr> <tr><td>class</td><td>for</td><td>return</td><td>union</td></tr> <tr><td>const</td><td>friend</td><td>short</td><td>unsigned</td></tr> <tr><td>const_cast</td><td>goto</td><td>signed</td><td>using</td></tr> <tr><td>continue</td><td>if</td><td>sizeof</td><td>virtual</td></tr> <tr><td>default</td><td>inline</td><td>static</td><td>void</td></tr> <tr><td>delete</td><td>int</td><td>static_cast</td><td>volatile</td></tr> <tr><td>do</td><td>long</td><td>struct</td><td>wchar_t</td></tr> <tr><td>double</td><td>mutable</td><td>switch</td><td>while</td></tr> <tr><td>dynamic_cast</td><td>namespace</td><td>template</td><td>&nbsp;</td></tr> </tbody></table> <br> <h2 class="tutheader">三字符组</h2> <p>三字符组就是用于表示另一个字符的三个字符序列，又称为三字符序列。三字符序列总是以两个问号开头。</p> <p>三字符序列不太常见，但 C++ 标准允许把某些字符指定为三字符序列。以前为了表示键盘上没有的字符，这是必不可少的一种方法。</p> <p>三字符序列可以出现在任何地方，包括字符串、字符序列、注释和预处理指令。</p> <p>下面列出了最常用的三字符序列：</p> <table class="reference notranslate "> <tbody><tr><th>三字符组</th><th>替换</th></tr> <tr><td>??=</td><td>#</td></tr> <tr><td>??/</td><td>\</td></tr> <tr><td>??'</td><td>^</td></tr> <tr><td>??(</td><td>[</td></tr> <tr><td>??)</td><td>]</td></tr> <tr><td>??!</td><td>|</td></tr> <tr><td>??&lt;</td><td>{</td></tr> <tr><td>??&gt;</td><td>}</td></tr> <tr><td>??-</td><td>~</td></tr> </tbody></table> <p>所有的编译器都不支持三字符组，为避免造成混乱，不建议使用三字符组。</p> <h2 class="tutheader">C++ 中的空格</h2> <p>只包含空格的行，被称为空白行，可能带有注释，C++ 编译器会完全忽略它。</p> <p>在 C++ 中，空格用于描述空白符、制表符、换行符和注释。空格分隔语句的各个部分，让编译器能识别语句中的某个元素（比如 int）在哪里结束，下一个元素在哪里开始。因此，在下面的语句中：</p> <pre>int age;
</pre> <p>在这里，int 和 age 之间必须至少有一个空格字符（通常是一个空白符），这样编译器才能够区分它们。另一方面，在下面的语句中：</p> <pre>fruit = apples + oranges;   // 获取水果的总数
</pre> <p>fruit 和 =，或者 = 和 apples 之间的空格字符不是必需的，但是为了增强可读性，您可以根据需要适当增加一些空格。</p></div>
<div style="clear:both"></div>
</div>",4,2,C++教程,C++基本语法,NULL,NULL,NULL
4,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">注释</span></h2> 
<p>程序的注释是解释性语句，您可以在 C++ 代码中包含注释，这将提高源代码的可读性。所有的编程语言都允许某种形式的注释。</p>
<p>C++ 支持单行注释和多行注释。注释中的所有字符会被 C++ 编译器忽略。</p>
<p>C++ 注释以 /* 开始，以 */ 终止。例如：</p> <pre>/* 这是注释 */

/* C++ 注释也可以
 * 跨行
 */
</pre> 
<p>注释也能以 // 开始，直到行末为止。例如：</p> <pre lang="c" showdemo="1"><code class="c hljs cpp"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> </span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

main()
{
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Hello World"</span>; <span class="hljs-comment">// 输出 Hello World     return 0;</span><span style="line-height: 1.7;"><span class="hljs-comment">&nbsp;</span>
</span><span style="line-height: 1.7;">} </span></code></pre> 
<p>当上面的代码被编译时，编译器会忽略 <strong>// prints Hello World</strong>，最后会产生以下结果：</p> <pre>Hello World
</pre> 
<p>在 /* 和 */ 注释内部，// 字符没有特殊的含义。在 // 注释内，/* 和 */ 字符也没有特殊的含义。因此，您可以在一种注释内嵌套另一种注释。例如：</p> <pre>/* 用于输出 Hello World 的注释

cout &lt;&lt; "Hello World"; // 输出 Hello World  */ </pre></div>
<div style="clear:both"></div>
</div>",5,3,C++教程,C++注释,NULL,NULL,NULL
5,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">数据类型</span></h2> 
<div class="tutintro">
    <p>使用编程语言进行编程时，需要用到各种变量来存储各种信息。变量保留的是它所存储的值的内存位置。这意味着，当您创建一个变量时，就会在内存中保留一些空间。</p>
    <p>您可能需要存储各种数据类型（比如字符型、宽字符型、整型、浮点型、双浮点型、布尔型等）的信息，操作系统会根据变量的数据类型，来分配内存和决定在保留内存中存储什么。</p>
</div>
 <h2 class="tutheader">基本的内置类型</h2> 
<p>C++ 为程序员提供了种类丰富的内置数据类型和用户自定义的数据类型。下表列出了七种基本的 C++ 数据类型：</p>
<table class="reference notranslate ">
    <tbody>
        <tr>
            <th width="50%">类型</th>
            <th>关键字</th>
        </tr>
        <tr>
            <td>布尔型</td>
            <td>bool</td>
        </tr>
        <tr>
            <td>字符型</td>
            <td>char</td>
        </tr>
        <tr>
            <td>整型</td>
            <td>int</td>
        </tr>
        <tr>
            <td>浮点型</td>
            <td>float</td>
        </tr>
        <tr>
            <td>双浮点型</td>
            <td>double</td>
        </tr>
        <tr>
            <td>无类型</td>
            <td>void</td>
        </tr>
        <tr>
            <td>宽字符型</td>
            <td>wchar_t</td>
        </tr>
    </tbody>
</table>
<p>一些基本类型可以使用一个或多个类型修饰符进行修饰：</p>
<ul class="list">
    <li>signed</li>
    <li>unsigned</li>
    <li>short</li>
    <li>long</li>
</ul>
<p>下表显示了各种变量类型在内存中存储值时需要占用的内存，以及该类型的变量所能存储的最大值和最小值。</p><p><strong>注意：</strong>不同系统会有所差异。<br></p>
<table class="reference">
<tbody><tr><th>类型</th><th>位</th><th>范围</th></tr>
<tr><td>char</td><td>1 个字节</td><td>-128 到 127 或者 0 到 255</td></tr>
<tr><td>unsigned char</td><td>1 个字节</td><td>0 到 255</td></tr>
<tr><td>signed char</td><td>1 个字节</td><td>-128 到 127</td></tr>
<tr><td>int</td><td>4 个字节</td><td>-2147483648 到 2147483647</td></tr>
<tr><td>unsigned int</td><td>4 个字节</td><td>0 到 4294967295</td></tr>
<tr><td>signed int</td><td>4 个字节</td><td>-2147483648 到 2147483647</td></tr>
<tr><td>short int</td><td>2 个字节</td><td>-32768 到 32767</td></tr>
<tr><td>unsigned short int</td><td>2 个字节</td><td>0 到 65,535</td></tr>
<tr><td>signed short int</td><td>2 个字节</td><td>-32768 到 32767</td></tr>
<tr><td>long int</td><td>8 个字节</td><td>-9,223,372,036,854,775,808 到 9,223,372,036,854,775,807</td></tr>
<tr><td>signed long int</td><td>8 个字节</td><td>-9,223,372,036,854,775,808 到 9,223,372,036,854,775,807</td></tr>
<tr><td>unsigned long int</td><td>8 个字节</td><td>0 to 18,446,744,073,709,551,615</td></tr>
<tr><td>float</td><td>4 个字节</td><td>+/- 3.4e +/- 38 (~7 个数字)</td></tr>
<tr><td>double</td><td>8 个字节</td><td>+/- 1.7e +/- 308 (~15 个数字)</td></tr>
<tr><td>long double</td><td>16 个字节</td><td>+/- 1.7e +/- 308 (~15 个数字)</td></tr>
<tr><td>wchar_t</td><td>2 或 4 个字节</td><td>1 个宽字符</td></tr>
</tbody></table>
<p>从上表可得知，变量的大小会根据编译器和所使用的电脑而有所不同。</p>
<p>下面实例会输出您电脑上各种数据类型的大小。</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span>
</span>{
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Size of char : "</span> &lt;&lt; <span class="hljs-keyword">sizeof</span>(<span class="hljs-keyword">char</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Size of int : "</span> &lt;&lt; <span class="hljs-keyword">sizeof</span>(<span class="hljs-keyword">int</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Size of short int : "</span> &lt;&lt; <span class="hljs-keyword">sizeof</span>(<span class="hljs-keyword">short</span> <span class="hljs-keyword">int</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Size of long int : "</span> &lt;&lt; <span class="hljs-keyword">sizeof</span>(<span class="hljs-keyword">long</span> <span class="hljs-keyword">int</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Size of float : "</span> &lt;&lt; <span class="hljs-keyword">sizeof</span>(<span class="hljs-keyword">float</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Size of double : "</span> &lt;&lt; <span class="hljs-keyword">sizeof</span>(<span class="hljs-keyword">double</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Size of wchar_t : "</span> &lt;&lt; <span class="hljs-keyword">sizeof</span>(<span class="hljs-keyword">wchar_t</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre>

<p>本实例使用了 <strong>endl</strong>，这将在每一行后插入一个换行符，&lt;&lt; 运算符用于向屏幕传多个值。我们也使用 <strong>sizeof()</strong> 函数来获取各种数据类型的大小。</p>
<p>当上面的代码被编译和执行时，它会产生以下的结果，结果会根据所使用的计算机而有所不同：</p> <pre>Size of char : 1
Size of int : 4
Size of short int : 2
Size of long int : 4
Size of float : 4
Size of double : 8
Size of wchar_t : 4
</pre> 
 <h2 class="tutheader">typedef 声明</h2> 
<p>您可以使用 <strong>typedef</strong> 为一个已有的类型取一个新的名字。下面是使用 typedef 定义一个新类型的语法：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-keyword">typedef</span> type newname; 
</code></pre> 
<p>例如，下面的语句会告诉编译器，feet 是 int 的另一个名称：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-keyword">typedef</span> <span class="hljs-keyword">int</span> feet;
</code></pre> 
<p>现在，下面的声明是完全合法的，它创建了一个整型变量 distance：</p> <pre lang="cpp"><code class="cpp hljs">feet distance;
</code></pre> 
 <h2 class="tutheader">枚举类型</h2> 
<p>枚举类型声明一个可选的类型名称和一组标识符，用来作为该类型的值。其带有零个或多个标识符可以被用来作为该类型的值。每个枚举数是一个枚举类型的常数。</p>
<p>创建枚举，需要使用关键字 <strong>enum</strong>。枚举类型的一般形式为：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-keyword">enum</span> <span class="hljs-keyword">enum</span>-name { <span class="hljs-built_in">list</span> of names } var-<span class="hljs-built_in">list</span>; 
</code></pre> 
<p>在这里，enum-name 是枚举类型的名称。名称列表 { list of names } 是用逗号分隔的。</p>
<p>例如，下面的代码定义了一个颜色枚举，变量 c 的类型为 color。最后，c 被赋值为 "blue"。</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-keyword">enum</span> color { red, green, blue } c;
c = blue;
</code></pre> 
<p>默认情况下，第一个名称的值为 0，第二个名称的值为 1，第三个名称的值为 2，以此类推。但是，您也可以给名称赋予一个特殊的值，只需要添加一个初始值即可。例如，在下面的枚举中，<strong>green</strong> 的值为 5。</p> <pre>enum color { red, green=5, blue };
</pre> 
<p>在这里，<strong>blue</strong> 的值为 6，因为默认情况下，每个名称都会比它前面一个名称大 1。</p>
<br>
<p>
    <br>
</p></div>
<div style="clear:both"></div>
</div>",6,4,C++教程,C++数据类型,NULL,NULL,NULL
6,"<div class="content-bg"><div class="content-intro view-box "><h2>C++ <span class="color_h1">变量类型</span></h2> <p>变量其实只不过是程序可操作的存储区的名称。C++ 中每个变量都有指定的类型，类型决定了变量存储的大小和布局，该范围内的值都可以存储在内存中，运算符可应用于变量上。</p><p>变量的名称可以由字母、数字和下划线字符组成。它必须以字母或下划线开头。大写字母和小写字母是不同的，因为 C++ 是大小写敏感的。</p><p>基于前一章讲解的基本类型，有以下几种基本的变量类型，将在下一章中进行讲解：</p><table class="reference notranslate">    <tbody>        <tr>            <th width="30%">类型</th>            <th>描述</th>        </tr>        <tr>            <td>bool</td>            <td>存储值 true 或 false。</td>        </tr>        <tr>            <td>char</td>            <td>通常是一个八位字节（一个字节）。这是一个整数类型。</td>        </tr>        <tr>            <td>int</td>            <td>对机器而言，整数的最自然的大小。</td>        </tr>        <tr>            <td>float</td>            <td>单精度浮点值。</td>        </tr>        <tr>            <td>double</td>            <td>双精度浮点值。</td>        </tr>        <tr>            <td>void</td>            <td>表示类型的缺失。</td>        </tr>        <tr>            <td>wchar_t</td>            <td>宽字符类型。</td>        </tr>    </tbody></table><p>C++ 也允许定义各种其他类型的变量，比如<b>枚举、指针、数组、引用、数据结构、类</b>等等，这将会在后续的章节中进行讲解。</p><p>下面我们将讲解如何定义、声明和使用各种类型的变量。</p> <h2 class="tutheader">C++ 中的变量定义</h2> <p>变量定义就是告诉编译器在何处创建变量的存储，以及如何创建变量的存储。变量定义指定一个数据类型，并包含了该类型的一个或多个变量的列表，如下所示：</p> <pre>type variable_list;</pre> <p>在这里，<b>type</b> 必须是一个有效的 C++ 数据类型，可以是 char、w_char、int、float、double、bool 或任何用户自定义的对象，<b>variable_list</b> 可以由一个或多个标识符名称组成，多个标识符之间用逗号分隔。下面列出几个有效的声明：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-keyword">int</span>    i, j, k;<span class="hljs-keyword">char</span>   c, ch;<span class="hljs-keyword">float</span>  f, salary;<span class="hljs-keyword">double</span> d;</code></pre> <p>行 <b>int i, j, k;</b> 声明并定义了变量 i、j 和 k，这指示编译器创建类型为 int 的名为 i、j、k 的变量。</p><p>变量可以在声明的时候被初始化（指定一个初始值）。初始化器由一个等号，后跟一个常量表达式组成，如下所示：</p> <pre>type variable_name = value;</pre> <p>下面列举几个实例：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-keyword">extern</span> <span class="hljs-keyword">int</span> d = <span class="hljs-number">3</span>, f = <span class="hljs-number">5</span>;    <span class="hljs-comment">// d 和 f 的声明 </span><span class="hljs-keyword">int</span> d = <span class="hljs-number">3</span>, f = <span class="hljs-number">5</span>;           <span class="hljs-comment">// 定义并初始化 d 和 f</span>byte z = <span class="hljs-number">22</span>;                <span class="hljs-comment">// 定义并初始化 z</span><span class="hljs-keyword">char</span> x = <span class="hljs-string">'x'</span>;               <span class="hljs-comment">// 变量 x 的值为 'x'</span></code></pre> <p>不带初始化的定义：带有静态存储持续时间的变量会被隐式初始化为 NULL（所有字节的值都是 0），其他所有变量的初始值是未定义的。</p> <h2 class="tutheader">C++ 中的变量声明</h2> <p>变量声明向编译器保证变量以给定的类型和名称存在，这样编译器在不需要知道变量完整细节的情况下也能继续进一步的编译。变量声明只在编译时有它的意义，在程序连接时编译器需要实际的变量声明。</p><p>当您使用多个文件且只在其中一个文件中定义变量时（定义变量的文件在程序连接时是可用的），变量声明就显得非常有用。您可以使用 <b>extern</b> 关键字在任何地方声明一个变量。虽然您可以在 C++ 程序中多次声明一个变量，但变量只能在某个文件、函数或代码块中被定义一次。</p> <h2 class="tutheader">实例</h2> <p>尝试下面的实例，其中，变量在头部就已经被声明，但它们是在主函数内被定义和初始化的：</p> <pre lang="cpp" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span><span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;<span class="hljs-comment">// 变量声明</span><span class="hljs-keyword">extern</span> <span class="hljs-keyword">int</span> a, b;<span class="hljs-keyword">extern</span> <span class="hljs-keyword">int</span> c;<span class="hljs-keyword">extern</span> <span class="hljs-keyword">float</span> f;  <span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span></span>{  <span class="hljs-comment">// 变量定义</span>  <span class="hljs-keyword">int</span> a, b;  <span class="hljs-keyword">int</span> c;  <span class="hljs-keyword">float</span> f;   <span class="hljs-comment">// 实际初始化</span>  a = <span class="hljs-number">10</span>;  b = <span class="hljs-number">20</span>;  c = a + b;   <span class="hljs-built_in">cout</span> &lt;&lt; c &lt;&lt; <span class="hljs-built_in">endl</span> ;    f = <span class="hljs-number">70.0</span>/<span class="hljs-number">3.0</span>;   <span class="hljs-built_in">cout</span> &lt;&lt; f &lt;&lt; <span class="hljs-built_in">endl</span> ;     <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>; } </code></pre> <p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>3023.3333</pre> <p>同样的，在函数声明时，提供一个函数名，而函数的实际定义则可以在任何地方进行。例如：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-comment">// 函数声明</span><span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">func</span><span class="hljs-params">()</span></span>;<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span></span>{    <span class="hljs-comment">// 函数调用</span>    <span class="hljs-keyword">int</span> i = func();}<span class="hljs-comment">// 函数定义</span><span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">func</span><span class="hljs-params">()</span></span>{    <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;}</code></pre>  <h2 class="tutheader">C++ 中的左值（Lvalues）和右值（Rvalues）</h2> <p>C++ 中有两种类型的表达式：</p><ul class="list">    <li><b>左值（lvalue）：</b>指向内存位置的表达式被称为左值（lvalue）表达式。左值可以出现在赋值号的左边或右边。</li>    <li><b>右值（rvalue）：</b>术语右值（rvalue）指的是存储在内存中某些地址的数值。右值是不能对其进行赋值的表达式，也就是说，右值可以出现在赋值号的右边，但不能出现在赋值号的左边。</li></ul><p>变量是左值，因此可以出现在赋值号的左边。数值型的字面值是右值，因此不能被赋值，不能出现在赋值号的左边。下面是一个有效的语句：</p> <pre>int g = 20;</pre> <p>但是下面这个就不是一个有效的语句，会生成编译时错误：</p> <pre>10 = 20;</pre></div><div style="clear:both"></div></div>",7,5,C++教程,C++变量类型,NULL,NULL,NULL
7,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">变量作用域</span></h2> 
<div class="tutintro">
    <p>作用域是程序的一个区域，一般来说有三个地方可以声明变量：</p>
    <ul class="list">
        <li>在函数或一个代码块内部声明的变量，称为局部变量。</li>
        <li>在函数参数的定义中声明的变量，称为形式参数。</li>
        <li>在所有函数外部声明的变量，称为全局变量。</li>
    </ul>
    <p>我们将在后续的章节中学习什么是函数和参数。本章我们先来讲解声明是局部变量和全局变量。</p>
</div>
 <h2 class="tutheader">局部变量</h2> 
<p>在函数或一个代码块内部声明的变量，称为局部变量。它们只能被函数内部或者代码块内部的语句使用。下面的实例使用了局部变量：</p> <pre>#include &lt;iostream&gt;
using namespace std;
 
int main ()
{
  // 局部变量声明
  int a, b;
  int c;
 
  // 实际初始化
  a = 10;
  b = 20;
  c = a + b;
 
  cout &lt;&lt; c;     return 0; 
} </pre> 
 <h2 class="tutheader">全局变量</h2> 
<p>在所有函数外部定义的变量（通常是在程序的头部），称为全局变量。全局变量的值在程序的整个生命周期内都是有效的。</p>
<p>全局变量可以被任何函数访问。也就是说，全局变量一旦声明，在整个程序中都是可用的。下面的实例使用了全局变量和局部变量：</p> <pre lang="cpp" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-comment">// 全局变量声明</span>
<span class="hljs-keyword">int</span> g;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
  <span class="hljs-comment">// 局部变量声明</span>
  <span class="hljs-keyword">int</span> a, b;
 
  <span class="hljs-comment">// 实际初始化</span>
  a = <span class="hljs-number">10</span>;
  b = <span class="hljs-number">20</span>;
  g = a + b;
 
  <span class="hljs-built_in">cout</span> &lt;&lt; g;     <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
 } </code></pre> 
<p>在程序中，局部变量和全局变量的名称可以相同，但是在函数内，局部变量的值会覆盖全局变量的值。下面是一个实例：</p> <pre lang="cpp" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-comment">// 全局变量声明</span>
<span class="hljs-keyword">int</span> g = <span class="hljs-number">20</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
  <span class="hljs-comment">// 局部变量声明</span>
  <span class="hljs-keyword">int</span> g = <span class="hljs-number">10</span>;
 
  <span class="hljs-built_in">cout</span> &lt;&lt; g;     <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
} </code></pre> 
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>10
</pre> 
 <h2 class="tutheader">初始化局部变量和全局变量</h2> 
<p>当局部变量被定义时，系统不会对其初始化，您必须自行对其初始化。定义全局变量时，系统会自动初始化为下列值：</p>
<table class="reference notranslate  ">
    <tbody>
        <tr>
            <th width="30%">数据类型</th>
            <th>初始化默认值</th>
        </tr>
        <tr>
            <td>int</td>
            <td>0</td>
        </tr>
        <tr>
            <td>char</td>
            <td><span>'\0'</span>
            </td>
        </tr>
        <tr>
            <td>float</td>
            <td>0</td>
        </tr>
        <tr>
            <td>double</td>
            <td>0</td>
        </tr>
        <tr>
            <td>pointer</td>
            <td>NULL</td>
        </tr>
    </tbody>
</table>
<p>正确地初始化变量是一个良好的编程习惯，否则有时候程序可能会产生意想不到的结果。</p></div>
<div style="clear:both"></div>
</div>",8,6,C++教程,C++变量作用域,NULL,NULL,NULL
8,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">常量</span></h2> 
<div class="tutintro">
    <p>常量是固定值，在程序执行期间不会改变。这些固定的值，又叫做<strong>字面量</strong>。</p>
    <p>常量可以是任何的基本数据类型，可分为整型数字、浮点数字、字符、字符串和布尔值。</p>
    <p>常量就像是常规的变量，只不过常量的值在定义后不能进行修改。</p>
</div>
 <h2 class="tutheader">整数常量</h2> 
<p>整数常量可以是十进制、八进制或十六进制的常量。前缀指定基数：0x 或 0X 表示十六进制，0 表示八进制，不带前缀则默认表示十进制。</p>
<p>整数常量也可以带一个后缀，后缀是 U 和 L 的组合，U 表示无符号整数（unsigned），L 表示长整数（long）。后缀可以是大写，也可以是小写，U 和 L 的顺序任意。</p>
<p>下面列举几个整数常量的实例：</p> <pre>212         // 合法的
215u        // 合法的
0xFeeL      // 合法的
078         // 非法的：8 不是八进制的数字
032UU       // 非法的：不能重复后缀
</pre> 
<p>以下是各种类型的整数常量的实例：</p> <pre>85         // 十进制
0213       // 八进制 
0x4b       // 十六进制 
30         // 整数 
30u        // 无符号整数 
30l        // 长整数 
30ul       // 无符号长整数
</pre> 
 <h2 class="tutheader">浮点常量</h2> 
<p>浮点常量由整数部分、小数点、小数部分和指数部分组成。您可以使用小数形式或者指数形式来表示浮点常量。</p>
<p>当使用小数形式表示时，必须包含小数点、指数，或同时包含两者。当使用指数形式表示时，必须包含整数部分、小数部分，或同时包含两者。带符号的指数是用 e 或 E 引入的。</p>
<p>下面列举几个浮点常量的实例：</p> <pre>3.14159       // 合法的 
314159E-5L    // 合法的 
510E          // 非法的：不完整的指数
210f          // 非法的：没有小数或指数
.e55          // 非法的：缺少整数或分数
</pre> 
 <h2 class="tutheader">布尔常量</h2> 
<p>布尔常量共有两个，它们都是标准的 C++ 关键字：</p>
<ul class="list">
    <li><strong>true</strong> 值代表真。</li>
    <li><strong>false</strong> 值代表假。</li>
</ul>
<p>我们不应把 true 的值看成 1，把 false 的值看成 0。</p>
 <h2 class="tutheader">字符常量</h2> 
<p>字符常量是括在单引号中。如果常量以 L（仅当大写时）开头，则表示它是一个宽字符常量（例如 L'x'），此时它必须存储在 <strong>wchar_t</strong> 类型的变量中。否则，它就是一个窄字符常量（例如 'x'），此时它可以存储在 <strong>char</strong> 类型的简单变量中。</p>
<p>字符常量可以是一个普通的字符（例如 'x'）、一个转义序列（例如 '\t'），或一个通用的字符（例如 '\u02C0'）。</p>
<p>在 C++ 中，有一些特定的字符，当它们前面有反斜杠时，它们就具有特殊的含义，被用来表示如换行符（\n）或制表符（\t）等。下表列出了一些这样的转义序列码：</p>
<table class="reference notranslate ">
    <tbody>
        <tr>
            <th>转义序列</th>
            <th>含义</th>
        </tr>
        <tr>
            <td>\\</td>
            <td>\ 字符</td>
        </tr>
        <tr>
            <td>\'</td>
            <td>' 字符</td>
        </tr>
        <tr>
            <td>\"</td>
            <td>" 字符</td>
        </tr>
        <tr>
            <td>\?</td>
            <td>? 字符</td>
        </tr>
        <tr>
            <td>\a</td>
            <td>警报铃声</td>
        </tr>
        <tr>
            <td>\b</td>
            <td>退格键</td>
        </tr>
        <tr>
            <td>\f</td>
            <td>换页符</td>
        </tr>
        <tr>
            <td>\n</td>
            <td>换行符</td>
        </tr>
        <tr>
            <td>\r</td>
            <td>回车</td>
        </tr>
        <tr>
            <td>\t</td>
            <td>水平制表符</td>
        </tr>
        <tr>
            <td>\v</td>
            <td>垂直制表符</td>
        </tr>
        <tr>
            <td>\ooo</td>
            <td>一到三位的八进制数</td>
        </tr>
        <tr>
            <td>\xhh . . .</td>
            <td>一个或多个数字的十六进制数</td>
        </tr>
    </tbody>
</table>
<p>下面的实例显示了一些转义序列字符：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span>
</span>{
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Hello\tWorld\n\n"</span>;
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Hello   World
</pre> 
 <h2 class="tutheader">字符串常量</h2> 
<p>字符串字面值或常量是括在双引号 "" 中的。一个字符串包含类似于字符常量的字符：普通的字符、转义序列和通用的字符。</p>
<p>您可以使用空格做分隔符，把一个很长的字符串常量进行分行。</p>
<p>下面的实例显示了一些字符串常量。下面这三种形式所显示的字符串是相同的。</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs"><span class="hljs-string">"hello, dear"</span>

<span class="hljs-string">"hello, \

dear"</span>

<span class="hljs-string">"hello, "</span> <span class="hljs-string">"d"</span> <span class="hljs-string">"ear"</span></code></pre> 
 <h2 class="tutheader">定义常量</h2> 
<p>在 C++ 中，有两种简单的定义常量的方式：</p>
<ul class="list">
    <li>使用 <strong>#define</strong> 预处理器。</li>
    <li>使用 <strong>const</strong> 关键字。</li>
</ul>
 <h2>#define 预处理器</h2> 
<p>下面是使用 #define 预处理器定义常量的形式：</p> <pre>#define identifier value
</pre> 
<p>具体请看下面的实例：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-meta">#<span class="hljs-meta-keyword">define</span> LENGTH 10   </span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">define</span> WIDTH  5</span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">define</span> NEWLINE <span class="hljs-meta-string">'\n'</span></span>

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span>
</span>{

   <span class="hljs-keyword">int</span> area;  
   
   area = LENGTH * WIDTH;
   <span class="hljs-built_in">cout</span> &lt;&lt; area;
   <span class="hljs-built_in">cout</span> &lt;&lt; NEWLINE;
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>50
</pre> 
 <h2>const 关键字</h2> 
<p>您可以使用 <strong>const</strong> 前缀声明指定类型的常量，如下所示：</p> <pre>const type variable = value;
</pre> 
<p>具体请看下面的实例：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span>
</span>{
   <span class="hljs-keyword">const</span> <span class="hljs-keyword">int</span>  LENGTH = <span class="hljs-number">10</span>;
   <span class="hljs-keyword">const</span> <span class="hljs-keyword">int</span>  WIDTH  = <span class="hljs-number">5</span>;
   <span class="hljs-keyword">const</span> <span class="hljs-keyword">char</span> NEWLINE = <span class="hljs-string">'\n'</span>;
   <span class="hljs-keyword">int</span> area;  
   
   area = LENGTH * WIDTH;
   <span class="hljs-built_in">cout</span> &lt;&lt; area;
   <span class="hljs-built_in">cout</span> &lt;&lt; NEWLINE;
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
} </code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>50
</pre> 
<p>请注意，把常量定义为大写字母形式，是一个很好的编程实践。</p>
<br><p><br></p></div>
<div style="clear:both"></div>
</div>",9,7,C++教程,C++常量,NULL,NULL,NULL
9,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">修饰符类型</span></h2> 
<p>C++ 允许在 <strong>char、int 和 double</strong> 数据类型前放置修饰符。修饰符用于改变基本类型的含义，所以它更能满足各种情境的需求。</p>
<p>下面列出了数据类型修饰符：</p>
<ul class="list">
    <li>signed</li>
    <li>unsigned</li>
    <li>long</li>
    <li>short</li>
</ul>
<p>修饰符 <strong>signed、unsigned、long 和 short</strong> 可应用于整型，<strong>signed</strong> 和 <strong>unsigned</strong> 可应用于字符型，<strong>long</strong> 可应用于双精度型。</p>
<p>修饰符 <strong>signed</strong> 和 <strong>unsigned</strong> 也可以作为 <strong>long</strong> 或 <strong>short</strong> 修饰符的前缀。例如：<strong>unsigned long int</strong>。</p>
<p>C++ 允许使用速记符号来声明<strong>无符号短整数</strong>或<strong>无符号长整数</strong>。您可以不写 int，只写单词 <strong>unsigned short</strong> 或 <strong>unsigned long</strong>，int 是隐含的。例如，下面的两个语句都声明了无符号整型变量。</p> <pre>unsigned x;
unsigned int y;
</pre> 
<p>为了理解 C++ 解释有符号整数和无符号整数修饰符之间的差别，我们来运行一下下面这个短程序：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-comment">/* 
 * 这个程序演示了有符号整数和无符号整数之间的差别
*/</span>
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span>
</span>{
   <span class="hljs-keyword">short</span> <span class="hljs-keyword">int</span> i;           <span class="hljs-comment">// 有符号短整数</span>
   <span class="hljs-keyword">short</span> <span class="hljs-keyword">unsigned</span> <span class="hljs-keyword">int</span> j;  <span class="hljs-comment">// 无符号短整数</span>

   j = <span class="hljs-number">50000</span>;

   i = j;
   <span class="hljs-built_in">cout</span> &lt;&lt; i &lt;&lt; <span class="hljs-string">" "</span> &lt;&lt; j;

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
} </code></pre>
<p></p>
<p>当上面的程序运行时，会输出下列结果：</p> <pre>-15536 50000
</pre> 
<p>上述结果中，无符号短整数 50,000 的位模式被解释为有符号短整数 -15,536。</p>
 <h2 class="tutheader">C++ 中的类型限定符</h2> 
<p>类型限定符提供了变量的额外信息。</p>
<table class="reference notranslate ">
    <tbody>
        <tr>
            <th>限定符</th>
            <th>含义</th>
        </tr>
        <tr>
            <td>const</td>
            <td><strong>const</strong> 类型的对象在程序执行期间不能被修改改变。</td>
        </tr>
        <tr>
            <td>volatile</td>
            <td>修饰符 <strong>volatile</strong> 告诉编译器，变量的值可能以程序未明确指定的方式被改变。</td>
        </tr>
        <tr>
            <td>restrict</td>
            <td>由 <strong>restrict</strong> 修饰的指针是唯一一种访问它所指向的对象的方式。只有 C99 增加了新的类型限定符 restrict。</td>
        </tr>
    </tbody>
</table><p><br></p></div>
<div style="clear:both"></div>
</div>",10,8,C++教程,C++修饰符类型,NULL,NULL,NULL
10,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">存储类</span></h2> 
<div class="tutintro">
    <p>存储类定义 C++ 程序中变量/函数的范围（可见性）和生命周期。这些说明符放置在它们所修饰的类型之前。下面列出 C++ 程序中可用的存储类：</p>
    <ul class="list">
        <li>auto</li>
        <li>register</li>
        <li>static</li>
        <li>extern</li>
        <li>mutable</li>
    </ul>
</div>
 <h2 class="tutheader">auto 存储类</h2> 
<p><strong>auto</strong> 存储类是所有局部变量默认的存储类。</p> <pre>{
   int mount;
   auto int month;
}
</pre> 
<p>上面的实例定义了两个带有相同存储类的变量，auto 只能用在函数内，即 auto 只能修饰局部变量。</p>
 <h2 class="tutheader">register 存储类</h2> 
<p><strong>register</strong> 存储类用于定义存储在寄存器中而不是 RAM 中的局部变量。这意味着变量的最大尺寸等于寄存器的大小（通常是一个词），且不能对它应用一元的 '&amp;' 运算符（因为它没有内存位置）。</p> <pre>{
   register int  miles;
}
</pre> 
<p>寄存器只用于需要快速访问的变量，比如计数器。还应注意的是，定义 'register' 并不意味着变量将被存储在寄存器中，它意味着变量可能存储在寄存器中，这取决于硬件和实现的限制。</p>
 <h2 class="tutheader">static 存储类</h2> 
<p><strong>static</strong> 存储类指示编译器在程序的生命周期内保持局部变量的存在，而不需要在每次它进入和离开作用域时进行创建和销毁。因此，使用 static 修饰局部变量可以在函数调用之间保持局部变量的值。</p>
<p>static 修饰符也可以应用于全局变量。当 static 修饰全局变量时，会使变量的作用域限制在声明它的文件内。</p>
<p>在 C++ 中，当 static 用在类数据成员上时，会导致仅有一个该成员的副本被类的所有对象共享。</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-comment">// 函数声明 </span>
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">func</span><span class="hljs-params">(<span class="hljs-keyword">void</span>)</span></span>;
 
<span class="hljs-keyword">static</span> <span class="hljs-keyword">int</span> count = <span class="hljs-number">10</span>; <span class="hljs-comment">/* 全局变量 */</span>
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span>
</span>{
    <span class="hljs-keyword">while</span>(count--)
    {
       func();
    }
    <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}
<span class="hljs-comment">// 函数定义</span>
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">func</span><span class="hljs-params">( <span class="hljs-keyword">void</span> )</span>
</span>{
    <span class="hljs-keyword">static</span> <span class="hljs-keyword">int</span> i = <span class="hljs-number">5</span>; <span class="hljs-comment">// 局部静态变量</span>
    i++;
    <span class="hljs-built_in">std</span>::<span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"变量 i 为 "</span> &lt;&lt; i ;
    <span class="hljs-built_in">std</span>::<span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">" , 变量 count 为 "</span> &lt;&lt; count &lt;&lt; <span class="hljs-built_in">std</span>::<span class="hljs-built_in">endl</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p>
<p></p><pre><span>变量</span><span> i </span><span>为</span><span> </span><span>6</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>9</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>7</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>8</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>8</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>7</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>9</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>6</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>10</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>5</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>11</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>4</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>12</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>3</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>13</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>2</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>14</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>1</span><span>
</span><span>变量</span><span> i </span><span>为</span><span> </span><span>15</span><span> </span><span>,</span><span> </span><span>变量</span><span> count </span><span>为</span><span> </span><span>0</span></pre>
<p></p>
 <h2 class="tutheader">extern 存储类</h2> 
<p><strong>extern</strong> 存储类用于提供一个全局变量的引用，全局变量对所有的程序文件都是可见的。当您使用 'extern' 时，对于无法初始化的变量，会把变量名指向一个之前定义过的存储位置。</p>
<p>当您有多个文件且定义了一个可以在其他文件中使用的全局变量或函数时，可以在其他文件中使用 <em>extern</em> 来得到已定义的变量或函数的引用。可以这么理解，<em>extern</em> 是用来在另一个文件中声明一个全局变量或函数。</p>
<p>extern 修饰符通常用于当有两个或多个文件共享相同的全局变量或函数的时候，如下所示：</p>
<p>第一个文件：main.cpp</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-keyword">int</span> count ;
<span class="hljs-function"><span class="hljs-keyword">extern</span> <span class="hljs-keyword">void</span> <span class="hljs-title">write_extern</span><span class="hljs-params">()</span></span>;
 
main()
{
   count = <span class="hljs-number">5</span>;
   write_extern();
}
</code></pre> 
<p>第二个文件：support.cpp</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-keyword">extern</span> <span class="hljs-keyword">int</span> count;
 
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">write_extern</span><span class="hljs-params">(<span class="hljs-keyword">void</span>)</span>
</span>{
   <span class="hljs-built_in">std</span>::<span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Count is "</span> &lt;&lt; count &lt;&lt; <span class="hljs-built_in">std</span>::<span class="hljs-built_in">endl</span>; 
} </code></pre> 
<p>在这里，第二个文件中的 <em>extern</em> 关键字用于声明已经在第一个文件 main.cpp 中定义的 count。现在 ，编译这两个文件，如下所示：</p> <pre>$g++ main.cpp support.cpp -o write
</pre> 
<p>这会产生 <strong>write</strong> 可执行程序，尝试执行 <strong>write</strong>，它会产生下列结果：</p>
<p></p><pre><span>$ </span><span>./</span><span>write
</span><span>Count</span><span> </span><span>is</span><span> </span><span>5</span></pre>
<p></p>
 <h2 class="tutheader">mutable 存储类</h2> 
<p><strong>mutable</strong> 说明符仅适用于类的对象，这将在本教程的最后进行讲解。它允许对象的成员替代常量。也就是说，mutable 成员可以通过 const 成员函数修改。</p><p><br></p></div>
<div style="clear:both"></div>
</div>",11,9,C++教程,C++存储类,NULL,NULL,NULL
11,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">判断</span></h2> 
<div class="tutintro">
    <p>判断结构要求程序员指定一个或多个要评估或测试的条件，以及条件为真时要执行的语句（必需的）和条件为假时要执行的语句（可选的）。</p>
    <p>下面是大多数编程语言中典型的判断结构的一般形式：</p>
    <img src="https://atts.w3cschool.cn/attachments/image/20160829/1472441464322138.png" alt="c++判断">
    <br>
</div>
 <h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><br></h2>
<h2 class="tutheader"><hr>判断语句</h2> 
<p>C++ 编程语言提供了以下类型的判断语句。点击链接查看每个语句的细节。</p>
<table class="reference notranslate ">
    <tbody>
        <tr>
            <th style="width:35%">语句</th>
            <th>描述</th>
        </tr>
        <tr>
            <td><a href="cpp-if.html" title="C++ 中的 if 语句">if 语句</a>
            </td>
            <td>一个 <strong>if 语句</strong> 由一个布尔表达式后跟一个或多个语句组成。</td>
        </tr>
        <tr>
            <td><a href="cpp-if-else.html" title="C++ 中的 if...else 语句">if...else 语句</a>
            </td>
            <td>一个 <strong>if 语句</strong> 后可跟一个可选的 <strong>else 语句</strong>，else 语句在布尔表达式为假时执行。</td>
        </tr>
        <tr>
            <td><a href="cpp-nested-if.html" title="C++ 中的嵌套 if 语句">嵌套 if 语句</a>
            </td>
            <td>您可以在一个 <strong>if</strong> 或 <strong>else if</strong> 语句内使用另一个 <strong>if</strong> 或 <strong>else if</strong> 语句。</td>
        </tr>
        <tr>
            <td><a href="cpp-switch.html" title="C++ 中的 switch 语句">switch 语句</a>
            </td>
            <td>一个 <strong>switch</strong> 语句允许测试一个变量等于多个值时的情况。</td>
        </tr>
        <tr>
            <td><a href="cpp-nested-switch.html" title="C++ 中的嵌套 switch 语句">嵌套 switch 语句</a>
            </td>
            <td>您可以在一个 <strong>switch</strong> 语句内使用另一个 <strong>switch </strong> 语句。</td>
        </tr>
    </tbody>
</table>
<br>
 <h2 class="tutheader">? : 运算符</h2> 
<p>我们已经在前面的章节中讲解了 <a href="cpp-conditional-operator.html"><strong>条件运算符 ? :</strong></a>，可以用来替代 <strong>if...else</strong> 语句。它的一般形式如下：</p> <pre>Exp1 ? Exp2 : Exp3;
</pre> 
<p>其中，Exp1、Exp2 和 Exp3 是表达式。请注意，冒号的使用和位置。</p>
<p>? 表达式的值是由 Exp1 决定的。如果 Exp1 为真，则计算 Exp2 的值，结果即为整个 ? 表达式的值。如果 Exp1 为假，则计算 Exp3 的值，结果即为整个 ? 表达式的值。</p></div>
<div style="clear:both"></div>
</div>",12,10,C++教程,C++判断,NULL,NULL,NULL
12,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">循环</span></h2> <div class="tutintro"> <p>有的时候，可能需要多次执行同一块代码。一般情况下，语句是顺序执行的：函数中的第一个语句先执行，接着是第二个语句，依此类推。</p> <p>编程语言提供了允许更为复杂的执行路径的多种控制结构。</p> <p>循环语句允许我们多次执行一个语句或语句组，下面是大多数编程语言中循环语句的一般形式：</p> <img src="https://atts.w3cschool.cn/attachments/image/20160829/1472440363761312.png" style="text-align: center;" alt=""><div style="text-align: center;"><br></div> </div> <h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><h2 class="tutheader" style="text-align: center;"><br></h2><div style="text-align: center;"><br></div><h2 class="tutheader"><hr>循环类型</h2> <p>C++ 编程语言提供了以下几种循环类型。点击链接查看每个类型的细节。</p> <table class="reference notranslate "> <tbody><tr><th style="width:30%">循环类型</th><th>描述</th></tr> <tr><td><a href="cpp-while-loop.html" title="C++ 中的 while 循环">while 循环</a></td><td>当给定条件为真时，重复语句或语句组。它会在执行循环主体之前测试条件。</td></tr> <tr><td><a href="cpp-for-loop.html" title="C++ 中的 for 循环">for 循环</a></td><td>多次执行一个语句序列，简化管理循环变量的代码。</td></tr> <tr><td><a href="cpp-do-while-loop.html" title="C++ 中的 do...while 循环">do...while 循环</a></td><td>除了它是在循环主体结尾测试条件外，其他与 while 语句类似。</td></tr> <tr><td><a href="cpp-nested-loops.html" title="C++ 中的嵌套循环">嵌套循环</a></td><td>您可以在 while、for 或 do..while 循环内使用一个或多个循环。</td></tr> </tbody></table> <br> <h2 class="tutheader">循环控制语句</h2> <p>循环控制语句更改执行的正常序列。当执行离开一个范围时，所有在该范围中创建的自动对象都会被销毁。</p> <p>C++ 提供了下列的控制语句。点击链接查看每个语句的细节。</p> <table class="reference notranslate "> <tbody><tr><th style="width:30%">控制语句</th><th>描述</th></tr> <tr><td><a href="cpp-break-statement.html" title="C++ 中的 break 语句">break 语句</a></td><td>终止 <strong>loop</strong> 或 <strong>switch</strong> 语句，程序流将继续执行紧接着 loop 或 switch 的下一条语句。</td></tr> <tr><td><a href="cpp-continue-statement.html" title="C++ 中的 continue 语句">continue 语句</a></td><td>引起循环跳过主体的剩余部分，立即重新开始测试条件。</td></tr> <tr><td><a href="cpp-goto-statement.html" title="C++ 中的 goto 语句">goto 语句</a></td><td>将控制转移到被标记的语句。但是不建议在程序中使用 goto 语句。</td></tr> </tbody></table> <br> <h2 class="tutheader">无限循环</h2> <p>如果条件永远不为假，则循环将变成无限循环。<strong>for</strong> 循环在传统意义上可用于实现无限循环。由于构成循环的三个表达式中任何一个都不是必需的，您可以将某些条件表达式留空来构成一个无限循环。</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{

   <span class="hljs-keyword">for</span>( ; ; )
   {
      <span class="hljs-built_in">printf</span>(<span class="hljs-string">"This loop will run forever.\n"</span>);
   }

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}
</code></pre> <p>当条件表达式不存在时，它被假设为真。您也可以设置一个初始值和增量表达式，但是一般情况下，C++ 程序员偏向于使用 for(;;) 结构来表示一个无限循环。</p> <p><strong>注意：</strong>您可以按 Ctrl + C 键终止一个无限循环。</p></div>
<div style="clear:both"></div>
</div>",13,11,C++教程,C++循环,NULL,NULL,NULL
13,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">函数</span></h2> 
<div class="tutintro">
    <p>函数是一组一起执行一个任务的语句。每个 C++ 程序都至少有一个函数，即主函数 <b>main()</b> ，所有简单的程序都可以定义其他额外的函数。</p>
    <p>您可以把代码划分到不同的函数中。如何划分代码到不同的函数中是由您来决定的，但在逻辑上，划分通常是根据每个函数执行一个特定的任务来进行的。</p>
    <p>函数<b>声明</b>告诉编译器函数的名称、返回类型和参数。函数<b>定义</b>提供了函数的实际主体。</p>
    <p>C++ 标准库提供了大量的程序可以调用的内置函数。例如，函数 <b>strcat()</b> 用来连接两个字符串，函数 <b>memcpy()</b> 用来复制内存到另一个位置。</p>
    <p>函数还有很多叫法，比如方法、子例程或程序，等等。</p>
</div>
 <h2 class="tutheader">定义函数</h2> 
<p>C++ 中的函数定义的一般形式如下：</p> <pre>return_type function_name( parameter list )
{
   body of the function
}
</pre> 
<p>在 C++ 中，函数由一个函数头和一个函数主体组成。下面列出一个函数的所有组成部分：</p>
<ul class="list">
    <li><b>返回类型：</b>一个函数可以返回一个值。<b>return_type</b> 是函数返回的值的数据类型。有些函数执行所需的操作而不返回值，在这种情况下，return_type 是关键字 <b>void</b>。</li>
    <li><b>函数名称：</b>这是函数的实际名称。函数名和参数列表一起构成了函数签名。</li>
    <li><b>参数：</b>参数就像是占位符。当函数被调用时，您向参数传递一个值，这个值被称为实际参数。参数列表包括函数参数的类型、顺序、数量。参数是可选的，也就是说，函数可能不包含参数。</li>
    <li><b>函数主体：</b>函数主体包含一组定义函数执行任务的语句。</li>
</ul>
 <h2 class="tutheader">实例</h2> 
<p>以下是 <b>max()</b> 函数的源代码。该函数有两个参数 num1 和 num2，会返回这两个数中较大的那个数：</p> <pre lang="cpp" showdemo="1"><code class="cpp hljs"><span class="hljs-comment">// 函数返回两个数中较大的那个数</span>
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">max</span><span class="hljs-params">(<span class="hljs-keyword">int</span> num1, <span class="hljs-keyword">int</span> num2)</span> 
</span>{
   <span class="hljs-comment">// 局部变量声明</span>
   <span class="hljs-keyword">int</span> result;
 
   <span class="hljs-keyword">if</span> (num1 &gt; num2)
      result = num1;
   <span class="hljs-keyword">else</span>
      result = num2;
 
   <span class="hljs-keyword">return</span> result; 
}
</code></pre> 
 <h2 class="tutheader">函数声明</h2> 
<p>函数<b>声明</b>会告诉编译器函数名称及如何调用函数。函数的实际主体可以单独定义。</p>
<p>函数声明包括以下几个部分：</p> <pre>return_type function_name( parameter list );
</pre> 
<p>针对上面定义的函数 max()，以下是函数声明：</p> <pre>int max(int num1, int num2);
</pre> 
<p>在函数声明中，参数的名称并不重要，只有参数的类型是必需的，因此下面也是有效的声明：</p> <pre>int max(int, int);
</pre> 
<p>当您在一个源文件中定义函数且在另一个文件中调用函数时，函数声明是必需的。在这种情况下，您应该在调用函数的文件顶部声明函数。</p>
 <h2 class="tutheader">调用函数</h2> 
<p>创建 C++ 函数时，会定义函数做什么，然后通过调用函数来完成已定义的任务。</p>
<p>当程序调用函数时，程序控制权会转移给被调用的函数。被调用的函数执行已定义的任务，当函数的返回语句被执行时，或到达函数的结束括号时，会把程序控制权交还给主程序。</p>
<p>调用函数时，传递所需参数，如果函数返回一个值，则可以存储返回值。例如：</p> <pre lang="cpp" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-comment">// 函数声明</span>
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">max</span><span class="hljs-params">(<span class="hljs-keyword">int</span> num1, <span class="hljs-keyword">int</span> num2)</span></span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-comment">// 局部变量声明</span>
   <span class="hljs-keyword">int</span> a = <span class="hljs-number">100</span>;
   <span class="hljs-keyword">int</span> b = <span class="hljs-number">200</span>;
   <span class="hljs-keyword">int</span> ret;
 
   <span class="hljs-comment">// 调用函数来获取最大值</span>
   ret = max(a, b);
 
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Max value is : "</span> &lt;&lt; ret &lt;&lt; <span class="hljs-built_in">endl</span>;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-keyword">return</span> <span class="hljs-number">0</span>; }   <span class="hljs-comment">// 函数返回两个数中较大的那个数</span>
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">max</span><span class="hljs-params">(<span class="hljs-keyword">int</span> num1, <span class="hljs-keyword">int</span> num2)</span>  </span>{    <span class="hljs-comment">// 局部变量声明</span>
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-keyword">int</span> result;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-keyword">if</span> (num1 &gt; num2)
      result = num1;
   <span class="hljs-keyword">else</span>
      result = num2;
 
   <span class="hljs-keyword">return</span> result; 
}
</code></pre> 
<p>把 max() 函数和 main() 函数放一块，编译源代码。当运行最后的可执行文件时，会产生下列结果：</p> <pre>Max value is : 200
</pre> 
 <h2 class="tutheader">函数参数</h2> 
<p>如果函数要使用参数，则必须声明接受参数值的变量。这些变量称为函数的<b>形式参数</b>。</p>
<p>形式参数就像函数内的其他局部变量，在进入函数时被创建，退出函数时被销毁。</p>
<p>当调用函数时，有两种向函数传递参数的方式：</p>
<table class="reference notranslate">
    <tbody>
        <tr>
            <th width="30%">调用类型</th>
            <th>描述</th>
        </tr>
        <tr>
            <td> <a href="cpp-function-call-by-value.html" title="C++ 中传值方式调用函数">传值调用</a>
            </td>
            <td>该方法把参数的实际值复制给函数的形式参数。在这种情况下，修改函数内的形式参数对实际参数没有影响。</td>
        </tr>
        <tr>
            <td> <a href="cpp-function-call-by-pointer.html" title="C++ 中指针方式调用函数">指针调用</a>
            </td>
            <td>该方法把参数的地址复制给形式参数。在函数内，该地址用于访问调用中要用到的实际参数。这意味着，修改形式参数会影响实际参数。</td>
        </tr>
        <tr>
            <td> <a href="cpp-function-call-by-reference.html" title="C++ 中引用方式调用函数">引用调用</a>
            </td>
            <td>该方法把参数的引用复制给形式参数。在函数内，该引用用于访问调用中要用到的实际参数。这意味着，修改形式参数会影响实际参数。</td>
        </tr>
    </tbody>
</table>
<p>默认情况下，C++ 使用<b>传值调用</b>来传递参数。一般来说，这意味着函数内的代码不能改变用于调用函数的参数。之前提到的实例，调用 max() 函数时，使用了相同的方法。</p>
 <h2 class="tutheader">参数的默认值</h2> 
<p>当您定义一个函数，您可以为参数列表中后边的每一个参数指定默认值。当调用函数时，如果实际参数的值留空，则使用这个默认值。</p>
<p>这是通过在函数定义中使用赋值运算符来为参数赋值的。调用函数时，如果未传递参数的值，则会使用默认值，如果指定了值，则会忽略默认值，使用传递的值。请看下面的实例：</p> <pre showdemo="1" lang="cpp"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">sum</span><span class="hljs-params">(<span class="hljs-keyword">int</span> a, <span class="hljs-keyword">int</span> b=<span class="hljs-number">20</span>)</span>
</span>{
  <span class="hljs-keyword">int</span> result;

  result = a + b;
  
  <span class="hljs-keyword">return</span> (result);
}

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-comment">// 局部变量声明</span>
   <span class="hljs-keyword">int</span> a = <span class="hljs-number">100</span>;
   <span class="hljs-keyword">int</span> b = <span class="hljs-number">200</span>;
   <span class="hljs-keyword">int</span> result;
 
   <span class="hljs-comment">// 调用函数来添加值</span>
   result = sum(a, b);
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Total value is :"</span> &lt;&lt; result &lt;&lt; <span class="hljs-built_in">endl</span>;     <span class="hljs-comment">// 再次调用函数</span>
&nbsp;&nbsp;&nbsp;&nbsp;result = sum(a); 
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Total value is :"</span> &lt;&lt; result &lt;&lt; <span class="hljs-built_in">endl</span>;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
} </code></pre> 
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Total value is :300
Total value is :120
</pre> 
<br>
<p>
    <br>
</p></div>
<div style="clear:both"></div>
</div>",14,12,C++教程,C++函数,NULL,NULL,NULL
14,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">数字</span></h2> 
<div class="tutintro">
    <p>通常，当我们需要用到数字时，我们会使用原始的数据类型，如 int、short、long、float 和 double 等等。这些用于数字的数据类型，其可能的值和数值范围，我们已经在 C++ 数据类型一章中讨论过。</p>
</div>
 <h2 class="tutheader">C++ 定义数字</h2> 
<p>我们已经在之前章节的各种实例中定义过数字。下面是一个 C++ 中定义各种类型数字的综合实例：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-comment">// 数字定义</span>
   <span class="hljs-keyword">short</span>  s;
   <span class="hljs-keyword">int</span>    i;
   <span class="hljs-keyword">long</span>   l;
   <span class="hljs-keyword">float</span>  f;
   <span class="hljs-keyword">double</span> d;
   
   <span class="hljs-comment">// 数字赋值</span>
   s = <span class="hljs-number">10</span>;      
   i = <span class="hljs-number">1000</span>;    
   l = <span class="hljs-number">1000000</span>; 
   f = <span class="hljs-number">230.47</span>;  
   d = <span class="hljs-number">30949.374</span>;
   
   <span class="hljs-comment">// 数字输出</span>
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"short  s :"</span> &lt;&lt; s &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"int    i :"</span> &lt;&lt; i &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"long   l :"</span> &lt;&lt; l &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"float  f :"</span> &lt;&lt; f &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"double d :"</span> &lt;&lt; d &lt;&lt; <span class="hljs-built_in">endl</span>;
 
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>short  s :10
int    i :1000
long   l :1000000
float  f :230.47
double d :30949.4
</pre> 
 <h2 class="tutheader">C++ 数学运算</h2> 
<p>在 C++ 中，除了可以创建各种函数，还包含了各种有用的函数供您使用。这些函数写在标准 C 和 C++ 库中，叫做<strong>内置</strong>函数。您可以在程序中引用这些函数。</p>
<p>C++ 内置了丰富的数学函数，可对各种数字进行运算。下表列出了 C++ 中一些有用的内置的数学函数。</p>
<p>为了利用这些函数，您需要引用数学头文件 <strong>&lt;cmath&gt;</strong>。</p>
<table class="reference notranslate ">
    <tbody>
        <tr>
            <th width="5%">序号</th>
            <th>函数 &amp; 描述</th>
        </tr>
        <tr>
            <td>1</td>
            <td><strong>double cos(double);</strong>
                <br>该函数返回弧度角（double 型）的余弦。</td>
        </tr>
        <tr>
            <td>2</td>
            <td><strong>double sin(double);</strong>
                <br>该函数返回弧度角（double 型）的正弦。</td>
        </tr>
        <tr>
            <td>3</td>
            <td><strong>double tan(double);</strong>
                <br>该函数返回弧度角（double 型）的正切。</td>
        </tr>
        <tr>
            <td>4</td>
            <td><strong>double log(double);</strong>
                <br>该函数返回参数的自然对数。</td>
        </tr>
        <tr>
            <td>5</td>
            <td><strong>double pow(double, double);</strong>
                <br>假设第一个参数为 x，第二个参数为 y，则该函数返回 x 的 y 次方。</td>
        </tr>
        <tr>
            <td>6</td>
            <td><strong>double hypot(double, double);</strong>
                <br>该函数返回两个参数的平方总和的平方根，也就是说，参数为一个直角三角形的两个直角边，函数会返回斜边的长度。</td>
        </tr>
        <tr>
            <td>7</td>
            <td><strong>double sqrt(double);</strong>
                <br>该函数返回参数的平方根。</td>
        </tr>
        <tr>
            <td>8</td>
            <td><strong>int abs(int);</strong>
                <br>该函数返回整数的绝对值。</td>
        </tr>
        <tr>
            <td>9</td>
            <td><strong>double fabs(double);</strong>
                <br>该函数返回任意一个十进制数的绝对值。</td>
        </tr>
        <tr>
            <td>10</td>
            <td><strong>double floor(double);</strong>
                <br>该函数返回一个小于或等于传入参数的最大整数。</td>
        </tr>
    </tbody>
</table>
<p>下面是一个关于数学运算的简单实例：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;cmath&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-comment">// 数字定义</span>
   <span class="hljs-keyword">short</span>  s = <span class="hljs-number">10</span>;
   <span class="hljs-keyword">int</span>    i = <span class="hljs-number">-1000</span>;
   <span class="hljs-keyword">long</span>   l = <span class="hljs-number">100000</span>;
   <span class="hljs-keyword">float</span>  f = <span class="hljs-number">230.47</span>;
   <span class="hljs-keyword">double</span> d = <span class="hljs-number">200.374</span>;

   <span class="hljs-comment">// 数学运算</span>
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"sin(d) :"</span> &lt;&lt; <span class="hljs-built_in">sin</span>(d) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"abs(i)  :"</span> &lt;&lt; <span class="hljs-built_in">abs</span>(i) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"floor(d) :"</span> &lt;&lt; <span class="hljs-built_in">floor</span>(d) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"sqrt(f) :"</span> &lt;&lt; <span class="hljs-built_in">sqrt</span>(f) &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"pow( d, 2) :"</span> &lt;&lt; <span class="hljs-built_in">pow</span>(d, <span class="hljs-number">2</span>) &lt;&lt; <span class="hljs-built_in">endl</span>;
 
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>sign(d) :-0.634939
abs(i)  :1000
floor(d) :200
sqrt(f) :15.1812
pow( d, 2 ) :40149.7
</pre> 
 <h2 class="tutheader">C++ 随机数</h2> 
<p>在许多情况下，需要生成随机数。关于随机数生成器，有两个相关的函数。一个是 <strong>rand()</strong>，该函数只返回一个伪随机数。生成随机数之前必须先调用 <strong>srand()</strong> 函数。</p>
<p>下面是一个关于生成随机数的简单实例。实例中使用了 <strong>time()</strong> 函数来获取系统时间的秒数，通过调用 rand() 函数来生成随机数：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;ctime&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;cstdlib&gt;</span></span>

<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-keyword">int</span> i,j;
 
   <span class="hljs-comment">// 设置种子</span>
   srand( (<span class="hljs-keyword">unsigned</span>)time( <span class="hljs-literal">NULL</span> ) );

   <span class="hljs-comment">/* 生成 10 个随机数 */</span>
   <span class="hljs-keyword">for</span>( i = <span class="hljs-number">0</span>; i &lt; <span class="hljs-number">10</span>; i++ )
   {
      <span class="hljs-comment">// 生成实际的随机数</span>
      j= rand();
      <span class="hljs-built_in">cout</span> &lt;&lt;<span class="hljs-string">"随机数： "</span> &lt;&lt; j &lt;&lt; <span class="hljs-built_in">endl</span>;
   }

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
} </code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>随机数： 1748144778
随机数： 630873888
随机数： 2134540646
随机数： 219404170
随机数： 902129458
随机数： 920445370
随机数： 1319072661
随机数： 257938873
随机数： 1256201101
随机数： 580322989
</pre><p><br></p></div>
<div style="clear:both"></div>
</div>",15,13,C++教程,C++数字,NULL,NULL,NULL
15,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">数组</span></h2> <div class="tutintro"> <p>C++ 支持<strong>数组</strong>数据结构，它可以存储一个固定大小的相同类型元素的顺序集合。数组是用来存储一系列数据，但它往往被认为是一系列相同类型的变量。</p> <p>数组的声明并不是声明一个个单独的变量，比如 number0、number1、...、number99，而是声明一个数组变量，比如 numbers，然后使用 numbers[0]、numbers[1]、...、numbers[99] 来代表一个个单独的变量。数组中的特定元素可以通过索引访问。</p> <p>所有的数组都是由连续的内存位置组成。最低的地址对应第一个元素，最高的地址对应最后一个元素。</p> </div> <h2 class="tutheader">声明数组</h2> <p>在 C++ 中要声明一个数组，需要指定元素的类型和元素的数量，如下所示：</p> <pre>type arrayName [ arraySize ];
</pre> <p>这叫做一维数组。<strong>arraySize</strong> 必须是一个大于零的整数常量，<strong>type</strong> 可以是任意有效的 C++ 数据类型。例如，要声明一个类型为 double 的包含 10 个元素的数组 <strong>balance</strong>，声明语句如下：</p> <pre>double balance[10];
</pre> <p>现在 <em>balance</em> 是一个可用的数组，可以容纳 10 个类型为 double 的数字。</p> <h2 class="tutheader">初始化数组</h2> <p>在 C++ 中，您可以逐个初始化数组，也可以使用一个初始化语句，如下所示：</p> <pre>double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
</pre> <p>大括号 { } 之间的值的数目不能大于我们在数组声明时在方括号 [ ] 中指定的元素数目。</p> <p>如果您省略掉了数组的大小，数组的大小则为初始化时元素的个数。因此，如果：</p> <pre>double balance[] = {1000.0, 2.0, 3.4, 17.0, 50.0};
</pre> <p>您将创建一个数组，它与前一个实例中所创建的数组是完全相同的。下面是一个为数组中某个元素赋值的实例：</p> <pre>balance[4] = 50.0;
</pre> <p>上述的语句把数组中第五个元素的值赋为 50.0。所有的数组都是以 0 作为它们第一个元素的索引，也被称为基索引，数组的最后一个索引是数组的总大小减去 1。以下是上面所讨论的数组的的图形表示：</p>  <p><img src="https://atts.w3cschool.cn/attachments/uploads/2014/08/array_presentation.jpg" alt="数组表示"></p>  <h2 class="tutheader">访问数组元素</h2> <p>数组元素可以通过数组名称加索引进行访问。元素的索引是放在方括号内，跟在数组名称的后边。例如：</p> <pre>double salary = balance[9];
</pre> <p>上面的语句将把数组中第 10 个元素的值赋给 salary 变量。下面的实例使用了上述的三个概念，即，声明数组、数组赋值、访问数组：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iomanip&gt;</span></span>
<span class="hljs-keyword">using</span> <span class="hljs-built_in">std</span>::setw;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-keyword">int</span> n[ <span class="hljs-number">10</span> ]; <span class="hljs-comment">// n 是一个包含 10 个整数的数组</span>
 
   <span class="hljs-comment">// 初始化数组元素          </span>
   <span class="hljs-keyword">for</span> ( <span class="hljs-keyword">int</span> i = <span class="hljs-number">0</span>; i &lt; <span class="hljs-number">10</span>; i++ )
   {
      n[ i ] = i + <span class="hljs-number">100</span>; <span class="hljs-comment">// 设置元素 i 为 i + 100</span>
   }
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Element"</span> &lt;&lt; setw( <span class="hljs-number">13</span> ) &lt;&lt; <span class="hljs-string">"Value"</span> &lt;&lt; <span class="hljs-built_in">endl</span>;
 
   <span class="hljs-comment">// 输出数组中每个元素的值                     </span>
   <span class="hljs-keyword">for</span> ( <span class="hljs-keyword">int</span> j = <span class="hljs-number">0</span>; j &lt; <span class="hljs-number">10</span>; j++ )
   {
      <span class="hljs-built_in">cout</span> &lt;&lt; setw( <span class="hljs-number">7</span> )&lt;&lt; j &lt;&lt; setw( <span class="hljs-number">13</span> ) &lt;&lt; n[ j ] &lt;&lt; <span class="hljs-built_in">endl</span>;
   }
 
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre><p></p> <p>上面的程序使用了 <strong>setw()</strong> 函数来格式化输出。当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Element        Value
      0          100
      1          101
      2          102
      3          103
      4          104
      5          105
      6          106
      7          107
      8          108
      9          109
</pre> <h2 class="tutheader">C++ 中数组详解</h2> <p>在 C++ 中，数组是非常重要的，我们需要了解更多有关数组的细节。下面列出了 C++ 程序员必须清楚的一些与数组相关的重要概念：</p> <table class="reference notranslate "> <tbody><tr><th style="width:30%">概念</th><th>描述</th></tr> <tr><td><a href="cpp-multi-dimensional-arrays.html" title="C++ 中的多维数组">多维数组</a></td><td>C++ 支持多维数组。多维数组最简单的形式是二维数组。</td> </tr> <tr><td><a href="cpp-pointer-to-an-array.html" title="C++ 中指向数组的指针">指向数组的指针</a></td><td>您可以通过指定不带索引的数组名称来生成一个指向数组中第一个元素的指针。</td> </tr> <tr><td><a href="cpp-passing-arrays-to-functions.html" title="C++ 中传递数组给函数作为参数">传递数组给函数</a></td><td>您可以通过指定不带索引的数组名称来给函数传递一个指向数组的指针。</td> </tr> <tr><td><a href="cpp-return-arrays-from-function.html" title="C++ 中从函数返回数组">从函数返回数组</a></td><td>C++ 允许从函数返回数组。</td> </tr> </tbody></table><p><br></p></div>
<div style="clear:both"></div>
</div>",16,14,C++教程,C++数组,NULL,NULL,NULL
16,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">字符串</span></h2> <div class="tutintro"> <p>C++ 提供了以下两种类型的字符串表示形式：</p> <ul class="list"> <li>C 风格字符串</li> <li>C++ 引入的 string 类类型</li> </ul> </div> <h2 class="tutheader">C 风格字符串</h2> <p>C&nbsp;风格的字符串起源于 C&nbsp;语言，并在 C++ 中继续得到支持。字符串实际上是使用 <strong>null</strong> 字符 '' 终止的一维字符数组。因此，一个以 null 结尾的字符串，包含了组成字符串的字符。</p> <p>下面的声明和初始化创建了一个 "Hello" 字符串。由于在数组的末尾存储了空字符，所以字符数组的大小比单词 "Hello" 的字符数多一个。<span style="background-color: initial; color: rgb(51, 51, 51); font-family: Consolas, &quot;Courier New&quot;, Courier, monospace; white-space: pre-wrap;">char greeting[6] = {'H', 'e', 'l', 'l', 'o', ''};</span></p> <p>依据数组初始化规则，您可以把上面的语句写成以下语句：</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs"><span class="hljs-keyword">char</span> greeting[] = <span class="hljs-string">"Hello"</span>;</code></pre> <p>以下是 C/C++ 中定义的字符串的内存表示：</p>  <p><img src="https://atts.w3cschool.cn/attachments/uploads/2014/08/string_representation.jpg" alt="C/C++ 中的字符串表示"></p>  <p>其实，您不需要把 <em>null</em> 字符放在字符串常量的末尾。C++ 编译器会在初始化数组时，自动把 '' 放在字符串的末尾。让我们尝试输出上面的字符串</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>

<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-keyword">char</span> greeting[<span class="hljs-number">6</span>] = {<span class="hljs-string">'H'</span>, <span class="hljs-string">'e'</span>, <span class="hljs-string">'l'</span>, <span class="hljs-string">'l'</span>, <span class="hljs-string">'o'</span>, <span class="hljs-string">'\0'</span>};

   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Greeting message: "</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; greeting &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
} </code></pre><p></p> <p>当上面的代码被编译和执行时，它会产生下列结果：</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs">Greeting message: Hello</code></pre> <p>C++ 中有大量的函数用来操作以 null 结尾的字符串：supports a wide range of functions that manipulate null-terminated strings:</p> <table class="reference notranslate "> <tbody><tr><th style="width:5%">序号</th><th>函数 &amp; 目的</th></tr> <tr><td>1</td><td><strong>strcpy(s1, s2);</strong><br>复制字符串 s2 到字符串 s1。</td></tr> <tr><td>2</td><td><strong>strcat(s1, s2);</strong><br>连接字符串 s2 到字符串 s1 的末尾。</td></tr> <tr><td>3</td><td><strong>strlen(s1);</strong><br>返回字符串 s1 的长度。</td></tr> <tr><td>4</td><td><strong>strcmp(s1, s2);</strong><br>如果 s1 和 s2 是相同的，则返回 0；如果 s1&lt;s2 则返回小于 0；如果 s1&gt;s2 则返回大于 0。</td></tr> <tr><td>5</td><td><strong>strchr(s1, ch);</strong><br>返回一个指针，指向字符串 s1 中字符 ch 的第一次出现的位置。</td></tr> <tr><td>6</td><td><strong>strstr(s1, s2);</strong><br>返回一个指针，指向字符串 s1 中字符串 s2 的第一次出现的位置。</td></tr> </tbody></table> <p>下面的实例使用了上述的一些函数：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;cstring&gt;</span></span>

<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-keyword">char</span> str1[<span class="hljs-number">10</span>] = <span class="hljs-string">"Hello"</span>;
   <span class="hljs-keyword">char</span> str2[<span class="hljs-number">10</span>] = <span class="hljs-string">"World"</span>;
   <span class="hljs-keyword">char</span> str3[<span class="hljs-number">10</span>];
   <span class="hljs-keyword">int</span>  len ;

   <span class="hljs-comment">// 复制 str1 到 str3</span>
   <span class="hljs-built_in">strcpy</span>( str3, str1);
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"strcpy( str3, str1) : "</span> &lt;&lt; str3 &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 连接 str1 和 str2</span>
   <span class="hljs-built_in">strcat</span>( str1, str2);
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"strcat( str1, str2): "</span> &lt;&lt; str1 &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 连接后，str1 的总长度</span>
   len = <span class="hljs-built_in">strlen</span>(str1);
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"strlen(str1) : "</span> &lt;&lt; len &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre><p></p> <p>当上面的代码被编译和执行时，它会产生下列结果：</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs"><span class="hljs-built_in">strcpy</span>( str3, str1) : <span class="hljs-function">Hello
<span class="hljs-title">strcat</span><span class="hljs-params">( str1, str2)</span>: HelloWorld
<span class="hljs-title">strlen</span><span class="hljs-params">(str1)</span> : 10</span></code></pre> <h2 class="tutheader">C++ 中的 String 类</h2> <p>C++ 标准库提供了 <strong>string</strong> 类类型，支持上述所有的操作，另外还增加了其他更多的功能。我们将学习 C++ 标准库中的这个类，现在让我们先来看看下面这个实例：</p> <p>现在您可能还无法透彻地理解这个实例，因为到目前为止我们还没有讨论类和对象。所以现在您可以只是粗略地看下这个实例，等理解了面向对象的概念之后再回头来理解这个实例。</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;string&gt;</span></span>

<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-built_in">string</span> str1 = <span class="hljs-string">"Hello"</span>;
   <span class="hljs-built_in">string</span> str2 = <span class="hljs-string">"World"</span>;
   <span class="hljs-built_in">string</span> str3;
   <span class="hljs-keyword">int</span>  len ;

   <span class="hljs-comment">// 复制 str1 到 str3</span>
   str3 = str1;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"str3 : "</span> &lt;&lt; str3 &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 连接 str1 和 str2</span>
   str3 = str1 + str2;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"str1 + str2 : "</span> &lt;&lt; str3 &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 连接后，str3 的总长度</span>
   len = str3.size();
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"str3.size() :  "</span> &lt;&lt; len &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
} </code></pre><p></p> <p>当上面的代码被编译和执行时，它会产生下列结果：</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs">str3 : Hello
str1 + str2 : HelloWorld
str3.size() :  <span class="hljs-number">10</span></code></pre><p><br></p></div>
<div style="clear:both"></div>
</div>",17,15,C++教程,C++字符串,NULL,NULL,NULL
17,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">指针</span></h2> 
<p>学习 C++ 的指针既简单又有趣。通过指针，可以简化一些 C++ 编程任务的执行，还有一些任务，如动态内存分配，没有指针是无法执行的。所以，想要成为一名优秀的 C++ 程序员，学习指针是很有必要的。</p>
<p>正如您所知道的，每一个变量都有一个内存位置，每一个内存位置都定义了可使用连字号（&amp;）运算符访问的地址，它表示了在内存中的一个地址。请看下面的实例，它将输出定义的变量地址：</p>
<p></p><pre>#include &lt;iostream&gt;

using namespace std;

int main ()
{
   int  var1;
   char var2[10];

   cout &lt;&lt; "var1 变量的地址： ";
   cout &lt;&lt; &amp;var1 &lt;&lt; endl;

   cout &lt;&lt; "var2 变量的地址： ";
   cout &lt;&lt; &amp;var2 &lt;&lt; endl;

   return 0;
}</pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>var1 变量的地址： 0xbfebd5c0
var2 变量的地址： 0xbfebd5b6
</pre> 
<p>通过上面的实例，我们了解了什么是内存地址以及如何访问它。接下来让我们看看什么是指针。</p>
 <h2 class="tutheader">什么是指针？</h2> 
<p><strong>指针</strong>是一个变量，其值为另一个变量的地址，即，内存位置的直接地址。就像其他变量或常量一样，您必须在使用指针存储其他变量地址之前，对其进行声明。指针变量声明的一般形式为：</p> <pre>type *var-name;
</pre> 
<p>在这里，<strong>type</strong> 是指针的基类型，它必须是一个有效的 C++ 数据类型，<strong>var-name</strong> 是指针变量的名称。用来声明指针的星号 * 与乘法中使用的星号是相同的。但是，在这个语句中，星号是用来指定一个变量是指针。以下是有效的指针声明：</p> <pre>int    *ip;    /* 一个整型的指针 */
double *dp;    /* 一个 double 型的指针 */
float  *fp;    /* 一个浮点型的指针 */
char   *ch     /* 一个字符型的指针 */
</pre> 
<p>所有指针的值的实际数据类型，不管是整型、浮点型、字符型，还是其他的数据类型，都是一样的，都是一个代表内存地址的长的十六进制数。不同数据类型的指针之间唯一的不同是，指针所指向的变量或常量的数据类型不同。</p>
 <h2 class="tutheader">C++ 中使用指针</h2> 
<p>使用指针时会频繁进行以下几个操作：定义一个指针变量、把变量地址赋值给指针、访问指针变量中可用地址的值。这些是通过使用一元运算符 <strong>*</strong> 来返回位于操作数所指定地址的变量的值。下面的实例涉及到了这些操作：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>

<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-keyword">int</span>  var = <span class="hljs-number">20</span>;   <span class="hljs-comment">// 实际变量的声明</span>
   <span class="hljs-keyword">int</span>  *ip;        <span class="hljs-comment">// 指针变量的声明</span>

   ip = &amp;var;       <span class="hljs-comment">// 在指针变量中存储 var 的地址</span>

   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Value of var variable: "</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; var &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 输出在指针变量中存储的地址</span>
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Address stored in ip variable: "</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; ip &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 访问指针中地址的值</span>
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Value of *ip variable: "</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; *ip &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Value of var variable: 20
Address stored in ip variable: 0xbfc601ac
Value of *ip variable: 20
</pre> 
 <h2 class="tutheader">C++ 指针详解</h2> 
<p>在 C++ 中，有很多指针相关的概念，这些概念都很简单，但是都很重要。下面列出了 C++ 程序员必须清楚的一些与指针相关的重要概念：</p>
<table class="reference notranslate ">
    <tbody>
        <tr>
            <th style="width:35%">概念</th>
            <th>描述</th>
        </tr>
        <tr>
            <td><a href="cpp-null-pointers.html" title="C++ Null 指针">C++ Null 指针</a>
            </td>
            <td>C++ 支持空指针。NULL 指针是一个定义在标准库中的值为零的常量。</td>
        </tr>
        <tr>
            <td><a href="cpp-pointer-arithmetic.html" title="C++ 指针的算术运算">C++ 指针的算术运算</a>
            </td>
            <td>可以对指针进行四种算术运算：++、--、+、-</td>
        </tr>
        <tr>
            <td><a href="cpp-pointers-vs-arrays.html" title="C++ 指针 vs 数组">C++ 指针 vs 数组</a>
            </td>
            <td>指针和数组之间有着密切的关系。</td>
        </tr>
        <tr>
            <td><a href="cpp-array-of-pointers.html" title="C++ 指针数组">C++ 指针数组</a>
            </td>
            <td>可以定义用来存储指针的数组。</td>
        </tr>
        <tr>
            <td><a href="cpp-pointer-to-pointer.html" title="C++ 指向指针的指针">C++ 指向指针的指针</a>
            </td>
            <td>C++ 允许指向指针的指针。</td>
        </tr>
        <tr>
            <td><a href="cpp-passing-pointers-to-functions.html" title="C++ 传递指针给函数">C++ 传递指针给函数</a>
            </td>
            <td>通过引用或地址传递参数，使传递的参数在调用函数中被改变。</td>
        </tr>
        <tr>
            <td><a href="cpp-return-pointer-from-functions.html" title="C++ 从函数返回指针">C++ 从函数返回指针</a>
            </td>
            <td>C++ 允许函数返回指针到局部变量、静态变量和动态内存分配。</td>
        </tr>
    </tbody>
</table><p><br></p></div>
<div style="clear:both"></div>
</div>",18,16,C++教程,C++指针,NULL,NULL,NULL
18,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">引用</span></h2> <div class="tutintro"> <p>引用变量是一个别名，也就是说，它是某个已存在变量的另一个名字。一旦把引用初始化为某个变量，就可以使用该引用名称或变量名称来指向变量。</p> </div> <h2 class="tutheader">C++ 引用 vs 指针</h2> <p>引用很容易与指针混淆，它们之间有三个主要的不同：</p> <ul class="list"> <li>不存在空引用。引用必须连接到一块合法的内存。</li> <li>一旦引用被初始化为一个对象，就不能被指向到另一个对象。指针可以在任何时候指向到另一个对象。</li> <li>引用必须在创建时被初始化。指针可以在任何时间被初始化。</li> </ul> <h2 class="tutheader">C++ 中创建引用</h2> <p>试想变量名称是变量附属在内存位置中的标签，您可以把引用当成是变量附属在内存位置中的第二个标签。因此，您可以通过原始变量名称或引用来访问变量的内容。例如：</p> <pre>int    i = 17;
</pre> <p>我们可以为 i 声明引用变量，如下所示：</p> <pre>int&amp;    r = i;
</pre> <p>在这些声明中，&amp; 读作<strong>引用</strong>。因此，第一个声明可以读作 "r 是一个初始化为 i 的整型引用"，第二个声明可以读作 "s 是一个初始化为 d 的 double 型引用"。下面的实例使用了 int 和 double 引用：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span> <span class="hljs-params">()</span>
</span>{
   <span class="hljs-comment">// 声明简单的变量</span>
   <span class="hljs-keyword">int</span>    i;
   <span class="hljs-keyword">double</span> d;
 
   <span class="hljs-comment">// 声明引用变量</span>
   <span class="hljs-keyword">int</span>&amp;    r = i;
   <span class="hljs-keyword">double</span>&amp; s = d;
   
   i = <span class="hljs-number">5</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Value of i : "</span> &lt;&lt; i &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Value of i reference : "</span> &lt;&lt; r  &lt;&lt; <span class="hljs-built_in">endl</span>;
 
   d = <span class="hljs-number">11.7</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Value of d : "</span> &lt;&lt; d &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Value of d reference : "</span> &lt;&lt; s  &lt;&lt; <span class="hljs-built_in">endl</span>;
   
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre><p></p> <p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Value of i : 5
Value of i reference : 5
Value of d : 11.7
Value of d reference : 11.7
</pre> <p>引用通常用于函数参数列表和函数返回值。下面列出了 C++ 程序员必须清楚的两个与 C++ 引用相关的重要概念：</p> <table class="reference notranslate  "> <tbody><tr><th width="40%">概念</th><th>描述</th></tr> <tr><td><a href="passing-parameters-by-references.html" title="C++ 中通过引用传参">把引用作为参数</a></td><td>C++ 支持把引用作为参数传给函数，这比传一般的参数更安全。</td> </tr> <tr><td><a href="returning-values-by-reference.html" title="C++ 中通过引用返回值">把引用作为返回值</a></td><td>可以从 C++ 函数中返回引用，就像返回其他数据类型一样。</td> </tr> </tbody></table><p><br></p></div>
<div style="clear:both"></div>
</div>",19,17,C++教程,C++引用,NULL,NULL,NULL
19,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">日期 &amp; 时间</span></h2> 
<p>C++ 标准库没有提供所谓的日期类型。C++ 继承了 C 语言用于日期和时间操作的结构和函数。为了使用日期和时间相关的函数和结构，需要在 C++ 程序中引用 &lt;ctime&gt; 头文件。</p>
<p>有四个与时间相关的类型：<strong>clock_t、time_t、size_t</strong> 和 <strong>tm</strong>。类型 clock_t、size_t 和 time_t 能够把系统时间和日期表示为某种整数。</p>
<p>结构类型 <strong>tm</strong> 把日期和时间以 C 结构的形式保存，tm 结构的定义如下：</p> <pre>struct tm {
  int tm_sec;   // 秒，正常范围从 0 到 59，但允许至 61
  int tm_min;   // 分，范围从 0 到 59
  int tm_hour;  // 小时，范围从 0 到 23
  int tm_mday;  // 一月中的第几天，范围从 1 到 31
  int tm_mon;   // 月，范围从 0 到 11
  int tm_year;  // 自 1900 年起的年数
  int tm_wday;  // 一周中的第几天，范围从 0 到 6，从星期日算起
  int tm_yday;  // 一年中的第几天，范围从 0 到 365，从 1 月 1 日算起
  int tm_isdst; // 夏令时
}
</pre> 
<p>下面是 C/C++ 中关于日期和时间的重要函数。所有这些函数都是 C/C++ 标准库的组成部分，您可以在 C++ 标准库中查看一下各个函数的细节。</p>
<table class="reference notranslate   ">
    <tbody>
        <tr>
            <th width="5%">序号</th>
            <th>函数 &amp; 描述</th>
        </tr>
        <tr>
            <td>1</td>
            <td><a href="/c/c-function-time.html"><strong>time_t time(time_t *time);</strong></a>
                <br>该函数返回系统的当前日历时间，自 1970 年 1 月 1 日以来经过的秒数。如果系统没有时间，则返回 .1。</td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="/c/c-function-ctime.html"><strong>char *ctime(const time_t *time);</strong></a>
                <br>该返回一个表示当地时间的字符串指针，字符串形式 <em>day month year hours:minutes:seconds year\n</em>。</td>
        </tr>
        <tr>
            <td>3</td>
            <td><a href="/c/c-function-localtime.html"><strong>struct tm *localtime(const time_t *time);</strong></a>
                <br>该函数返回一个指向表示本地时间的 <strong>tm</strong> 结构的指针。</td>
        </tr>
        <tr>
            <td>4</td>
            <td><a href="/c/c-function-clock.html"><strong>clock_t clock(void);</strong></a>
                <br>该函数返回程序执行起（一般为程序的开头），处理器时钟所使用的时间。如果时间不可用，则返回 .1。</td>
        </tr>
        <tr>
            <td>5</td>
            <td><a href="/c/c-function-asctime.html"><strong>char * asctime ( const struct tm * time );</strong></a>
                <br>该函数返回一个指向字符串的指针，字符串包含了 time 所指向结构中存储的信息，返回形式为：day month date hours:minutes:seconds year\n。</td>
        </tr>
        <tr>
            <td>6</td>
            <td><a href="/c/c-function-gmtime.html"><strong>struct tm *gmtime(const time_t *time);</strong></a>
                <br>该函数返回一个指向 time 的指针，time 为 tm 结构，用协调世界时（UTC）也被称为格林尼治标准时间（GMT）表示。</td>
        </tr>
        <tr>
            <td>7</td>
            <td><a href="/c/c-function-mktime.html"><strong>time_t mktime(struct tm *time);</strong></a>
                <br>该函数返回日历时间，相当于 time 所指向结构中存储的时间。</td>
        </tr>
        <tr>
            <td>8</td>
            <td><a href="/c/c-function-difftime.html"><strong>double difftime ( time_t time2, time_t time1 );</strong></a>
                <br>该函数返回 time1 和 time2 之间相差的秒数。</td>
        </tr>
        <tr>
            <td>9</td>
            <td><a href="/c/c-function-strftime.html"><strong>size_t strftime();</strong></a>
                <br>该函数可用于格式化日期和时间为指定的格式。</td>
        </tr>
    </tbody>
</table>
 <h2 class="tutheader">当前日期和时间</h2> 
<p>下面的实例获取当前系统的日期和时间，包括本地时间和协调世界时（UTC）。</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;ctime&gt;</span></span>

<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-comment">// 基于当前系统的当前日期/时间</span>
   <span class="hljs-keyword">time_t</span> now = time(<span class="hljs-number">0</span>);
   
   <span class="hljs-comment">// 把 now 转换为字符串形式</span>
   <span class="hljs-keyword">char</span>* dt = ctime(&amp;now);

   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"本地日期和时间："</span> &lt;&lt; dt &lt;&lt; <span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 把 now 转换为 tm 结构</span>
   tm *gmtm = gmtime(&amp;now);
   dt = asctime(gmtm);
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"UTC 日期和时间："</span>&lt;&lt; dt &lt;&lt; <span class="hljs-built_in">endl</span>;
}</code></pre>

<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>本地日期和时间：Sat Jan  8 20:07:41 2011

UTC 日期和时间：Sun Jan  9 03:07:41 2011
</pre> 
 <h2 class="tutheader">使用结构 tm 格式化时间</h2> 
<p><strong>tm</strong> 结构在 C/C++ 中处理日期和时间相关的操作时，显得尤为重要。tm 结构以 C 结构的形式保存日期和时间。大多数与时间相关的函数都使用了 tm 结构。下面的实例使用了 tm 结构和各种与日期和时间相关的函数。</p>
<p>在练习使用结构之前，需要对 C 结构有基本的了解，并懂得如何使用箭头 -&gt; 运算符来访问结构成员。</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;ctime&gt;</span></span>

<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-comment">// 基于当前系统的当前日期/时间</span>
   <span class="hljs-keyword">time_t</span> now = time(<span class="hljs-number">0</span>);

   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"1970年1月1日到目前经过的秒数:"</span> &lt;&lt; now &lt;&lt; <span class="hljs-built_in">endl</span>;

   tm *ltm = localtime(&amp;now);

   <span class="hljs-comment">// 输出 tm 结构的各个组成部分</span>
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"年: "</span>&lt;&lt; <span class="hljs-number">1900</span> + ltm-&gt;tm_year &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"月: "</span>&lt;&lt; <span class="hljs-number">1</span> + ltm-&gt;tm_mon&lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"日: "</span>&lt;&lt;  ltm-&gt;tm_mday &lt;&lt; <span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"时间: "</span>&lt;&lt; <span class="hljs-number">1</span> + ltm-&gt;tm_hour &lt;&lt; <span class="hljs-string">":"</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-number">1</span> + ltm-&gt;tm_min &lt;&lt; <span class="hljs-string">":"</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-number">1</span> + ltm-&gt;tm_sec &lt;&lt; <span class="hljs-built_in">endl</span>;
} </code></pre>

<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>1970年1月1日到目前经过的秒数:1524456057
年: 2018
月: 4
日: 23
时间: 5:1:58
</pre><p><br></p></div>
<div style="clear:both"></div>
</div>",20,18,C++教程,C++日期&时间,NULL,NULL,NULL
20,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">基本的输入输出</span></h2> <div class="tutintro"> <p>C++ 标准库提供了一组丰富的输入/输出功能，我们将在后续的章节进行介绍。本章将讨论 C++ 编程中最基本和最常见的 I/O 操作。</p> <p>C++ 的 I/O 发生在流中，流是字节序列。如果字节流是从设备（如键盘、磁盘驱动器、网络连接等）流向内存，这叫做<b>输入操作</b>。如果字节流是从内存流向设备（如显示屏、打印机、磁盘驱动器、网络连接等），这叫做<b>输出操作</b>。</p> </div> <h2 class="tutheader">I/O 库头文件</h2> <p>下列的头文件在 C++ 编程中很重要。</p> <table class="reference notranslate"> <tbody><tr><th width="20%">头文件</th><th>函数和描述</th></tr> <tr><td>&lt;iostream&gt;</td><td>该文件定义了 <b>cin、cout、cerr</b> 和 <b>clog</b> 对象，分别对应于标准输入流、标准输出流、非缓冲标准错误流和缓冲标准错误流。</td> </tr> <tr><td>&lt;iomanip&gt;</td><td>该文件通过所谓的参数化的流操纵器（比如 <b>setw</b> 和 <b>setprecision</b>），来声明对执行标准化 I/O 有用的服务。</td> </tr> <tr><td>&lt;fstream&gt;</td><td>该文件为用户控制的文件处理声明服务。我们将在文件和流的相关章节讨论它的细节。</td> </tr> </tbody></table> <h2 class="tutheader">标准输出流（cout）</h2> <p>预定义的对象 <b>cout</b> 是 <b>ostream</b> 类的一个实例。cout 对象"连接"到标准输出设备，通常是显示屏。<b>cout</b> 是与流插入运算符 &lt;&lt; 结合使用的，如下所示：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-keyword">char</span> str[] = <span class="hljs-string">"Hello C++"</span>;
 
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Value of str is : "</span> &lt;&lt; str &lt;&lt; <span class="hljs-built_in">endl</span>; 
} </code></pre> <p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Value of str is : Hello C++
</pre> <p>C++ 编译器根据要输出变量的数据类型，选择合适的流插入运算符来显示值。&lt;&lt; 运算符被重载来输出内置类型（整型、浮点型、double 型、字符串和指针）的数据项。</p> <p>流插入运算符 &lt;&lt; 在一个语句中可以多次使用，如上面实例中所示，<b>endl</b> 用于在行末添加一个换行符。</p> <h2 class="tutheader">标准输入流（cin）</h2> <p>预定义的对象 <b>cin</b> 是 <b>istream</b> 类的一个实例。cin 对象附属到标准输入设备，通常是键盘。<b>cin</b> 是与流提取运算符 &gt;&gt; 结合使用的，如下所示：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-keyword">char</span> name[<span class="hljs-number">50</span>];
 
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"请输入您的名称： "</span>;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-built_in">cin</span> &gt;&gt; name;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"您的名称是： "</span> &lt;&lt; name &lt;&lt; <span class="hljs-built_in">endl</span>;   
} </code></pre> <p>当上面的代码被编译和执行时，它会提示用户输入名称。当用户输入一个值，并按回车键，就会看到下列结果：</p> <pre>请输入您的名称： cplusplus
您的名称是： cplusplus
</pre> <p>C++ 编译器根据要输入值的数据类型，选择合适的流提取运算符来提取值，并把它存储在给定的变量中。</p> <p>流提取运算符 &gt;&gt; 在一个语句中可以多次使用，如果要求输入多个数据，可以使用如下语句：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-built_in">cin</span> &gt;&gt; name &gt;&gt; age;
</code></pre> <p>这相当于下面两个语句：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-built_in">cin</span> &gt;&gt; name;
<span class="hljs-built_in">cin</span> &gt;&gt; age;
</code></pre> <h2 class="tutheader">标准错误流（cerr）</h2> <p>预定义的对象 <b>cerr</b> 是 <b>ostream</b> 类的一个实例。cerr 对象附属到标准错误设备，通常也是显示屏，但是 <b>cerr</b> 对象是非缓冲的，且每个流插入到 cerr 都会立即输出。</p> <p><b>cerr</b> 也是与流插入运算符 &lt;&lt; 结合使用的，如下所示：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-keyword">char</span> str[] = <span class="hljs-string">"Unable to read...."</span>;
 
   <span class="hljs-built_in">cerr</span> &lt;&lt; <span class="hljs-string">"Error message : "</span> &lt;&lt; str &lt;&lt; <span class="hljs-built_in">endl</span>; 
} </code></pre> <p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Error message : Unable to read....
</pre> <h2 class="tutheader">标准日志流（clog）</h2> <p>预定义的对象 <b>clog</b> 是 <b>ostream</b> 类的一个实例。clog 对象附属到标准错误设备，通常也是显示屏，但是 <b>clog</b> 对象是缓冲的。这意味着每个流插入到 clog 都会先存储在缓冲区中，直到缓冲填满或者缓冲区刷新时才会输出。</p> <p><b>clog</b> 也是与流插入运算符 &lt;&lt; 结合使用的，如下所示：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-keyword">char</span> str[] = <span class="hljs-string">"Unable to read...."</span>;
 
   <span class="hljs-built_in">clog</span> &lt;&lt; <span class="hljs-string">"Error message : "</span> &lt;&lt; str &lt;&lt; <span class="hljs-built_in">endl</span>;
} </code></pre> <p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Error message : Unable to read....
</pre> <p>通过这些小实例，我们无法区分 cout、cerr 和 clog 的差异，但在编写和执行大型程序时，它们之间的差异就变得非常明显。所以良好的编程实践告诉我们，使用 cerr 流来显示错误消息，而其他的日志消息则使用 clog 流来输出。</p> <br><p><br></p></div>
<div style="clear:both"></div>
</div>",21,19,C++教程,C++基本的输入输出,NULL,NULL,NULL
21,"<div class="content-bg">
<div class="content-intro view-box "><h2>C++ <span class="color_h1">数据结构</span></h2> 
<div class="tutintro">
    <p>C/C++ 数组允许定义可存储相同类型数据项的变量，但是<strong>结构</strong>是 C++ 中另一种用户自定义的可用的数据类型，它允许您存储不同类型的数据项。</p>
    <p>结构用于表示一条记录，假设您想要跟踪图书馆中书本的动态，您可能需要跟踪每本书的下列属性：</p>
    <ul class="list">
        <li>Title</li>
        <li>Author</li>
        <li>Subject</li>
        <li>Book ID</li>
    </ul>
</div>
 <h2 class="tutheader">定义结构</h2> 
<p>为了定义结构，您必须使用 <strong>struct</strong> 语句。struct 语句定义了一个包含多个成员的新的数据类型，struct 语句的格式如下：</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs"><span class="hljs-keyword">struct</span> [structure tag]
{
   member definition;
   member definition;
   ...
   member definition;
} [one or more structure variables];  </code></pre> 
<p><strong>structure tag</strong> 是可选的，每个 member definition 是标准的变量定义，比如 int i; 或者 float f; 或者其他有效的变量定义。在结构定义的末尾，最后一个分号之前，您可以指定一个或多个结构变量，这是可选的。下面是声明 Book 结构的方式：</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs"><span class="hljs-keyword">struct</span> Books
{
   <span class="hljs-keyword">char</span>  title[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  author[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  subject[<span class="hljs-number">100</span>];
   <span class="hljs-keyword">int</span>   book_id;
</code></pre><p><span style="background-color: initial; color: rgb(51, 51, 51); font-family: Consolas, &quot;Courier New&quot;, Courier, monospace; white-space: pre-wrap;">}book; </span><span style="background-color: rgb(239, 239, 239); color: rgb(51, 51, 51); font-family: Consolas, &quot;Courier New&quot;, Courier, monospace; white-space: pre-wrap;"> </span></p> 
 <h2 class="tutheader">访问结构成员</h2> 
<p>为了访问结构的成员，我们使用<strong>成员访问运算符（.）</strong>。成员访问运算符是结构变量名称和我们要访问的结构成员之间的一个句号。您可以使用 <strong>struct</strong> 关键字来定义结构类型的变量。下面的实例演示了结构的用法：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;cstring&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
 
<span class="hljs-keyword">struct</span> Books
{
   <span class="hljs-keyword">char</span>  title[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  author[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  subject[<span class="hljs-number">100</span>];
   <span class="hljs-keyword">int</span>   book_id;
};
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-keyword">struct</span> Books Book1;        <span class="hljs-comment">// 声明 Book1，类型为 Book</span>
   <span class="hljs-keyword">struct</span> Books Book2;        <span class="hljs-comment">// 声明 Book2，类型为 Book</span>
 
   <span class="hljs-comment">// Book1 详述</span>
   <span class="hljs-built_in">strcpy</span>( Book1.title, <span class="hljs-string">"Learn C++ Programming"</span>);
   <span class="hljs-built_in">strcpy</span>( Book1.author, <span class="hljs-string">"Chand Miyan"</span>); 
   <span class="hljs-built_in">strcpy</span>( Book1.subject, <span class="hljs-string">"C++ Programming"</span>);
   Book1.book_id = <span class="hljs-number">6495407</span>;

   <span class="hljs-comment">// Book2 详述</span>
   <span class="hljs-built_in">strcpy</span>( Book2.title, <span class="hljs-string">"Telecom Billing"</span>);
   <span class="hljs-built_in">strcpy</span>( Book2.author, <span class="hljs-string">"Yakit Singha"</span>);
   <span class="hljs-built_in">strcpy</span>( Book2.subject, <span class="hljs-string">"Telecom"</span>);
   Book2.book_id = <span class="hljs-number">6495700</span>;
 
   <span class="hljs-comment">// 输出 Book1 信息</span>
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 1 title : "</span> &lt;&lt; Book1.title &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 1 author : "</span> &lt;&lt; Book1.author &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 1 subject : "</span> &lt;&lt; Book1.subject &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 1 id : "</span> &lt;&lt; Book1.book_id &lt;&lt;<span class="hljs-built_in">endl</span>;

   <span class="hljs-comment">// 输出 Book2 信息</span>
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 2 title : "</span> &lt;&lt; Book2.title &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 2 author : "</span> &lt;&lt; Book2.author &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 2 subject : "</span> &lt;&lt; Book2.subject &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book 2 id : "</span> &lt;&lt; Book2.book_id &lt;&lt;<span class="hljs-built_in">endl</span>;

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Book 1 title : Learn C++ Programming
Book 1 author : Chand Miyan
Book 1 subject : C++ Programming
Book 1 id : 6495407
Book 2 title : Telecom Billing
Book 2 author : Yakit Singha
Book 2 subject : Telecom
Book 2 id : 6495700
</pre> 
 <h2 class="tutheader">结构作为函数参数</h2> 
<p>您可以把结构作为函数参数，传参方式与其他类型的变量或指针类似。您可以使用上面实例中的方式来访问结构变量：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;cstring&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">printBook</span><span class="hljs-params">( <span class="hljs-keyword">struct</span> Books book )</span></span>;

<span class="hljs-keyword">struct</span> Books
{
   <span class="hljs-keyword">char</span>  title[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  author[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  subject[<span class="hljs-number">100</span>];
   <span class="hljs-keyword">int</span>   book_id;
};
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-keyword">struct</span> Books Book1;        <span class="hljs-comment">// 声明 Book1，类型为 Book</span>
   <span class="hljs-keyword">struct</span> Books Book2;        <span class="hljs-comment">// 声明 Book2，类型为 Book</span>
 
   <span class="hljs-comment">// Book1 详述</span>
   <span class="hljs-built_in">strcpy</span>( Book1.title, <span class="hljs-string">"Learn C++ Programming"</span>);
   <span class="hljs-built_in">strcpy</span>( Book1.author, <span class="hljs-string">"Chand Miyan"</span>); 
   <span class="hljs-built_in">strcpy</span>( Book1.subject, <span class="hljs-string">"C++ Programming"</span>);
   Book1.book_id = <span class="hljs-number">6495407</span>;

   <span class="hljs-comment">// Book2 详述</span>
   <span class="hljs-built_in">strcpy</span>( Book2.title, <span class="hljs-string">"Telecom Billing"</span>);
   <span class="hljs-built_in">strcpy</span>( Book2.author, <span class="hljs-string">"Yakit Singha"</span>);
   <span class="hljs-built_in">strcpy</span>( Book2.subject, <span class="hljs-string">"Telecom"</span>);
   Book2.book_id = <span class="hljs-number">6495700</span>;
 
   <span class="hljs-comment">// 输出 Book1 信息</span>
   printBook( Book1 );

   <span class="hljs-comment">// 输出 Book2 信息</span>
   printBook( Book2 );

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">printBook</span><span class="hljs-params">( <span class="hljs-keyword">struct</span> Books book )</span>
</span>{
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book title : "</span> &lt;&lt; book.title &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book author : "</span> &lt;&lt; book.author &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book subject : "</span> &lt;&lt; book.subject &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book id : "</span> &lt;&lt; book.book_id &lt;&lt;<span class="hljs-built_in">endl</span>;
}</code></pre>
<p></p>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Book title : Learn C++ Programming
Book author : Chand Miyan
Book subject : C++ Programming
Book id : 6495407
Book title : Telecom Billing
Book author : Yakit Singha
Book subject : Telecom
Book id : 6495700
</pre> 
 <h2 class="tutheader">指向结构的指针</h2> 
<p>您可以定义指向结构的指针，方式与定义指向其他类型变量的指针相似，如下所示：</p> <pre lang="cpp"><code class="cpp hljs"><span class="hljs-keyword">struct</span> Books *struct_pointer;
</code></pre> 
<p>现在，您可以在上述定义的指针变量中存储结构变量的地址。为了查找结构变量的地址，请把 &amp; 运算符放在结构名称的前面，如下所示：</p> <pre lang="cpp"><code class="cpp hljs">struct_pointer = &amp;Book1;
</code></pre> 
<p>为了使用指向该结构的指针访问结构的成员，您必须使用 -&gt; 运算符，如下所示：</p> <pre lang="cpp"><code class="cpp hljs">struct_pointer-&gt;title;
</code></pre> 
<p>让我们使用结构指针来重写上面的实例，这将有助于您理解结构指针的概念：</p>
<p><span style="font-family: Consolas, 'Courier New', Courier, monospace; line-height: 1.7; white-space: pre-wrap; background-color: rgb(239, 239, 239);"></span>
</p><pre lang="cpp"><code class="cpp hljs"><span>struct_pointer</span><span>-&gt;</span><span>title</span><span>;</span></code></pre>
<p></p>
<p>让我们使用结构指针来重写上面的实例，这将有助于您理解结构指针的概念：</p><pre lang="cpp" style="max-width: 100%;" showdemo="1"><code class="cpp hljs"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span>
<span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;cstring&gt;</span></span>
 
<span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">printBook</span><span class="hljs-params">( <span class="hljs-keyword">struct</span> Books *book )</span></span>;

<span class="hljs-keyword">struct</span> Books
{
   <span class="hljs-keyword">char</span>  title[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  author[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  subject[<span class="hljs-number">100</span>];
   <span class="hljs-keyword">int</span>   book_id;
};
 
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">( )</span>
</span>{
   <span class="hljs-keyword">struct</span> Books Book1;        <span class="hljs-comment">// 声明 Book1，类型为 Book</span>
   <span class="hljs-keyword">struct</span> Books Book2;        <span class="hljs-comment">// 声明 Book2，类型为 Book */</span>
 
   <span class="hljs-comment">// Book1 详述</span>
   <span class="hljs-built_in">strcpy</span>( Book1.title, <span class="hljs-string">"Learn C++ Programming"</span>);
   <span class="hljs-built_in">strcpy</span>( Book1.author, <span class="hljs-string">"Chand Miyan"</span>); 
   <span class="hljs-built_in">strcpy</span>( Book1.subject, <span class="hljs-string">"C++ Programming"</span>);
   Book1.book_id = <span class="hljs-number">6495407</span>;

   <span class="hljs-comment">// Book2 详述</span>
   <span class="hljs-built_in">strcpy</span>( Book2.title, <span class="hljs-string">"Telecom Billing"</span>);
   <span class="hljs-built_in">strcpy</span>( Book2.author, <span class="hljs-string">"Yakit Singha"</span>);
   <span class="hljs-built_in">strcpy</span>( Book2.subject, <span class="hljs-string">"Telecom"</span>);
   Book2.book_id = <span class="hljs-number">6495700</span>;
 
   <span class="hljs-comment">// 通过传 Book1 的地址来输出 Book1 信息</span>
   printBook( &amp;Book1 );

   <span class="hljs-comment">// 通过传 Book2 的地址来输出 Book2 信息</span>
   printBook( &amp;Book2 );

   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}
<span class="hljs-comment">// 该函数以结构指针作为参数</span>
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">printBook</span><span class="hljs-params">( <span class="hljs-keyword">struct</span> Books *book )</span>
</span>{
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book title : "</span> &lt;&lt; book-&gt;title &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book author : "</span> &lt;&lt; book-&gt;author &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book subject : "</span> &lt;&lt; book-&gt;subject &lt;&lt;<span class="hljs-built_in">endl</span>;
   <span class="hljs-built_in">cout</span> &lt;&lt; <span class="hljs-string">"Book id : "</span> &lt;&lt; book-&gt;book_id &lt;&lt;<span class="hljs-built_in">endl</span>;
} </code></pre> 
<p>当上面的代码被编译和执行时，它会产生下列结果：</p> <pre>Book title : Learn C++ Programming
Book author : Chand Miyan
Book subject : C++ Programming
Book id : 6495407
Book title : Telecom Billing
Book author : Yakit Singha
Book subject : Telecom
Book id : 6495700
</pre> 
 <h2 class="tutheader">typedef 关键字</h2> 
<p>下面是一种更简单的定义结构的方式，您可以为创建的类型取一个"别名"。例如：</p><pre lang="cpp" style="max-width: 100%;"><code class="cpp hljs"><span class="hljs-keyword">typedef</span> <span class="hljs-keyword">struct</span>
{
   <span class="hljs-keyword">char</span>  title[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  author[<span class="hljs-number">50</span>];
   <span class="hljs-keyword">char</span>  subject[<span class="hljs-number">100</span>];
   <span class="hljs-keyword">int</span>   book_id;
}Books;</code></pre> 
<p>现在，您可以直接使用 <em>Books</em> 来定义 <em>Books</em> 类型的变量，而不需要使用 struct 关键字。下面是实例：</p> <pre>Books Book1, Book2;
</pre> 
<p>您可以使用 <strong>typedef</strong> 关键字来定义非结构类型，如下所示：</p> <pre>typedef long int *pint32;
 
pint32 x, y, z;
</pre> 
<p>x, y 和 z 都是指向长整型 long int 的指针。</p><p><br></p></div>
<div style="clear:both"></div>
</div>",22,20,C++教程,C++数据结构,NULL,NULL,NULL
