<div style="page-break-after: always;">
<p class="head_description">
联环系统中的设置，是定义系统级别的任何配置。</p>
<i>在哪里可以找到它？</i><br>
翻译模块可通过 &quot;菜单：设置&quot; 进入。<br>
有以下类型的设置存在：
<ul>
<li><b><a href="#local"><u>本地设置：</u></a></b> 任何本地系统设置；如：语言、时区和格式。
<li><b><a href="#alerts"><u>警示设置：</u></a></b> 有关系统警示的临界点和其它设置。
<li><b><a href="#access"><u>访问设置：</u></a></b> 有关访问和安全级别的设置。
<li><b><a href="#mail"><u>电邮设置：</u></a></b> 电邮服务器的设置
<li><b><a href="#log"><u>日志设置：</u></a></b> 日志文件的设置。
<li><b><a href="#channels"><u>渠道：</u></a></b> 渠道的配置（访问媒介）。
<li><b><a href="#web_services_clients"><u>联网服务客户端：</u></a></b> 联网服务的配置。
<li><b>系统操作：</b> 有两类系统操作：<b><a
		href="#search_indexes"><u>管理索引</u></a></b> 和 <b><a
		href="#online_state"><u>系统可用性</u></a></b>。
<li><b><a href="#import_export"><u>导入/导出：</u></a></b> 导入和导出的设置。
</ul>
<hr>

<A NAME="local"></A>
<h2>本地设置</h2>
这些是有关地点和系统的设置。要进行修改，请点击 &quot;更改&quot; 按钮；要储存更改，请点击 &quot;提交&quot; 按钮。
<br>
</ul>

<b>联环系统识别码</b>
<ul>
	<li><b>应用程序名称：</b>
	这是出现在浏览器顶部列的应用程序标题。
	<li><b>应用程序的用户名：</b>
	这名称是用于系统发送给会员的自动生成讯息。例如：&quot;联环系统管理员&quot; 接受您的..发票。
	<li><b>外部渠道识别码：</b>
	这名称使用于第三者的软件正在进入联环系统的情况下，并需要知道系统的识别码。通常这是系统名称。
	<li><b>全系统的集装箱网址：</b> 如果您想从一个网站访问联环系统（如：联环系统项目的示范网站），这字段是需要的。
	该网站将有 iframe 或 frame-set，之中包括联环系统登录页。如果这样做，您可能想要自订 &quot;顶部&quot;（在内容管理-静态文件 - top.jsp）以便不要显示它。<br>
	该网址将需要有 http:// 或 https:// 在前面的完整网址。注意，如果您把请求网址放在正常的网页，将被直接引导到集装箱网址。
	如果集装箱网址不是正确地运作，就意味着您不能通过正常的网址来访问联环系统。如果发生这种情况，您可以通过在原本页面的网址后加 do/login 来进入联环系统。
	例如：http://www.yourdomain.org/cyclos/do/login<br>
	联环系统在同一系统内支持多个社区。每个社区可以通过它自己（自订）的登录页或从它们自己的网站进入。
	为了启用它，您需要定义每个组别或组别筛选器的集装箱网址。在这类型的配置中，对于没有自己的网站来访问联环系统的组别，全系统的集装箱网址将是默认（回退）的集装箱网址。<br>
	更多有关资料可以在 <a href="${pagePrefix}groups#group_details"><u>组别</u></a> 和 <a href="${pagePrefix}groups#group_filter"><u>组别筛选器</u></a> 设置中找到。
</ul>	
		
	<b>国际化</b>
<ul>
	<li><b>语言：</b>
	您可以从几种语言中选择。目前有7种语言。
	<li><b>数字格式：</b>
	选择格式来显示逗号和小数点分离的数字。目前，我们支持美国和欧洲的数字格式。
	<li><b>小数精确度：</b>
	此设置显示小数点（或欧式逗号）后面的数字。如果设置为零，应用程序的运作只适用于整数。大多数系统将把这个设置为2。
	<li><b>高精确度：</b>
	此设置只显示账户费用的小数点（或欧式逗号）后面的数字。通常这数字将与小数精确度相同。但在某些情况下，可能需要有一个高精确度的准确账户费用计算。
	<li><b>小数输入法：</b> 您可以使用此设置定义是否自动填写小数点（或欧式逗号）。意指用户将只需要输入数字（第一个选项 &quot;从右至左&quot;）。
	第二个选项（从左至右）意味着用户将必须输入小数点（或欧式逗号）。
	<li><b>时区：</b>
	在这里，您可以定义时区。这只有当服务器与正在使用的用户位于不同的时区才需要设置。
	<li><b>日期格式：</b>
	选择在屏幕上显示的日期格式。
	<li><b>时间格式：</b>
	选择时间格式。时间是用来显示交易、警示、发票和备注等的完整日期/时间。
