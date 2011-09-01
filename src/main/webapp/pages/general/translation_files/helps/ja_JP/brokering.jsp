<div style="page-break-after: always;"
<p class="head_description">
「仲介者」タイプのグループのメンバーは、新しいメンバーを登録し、それらのメンバーに対していくらかのレベルのアクセスとコントロールを持つことができます（仲介者グループの設定に依ります）。
「仲介者」という名称は、あまり適切でないかもしれません。
なぜなら、この機能は多くの別の目的のためにも使えるからです。<br>
一般的な仲介者機能は、メンバー登録の際に<a href="#commission"><u>
委託手数料</u></a>を受け取れるということです。
委託手数料は、新しいメンバーによって行われるトレードの額に基づいて設定できます。
これは仲介者が新しいメンバーの「取り入れ」を真剣に行うようにするためのインセンティブだという考えです。<br>
また、仲介者は、特定のCyclosメンバーの仕事を彼ら自身で行うには、あまりにもコンピュータが不安だと感じるメンバーのグループについて、パーソナル管理の一部を行うことが許されても良いでしょう。<br>
<span class="broker admin">仲介者機能は、マイクロファイナンスシステム内のローンエージェントとしても使えます。
仲介者であるローンエージェントは、新しいメンバーを登録し、メンバーのローン状態についての情報を引き出すこともできます。
LETSのようなコミュニティシステムは、
インターネット／携帯電話／スクリップにアクセスできないか、それらを使う能力がない他のメンバーをアシストできる近隣の（アカウント）管理者のためにその仲介者機能を使えます。
同一のシステム内に様々なタイプの仲介者グループが存在し得ます。</span></p>
仲介者が各々の個人メンバーとの委託手数料に関する
<a href="#commission_contracts"><u>契約</u></a>を設けることが可能です。

<p><span class="broker"> <i>どこで見つけられる？</i><br>
あなたは「メニュー: 仲介」を通じて、すべての仲介機能に辿り着けます。<br>
あなたが「仲介した」メンバーの1人に関する仲介情報および機能は、そのメンバーの<a href="${pagePrefix}profiles#member_profile"><u>プロフィール</u></a>の下の
<a
	href="${pagePrefix}profiles#actions_for_member_by_broker"><u>仲介者アクションページ</u></a>
において見つけられます。</span>
<p><span class="admin"> <i>どこで見つけられる？</i><br>
管理者は、仲介機能を持っていませんが、仲介者と、ある仲介者に割り当てられているメンバーの両方の仲介機能にある程度アクセスできます。
これは、そのメンバーまたは仲介者の<a href="${pagePrefix}profiles#member_profile"><u>プロフィール</u></a>の下にある<a
	href="${pagePrefix}profiles#actions_for_member_by_admin"><u>アクションページ</u></a>内で行えます。<br>
既に説明したように、仲介機能は、多くの目的のために使えます。
したがって、仲介者に関する検索と機能は、他のモジュール内に現れるかもしれません。
例えば、ローン検索は仲介者検索フィルタを持っており、管理者は仲介者に館sr円したバルクアクションを行えます。
これらの機能は、その機能の文脈内で説明されます。

<p><i>どうやって動かす？</i><br>
仲介を有効にするには、「仲介」ブロック内の<a
	href="${pagePrefix}groups#manage_group_permissions_broker"><u>仲介者許可</u></a>と「仲介」ブロック内の
<a
	href="${pagePrefix}groups#edit_broker_group"><u>仲介者グループ設定</u></a>を設定しなければなりません。
後者には1つしか項目がありません。仲介者がメンバーを登録できるようにしたい場合は、ここでそれを定めなければなりません。<br>
仲介者委託手数料は、
<a
	href="${pagePrefix}brokering#broker_commission_list"><u>仲介委託手数料</u></a>設定内の<a
	href="${pagePrefix}account_management#transaction_type_details"><u>
