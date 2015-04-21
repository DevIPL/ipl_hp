<%@ language="javascript" %>
<?xml version="1.0" encoding="Shift_Jis"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="jp" lang="jp">
<head>
	<meta name="author" content="Wink Hosting (www.winkhosting.com)" />
	<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS" />
	<meta name="keywords" content="新卒採用応募内容確認,リクルート情報,プログラマ,SE,プログラミング,ソフト開発,ソフトハウス,アイプランニング,能力重視" />
	<meta name="description" content="新卒採用応募内容確認 | プログラム開発請負アイプランニング" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Cache-Control" content="no-cache" />
	<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT" />
	<link rel="stylesheet" href="../images/style.css" type="text/css" />
	<title>新卒採用応募内容確認 | プログラム開発請負 アイプランニング</title>
	<script type="text/javascript" src="check_new.js" charset="Shift_JIS"></script>
</head>
<body>
	<div id="page" align="center">
		<div id="content" style="width:800px">
			<div id="logo">
				<div style="margin-top:70px" class="whitetitle">IPlanning</div>
			</div>
			<div id="topheader">
				<div align="left" class="infotext">
					<br />
					<h1>株式会社 アイプランニング</h1><br />
					Towa Edogawabashi building 8F<br />
					Yamabuki-cho 347<br />
					Shinjuku-ku Tokyo<br />
					Phone: 03-5225-1147<br />
				</div>
				<div id="toplinks" class="smallgraytext">
					<a href="../index.html">HOME</a> | <a href="../privacy/index.html">個人情報保護方針</a> | <a href="../sitemap.html">サイトマップ</a> | <a href="../contact/index.html">問い合わせ</a>
				</div>
			</div>
			<div id="menu">
				<div align="right" class="smallwhitetext" style="padding:9px;">
					<a href="../index.html">HOME</a> | <a href="../outline/index.html">会社概要</a> | <a href="../policy/index.html">企業理念</a> | <a href="../product/index.html">開発実績</a> | <a href="../map/index.html">所在地(地図)</a> | <a href="../item/index.html">技術情報</a>
				</div>
			</div>
			<div id="submenu">
				<div align="right" class="smallgraytext" style="padding:9px;">
					<a href="../about/index.html">代表からの挨拶</a> | <a href="../recruit/index.html">リクルート情報</a> | <a href="../recruit/tyuto.html">中途募集</a> | <a href="../voice/index.html">社員の声</a> | <a href="../circle/index.html">サークル活動</a> | <a href="../link/index.html">リンク</a>
				</div>
			</div>
			<div style="width:540px">
				<div style="padding:40px 10px 15px 0px">
				</div>
<%
function check_mail_address(address) {
    // http://www.tt.rim.or.jp/~canada/comp/cgi/tech/mailaddrmatch/
    var regex = new RegExp("^[\x01-\x7F]+@(([-a-z0-9]+\.)*[a-z]+|\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])$", "i");
    return regex.test(address);
}

function get_current_time() {
    var now = new Date();
    var y = now.getYear();
    var m = 1 + now.getMonth();
    var d = now.getDate();
    var h = now.getHours();
    var mm = now.getMinutes();
    var s = now.getSeconds();
    var t = y + "-";
    if (m < 10) {
        t += "0" + m + "-";
    } else {
        t += m + "-";
    }
    if (d < 10) {
        t += "0" + d + "T";
    } else {
        t += d + "T";
    }
    if (h < 10) {
        t += "0" + h + ":";
    } else {
        t += h + ":";
    }
    if (mm < 10) {
        t += "0" + mm + ":";
    } else {
        t += mm + ":";
    }
    if (s < 10) {
        t += "0" + s;
    } else {
        t += s;
    }
    return t;
}

function form_parameter() {
    this.s = "";
    this.n = "";
    this.k = "";
    this.m = "";
    this.c = "";
    this.a = "";
    this.t = "";
    this.sl = "";
    this.bu = "";
    this.ka = "";
    this.post = "0";
}

function user_infomation() {
    this.host = "";             // REMOTE_HOST
    this.ua = "";               // HTTP_USER_AGENT
    this.time = "";
}

// ////////////////////////////////////////////////////////////////
var info = new user_infomation();
var param = new form_parameter();
for (var i in param) {
    param[i] = Request.Form(i).item();
}