</ul>

<b>限度</b>
<ul>
	<li><b>最大网页结果数：</b>
	在搜索结果网页可以放置项目的最多数量。
	<li><b>最大Ajax结果数：</b>
	在自动完成的字段可以放置项目的最多数量。如：&quot;转到会员&quot;、直接付款和发票。
	<li><b>最大上载长度值：</b>
	这是个人资料和广告图片的最大上载长度值。
	<li><b>最大图片大小值：</b>
	这是图片（如：广告和个人资料）的最大尺寸（宽度和高度）。如果上载的长度较大，联环系统将自动把该图片缩小。
	<li><b>最大缩略图大小值：</b>
	这是缩略图（可点击的广告和会员图片）的最大尺寸（宽度和高度）。将显示的缩略图与原本图片一样大小。因此，如果是
	&quot;肖像&quot;，尺寸可以较少。
	<li><b>经纪到期：</b>
	如果设置了这期段，经纪的注册会员将会从其列表中消失。
	如果您的系统有用经纪 <a href="${pagePrefix}brokering#commission"><u>佣金</u></a>，您必须确定您不会设置佣金期限少于经纪的到期期限。
	<li><b>删除垃圾箱讯息期限：</b>
	这是会员讯息将留在垃圾箱内的最大期限。此期限过后，讯息将被删除。
	<li><b>会员注册电邮确认期限：</b>
	如果会员是外部注册和已启用电邮确认（在组别设置 &quot;公众注册电邮地址验证&quot;），会员将要在此期限内确认。
</ul>

<b>数据显示：</b>
<ul>
	<li><b>会员电邮是必需的：</b>
	如果拣选此选项，电邮字段将是必需输入的（在会员公众注册或管理员注册时）。
	<li><b>会员列表显示：</b>
	您可以使用此设置来定义在广告和会员搜索结果列表中，将会显示会员名称或用户名。
	社区系统，如 LETS 通常使用用户名为 &quot;别名&quot;，并希望在广告列表中显示这名称。在商业网络，像易货贸易，使用会员名称是较普通的。
	<li><b>广告说明格式：</b>
	在这里，您可以选择描述的格式（文本区）。它可以是正常的文本框或（所见即所得-您所看见的就是您所得的）编辑器。
	也有可能留下这两种可能性给用户，并设置一个为默认。
	<li><b>简单的讯息格式：</b>
	在这里，您可以定义用于会员和管理员与会员之间的正常讯息的编辑器类型。
	<li><b>给组别的讯息格式：</b>
	在这里，您可以定义发送讯息给组别（只限管理员）的编辑器。
	<li><b>经纪给注册会员的讯息格式：</b>
	在这里，您可以定义从经纪发送讯息给其注册会员的编辑器。
	<li><b>显示广告类别次数：</b> 如果拣选此设置，计数器（次数）将显示在广告类别链接的旁边（当浏览类别时在搜索广告的页面）。
	原因可能是如果您有一个系统包含有各种孤立的组别/社区，它们不能看到对方（也不能看到对方的广告）。<br>
	由于计数器是全系统的，它们将永远代表系统内所有的广告次数（当然是对于特定的类别）。这将造成混淆，因为计数器将会显示较高的社区广告数目。<br>
	因此，如果是多种系统的安装，最好是禁用计数器。
</ul>

<b>CSV格式导出：</b>
<ul>
	<li><b>显示标题：</b>
	如果拣选此选项，<a href="${pagePrefix}loans#csv"><u>CSV文件</u></a> 的第一行将显示每一栏的字段名称（例如：会员名称、地址，等等）
	<li><b>文字串引号：</b>
	选择此选项后，&quot;文字串&quot; 字段，如：描述和标题，将放在引号之间。<br>
	注：请小心，如果您让这个选项为 &quot;无&quot;，包含分隔符（逗号，列表符或分号）的文字串字段将断裂，并放置在下一（错误）栏。因此，应该使用文字串引号。
	<li><b>分隔符：</b>
	这是CSV文件的分隔字符。当导入文件到工作表或文字处理程序时，您可能需要指定这分隔符。
	<li><b>换行字符：</b>
	这是 &quot;行尾&quot; 使用的字符。最常用的标准是默认的Unix系统换行字符。&quot;视窗系统&quot; 类型可用于视窗系统。