取引タイプ</u></a>レベルで有効化できます。
<br>
あなたはこれのために<a
	href="${pagePrefix}groups#manage_group_permissions_broker"><u>仲介者許可</u></a>も（「仲介」ブロック下で）設定する必要があるでしょう。
メンバーが委託手数料を見るためには、<a
	href="${pagePrefix}groups#manage_group_permissions_member"><u>
許可</u></a>も設定されなければなりません（「委託手数料」ブロック）。
<p>上で指摘したように、取引タイプ設定内で管理者として委託手数料を定義および有効化せずに、仲介者またはメンバーに委託手数料へのアクセスを与えることは、何の意味も成さないということに<b>留意</b>して下さい。
そのような場合、仲介者とメンバーは、仲介の委託手数料と契約を改変または定義せずにそれらにアクセスすることはできないので、空のボックスに直面するでしょう。なぜなら、それらは単に存在しないからです。<br>
仲介者委託手数料を作成するだけでなく、有効化もするように気を付けて下さい。
</span>
<hr>

<span class="broker admin">
<A NAME="broker_search_member"></A>
<h3>仲介者のメンバーを検索する</h3>
この機能は、仲介者のメンバーのリストを与えます。
<br>
あなたは以下のものについて検索できます:
<ul>
	<li><b>ログイン名／メンバー名:</b> 個々のメンバーを検索する
	<li><b>許可グループ:</b> グループによって検索する
	<li><b>状態:</b>
	<ul>
		<li><b>アクティブ: </b>これらはシステム内（「アクティブ」なグループ内）のアクティブなメンバーです。
		<li><b>委託手数料終了: </b><a href="#commission"><u>
		委託手数料</u></a>が受け取られ終了したメンバーを表示します。
		<li><b>アクティベーション待ち: </b>これらはあなたが登録したものの、（彼らはまず仲介者または管理者によってアクティブ化されなければならないために）未だアクティブでないメンバーです。
	</ul>
</ul>
<hr class="help">
</span>

<span class="broker">
<A NAME="broker_search_member_result"></A>
<h3>仲介者 - メンバー検索結果</h3>
このウィンドウは、あなたを仲介者として登録されているメンバーのリストを表示します。
<br>
メンバーリスト内では、メンバー名またはログイン名を選択し、そのメンバーの
<a href="${pagePrefix}profiles"><u>プロフィール</u></a>ページを開くことができます。
<hr class="help">
</span>

<span class="admin">
<A NAME="admin_brokering_list"></A>
<h3>メンバーリスト（仲介者の）</h3>
このページは、特定の仲介者に関連づけられているすべてのメンバーのリストを表示します。
あなたは、名前を選択して、メンバープロフィールに入れます。<br>
<img border="0" src="${images}/delete.gif" width="16" height="16">&nbsp;消去アイコンをクリックすると、そのメンバーへのその仲介者の割当てを解除します（確認を求められます）。
<hr class="help">
</span>


<span class="admin">
<A NAME="add_member_to_broker"></A>
<h3>仲介者にメンバーを追加する</h3>
このページでは、仲介者の仲介リストにメンバーを追加できます。
ログイン名とメンバー名のフィールドは、入力時に自動補完されます。
メンバーが別の仲介者に関連づけられており、依然としてアクティブな<a href="#commission"><u>委託手数料</u></a>
がある場合には、「委託手数料を一時停止する」を選択することにより、これを一時停止できます。<br>
<a href="${pagePrefix}user_management#bulk_actions"><u>バルクアクション</u></a>を通じて、メンバーの集合全体を別の仲介者に再割当てすることもできることに留意して下さい。
<hr class="help">
</span>

