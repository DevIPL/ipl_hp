<%@ language="javascript" %>
<?xml version="1.0" encoding="Shift_Jis"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="jp" lang="jp">
<head>
	<meta name="author" content="Wink Hosting (www.winkhosting.com)" />
	<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS" />
	<meta name="keywords" content="���₢���킹���󂯕t���܂���,���N���[�g���,�v���O���},SE,�v���O���~���O,�\�t�g�J��,�\�t�g�n�E�X,�A�C�v�����j���O,�\�͏d��" />
	<meta name="description" content="���₢���킹���󂯕t���܂��� | �v���O�����J�������A�C�v�����j���O" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Cache-Control" content="no-cache" />
	<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT" />
	<link rel="stylesheet" href="../images/style.css" type="text/css" />
	<title>���₢���킹���󂯕t���܂��� | �v���O�����J������ �A�C�v�����j���O</title>
	<script type="text/javascript" src="check.js" charset="Shift_JIS"></script>
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
					<h1>������� �A�C�v�����j���O</h1><br />
					Towa Edogawabashi building 8F<br />
					Yamabuki-cho 347<br />
					Shinjuku-ku Tokyo<br />
					Phone: 03-5225-1147<br />
				</div>
				<div id="toplinks" class="smallgraytext">
					<a href="../index.html">HOME</a> | <a href="../privacy/index.html">�l���ی���j</a> | <a href="../sitemap.html">�T�C�g�}�b�v</a> | <a href="../contact/index.html">�₢���킹</a>
				</div>
			</div>
			<div id="menu">
				<div align="right" class="smallwhitetext" style="padding:9px;">
					<a href="../index.html">HOME</a> | <a href="../outline/index.html">��ЊT�v</a> | <a href="../policy/index.html">��Ɨ��O</a> | <a href="../product/index.html">�J������</a> | <a href="../map/index.html">���ݒn(�n�})</a> | <a href="../item/index.html">�Z�p���</a>
				</div>
			</div>
			<div id="submenu">
				<div align="right" class="smallgraytext" style="padding:9px;">
					<a href="../about/index.html">��\����̈��A</a> | <a href="../recruit/index.html">���N���[�g���</a> | <a href="../recruit/tyuto.html">���r��W</a> | <a href="../voice/index.html">�Ј��̐�</a> | <a href="../circle/index.html">�T�[�N������</a> | <a href="../link/index.html">�����N</a>
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
    this.corp = "";
    this.t = "";
    this.post = "0";
}

function user_infomation() {
    this.host = "";             // REMOTE_HOST
    this.ua = "";               // HTTP_USER_AGENT
    this.time = "";
}

//���[���𑗐M����B
function send(from, to, subject, text, name) {
//	to = "kono@ipl.co.jp";

	var o = Server.CreateObject("CDO.Message");

	var schemas = "http://schemas.microsoft.com/cdo/configuration/";
	o.Configuration.Fields.Item(schemas + "sendusing") = 2;
	o.Configuration.Fields.Item(schemas + "smtpconnectiontimeout") = 30;
	o.Configuration.Fields.Item(schemas + "smtpserver") = "mail.ipl.co.jp";
	o.Configuration.Fields.Item(schemas + "smtpserverport") = 587;
	o.Configuration.Fields.Update();

	o.From = from;
	o.To = to;
	o.Subject = "�y IPL WEB-BBS �z " + subject;
	o.TextBody = text;

	o.Send();

}


// ////////////////////////////////////////////////////////////////
var info = new user_infomation();
var param = new form_parameter();
for (var i in param) {
    param[i] = Request.Form(i).item();
}

if (param.s != "���̓��e�ő��M����" && param.post!="1") {
	Response.Redirect("./error.html");
}
info = new user_infomation();
info.host = Request.ServerVariables("REMOTE_HOST");
info.ua = Request.ServerVariables("HTTP_USER_AGENT");
// ����
info.time = get_current_time();

// �����ŏ��𑗐M


var o = Server.CreateObject("CDO.Message");

var schemas = "http://schemas.microsoft.com/cdo/configuration/";
o.Configuration.Fields.Item(schemas + "sendusing") = 2;
o.Configuration.Fields.Item(schemas + "smtpconnectiontimeout") = 30;
o.Configuration.Fields.Item(schemas + "smtpserver") = "mail.ipl.co.jp";
o.Configuration.Fields.Item(schemas + "smtpserverport") = 587;
o.Configuration.Fields.Update();

o.From = "yokota@ipl.co.jp";
o.To = "eigyo@ipl.co.jp";
o.Subject = "IPL�ւ̂��₢���킹������܂����B";
o.TextBody = "IPL�z�[���y�[�W�ł��B�����l�ł��B\n\n"
	 + "��قǁAIPL�ւ̂��₢���킹������܂����B\n"
	 + "\n"
	 + "���L�A�₢���킹��ւ̕ԓ������肢�������܂��B\n"
	 + "\n"
	 + "���₢���킹���M�ҏ��\n"
	 + "�䖼�O�@:"           + param.n + "\n"
         + "�ӂ肪��:"       + param.k + "\n"
         + "��Ж��@:" + param.corp + "\n"
         + "�d�b�ԍ�:" + param.t + "\n"
         + "���[���A�h���X:" + param.m + "\n"
         + "=�₢���킹���e=\n"       + param.c + "\n\n"
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

o.Subject = param.n +"�l�@���₢���킹���󂯕t���܂����B";

var mailbody = "";
mailbody += "" + param.n + "�l\n\n";
mailbody += "���̓x�́A�A�C�v�����j���O�ւ̂��₢���킹\n";
mailbody += "���肪�Ƃ��������܂����B\n";
mailbody += "�S����肨�₢���킹�̌��ɂ��Ă��A���������グ�܂��̂�\n";
mailbody += "���҂����������܂��B\n\n";
mailbody += "������ЃA�C�v�����j���O\n�c�ƒS���@���c\n\n";
mailbody += "����t���e\n"
mailbody += "�����O�@:"           + param.n + "\n"
mailbody += "�ӂ肪��:"       + param.k + "\n"
mailbody += "��Ж��@:" + param.corp + "\n"
mailbody += "�d�b�ԍ�:" + param.t + "\n"
mailbody += "���[���A�h���X:" + param.m + "\n"
mailbody += "=�₢���킹���e=\n"       + param.c + "\n\n"
mailbody += "#REMOTE_HOST:"    + info.host + "\n"
mailbody += "#HTTP_USER_AGENT:" + info.ua + "\n"
mailbody += "#TIME:"            + info.time + "\n\n\n";
mailbody += "���A�P�T�Ԉȏソ���Ă��A���������ꍇ�́A��ϋ������܂���\n";
mailbody += "���L�A����܂Œ��ژA�������肢�������܂��B\n";
mailbody += "\n";
mailbody += "��---------------------------------\n";
mailbody += "�@(��)�A�C�v�����j���O\n";
mailbody += "�@��162-0801\n";
mailbody += "�@�����s�V�h��R�����R�S�V���a�]�ː싴�r���W�K\n";
mailbody += "�@�c�ƒS�� ���c\n";
mailbody += "�@TEL:03-5225-1147\n";
mailbody += "�@mail�Feigyo@ipl.co.jp\n";
mailbody += "�@HP�F http://www.ipl.co.jp/\n";
mailbody += "��---------------------------------\n";
mailbody += "�����̃��[���͂��₢���킹�ɑ΂��Ď����I�ɑ��M����Ă���܂��B\n\n";

o.TextBody = mailbody;
o.Send();

%>
				<h2 style="color:#0C0C0C;font-size:18px;font-weight:bold;">���₢���킹���������܂����B</h2>
				<div class="bodytext" style="font-size:14px;padding:12px;background-color:#F0F0F0;" align="justify">
					<br />
					<% = Server.HTMLEncode(param.n) %>�@�l<br />
					<br />
					���₢���킹���肪�Ƃ��������܂����B<br />
					���͂����������A����ɁA�S����育�A���������グ�܂��B<br />
					<br />
					����t�����̃��[����o�^�������������[���A�h���X<br />
					�@(<% = Server.HTMLEncode(param.m) %>)�[�Ăɑ��t�������܂����̂�<br />
					�@���m�F�������B<br />
					<br />
					<span class="underline">���t���[�̃��[���A�h���X(Yahoo���[����)�Ŗ₢���킹���ꂽ�ꍇ</span><br />
					�@����ĕ��Ѓh���C������̃��[�����u���f���[���v������󂯂�ꍇ��������܂��̂�<br />
					�@�u���f���[���t�H���_�v�̂��m�F�����肢�������܂��B<br/>
					<br />
					���A��t�����̃��[�����P���Ԉȏ�o���Ă��͂��Ȃ��ꍇ�ɂ�<br />
					�V�X�e���g���u���������́A�o�^�������������[���A�h���X��<br />
					���͊ԈႢ���l�����܂��B�������܂����A���ځA���L�A�₢���킹��܂�<br />
					�A�������肢�������܂��B<br />
					<br />
					<br />
					�{���́A���ɂ��肪�Ƃ��������܂����B<br />
					<br />
					<p style="text-align:right">������ЃA�C�v�����j���O �c�ƒS��<br />���c<br /><br /></p>
					
				</div>
				<div class="bodytext" style="padding:40px 12px 12px 12px;" align="center">
					<table border="1" cellspacing="0" bgcolor="#F7F7F7" style="font-size:1.0em;color: #666666;" summary="��啪��ɓ��������R�J���O���[�v EA SS IT">
					<tr><th>���₢���킹��</th></tr>
					<tr><td width="380" style="padding:5px;background-color:#FFFFFF;">
��162-0801<br />
�����s�V�h��R�����R�S�V���a�]�ː싴�r���W�K<br />
�c�ƒS�� ���c<br />
TEL:03-5225-1147<br />
mail�Feigyo��ipl.co.jp <br />
(�S�p���𔼊p@�ɕύX���₢���킹������) <br />
					</td></tr>
					</table>
				</div>
			</div>
			<div id="footer" class="smallgraytext">
				<a href="../index.html">HOME</a> | <a href="../outline/index.html">��ЊT�v</a> | <a href="../policy/index.html">��Ɨ��O</a> | <a href="../product/index.html">�J������</a> | <a href="../map/index.html">���ݒn(�n�})</a> | <a href="../item/index.html">�Z�p���</a>
				| ������� �A�C�v�����j���O 
				&copy; 1987 
			</div>
		</div>
	</div>
</body>
</html>