</ul>

<b>短讯：</b><p>
如果您启用短讯，联环系统将允许通过短讯付款、发送发票和咨询账户资料。
联环系统的短讯模块需要外部短讯控制模块。该软件尚在发展阶段，现在尚未有发布计划。欢迎您使用自己的短讯控制模块。<br>
联环系统与短讯控制模块之间将会通过联网服务交流。因此，您需要提供一个联网服务网址。您还需要新增短讯付款的渠道（在 &quot;菜单：设置 - 渠道&quot;）。
一旦短讯选项是活跃的，它将显示在组别设置，并在通知设置中作为一种渠道。
<p>
<b>交易编号：</b>
<ul>
	<li><b>交易编号：</b>
	如果启用了这个选项，系统中的每笔交易会生成一个唯一的交易编号（识别码）。识别码的格式可以定义在以下的字段：
	<ul>
		<li><b>前缀：</b>
		识别码的前缀（数字或字母）。
		<li><b>识别码长度：</b>
		识别码的长度（顺序的）。
		<li><b>后缀：</b>
		识别码的后缀（数字或字母）。
	</ul>
	例如：如果配置为前缀=abc，长度= 5，后缀=xyz，系统内首个交易的交易编号将是 &quot;abc00001xyz&quot;。
</ul>


<b>退单：</b>
在这设置，您可以定义管理员可以退单的最大时限。退单意味着一个相反方向的支付将会完成。在付款生成其它交易（如：费用和贷款）的情况下，所有的交易将会生成相反的交易。
您也可以设置撤销付款最大日期时限。生成相反交易的说明可以包含变项 #date 和 #description，描述是指原本交易的说明。
<p>如果您要退单的交易有涉及贷款，请加倍小心。如果贷款已偿还，这可能导致错误。

<p><b>预定任务：</b> 此设置通常是用于执行效率问题。您可以使用此设置定义执行工作的时间。
在有一个以上的联环系统进程运行在同一系统中的情况下，这主要是用于执行效率原因。联环系统可以有预定每日和每小时执行的工作。
<ul>
	<li><b>预定每天任务执行的时：</b> 在这里，您可以设置每天执行工作的小时（0-24）。例如：每天的工作是检查过期广告。
	<li><b>预定每小时任务执行的分：</b> 在这里，您可以设置每天和每小时执行工作的分钟（0-60）（每天的工作将把分钟增加到以上配置的小时）。
	例如：每小时的工作是检查账户费用。
	<li><b>重建索引期限：</b> 您可以使用此设置来定义联环系统将重建索引的时间和频率。在联环系统3.5，会员和广告均编入索引，这有助于使搜索速度更快。
	索引也允许多个关键词的搜索，所有字段（会员个人资料或广告字段）将可搜索。<br>
	由于随着时间的推移，索引可能成为讹误，经常重新编制索引是一个好主意。
	我们建议每周在一个安静的时间（在夜间或上午）重建索引。取决于广告和会员个人资料的数目，这可能会花上一些时间。
	这一进程在不同的线程中运行，并不影响联环系统的运作。<br>
	也可以通过在服务器中手动地删除索引来重新编制索引（只要删除在 WEB-INF 目录的 indexes 目录），并重新启动服务器或进程。
	<p>
</ul>
<hr>

<A NAME="alerts"></A>
<h2>警示设置</h2>
在警示设置，您可以定义有关会员行为的警示限度和临界点。要进行修改，请点击 &quot;更改&quot; 按钮；要储存更改，请点击 &quot;提交&quot; 按钮。
 <br>