<span class="admin">
<A NAME="change_broker"></A>
<h3>仲介者を設定する／...の仲介者を変更する</h3>
このページでは、メンバーが関連づけられる仲介者を設定できます。
「現在の仲介者」フィールドは、該当する場合、そのメンバーの現在の仲介者を表示します。
メンバーは必ずしも仲介者に関連づけられていないので、このフィールドは空「なし」になり得ます。
メンバーを仲介者に関連づけたい場合、自動補完のログイン名または名前のフィールド内に新しい仲介者を入力できます。
仲介者が表示されたら、コメントを書き、下の送信ボタンを押すことにより、（選択された）仲介者を変更できます。<br>
現在の仲介者についてアクティブである任意の
<a href="#commission"><u>委託手数料</u></a>
を停止したい場合は、「委託手数料を一時停止する」フィールドを選択できます。
そうしない場合、新しい仲介者が前の仲介者の委託手数料設定を引き継ぐでしょう。
これは、仲介者が新しいメンバーを得た日から、委託手数料設定内で設定された委託手数料の最終日まで、委託手数料が課されることを意味します。
<hr class="help">
</span>

<span class="admin">
<a name="remove_member_to_broker"></a>
<h3>メンバーを削除する</h3>
このウィンドウのタイトルは、少々不安にさせるかもしれませんが、このウィンドウで送信をクリックした場合に生じる唯一の事は、そのメンバーがその仲介者に登録されていなくなるということです。
それゆえ、その仲介者はそのメンバーへの割当てを解除されます。<br>
「送信」ボタンをクリックする前に、削除の理由についてのコメントを追加できます。<br>
<a href="${pagePrefix}user_management#bulk_actions"><u>バルクアクション</u></a>を通じて、メンバーの集合全体を別のブローカーに再割当てできることに留意して下さい。
<hr class="help">
</span>


<a name="commission"></a>
<p class="sub_description">
<h2>仲介者委託手数料</h2>
仲介者は、彼の仕事について、委託手数料を受け取るかもしれません。
これは仲介者のメンバーの活動に結び付いた小さな支払いです。
仲介者が新しいメンバーを登録する場合、通常、このメンバーは、その仲介者のメンバーの一員になります。
仲介者は、この新しいメンバーが関わる各々の取引について、少額の支払いを得られます。
この背後にある考えは、それが仲介者を刺激して、新しいメンバーの取り入れを真剣にさせるだろうということです。
</p>
仲介者が任意の他のグループに移されると、すべての契約と実行中の委託手数料が終了されます。
<hr>

<span class="admin broker">
<A NAME="仲介者委託手数料リスト"></A>
<h3>仲介者委託手数料リスト</h3>
このウィンドウは、すべての設定された仲介者<a href="#commission"><u>
委託手数料</u></a>（有効または無効なもの）のリストを示します。
<ul>
	<li><img border="0" src="${images}/edit.gif" width="16" height="16">
	仲介を修正するには、アイコンをクリックして下さい。
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">
	仲介を消去したい場合は、アイコンをクリックして下さい。
</ul>
新しい委託手数料を追加するには、「新しい仲介者委託手数料を挿入する」をクリックして下さい。
<hr class="help">
</span>


