<%@ language="javascript" %>
<?xml version="1.0" encoding="Shift_Jis"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="jp" lang="jp">
<head>
	<meta name="author" content="Wink Hosting (www.winkhosting.com)" />
	<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS" />
	<meta name="keywords" content="���r�̗p�̉�����󂯕t���܂���,���N���[�g���,�v���O���},SE,�v���O���~���O,�\�t�g�J��,�\�t�g�n�E�X,�A�C�v�����j���O,�\�͏d��" />
	<meta name="description" content="���r�̗p�̉�����󂯕t���܂��� | �v���O�����J�������A�C�v�����j���O" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Cache-Control" content="no-cache" />
	<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT" />
	<link rel="stylesheet" href="../images/style.css" type="text/css" />
	<title>���r�̗p�̉�����󂯕t���܂��� | �v���O�����J������ �A�C�v�����j���O</title>
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

if (param.s != "���̓��e�ŉ��傷��" && param.post!="1") {
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
	o.To = "saiyo@ipl.co.jp";
	o.Subject = "IPL���r�̗p�ւ̉��傪����܂����B";
	o.TextBody = "IPL�z�[���y�[�W�ł��B�����l�ł��B\n\n"
		 + "��قǁAIPL���r�̗p�ւ̉��傪����܂����B\n"
		 + "\n"
		 + "�P�T�Ԉȓ��ɉ��L����҂ւ̘A�������肢�������܂��B\n"
		 + "\n"
		 + "�����r����ҏ��\n"
		 + "�����O�@:"           + param.n + "\n"
	         + "�ӂ肪��:"       + param.k + "\n"
	         + "���Z���@:" + param.a + "\n"
	         + "�d�b�ԍ�:" + param.t + "\n"
	         + "���[���A�h���X:" + param.m + "\n"
	         + "�N��@�@:" + param.ag + "\n"
	         + "�ŏI�w��:" + param.bg + "\n"
	         + "�E��\n"       + param.cr + "\n\n"
	         + "�ʐM��\n"       + param.c + "\n\n"
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

o.Subject = param.n +"�l�@IPL���r�̗p������󂯕t���܂����B";

var mailbody = "";
mailbody += "" + param.n + "�l\n\n";
mailbody += "���̓x�́A�A�C�v�����j���O���r�̗p�ւ�\n";
mailbody += "�����傠�肪�Ƃ��������܂����B\n";
mailbody += "����A�̗p�S�����G���g���[�ڍ׏���A���������܂��̂�\n";
mailbody += "���҂����������܂��B\n\n";
mailbody += "������ЃA�C�v�����j���O\n�̗p�S���@���c\n\n";
mailbody += "����t���e\n"
mailbody += "�����O�@:\t"           + param.n + "\n"
mailbody += "�ӂ肪��:\t"       + param.k + "\n"
mailbody += "���Z���@:\t" + param.a + "\n"
mailbody += "�d�b�ԍ�:\t" + param.t + "\n"
mailbody += "���[���A�h���X:\t" + param.m + "\n"
mailbody += "�N��@�@:\t" + param.ag + "\n"
mailbody += "�ŏI�w��:\t" + param.bg + "\n"
mailbody += "�E��\n"       + param.cr + "\n\n"
mailbody += "�ʐM��\n"       + param.c + "\n\n"
mailbody += "#REMOTE_HOST\t:"    + info.host + "\n"
mailbody += "#HTTP_USER_AGENT\t:" + info.ua + "\n"
mailbody += "#TIME\t:"            + info.time + "\n\n\n";
mailbody += "���A�P�T�Ԉȏソ���Ă��A���������ꍇ�́A��ϋ������܂���\n";
mailbody += "���L�A����܂Œ��ژA�������肢�������܂��B\n";
mailbody += "\n";
mailbody += "��---------------------------------\n";
mailbody += "�@(��)�A�C�v�����j���O\n";
mailbody += "�@��162-0801\n";
mailbody += "�@�����s�V�h��R�����R�S�V���a�]�ː싴�r���W�K\n";
mailbody += "�@�̗p�S�� ���c\n";
mailbody += "�@TEL:03-5225-1147\n";
mailbody += "�@mail�Fsaiyo@ipl.co.jp\n";
mailbody += "�@HP�F http://www.ipl.co.jp/\n";
mailbody += "��---------------------------------\n";
mailbody += "�����̃��[���͍̗p����ɑ΂��Ď����I�ɑ��M����Ă���܂��B\n\n";


o.TextBody = mailbody;

o.Send();

%>
				<h2 style="color:#0C0C0C;font-size:18px;font-weight:bold;">���r�̗p�̉��傪�������܂����B</h2>
				<div class="bodytext" style="font-size:14px;padding:12px;background-color:#F0F0F0;" align="justify">
					<br />
					<% = Server.HTMLEncode(param.n) %>�@�l<br />
					<br />
					���r�̗p�̉��傠�肪�Ƃ��������܂����B<br />
					���傢���������A����ɁA����A�̗p�S����育�A���������グ�܂��B<br />
					<br />
					�������t�����̃��[����o�^�������������[���A�h���X<br />
					�@(<% = Server.HTMLEncode(param.m) %>)�[�Ăɑ��t�������܂����̂�<br />
					�@���m�F�������B<br />
					<br />
					<span class="underline">���t���[�̃��[���A�h���X(Yahoo���[����)�ŉ��傳�ꂽ�ꍇ</span><br />
					�@����ĕ��Ѓh���C������̃��[�����u���f���[���v������󂯂�ꍇ��������܂��̂�<br />
					�@�u���f���[���t�H���_�v�̂��m�F�����肢�������܂��B<br/>
					<br />
					���A�����t�����̃��[�����P���Ԉȏ�o���Ă��͂��Ȃ��ꍇ�ɂ�<br />
					�V�X�e���g���u���������́A�o�^�������������[���A�h���X��<br />
					���͊ԈႢ���l�����܂��B�������܂����A�ēx���傢��������<br />
					���ځA���L�A�̗p�̖₢���킹��܂ŘA�������肢�������܂��B<br />
					<br />
					<br />
					�܂��A�̗p�Ɋւ��ĉ������s���ȂƂ���Ȃǌ�����܂�����A���L�₢���킹��܂�<br />
					�A�������肢�������܂��B<br />
					<br />
					�{���́A��X�A�C�v�����j���O�ɋ����������Ă����������ɂ��肪�Ƃ��������܂����B<br />
					<br />
					<p style="text-align:right">������ЃA�C�v�����j���O�̗p�S��<br />���c<br /><br /></p>
					
				</div>
				<div class="bodytext" style="padding:40px 12px 12px 12px;" align="center">
					<table border="1" cellspacing="0" bgcolor="#F7F7F7" style="font-size:1.0em;color: #666666;" summary="��啪��ɓ��������R�J���O���[�v EA SS IT">
					<tr><th>�̗p�Ɋւ��邨�₢���킹��</th></tr>
					<tr><td width="380" style="padding:5px;background-color:#FFFFFF;">
��162-0801<br />
�����s�V�h��R�����R�S�V���a�]�ː싴�r���W�K<br />
�̗p�S�� ���c<br />
TEL:03-5225-1147<br />
mail�Fsaiyo��ipl.co.jp <br />
(���𔼊p@�ɕύX���₢���킹���ĉ�����) <br />
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