目前可设置以下的警示临界点：
<ul>
	<li><b>新等待激活会员：</b> 如果拣选此选项，当新用户（在登录页）注册时，会生成一个账户警示。
	<li><b>发出非常不好的评语：</b> 当有人发出了 &quot;X&quot; 个以上的 &quot;非常不好&quot; 评语，会生成警示。
	<li><b>收到非常不好的评语：</b> 当有人收到 &quot;X&quot; 个以上的 &quot;非常不好&quot; 评语，会生成警示。
	<li><b>发票到期：</b> 当有人收到发票，但没有反应（既不拒绝、也不接受它），然后在 &quot;X&quot; 期限过后，会生成警示。
	<li><b>发票被拒绝：</b> 当有人拒绝 &quot;X&quot; 张以上的发票，会生成警示。
	<li><b>不正确登录尝试：</b> 在 &quot;X&quot; 次尝试登录失败后，会生成警示。如果用户是存在的，会生成会员警示。如果会员不存在，会生成系统警示。
</ul>
<hr>

<A NAME="access"></A>
<h2>访问设置</h2>
在这里，您可以定义访问联环系统的设置。要进行修改，请点击 &quot;更改&quot; 按钮；要储存更改，请点击 &quot;提交&quot; 按钮。
<br>
有下列选项：
<ul>
	<li><b>使用虚拟键盘：</b> 当拣选这选项，在用户（管理员和会员）的登录页将出现一个虚拟键盘。需要使用虚拟键盘输入密码。虚拟键盘可以防止恶意的键入记录软件偷取密码。
	<li><b>数字密码：</b> 如果拣选这选项，会员只能有数字的密码。如果会员也使用卡和个人密码来付款，此选项可能是需要的。此设置并不适用于管理员。
	<li><b>允许操作员登录：</b> 如果您已启用 <a href="${pagePrefix}operators"><u>操作员</u></a>，必须拣选此复选框来让操作员登入。
	<li><b>管理员访问超时：</b> 管理员不活跃后将被登出的时间。
	<li><b>会员访问超时：</b> 会员不活跃后将被登出的时间。
	<li><b>销售终端网络访问超时：</b> 会员或操作员不活跃后将被登出销售终端网络页的时间。
	<li><b>管理员访问白名单：</b> 在这里，您可以放置可以访问管理节的用户的IP地址或主机名。请把每个主机名或IP放在新一行（返回）。
	如果您让 &quot;#Any host&quot; 留空白，任何主机将允许访问管理员登录页面（但仍然需要用户名和密码）。
	<li><b>生成用户名：</b>
	<ul>
		<li><b>会员输入：</b> 对于社区网络，用户选择自己的用户名或 &quot;别名&quot; 是很普通的。在这种情况下，需要选择 &quot;会员输入&quot; 选项。<br>
		如果拣选此选项，您可以指定最小和最大的用户名长度和正则表达式来强迫用户名的格式。<br>
		任何字符（可能会或不会符合换行字符）：\d 数字 [0-9]；\D 非数字 [^0-9]；\s 空白字符 [\t\n\x0B\f\r]；\S 非空白字符 [^\s]；\w 字 [a-zA-Z_0-9]；\W 非字 [^\w]<br>
		http://java.sun.com/j2se/1.5.0/docs/api/java/util/regex/Pattern.htm<br>
		可以指定由会员或管理员输入的最小和最大的用户名长度。
		<li><b>随机生成编号（登录编号）：</b> 对于商业网络，使用生成的用户名或 &quot;账户编号&quot;，是很常见的。
		当激活了这个模块，注册表格没有输入用户名的字段。当提交了表格，将会自动新增用户名（随机编号）。在此选项下面，您可以指定生成登录代码的长度。
	</ul>
	<li><b>允许的交易密码字符：</b> 在这里，您可以定义将用于（按随机次序）生成的交易密码字符。
	（有关交易密码的设置，请参照 <a href="${pagePrefix}groups#edit_member_group"><u>组别设置</u></a >）。
	<li><b>外部付款要求密码：</b> 在这里，您可以定义将用于外部付款服务的密码。
</ul>
<hr>

<A NAME="mail"></A>
<h2>电邮设置</h2>
在此页面，您可以设置电邮偏好。您可以定义 &quot;发件人&quot; 和SMTP服务器参数。如果您的电邮服务器需要TLS，您将需要拣选TLS选项。
<br>
要进行修改，请点击 &quot;更改&quot; 按钮，要储存更改，请点击 &quot;提交&quot; 按钮。
<hr>