<span class="admin broker">
<A NAME="broker_commission_details"></A>
<h3>仲介者委託手数料の詳細</h3>
「親の」取引が行われ、仲介者委託手数料の基準が合致する場合には、
取引手数料と同様に、仲介者<a href="#commission"><u>委託手数料</u></a>が、入金／引き落としされます。<br>
いつものように、変更をするためには下の「変更」ボタンを使い、あなたの変更を保存するには「送信」をクリックして下さい。
<p>
委託手数料には、以下の設定があります:
<ul>
	<li><b>取引タイプ:</b> これは、仲介者委託手数料が発動される取引タイプです。
	<li><b>名称:</b> 仲介者委託手数料の名称。
	<li><b>説明:</b> その委託手数料の説明。
	<li><b>有効:</b> チェックされている場合、その委託手数料はアクティブです。そうでない場合、それは機能しません。
	<li><b>賦課対象:</b> ここでは、賦課されることになる対象を定められます。これは、支払人、受取人、またはシステム口座になり得ます。
	<li><b>受取予定者:</b>
	ここでは、誰が手数料を受け取る予定かを定められます。
	これは、支払人の仲介者または受取人の仲介者になり得ます。
	<li><b>任意の口座を許可する:</b>
	これがチェックされた場合、取引手数料が適用される範囲には全く制限がありません。
	発動する取引タイプに属する口座とは別の口座に対して手数料を賦課する場合、あなたはこのオプションをチェックする必要があるでしょう。
	例えば、その委託手数料について、別の通貨での取引タイプを求める場合です。
	<li><b>生成された取引タイプ:</b>
	ここでは、どの取引タイプが生成されるかを定めます。
	あなたがそれに関して（例えば、口座履歴: 手数料と税で）フィルタできるように、これについての特定の取引タイプを作成するのが一般的です。
	標準のデータベースには、取引手数料とその取引手数料のための取引タイプが備わっています。
	<li><b>額:</b>
	ここでは、委託手数料の額を定められます。
	仲介者は、彼のメンバーが支払いをする度に（かつ、適用可能性の条件が満たされる場合に）委託手数料を受け取ります。<br>
	仲介者<a href="#commission_contract"><u>契約</u></a>の場合には、仲介者委託手数料の値は、仲介者によって変更できます。
	この場合、その額の値は、その契約についての標準の委託手数料の値として使われます。
	仲介者は、その各メンバーについての「仲介者契約」を作成する際に、これらの値を変更できます。
	次の項目も見て下さい。
	<li><b>最大の固定額と%:</b>
	これらのオプションは、仲介者契約に関連しており、「賦課対象」オプションにおいてメンバーが指定されている（かつ、システム口座でない）場合にのみ表示されます。
	その値は、仲介者が仲介者契約において指定できる最大額を定めます。
	（仲介者は、仲介者契約を管理するために、許可を持つ必要があります。）
</ul>

<li><b>適用可能性の条件</b><br> 
ここでは、どのような条件の下で、その手数料が適用されるかを定められます。
条件に合致した場合にのみ、その手数料は適用されます。
その条件は、組み合わされたものにすることができます。
<ul>
	<li><b>最低限の額:</b>
	その手数料は、取引額が指定された額よりも大きいか等しい場合にのみ、賦課されます。
	<li><b>最大限の額:</b><br>
	その手数料は、取引額が指定された額よりも小さいか等しい場合にのみ、賦課されます。
	<li><b>すべてのグループから</b>
	これがチェックされた場合、その手数料は、その取引タイプの支払いを行う任意のグループのメンバーに適用されます。
	その手数料を特定のグループにのみ適用したいならば、このボックスのチェックを外す必要があります。すると、複数選択ドロップダウンが現れ、それによりグループを指定することができます。
	<li><b>すべてのグループへ</b><br>
	これがチェックされた場合、その手数料は、その取引タイプの支払いを受け取る任意のグループのメンバーに適用されます。
	その手数料を特定のグループにのみ適用したいならば、このボックスのチェックを外す必要があります。すると、複数選択ドロップダウンが現れ、それによりグループを指定することができます。
	<li><b>すべての仲介者グループ</b><br>
	これがチェックされた場合、その手数料は、関係する任意の仲介者グループの仲介者に適用されます。
	その手数料を特定の仲介者グループの仲介者にのみ適用したいならば、このボックスのチェックを外す必要があります。すると、複数選択ドロップダウンが現れ、それにより、どの仲介者グループが含まれるかを指定できます。
	<li><b>いつ委託手数料が支払われるか:</b>
	ここでは、いつ委託手数料が賦課されるかを定められます。
	これは以下のものになり得ます:
	<ul>
		<li><b>常に:</b>
		仲介者委託手数料支払いは、常に（無限に）行われます。
		（その委託手数料は、ページ: メンバープロフィール - ブローカーを設定する から停止できます。）
		<li><b>取引数:</b>
		仲介者委託手数料支払いは、所与の取引数の後に停止します。
		このオプションを選んだ場合、その数字は、このドロップダウンの前に現れる入力フィールドに記入できます。
		<li><b>日数:</b>
		仲介者委託手数料支払いは、所与の日数の後に停止します。
		その数字は、あなたがこのオプションを選択した後、選択ボックスの前に現れる入力フィールド内に記入できます。
	</ul>