if (param.s != "応募内容を確認" && param.post!="0") {
	Response.Redirect("./error.html");
}

var text = "";

if (param.sl == "" || param.ka == "" || param.a == "" || param.t == "" || param.k == "" || param.m == "" || !check_mail_address(param.m)) {
	text += "入力に不備があります。\n";
}

// ////////////////////////////////////////////////////////////////

if( text !=""){
%>

				<h2 style="color:#0C0C0C;font-size:18px;font-weight:bold;">新卒採用応募内容に不備があります。</h2>
				<div class="bodytext" style="font-size:14px;padding:12px;background-color:#F0F0F0;" align="justify">
				<br />
				<span class="underline">入力内容に不備があります。</span>修正、又は必須項目を入力して下さい。<br />
				<br />
				<p>あなたのお名前(ふりがな)と連絡先(住所,電話番号,メールアドレス)、学校等を入力し応募して下さい。<br />
					<b>※印は入力必須項目</b><br />
					応募いただいた連絡先に、後日、採用担当よりご連絡を差し上げます。</p>
				<br />
				<form method="post" action="new.asp" id="entry_form" name="entry_form" onsubmit="return validate(this);">
				<dl>
				  <dt>※氏名:</dt>
				  <dd><input type="text" size="20" name="n" id="entry_name" value="<% = Server.HTMLEncode(param.n) %>" /></dd>
				  <dt>※ふりがな:</dt>
				  <dd><input type="text" size="20" name="k" id="entry_kana" value="<% = Server.HTMLEncode(param.k) %>" /></dd>
				  <dt>※住所:</dt>
				  <dd><input type="text" size="80" name="a" id="entry_address" value="<% = Server.HTMLEncode(param.a) %>" /></dd>
				  <dt>※電話番号:</dt>
				  <dd><input type="text" size="30" name="t" id="entry_phone" value="<% = Server.HTMLEncode(param.t) %>" /></dd>
				  <dt>※メールアドレス:</dt>
				  <dd><input type="text" size="30" name="m" id="entry_mail" value="<% = Server.HTMLEncode(param.m) %>" /></dd>
				  <dt>※学校名:</dt>
				  <dd><input type="text" size="30" name="sl" id="entry_school" value="<% = Server.HTMLEncode(param.sl) %>" /></dd>
				  <dt>　学部:</dt>
				  <dd><input type="text" size="30" name="bu" id="entry_gakubu" value="<% = Server.HTMLEncode(param.bu) %>" /></dd>
				  <dt>※学科:</dt>
				  <dd><input type="text" size="30" name="ka" id="entry_gakka" value="<% = Server.HTMLEncode(param.ka) %>" /></dd>
				  <dt>通信欄:(採用に関する質問やあなたの熱意をどうぞ)</dt>
				  <dd><textarea rows="5" cols="40" name="c" id="entry_comment"><% = Server.HTMLEncode(param.c) %></textarea></dd>
				</dl>
				<p><br /><span class="underline">応募の受付が完了いたしますとあなたのメールアドレスに自動的に「受付完了」の<br />
					メールが届きます。@ipl.co.jpからのメールが受け取れるようにしておいて下さい。</span></p>
				<p><input type="hidden" name="post" value="0" /><br /></p>
				
				<p><input type="submit" name="s" value="応募内容を確認" />(必須項目(※)を入力しないと機能しません。)</p>
				</form>
				<br  />
				<p>送信された個人情報に関し、弊社、<a href="../privacy/index.html" target="_blank">個人情報保護方針</a>に則り、あなたのプライバシーを保護することに細心の注意を払い、採用以外の目的で使用することは御座いません。</p>
				</div>
<%
}else{
%>
				<h2 style="color:#0C0C0C;font-size:18px;font-weight:bold;">新卒採用応募内容の確認</h2>
				<div class="bodytext" style="font-size:14px;padding:12px;background-color:#F0F0F0;" align="justify">
				<br />
					入力された内容をご確認下さい。<br />
					内容に間違いがなければ、下記「この内容で応募する」ボタンより<br />
					応募を完了させて下さい。<br />
					<br />
					<br />
					<table border="1" cellspacing="0" bgcolor="#F7F7F7" style="font-size:1.0em;color: #666666;" summary="専門分野に特化した３つ開発グループ EA SS IT">
					<tr><td width="80" align="center">氏名</td>
						<td width="380" style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.n) %></td>
						</tr>
					<tr><td align="center">ふりがな</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.k) %></td>
						</tr>
					<tr><td align="center">住所</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.a) %></td>
						</tr>
					<tr><td align="center">電話番号</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.t) %></td>
						</tr>
					<tr><td align="center">メールアドレス</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.m) %></td>
						</tr>
					<tr><td align="center">学校名</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.sl) %></td>
						</tr>
					<tr><td align="center">学部</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.bu) %></td>
						</tr>
					<tr><td align="center">学科</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.ka) %></td>
						</tr>
					<tr><td align="center">通信欄</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.c) %></td>
						</tr>
					</table>

					<form method="post" action="newPost.asp" id="entry_form" name="entry_form" onsubmit="return validate(this);">
					  <dd><input type="hidden" size="20" name="n" id="entry_name" value="<% = Server.HTMLEncode(param.n) %>" /></dd>
					  <dd><input type="hidden" size="20" name="k" id="entry_kana" value="<% = Server.HTMLEncode(param.k) %>" /></dd>
					  <dd><input type="hidden" size="80" name="a" id="entry_address" value="<% = Server.HTMLEncode(param.a) %>" /></dd>
					  <dd><input type="hidden" size="30" name="t" id="entry_phone" value="<% = Server.HTMLEncode(param.t) %>" /></dd>
					  <dd><input type="hidden" size="30" name="m" id="entry_mail" value="<% = Server.HTMLEncode(param.m) %>" /></dd>
					  <dd><input type="hidden" size="30" name="sl" id="entry_school" value="<% = Server.HTMLEncode(param.sl) %>" /></dd>
					  <dd><input type="hidden" size="30" name="bu" id="entry_gakubu" value="<% = Server.HTMLEncode(param.bu) %>" /></dd>
					  <dd><input type="hidden" size="30" name="ka" id="entry_gakka" value="<% = Server.HTMLEncode(param.ka) %>" /></dd>
					  <dd><input type="hidden" size="30" name="c" id="entry_comment" value="<% = Server.HTMLEncode(param.c) %>" /></dd>
					</dl>
					<p><br /><span class="underline">応募の受付が完了いたしますとあなたのメールアドレスに自動的に「受付完了」の<br />
						メールが届きます。@ipl.co.jpからのメールが受け取れるようにしておいて下さい。</span><br />
						応募いただいた連絡先に、後日、採用担当よりご連絡を差し上げます。</p>
					<p><input type="hidden" name="post" value="1" /><br /></p>
					<p><input type="submit" name="s" value="この内容で応募する" /></p>
					</form>
				<p><br />送信された個人情報に関し、弊社、<a href="../privacy/index.html" target="_blank">個人情報保護方針</a>に則り、あなたのプライバシーを保護することに細心の注意を払い、採用以外の目的で使用することは御座いません。<br /><br /></p>
				
				</div>
<%
}
%>
				<div class="bodytext" style="padding:40px 12px 12px 12px;" align="center">
					<table border="1" cellspacing="0" bgcolor="#F7F7F7" style="font-size:1.0em;color: #666666;" summary="専門分野に特化した３つ開発グループ EA SS IT">
					<tr><th>採用に関するお問い合わせ先</th></tr>
					<tr><td width="380" style="padding:5px;background-color:#FFFFFF;">
〒162-0801<br />
東京都新宿区山吹町３４７藤和江戸川橋ビル８階<br />
採用担当 横田<br />
TEL:03-5225-1147<br />
mail：saiyo＠ipl.co.jp <br />
(＠を半角@に変更し問い合わせして下さい。) <br />
					</td></tr>
					</table>
				</div>
			</div>
			<div id="footer" class="smallgraytext">
				<a href="../index.html">HOME</a> | <a href="../outline/index.html">会社概要</a> | <a href="../policy/index.html">企業理念</a> | <a href="../product/index.html">開発実績</a> | <a href="../map/index.html">所在地(地図)</a> | <a href="../item/index.html">技術情報</a>
				| 株式会社 アイプランニング 
				&copy; 1987 
			</div>
		</div>
	</div>
</body>
</html>