<A NAME="log"></A>
<h2>日志设置</h2>
日志设置定义在哪里以及如何写日志。联环系统的日志文件不是写入数据库，而是服务器上的文本日志文件。因此，由（或共同与）服务器管理员管理这设置是重要的。<br> 
要进行修改，请点击 &quot;更改&quot; 按钮，要储存更改，请点击 &quot;提交&quot; 按钮。<p>
以下配置是可能的：
<ul>
	<li><b>行动日志级别：</b>
	此日志将包含有关任何联环系统行动的完整资料（追踪），例如：日期、会员等。<br>
	下列选项是可能的。
	<ul>
		<li><b>关闭：</b>
		行动日志没有使用。
		<li><b>仅错误：</b>
		行动日志将只包含错误。
		<li><b>简单追踪：</b>
		行动日志将记录任何成功和错误的行动。这将循序显示调用方法。
		<li><b>详细追踪：</b>
		与前一相同，但也将显示提供（参数）和返回的值。
	</ul>
	<li><b>行动日志文件路径/名称：</b>
	在这里，您可以指定路径和文件名。如果在服务器上安装有一个以上的联环系统，每个进程有一个独立的日志目录是好的做法。
	<ul>
		<li> &quot;/&quot; 本地路径名的分隔符
		<li> &quot;%t&quot; 系统的暂时目录
		<li> &quot;%h&quot; “user.home”系统属性的值
		<li> &quot;%g&quot; 生成编号以区分循环日志
		<li> &quot;%u&quot; 唯一的编号以解决抵触
	</ul>
	<li><b>交易日志级别：</b>
	此日志将只包含拥有所有相关资料的交易，如：从会员/系统到会员/系统、金额、日期等。<br>
	下列选项是可能的。
	<ul>
		<li><b>关闭：</b>
		没有使用交易日志。
		<li><b>正常：</b>
		当拣选这个选项，日志将包含拥有日期、从会员/系统到会员/系统，以及金额等所有交易。
		<li><b>详细：</b>
		此选项提供正常交易资料，加上描述和交易类型。
	</ul>
	<li><b>交易日志文件路径/名称</b> <br>
	在这里，您可以指定路径和文件名，方法与行动日志文件路径/名称一样（见以上解释）。
	<li><b>账户费用日志级别：</b>
	此日志给予有关账户费用（缴款）的资料。联环系统管理节也附有 
	<a href="${pagePrefix}account_management#account_fee_history"><u>账户费用历史</u></a>。
	日志内包括账户费用的原因，是能够在日志文件中（数据库以外）有一个完整的记录有关在联环系统内发生的任何事情。
	此外，账户费用日志比管理节内的账户费用历史更广泛。<br>
	下列选项是可能的。
	<ul>
		<li><b>关闭：</b> 没有日志发生。
		<li><b>仅错误：</b> 将只显示问题。
		<li><b>状态更改和错误：</b> 警示状态和成功的日志。
		<li><b>详细：</b> 所有交易的日志。
	</ul>
	<li><b>账户费用日志文件路径/名称</b> <br>
	在这里，您可以指定路径和文件名，方法与行动日志文件路径/名称一样（见以上解释）。
	<li><b>预定任务日志级别</b> <br>
	预定任务日志包含账户费用日志。有关预定账户费用的资料也可以在 
	<a href="${pagePrefix}account_management#account_fee_overview"><u>账户费用管理</u></a > 职能中找到。
	在日志中也包括它们的原因，是对于有关联环系统的任何行动，要有一个与数据库分开的完整日志。下列选项是可能的。
	<ul>
		<li><b>关闭：</b> 没有日志发生。
		<li><b>仅错误：</b> 将只显示问题
		<li><b>执行概述：</b> 只有资料任务的运行和时间戳记。
		<li><b>详细：</b> 关于任务的详细资料。（注意，这可以是相当广泛的，向多个会员收取的账户费用将记录所有独立的交易。）
	</ul>
	<li><b>预定任务日志文件路径/名称</b> <br>
	在这里，您可以指定路径和文件名，方法与行动日志文件路径/名称一样（见以上解释）。
	<li><b>日志文件最多份数：</b>
	在这里，您可以指定日志文件的最多份数。当达到了日志文件的最多份数和最大长度时，将删除最旧的日志文件和新增一个日志文件。
	确保日志文件在被删除之前已备份，是好的做法。
	<li><b>文件最大长度：</b>
	当达到了文件的最大长度时，将新增一个日志文件。当然，您做的日志越是深入细致，可能需要设置的文件最大长度越高。