</ul>
<hr class="help">
</span>

<span class="admin broker">
<A NAME="commission_settings"></A>
<h3>委託手数料設定</h3>
このウィンドウでは、標準の<a href="#commission"><u>委託手数料</u></a>
設定をチェックできます。
設定は、仲介者が彼の設定に設けた変更か、仲介者とメンバーの間の個々の<a href="#commission_contract"><u>契約</u></a>によってによって覆されない限り、すべての新たな登録済みメンバーに適用されるでしょう。
<br>管理者が、いかなる委託手数料設定も定めなかった場合、このウィンドウは空になるでしょう。
あなたが、メンバーと仲介者のための委託手数料管理を有効にしているならば、標準の委託手数料も定めるべきです。
このドキュメントの一番上を見て下さい。
</span>
<span class="broker">
このウィンドウでは、標準の<a href="#commission"><u>委託手数料</u></a>設定を定められます。
これらの設定は、すべてのあなたの登録済みメンバーに適用されるでしょう。
このウィンドウで標準の委託手数料を設定していないならば、管理者は標準の委託手数料設定を変更できます。
この画面であなたの委託手数料設定を設定したならば、それらが管理者の設定を覆すことになります。
<br>あなたがあなたのメンバーについて設けた任意の個々の<a href="#commission_contract"><u>契約</u></a> も、あなたがここで変更する設定を覆すということに留意して下さい。

<p>
管理者がどのような委託手数料設定も定めなかった場合、このウィンドウは空になるでしょう。
その場合、あなたはこれについて彼らに通知すべきです。
<p>
あなたは、下の「変更」ボタンをクリックすることにより、あなたの設定を変更できます。
あなたの変更を保存するには「送信」ボタンを使って下さい。
これは、あなたが標準の設定を変更する許可を持っている場合にのみ見えるでしょう。
<br>

状態は変更できません。
</span>
状態は以下の値を持ち得ます: <br>
<ul>
	<li><b>アクティブ:</b>
	これは、条件が当てはまる場合に、すべての設定された仲介者委託手数料が賦課されることを意味します。
	<li><b>非アクティブ:</b>
	この状態は、どの委託手数料も賦課できないことを意味します。
	この場合、それはこれがシステム全体に及ぶように設定されており、それが管理者によって設定されていることを意味します。
	<li><b>一時停止中:</b>
	その仲介者委託手数料は、一時的に停止されています。
</ul>
<span class="admin"> 管理者は、すべてのアクティブな委託手数料を一時停止する（一時的に停止する）ことを選択できます。
仲介者<a href="#commission_contract"><u>契約</u></a>が有効になっている場合でも、仲介者は新しい委託手数料契約を追加できますが、委託手数料は直接サスペンド中の状態になります。
</span>
<hr class="help">

