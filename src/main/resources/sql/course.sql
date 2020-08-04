insert into course (id,t_name,title,contenthtml) values (1,'C语言','C语言教程','<div class="article-intro" id="content">
			
			
<h1>C <span class="color_h1">语言教程</span></h1>

<div class="tutintro">
<img src="https://www.runoob.com/wp-content/uploads/2014/09/c-mini-logo.png">
<p>C 语言是一种通用的、面向过程式的计算机程序设计语言。1972 年，为了移植与开发 UNIX 操作系统，丹尼斯·里奇在贝尔电话实验室设计开发了 C 语言。</p>
<p>C 语言是一种广泛使用的计算机语言，它与 Java 编程语言一样普及，二者在现代软件程序员之间都得到广泛使用。</p>
<p>当前最新的 C 语言标准为 C18 ，在它之前的 C 语言标准有 C17、C11...C99 等。</p>
<p><b><a href="/cprogramming/c-intro.html">现在开始学习 C 编程！</a></b></p>
<p><a href="/try/showc.php?filename=helloworld&amp;language=c" target="_blank" rel="noopener noreferrer">C 在线工具</a></p>
</div>

<h2 class="tutheader">谁适合阅读本教程？</h2>
<p>本教程是专门为需要从零开始了解 C 语言的软件程序员打造的。本教程将让您对 C 语言有足够的认识，从而提升您自己的专业知识水平。</p>

<h2 class="tutheader">阅读本教程前，您需要了解的知识：</h2>
<p>在开始学习本教程之前，您需要对计算机编程术语有基本的了解。对任何一种编程语言有基本的了解将有助于您理解 C 语言编程概念，并有助于加快您的学习进度。</p>

<h2 class="tutheader">编译/执行 C 程序</h2>
<div class="example">
<h2 class="example">实例</h2>
<div class="example_code">
<div class="hl-main"><span class="hl-prepro">#include</span><span class="hl-prepro"> </span><span class="hl-quotes">&lt;</span><span class="hl-string">stdio.h</span><span class="hl-quotes">&gt;</span><span class="hl-prepro"></span><span class="hl-code">
 
</span><span class="hl-types">int</span><span class="hl-code"> </span><span class="hl-identifier">main</span><span class="hl-brackets">(</span><span class="hl-brackets">)</span><span class="hl-code">
</span><span class="hl-brackets">{</span><span class="hl-code">
    </span><span class="hl-mlcomment">/*</span><span class="hl-mlcomment"> 我的第一个 C 程序 </span><span class="hl-mlcomment">*/</span><span class="hl-code">
    </span><span class="hl-identifier">printf</span><span class="hl-brackets">(</span><span class="hl-quotes">"</span><span class="hl-string">Hello, World! </span><span class="hl-special">\</span><span class="hl-string">n</span><span class="hl-quotes">"</span><span class="hl-brackets">)</span><span class="hl-code">;
 
    </span><span class="hl-reserved">return</span><span class="hl-code"> </span><span class="hl-number">0</span><span class="hl-code">;
</span><span class="hl-brackets">}</span></div>
</div>
<br><a target="_blank" href="/try/showc.php?filename=helloworld&amp;language=c" class="showbtn" rel="noopener noreferrer">运行实例 »</a>
</div>


<p><b>实例解析：</b></p>

<ul>
	<li>所有的 C 语言程序都需要包含 <b>main()</b> 函数。 代码从 <b>main()</b> 函数开始执行。</li>
<li><strong>/* ... */</strong> 用于注释说明。</li>
	<li><b>printf()</b> 用于格式化输出到屏幕。<b>printf()</b> 函数在 <b>"stdio.h"</b> 头文件中声明。</li>
	<li><b>stdio.h</b> 是一个头文件 (标准输入输出头文件) , <b>#include</b> 是一个预处理命令，用来引入头文件。
	 当编译器遇到 <b>printf()</b> 函数时，如果没有找到 <b>stdio.h</b> 头文件，会发生编译错误。</li>
	<li><b>return 0;</b> 语句用于表示退出程序。</li>
</ul>			<!-- 其他扩展 -->
						
			</div>');
			
insert into course (id,t_name,title,contenthtml) values (2,'C语言','C语言简介','<div class="article-intro" id="content">
			
			<h1>C <span class="color_h1">简介</span></h1>

<div class="tutintro">
<p>C 语言是一种通用的高级语言，最初是由丹尼斯·里奇在贝尔实验室为开发 UNIX 操作系统而设计的。C 语言最开始是于 1972 年在 DEC PDP-11 计算机上被首次实现。</p>
<p>在 1978 年，布莱恩·柯林汉（Brian Kernighan）和丹尼斯·里奇（Dennis Ritchie）制作了 C 的第一个公开可用的描述，现在被称为 K&amp;R 标准。
</p>
<p>UNIX 操作系统，C编译器，和几乎所有的 UNIX 应用程序都是用 C 语言编写的。由于各种原因，C 语言现在已经成为一种广泛使用的专业语言。</p>
<ul class="list">
<li>易于学习。</li>
<li>结构化语言。</li>
<li>它产生高效率的程序。</li>
<li>它可以处理底层的活动。</li>
<li>它可以在多种计算机平台上编译。</li>
</ul>
</div>

<h2 class="tutheader">关于 C</h2>
<ul class="list">
<li>C 语言是为了编写 UNIX 操作系统而被发明的。</li>
<li>C 语言是以 B 语言为基础的，B 语言大概是在 1970 年被引进的。</li>
<li>C 语言标准是于 1988 年由美国国家标准协会（ANSI，全称 American National Standard Institute）制定的。</li>
<li>截至 1973 年，UNIX 操作系统完全使用 C 语言编写。</li>
<li>目前，C 语言是最广泛使用的系统程序设计语言。</li>
<li>大多数先进的软件都是使用 C 语言实现的。</li>
<li>当今最流行的 Linux 操作系统和 RDBMS（Relational Database Management System：关系数据库管理系统） MySQL 都是使用 C 语言编写的。</li>
</ul>

<h2 class="tutheader">为什么要使用 C？</h2>
<p>C 语言最初是用于系统开发工作，特别是组成操作系统的程序。由于 C 语言所产生的代码运行速度与汇编语言编写的代码运行速度几乎一样，所以采用 C 语言作为系统开发语言。下面列举几个使用 C 的实例：</p>
<ul class="list">
<li>操作系统</li>
<li>语言编译器</li>
<li>汇编器</li>
<li>文本编辑器</li>
<li>打印机</li>
<li>网络驱动器</li>
<li>现代程序</li>
<li>数据库</li>
<li>语言解释器</li>
<li>实体工具</li>
</ul>

<h2 class="tutheader">C 程序</h2>
<p>一个 C 语言程序，可以是 3 行，也可以是数百万行，它可以写在一个或多个扩展名为 <b>".c"</b> 的文本文件中，例如，<i>hello.c</i>。您可以使用 <b>"vi"</b>、<b>"vim"</b> 或任何其他文本编辑器来编写您的 C 语言程序。</p>
<p>本教程假定您已经知道如何编辑一个文本文件，以及如何在程序文件中编写源代码。</p>
<hr>
<h2>C11</h2>
<p>C11（也被称为C1X）指ISO标准ISO/IEC 9899:2011，是当前最新的C语言标准。在它之前的C语言标准为C99。</p>
<h3>新特性</h3><ul><li>
<p>对齐处理（Alignment）的标准化（包括_Alignas标志符，alignof运算符，aligned_alloc函数以及&lt;stdalign.h&gt;头文件）。</p></li><li><p>
_Noreturn 函数标记，类似于 gcc 的 __attribute__((noreturn))。</p></li><li><p>
_Generic 关键字。</p></li><li><p>
多线程（Multithreading）支持，包括：<br>
_Thread_local存储类型标识符，&lt;threads.h&gt;头文件，里面包含了线程的创建和管理函数。<br>
_Atomic类型修饰符和&lt;stdatomic.h&gt;头文件。</p></li><li><p>
增强的Unicode的支持。基于C Unicode技术报告ISO/IEC TR 19769:2004，增强了对Unicode的支持。包括为UTF-16/UTF-32编码增加了char16_t和char32_t数据类型，提供了包含unicode字符串转换函数的头文件&lt;uchar.h&gt;。</p></li><li><p>
删除了 gets() 函数，使用一个新的更安全的函数gets_s()替代。</p></li><li><p>
增加了边界检查函数接口，定义了新的安全的函数，例如 fopen_s()，strcat_s() 等等。</p></li><li><p>
增加了更多浮点处理宏(宏)。</p></li><li><p>
匿名结构体/联合体支持。这个在gcc早已存在，C11将其引入标准。</p></li><li><p>
静态断言（Static assertions），_Static_assert()，在解释 #if 和 #error 之后被处理。</p></li><li><p>
新的 fopen() 模式，("…x")。类似 POSIX 中的 O_CREAT|O_EXCL，在文件锁中比较常用。</p></li><li><p>
新增 quick_exit() 函数作为第三种终止程序的方式。当 exit()失败时可以做最少的清理工作。</p></li></ul>			<!-- 其他扩展 -->
						
			</div>');

insert into course (id,t_name,title,contenthtml) values (3,'C语言','C语言环境设置','<div class="article-intro" id="content">
			
			<h1>C <span class="color_h1">环境设置</span></h1>

<h2 class="tutheader">本地环境设置</h2>
<p>如果您想要设置 C 语言环境，您需要确保电脑上有以下两款可用的软件，文本编辑器和 C 编译器。</p>

<h2 class="tutheader">文本编辑器</h2>
<p>这将用于输入您的程序。文本编辑器包括 Windows Notepad、OS Edit command、Brief、Epsilon、EMACS 和 vim/vi。</p>
<p>文本编辑器的名称和版本在不同的操作系统上可能会有所不同。例如，Notepad 通常用于 Windows 操作系统上，vim/vi 可用于 Windows 和 Linux/UNIX 操作系统上。</p>
<p>通过编辑器创建的文件通常称为源文件，源文件包含程序源代码。C 程序的源文件通常使用扩展名 "<b>.c</b>"。</p>
<p>在开始编程之前，请确保您有一个文本编辑器，且有足够的经验来编写一个计算机程序，然后把它保存在一个文件中，编译并执行它。</p>

<h2 class="tutheader">C 编译器</h2>
<p>写在源文件中的源代码是人类可读的源。它需要"编译"，转为机器语言，这样 CPU 可以按给定指令执行程序。</p>
<p>C 语言编译器用于把源代码编译成最终的可执行程序。这里假设您已经对编程语言编译器有基本的了解了。</p>
<p>最常用的免费可用的编译器是 GNU 的 C/C++ 编译器，如果您使用的是 HP 或 Solaris，则可以使用各自操作系统上的编译器。</p>
<p>以下部分将指导您如何在不同的操作系统上安装 GNU 的 C/C++ 编译器。这里同时提到 C/C++，主要是因为 GNU 的 gcc 编译器适合于 C 和 C++ 编程语言。</p>

<h3>UNIX/Linux 上的安装</h3>
<p>如果您使用的是 <b>Linux 或 UNIX</b>，请在命令行使用下面的命令来检查您的系统上是否安装了 GCC：</p>
<pre class="prettyprint prettyprinted" style=""><span class="pln">$ gcc </span><span class="pun">-</span><span class="pln">v</span></pre>
<p>如果您的计算机上已经安装了 GNU 编译器，则会显示如下消息：</p>
<pre class="prettyprint prettyprinted" style=""><span class="typ">Using</span><span class="pln"> built</span><span class="pun">-</span><span class="kwd">in</span><span class="pln"> specs</span><span class="pun">.</span><span class="pln">
</span><span class="typ">Target</span><span class="pun">:</span><span class="pln"> i386</span><span class="pun">-</span><span class="pln">redhat</span><span class="pun">-</span><span class="pln">linux
</span><span class="typ">Configured</span><span class="pln"> </span><span class="kwd">with</span><span class="pun">:</span><span class="pln"> </span><span class="pun">../</span><span class="pln">configure </span><span class="pun">--</span><span class="pln">prefix</span><span class="pun">=/</span><span class="pln">usr </span><span class="pun">.......</span><span class="pln">
</span><span class="typ">Thread</span><span class="pln"> model</span><span class="pun">:</span><span class="pln"> posix
gcc version </span><span class="lit">4.1</span><span class="pun">.</span><span class="lit">2</span><span class="pln"> </span><span class="lit">20080704</span><span class="pln"> </span><span class="pun">(</span><span class="typ">Red</span><span class="pln"> </span><span class="typ">Hat</span><span class="pln"> </span><span class="lit">4.1</span><span class="pun">.</span><span class="lit">2</span><span class="pun">-</span><span class="lit">46</span><span class="pun">)</span></pre>
<p>如果未安装 GCC，那么请按照 <a href="http://gcc.gnu.org/install/" rel="nofollow noopener noreferrer" target="_blank">http://gcc.gnu.org/install/</a> 上的详细说明安装 GCC。</p>
<p>本教程是基于 Linux 编写的，所有给定的实例都已在 Cent OS Linux 系统上编译过。</p>

<h3>Mac OS 上的安装</h3>
<p>如果您使用的是 Mac OS X，最快捷的获取 GCC 的方法是从苹果的网站上下载 Xcode 开发环境，并按照安装说明进行安装。一旦安装上 Xcode，您就能使用 GNU 编译器。</p>
<p>Xcode 目前可从 <a href="http://developer.apple.com/technologies/tools/" rel="nofollow noopener noreferrer" target="_blank">developer.apple.com/technologies/tools/</a> 上下载。</p>

<h3>Windows 上的安装</h3>
<p>为了在 Windows 上安装 GCC，您需要安装 MinGW。为了安装 MinGW，请访问 MinGW 的主页 <a href="http://www.mingw.org" rel="nofollow noopener noreferrer" target="_blank"> www.mingw.org</a>，进入 MinGW 下载页面，下载最新版本的 MinGW 安装程序，命名格式为 MinGW-&lt;version&gt;.exe。</p>
<p>当安装 MinGW 时，您至少要安装 gcc-core、gcc-g++、binutils 和 MinGW runtime，但是一般情况下都会安装更多其他的项。</p>
<p>添加您安装的 MinGW 的 bin 子目录到您的 <b>PATH</b> 环境变量中，这样您就可以在命令行中通过简单的名称来指定这些工具。</p>
<p>当完成安装时，您可以从 Windows 命令行上运行 gcc、g++、ar、ranlib、dlltool 和其他一些 GNU 工具。</p>
<!--
<div style="display:none;">
<hr>
<h2 id="cs-c">Cloud Studio </h2>
<p> <a target="_blank" href=“https://studio.dev.tencent.com/”rel="noopener noreferrer">Cloud Studio</a> 是基于浏览器的集成式开发环境，支持绝大部分编程语言，包括 HTML5、PHP、Python、Java、Ruby、C/C++、.NET 等等，无需下载安装程序，一键切换开发环境。 <a target="_blank" href='https://studio.dev.tencent.com/' rel="noopener noreferrer">Cloud Studio</a> 提供了完整的 Linux 环境，并且支持自定义域名指向，动态计算资源调整，可以完成各种应用的开发编译与部署。</p><p><img src='https://dn-coding-net-production-pp.qbox.me/1a0d4ed6-cd32-4e60-bad2-e6140fa556cb.png' alt='' /></p>
<p>现在 CODING 正在举办一场基于 Cloud Studio 工作空间的【我最喜爱的 Cloud Studio 插件评选大赛】。进入活动官网：<a href="https://studio.qcloud.coding.net/campaign/favorite-plugins/index" rel="noopener noreferrer" target="_blank">https://studio.qcloud.coding.net/campaign/favorite-plugins/index</a>，了解更多活动信息。</p>
</div>-->			<!-- 其他扩展 -->
						
			</div>');
