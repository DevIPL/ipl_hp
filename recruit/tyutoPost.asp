<%@ language="javascript" %>
<?xml version="1.0" encoding="Shift_Jis"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="jp" lang="jp">
<head>
	<meta name="author" content="Wink Hosting (www.winkhosting.com)" />
	<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS" />
	<meta name="keywords" content="中途採用の応募を受け付けました,リクルート情報,プログラマ,SE,プログラミング,ソフト開発,ソフトハウス,アイプランニング,能力重視" />
	<meta name="description" content="中途採用の応募を受け付けました | プログラム開発請負アイプランニング" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Cache-Control" content="no-cache" />
	<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT" />
	<link rel="stylesheet" href="../images/style.css" type="text/css" />
	<title>中途採用の応募を受け付けました | プログラム開発請負 アイプランニング</title>
	<script type="text/javascript" src="check_tyuto.js" charset="Shift_JIS"></script>
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
    this.ag = "";
    this.bg = "";
    this.cr = "";
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

if (param.s != "この内容で応募する" && param.post!="1") {
	Response.Redirect("./error.html");
}
info = new user_infomation();
info.host = Request.ServerVariables("REMOTE_HOST");
info.ua = Request.ServerVariables("HTTP_USER_AGENT");
// 時刻
info.time = get_current_time();

// ここで情報を送信
	var o = Server.CreateObject("CDO.Message");

	var schemas = "http://schemas.microsoft.com/cdo/configuration/";
	o.Configuration.Fields.Item(schemas + "sendusing") = 2;
	o.Configuration.Fields.Item(schemas + "smtpconnectiontimeout") = 30;
	o.Configuration.Fields.Item(schemas + "smtpserver") = "mail.ipl.co.jp";
	o.Configuration.Fields.Item(schemas + "smtpserverport") = 587;
	o.Configuration.Fields.Update();

	o.From = "yokota@ipl.co.jp";
	o.To = "saiyo@ipl.co.jp";
	o.Subject = "IPL中途採用への応募がありました。";
	o.TextBody = "IPLホームページです。お疲れ様です。\n\n"
		 + "先ほど、IPL中途採用への応募がありました。\n"
		 + "\n"
		 + "１週間以内に下記応募者への連絡をお願いいたします。\n"
		 + "\n"
		 + "■中途応募者情報\n"
		 + "お名前　:"           + param.n + "\n"
	         + "ふりがな:"       + param.k + "\n"
	         + "ご住所　:" + param.a + "\n"
	         + "電話番号:" + param.t + "\n"
	         + "メールアドレス:" + param.m + "\n"
	         + "年齢　　:" + param.ag + "\n"
	         + "最終学歴:" + param.bg + "\n"
	         + "職歴\n"       + param.cr + "\n\n"
	         + "通信欄\n"       + param.c + "\n\n"
	         + "#REMOTE_HOST:"    + info.host + "\n"
	         + "#HTTP_USER_AGENT:" + info.ua + "\n"
	         + "#TIME:"            + info.time + "\n\n";

	o.Send();

	o = null;
	o = Server.CreateObject("CDO.Message");

	var schemas = "http://schemas.microsoft.com/cdo/configuration/";
	o.Configuration.Fields.Item(schemas + "sendusing") = 2;
	o.Configuration.Fields.Item(schemas + "smtpconnectiontimeout") = 30;
	o.Configuration.Fields.Item(schemas + "smtpserver") = "mail.ipl.co.jp";
	o.Configuration.Fields.Item(schemas + "smtpserverport") = 587;
	o.Configuration.Fields.Update();

	o.From = "yokota@ipl.co.jp";
	o.To = param.m;

o.Subject = param.n +"様　IPL中途採用応募を受け付けました。";