<a name="commission_contract"></a>
<p class="sub_description">
<h2>委託手数料契約</h2>
委託手数料契約は、仲介者とメンバーの間の取り決めです。
通常、仲介者は、メンバーの各支払いのパーセンテージか、各支払いについての固定額のいずれかを受け取ります。
この<a href="#commission"><u>委託手数料</u></a>は、支払うメンバー、受け取るメンバーによってか、あるいは、組織によって（システム口座から）支払われ得ます。<br>
設定に依って、仲介者は、彼らに割り当てられた各メンバーと、様々な個々の契約を自由に設けられます。
メンバーは、それが適用される前に、この契約に同意しなければなりません。メンバーは、新たに提案された仲介者契約を承諾または拒否できます。
</p>
メンバーは、委託手数料の詳細を見ることができ、委託手数料の状態が変更された場合には、メンバーと仲介者の両方が通知を受け取るでしょう。
<p>
<span class="broker">
システム設定に依っては、仲介者はメンバーごとに委託手数料を定められます。
アクティブな委託手数料は、1期ごとに1つのみ存在し得ます。（委託手数料期間が重複しない場合には、複数の委託手数料を持つことも可能です。）<br> 
<br>注: 仲介者が他の任意のグループに移動された場合、すべての契約と委託手数料が終了されます。
<p>
<i>どこで見つけられる？</i><br>
委託手数料契約は、「メニュー: 仲介 > 委託手数料契約」にて見つけられます。
あなたは、メンバーのプロフィールを通じて、「仲介アクション」ウィンドウ内、「委託手数料契約」ボタンで、メンバーのための新しい委託手数料契約を追加できます。
あなたが辿り着くページの一番下に、新しい契約を作成するためのボタンがあります。
</span>
<span class="member"><%-- dit is ook zichtbaar voor brokers. Als broker zie ik nu 2x where to find --%>
<i>どこで見つけられる？</i><br>
あなたは、「メニュー: パーソナル > 委託手数料賦課状態」内で、仲介契約を見つけられます。
これは、あなたがそれについて許可を持つ場合のみ見えます。
</span>
<hr>

<span class="admin broker">
<A NAME="commission_contracts_search_filters"></A>
<h3>仲介者委託手数料契約の検索</h3>
このページでは、既存の<a href="#commission_contract"><u>
委託手数料契約</u></a>を検索できます。<br>
たいていの検索オプションは自明です。
状況は<a href="#commission_contract_status"><u>ここで</u></a>説明されます。 
<hr class="help">
</span>

<span class="admin broker">
<A NAME="commission_contracts_search_results"></A>
<h3>委託手数料契約の検索結果</h3>
このウィンドウは、すべての<a href="#commission_contract"><u>
委託手数料契約</u></a>とそれらの<a href="#commission_contract_status"><u>状態</u></a>のリストを示します。
<ul>
	<li><img border="0" src="${images}/edit.gif" width="16" height="16">
	詳細に入るには、虫眼鏡アイコンを選択して下さい。
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">
	その契約を消去したいならば、消去アイコンをクリックして下さい。
	これは、あなたが許可を持っており、かつ、その契約がアクティブな状態にない場合にのみ見えます。
</ul>
<hr class="help">
</span>

<a name="commission_contract_status"></a>
<h3>委託手数料契約の状態</h3>
<a href="#commission_contract"><u>委託手数料契約</u></a>は、以下の状態になり得ます。
<ul>
	<li><b>保留中: </b>
	その契約は、そのメンバーが、委託手数料契約を確認および承諾するまで、保留中の状態になります。
	<li><b>承諾済み: </b>
	この状態は、その委託手数料が、メンバーによって承諾されているものの、未だその契約の開始日になっていないことを意味します。
	<li><b>アクティブ: </b>
	一度、仲介者委託手数料が承諾され、開始日に達すると、その委託手数料契約はアクティブ状態になります。つまり、その委託手数料が、その契約の設定に応じて賦課されます。
	<li><b>拒否済み: </b>
	契約がメンバーによって拒否されると、それは拒否済みの状態に移ります。
	<li><b>期限切れ: </b>
	契約が開始日前に承諾されない場合、それは期限切れの状態に移ります。
	<li><b>キャンセル済み: </b>
	仲介者は、委託手数料契約をキャンセルでき、それは将来の支払いがもはや委託手数料を生成しないことを意味します。
	<li><b>完了: </b>
	その委託手数料契約は、終了日が過ぎて委託手数料の賦課が完了しているために終了されました。