</ul>
<hr>

<A NAME="channels"></A>
<h2>渠道</h2>
联环系统可通过不同的媒介或 &quot;渠道&quot; 来处理请求。
这可以是内部（联环系统）渠道，如：联网、销售终端网络、手机，和用于从第三者软件访问的外部（付款）渠道，如：电子商务网站、自动柜员机和销售终端设备。
</p>
为了让用户在未来更容易新增渠道，所有渠道都是动态地列出。	
现有的渠道是内部的；对于正常的联环系统配置，没有必要更改它们。<br>
目前的（内部）渠道有：
<ul>
	<li><b>主要网络接入：</b>
	这是通过网络浏览器的主要接入。典型的是用网址，如：www.yourdomain.org/cyclos
	<li><b>销售终端：</b> 此渠道是用于硬件和软件销售终端设备。该渠道使用销售终端标识符以标识销售终端。
	更多关于销售终端的信息可见 <a href="${pagePrefix}access_devices#POS"><u>访问设备</u></a> 帮助文件。
	<li><b>销售终端网络付款：</b> 在销售终端网络（销售终端）接入，作为商店的消费者。由 <a href="${pagePrefix}operators"><u>操作员</u></a> 或直接由会员使用。
	它可以接入通过在网址后面放置 /posweb 或 /operator 。例如：www.yourdomain.org/cyclos/operator<br>
	<li><b>WAP 1 接入：</b>（无线应用协议）是通常用于不支持WAP 2的旧手机。在领域名后面放置 /wap 可接入该模块。
	<li><b>WAP 2 接入：</b> WAP 2提供通过手机接入网络。在联环系统领域名后面放置 /domain 可接入该模块。
	<li><b>网上商店付款：</b> 网上商店付款渠道允许从电子商务软件完成付款。
</ul>
内部渠道只能透过应用程序增加。当新增外部渠道而您想允许通过这渠道付款，您必须把该渠道新增到（将使用该渠道的）<a 
href="${pagePrefix}account_management#transaction_types"><u>交易类型</u></a>。每个渠道只有一个交易类型，是好的做法。
<br>
使用渠道的会员组别也将需要有启用了的渠道（在 <a href="${pagePrefix}groups#edit_member_group"><u>组别设置</u></a>）；还有，组别也将需要权限来执行特定的交易类型。<hr>

<A NAME="channels_detail"></A>
<h3>渠道详情（新增或修改）</h3>
您可能不需要配置渠道。
对于销售终端网络、销售终端和自订渠道的方式，你可以定义用户标识的方法。<br>
对于其他渠道，你可以定义确认的凭证。
（此选项不适用于主要网络访问，因为它是定义在组别自己之内）
<hr>

<A NAME="web_services_clients"></A>
<h2>联网服务客户端</h2>
在联网服务客户，您可以定义通过联网服务可以访问联环系统的外部软件，还有您可以定义可以访问的服务。
<p>
您可以选择编辑图标来修改联网服务，或点击删除图标来删除联网服务。
<br>
如果您想新增一个联网服务客户端，请点击标记为 &quot;新增联网服务客户端&quot; 的 &quot;提交&quot; 按钮。
<hr>