var mailbody = "";
mailbody += "" + param.n + "様\n\n";
mailbody += "この度は、アイプランニング中途採用への\n";
mailbody += "ご応募ありがとうございました。\n";
mailbody += "後日、採用担当よりエントリー詳細情報を連絡いたしますので\n";
mailbody += "お待ちくださいませ。\n\n";
mailbody += "株式会社アイプランニング\n採用担当　横田\n\n";
mailbody += "■受付内容\n"
mailbody += "お名前　:\t"           + param.n + "\n"
mailbody += "ふりがな:\t"       + param.k + "\n"
mailbody += "ご住所　:\t" + param.a + "\n"
mailbody += "電話番号:\t" + param.t + "\n"
mailbody += "メールアドレス:\t" + param.m + "\n"
mailbody += "年齢　　:\t" + param.ag + "\n"
mailbody += "最終学歴:\t" + param.bg + "\n"
mailbody += "職歴\n"       + param.cr + "\n\n"
mailbody += "通信欄\n"       + param.c + "\n\n"
mailbody += "#REMOTE_HOST\t:"    + info.host + "\n"
mailbody += "#HTTP_USER_AGENT\t:" + info.ua + "\n"
mailbody += "#TIME\t:"            + info.time + "\n\n\n";
mailbody += "尚、１週間以上たっても連絡が無い場合は、大変恐れ入りますが\n";
mailbody += "下記連絡先まで直接連絡をお願いいたします。\n";
mailbody += "\n";
mailbody += "■---------------------------------\n";
mailbody += "　(株)アイプランニング\n";
mailbody += "　〒162-0801\n";
mailbody += "　東京都新宿区山吹町３４７藤和江戸川橋ビル８階\n";
mailbody += "　採用担当 横田\n";
mailbody += "　TEL:03-5225-1147\n";
mailbody += "　mail：saiyo@ipl.co.jp\n";
mailbody += "　HP： http://www.ipl.co.jp/\n";
mailbody += "■---------------------------------\n";
mailbody += "※このメールは採用応募に対して自動的に送信されております。\n\n";


o.TextBody = mailbody;

o.Send();

%>
				<h2 style="color:#0C0C0C;font-size:18px;font-weight:bold;">中途採用の応募が完了しました。</h2>
				<div class="bodytext" style="font-size:14px;padding:12px;background-color:#F0F0F0;" align="justify">
					<br />
					<% = Server.HTMLEncode(param.n) %>　様<br />
					<br />
					中途採用の応募ありがとうございました。<br />
					応募いただいた連絡先に、後日、採用担当よりご連絡を差し上げます。<br />
					<br />
					※応募受付完了のメールを登録いただいたメールアドレス<br />
					　(<% = Server.HTMLEncode(param.m) %>)充てに送付いたしましたので<br />
					　ご確認下さい。<br />
					<br />
					<span class="underline">※フリーのメールアドレス(Yahooメール等)で応募された場合</span><br />
					　誤って弊社ドメインからのメールが「迷惑メール」判定を受ける場合が御座いますので<br />
					　「迷惑メールフォルダ」のご確認もお願いいたします。<br/>
					<br />
					尚、応募受付完了のメールが１時間以上経っても届かない場合には<br />
					システムトラブルもしくは、登録いただいたメールアドレスの<br />
					入力間違いが考えられます。恐れ入りますが、再度応募いただくか<br />
					直接、下記、採用の問い合わせ先まで連絡をお願いいたします。<br />
					<br />
					<br />
					また、採用に関して何かご不明なところなど御座いましたら、下記問い合わせ先まで<br />
					連絡をお願いいたします。<br />
					<br />
					本日は、我々アイプランニングに興味を示していただき誠にありがとうございました。<br />
					<br />
					<p style="text-align:right">株式会社アイプランニング採用担当<br />横田<br /><br /></p>
					
				</div>
				<div class="bodytext" style="padding:40px 12px 12px 12px;" align="center">
					<table border="1" cellspacing="0" bgcolor="#F7F7F7" style="font-size:1.0em;color: #666666;" summary="専門分野に特化した３つ開発グループ EA SS IT">
					<tr><th>採用に関するお問い合わせ先</th></tr>
					<tr><td width="380" style="padding:5px;background-color:#FFFFFF;">
〒162-0801<br />
東京都新宿区山吹町３４７藤和江戸川橋ビル８階<br />
採用担当 横田<br />
TEL:03-5225-1147<br />
mail：saiyo＠ipl.co.jp <br />
(＠を半角@に変更し問い合わせして下さい) <br />
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