</ul>
<hr class="help">

<A NAME="commission_charge_status"></A>
<h3>委託手数料の状態</h3>
このウィンドウは、現在の<a href="#commission"><u>委託手数料</u></a>についての情報の書かれた結果を素早く表示します。
これは、標準の委託手数料または個々の仲介者<a href="#commission_contract"><u>
委託手数料契約</u></a>になり得ます。
その情報は自明です。
契約は、<a href="#commission_contract_status"><u>状態</u></a>の様々なオプションの1つになり得ます。
<hr class="help">

<A NAME="commission_contracts_list"></A>
<h3>委託手数料契約リスト</h3>
このウィンドウは、このメンバーについてのすべての<a href="#commission_contract"><u>
委託手数料契約</u></a>とそれらの
<a href="#commission_contract_status"><u>状態</u></a>のリストを表示します。
<span class="admin broker">
<ul>
	<li><img border="0" src="${images}/view.gif" width="16" height="16">&nbsp;
	詳細に入るには、虫眼鏡アイコンを選択して下さい。
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">&nbsp;契約を消去するには、消去アイコンを選択して下さい。
	これは、あなたが許可を持っており、その契約がアクティブ状態にない場合にのみ見えます。
	<li>このウィンドウの右下にある「新しい契約」というタイトルのドロップダウン内でタイプ選択をすることにより、新しい委託手数料契約を<b>追加</b>できます。
	管理者がどのような委託手数料設定も定めなかった場合には、このドロップダウンは空になります。
	その場合には、それについて彼らに通知するべきです。
</ul>
</span>
<span class="member">

<img border="0" src="${images}/view.gif" width="16" height="16">&nbsp;
虫眼鏡アイコンをクリックして、詳細を見られます。
これにより、提案された契約の状態が「保留中」の場合に、それを承諾または拒否できるウィンドウへと移動します。
</span> 
<hr class="help">

<A NAME="commission_contract_edit"></A>
<h3>仲介者委託手数料契約を修正／閲覧する</h3>
そのウィンドウは、あなたが選択した<a href="#commission_contract"><u>
委託手数料契約</u></a>の詳細を表示します。
状況フィールドの可能な値を概観するには、
<a href="#commission_contract_status"><u>ここをクリックして下さい</u></a>。<br>
一度アクティブになると、委託手数料契約は消去できません。
ただし、「キャンセル」ボタンをクリックすることにより、その契約を
<a href="#commission_contract_status"><u>キャンセル</u></a>できます。
<P>
<span class="member">状況が「保留中」の場合は、これがあなたの仲介者によってあなたに提案された新しい契約であることを意味します。
この場合、一番下にある2つのボタンにいずれかをクリックすることにより、その提案された取り決めを承諾または拒否できます。
提案された仲介者契約は、あなたがそれを承諾するまで適用されません。</span>
<hr class="help">

<A NAME="commission_contract_insert"></A>
<h3>仲介者委託手数料契約を挿入する</h3>
そのウィンドウにより、選択されたメンバーのための新しい
<a href="#commission_contract"><u>
委託手数料契約</u></a>を作成できます。<br>
その状態は常に「保留中」です。
なせなら、その契約はそのメンバーが承諾または拒否した場合にのみ、別の状態に移り得ますが、あなたがちょうど作成中の時にはそれは不可能だからです。<p>
あなたは「開始日」、「終了日」、新しい契約のための額を設定しなければなりません。
日付については、
<img border="0" src="${images}/calendar.gif" width="16" height="16">&nbsp;アイコン<p>によって、日付選択機能を使っても良いでしょう。
一度アクティブになると、委託手数料契約は消去できません。
ただし、「キャンセル」ボタンをクリックすることにより、その契約を
<a href="#commission_contract_status"><u>キャンセル</u></a>することができます。
<hr class="help">

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