<A NAME="web_services_clients_detail"></A>
<h3>新增/修改联网服务客户端</h3>
在这里，您可以新增一个或修改现有的联网服务客户端。当完成后，请点击 &quot;提交&quot; 按钮来储存更改。如果您是修改现有的，应首先点击 &quot;更改&quot; 按钮以进行修改。
<ul>
	<li><b>名称：</b>
	在这里，您可以指定名称。这只供内部使用。
	<li><b>互联网地址：</b>
	在这里，您可以指定允许访问联网服务的IP地址或领域名（将解析为IP地址）。<br>
	请当心，如果您想通过ISP连接到服务器，相同的 IP 可能用于其它网站（使用主机标题 hostheaders）。这意味着所有这些网站可以接入联网服务进程。
	很多时候，解析联网站域名得到的 IP 是该联网站将会连接的另一 IP。在这种情况下，您可以联络您的服务供应商以提供用于外部连接的IP（范围）。<br>
	您也可以指定 IP 范围（例如：77.88.45.1-256）。请注意，指定范围可能是个保安漏洞。如果是不太紧要的访问，如：查看广告，这将不是一个问题，
	但对于更严肃的行动，如：付款或查看会员数据，最好是只允许一个IP地址。<br>
	<li><b>渠道：</b> 在这里，您可以选择渠道。这可以是您已新增的渠道或是 &quot;网上商店付款&quot; 的 &quot;内置&quot; 渠道。
	（网上商店付款渠道允许从电子商务网站付款。更多有关的资料，可在联环系统 wiki，节：webservices - webshop 中找到）。
	<li><b>只限于会员：</b>
	在这里，您可以定义联网服务是否只限于特定的会员。访问的类型将取决于权限（见下文）。
	<li><b>HTTP 用户名/密码：</b>
	在这里（可任选的），您可以指定用户名和密码。每个联网服务客户端所提出的 HTTP 请求将需要用这用户名和密码来进行鉴定。<br>
	如果使用这个选项，启用联网服务令用户/密码的通讯加密，是好的做法。
	<li><b>权限：</b>
	<ul>
		<li><b>执行付款：</b>此选项只适用于拣选了渠道。这项服务允许通过（外部）付款渠道支付。
		您可以选择一种或多种付款方式。如果联网服务是受会员限制的，该会员只能通过渠道执行付款（而不是收款）。
		<li><b>收款：</b> 此选项只适用于拣选了渠道和已拣选（受限制的）会员。这项服务允许通过（外部）付款渠道支付。
		您可以选择一种或多种付款方式。所选的限制会员只能通过选定的渠道收款。该笔付款将需要付款人的 <a href="${pagePrefix}passwords#pin"><u>个人密码</u></a>。
		<li><b>搜索广告：</b>
		允许搜索广告（通常在一个网站内）。如果联网服务是受会员限制的，该服务只能取得会员（组别）可以查看的广告。<br>、
		如果已拣选了渠道，此选项不适用。
		<li><b>搜索会员：</b>
		允许搜索会员（通常在一个网站内）。如果联网服务是受会员限制的，该服务只能取得会员（组别）可以查看的会员列表和个人资料字段。<br>
		如果已拣选了渠道，此选项不适用。
		<li><b>网上商店付款：</b>
		允许收取联环系统用户通过网上商店的付款。网上商店付款渠道只有一种权限可以选择：网上商店付款。
		会员的鉴定是通过票据系统来处理的。这是解释在联环系统的 wiki > web services
		（<a href="http://project.cyclos.org/wiki/index.php?title=Web_services"><u>http://project.cyclos.org/wiki/index.php?title=Web_services</u></a>）。
		<li><b>访问账户的详细资料：</b>
		所有账户的详细资料和交易的搜索。如果联网服务是受会员限制的，该服务只能取得会员的交易。
	</ul>
</ul>
<hr>

<A NAME="search_indexes"></A>
<h2>Manage indexes</h2>
索引是用来方便快速搜索用户、广告和会员记录。
索引允许搜索关键字或关键字组合。
这些索引不存储在数据库中，而是在服务器的单独文件内。
如果在初始化过程中发现没有索引，联环系统将创造它们。
过一段时间使用（和多数据）后，你也许会想优化索引。<br>
重建选项将重建索引。这仅仅是一个后退选项，只应在出现问题时使用。
你可以重建和优化每个索引类型的索引。如有需要，你可以通过选择“重建所有”选项，重建所有索引。
<hr>

<A NAME="online_state"></A>
<h2>系统可用性</h2>
在某些情况下，你可能希望避免用户登录，以便做一些维修或系统配置。
为了避免关闭联环系统而显示一个错误页面，您可以用本选项禁止用户登录，
并断开所有登录的用户。只有有权限设置系统在线的管理员才能再次登录和设置系统在线。
<br>
（该权限可以在这里找到：管理员组别权限 > 管理任务 > 设置系统可用性）
<hr>

<A NAME="import_export"></A>
<h2>导入/导出设置</h2>
您可以使用这职能来导出和导入设置，以便在联环系统之间共同使用它们。除了渠道和联网服务的设置（因为对于每个系统这些通常是唯一的）之外，所有的设置都可以导出和导入。
导出导入的职能是相当简单的。导出将生成拥有设置（可读）的settings.xml文件。导入将套用导入文件的设置。
<hr>

</div> <%--  page-break end --%> 

<div class='help'>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>