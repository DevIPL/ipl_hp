<%@ language="javascript" %>
<?xml version="1.0" encoding="Shift_Jis"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="jp" lang="jp">
<head>
	<meta name="author" content="Wink Hosting (www.winkhosting.com)" />
	<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS" />
	<meta name="keywords" content="�V���̗p������e�m�F,���N���[�g���,�v���O���},SE,�v���O���~���O,�\�t�g�J��,�\�t�g�n�E�X,�A�C�v�����j���O,�\�͏d��" />
	<meta name="description" content="�V���̗p������e�m�F | �v���O�����J�������A�C�v�����j���O" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Cache-Control" content="no-cache" />
	<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT" />
	<link rel="stylesheet" href="../images/style.css" type="text/css" />
	<title>�V���̗p������e�m�F | �v���O�����J������ �A�C�v�����j���O</title>
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

if (param.s != "������e���m�F" && param.post!="0") {
	Response.Redirect("./error.html");
}

var text = "";

if (param.sl == "" || param.ka == "" || param.a == "" || param.t == "" || param.k == "" || param.m == "" || !check_mail_address(param.m)) {
	text += "���͂ɕs��������܂��B\n";
}

// ////////////////////////////////////////////////////////////////

if( text !=""){
%>

				<h2 style="color:#0C0C0C;font-size:18px;font-weight:bold;">�V���̗p������e�ɕs��������܂��B</h2>
				<div class="bodytext" style="font-size:14px;padding:12px;background-color:#F0F0F0;" align="justify">
				<br />
				<span class="underline">���͓��e�ɕs��������܂��B</span>�C���A���͕K�{���ڂ���͂��ĉ������B<br />
				<br />
				<p>���Ȃ��̂����O(�ӂ肪��)�ƘA����(�Z��,�d�b�ԍ�,���[���A�h���X)�A�w�Z������͂����債�ĉ������B<br />
					<b>����͓��͕K�{����</b><br />
					���傢���������A����ɁA����A�̗p�S����育�A���������グ�܂��B</p>
				<br />
				<form method="post" action="new.asp" id="entry_form" name="entry_form" onsubmit="return validate(this);">
				<dl>
				  <dt>������:</dt>
				  <dd><input type="text" size="20" name="n" id="entry_name" value="<% = Server.HTMLEncode(param.n) %>" /></dd>
				  <dt>���ӂ肪��:</dt>
				  <dd><input type="text" size="20" name="k" id="entry_kana" value="<% = Server.HTMLEncode(param.k) %>" /></dd>
				  <dt>���Z��:</dt>
				  <dd><input type="text" size="80" name="a" id="entry_address" value="<% = Server.HTMLEncode(param.a) %>" /></dd>
				  <dt>���d�b�ԍ�:</dt>
				  <dd><input type="text" size="30" name="t" id="entry_phone" value="<% = Server.HTMLEncode(param.t) %>" /></dd>
				  <dt>�����[���A�h���X:</dt>
				  <dd><input type="text" size="30" name="m" id="entry_mail" value="<% = Server.HTMLEncode(param.m) %>" /></dd>
				  <dt>���w�Z��:</dt>
				  <dd><input type="text" size="30" name="sl" id="entry_school" value="<% = Server.HTMLEncode(param.sl) %>" /></dd>
				  <dt>�@�w��:</dt>
				  <dd><input type="text" size="30" name="bu" id="entry_gakubu" value="<% = Server.HTMLEncode(param.bu) %>" /></dd>
				  <dt>���w��:</dt>
				  <dd><input type="text" size="30" name="ka" id="entry_gakka" value="<% = Server.HTMLEncode(param.ka) %>" /></dd>
				  <dt>�ʐM��:(�̗p�Ɋւ��鎿��₠�Ȃ��̔M�ӂ��ǂ���)</dt>
				  <dd><textarea rows="5" cols="40" name="c" id="entry_comment"><% = Server.HTMLEncode(param.c) %></textarea></dd>
				</dl>
				<p><br /><span class="underline">����̎�t�������������܂��Ƃ��Ȃ��̃��[���A�h���X�Ɏ����I�Ɂu��t�����v��<br />
					���[�����͂��܂��B@ipl.co.jp����̃��[�����󂯎���悤�ɂ��Ă����ĉ������B</span></p>
				<p><input type="hidden" name="post" value="0" /><br /></p>
				
				<p><input type="submit" name="s" value="������e���m�F" />(�K�{����(��)����͂��Ȃ��Ƌ@�\���܂���B)</p>
				</form>
				<br  />
				<p>���M���ꂽ�l���Ɋւ��A���ЁA<a href="../privacy/index.html" target="_blank">�l���ی���j</a>�ɑ���A���Ȃ��̃v���C�o�V�[��ی삷�邱�ƂɍאS�̒��ӂ𕥂��A�̗p�ȊO�̖ړI�Ŏg�p���邱�Ƃ͌�����܂���B</p>
				</div>
<%
}else{
%>
				<h2 style="color:#0C0C0C;font-size:18px;font-weight:bold;">�V���̗p������e�̊m�F</h2>
				<div class="bodytext" style="font-size:14px;padding:12px;background-color:#F0F0F0;" align="justify">
				<br />
					���͂��ꂽ���e�����m�F�������B<br />
					���e�ɊԈႢ���Ȃ���΁A���L�u���̓��e�ŉ��傷��v�{�^�����<br />
					��������������ĉ������B<br />
					<br />
					<br />
					<table border="1" cellspacing="0" bgcolor="#F7F7F7" style="font-size:1.0em;color: #666666;" summary="��啪��ɓ��������R�J���O���[�v EA SS IT">
					<tr><td width="80" align="center">����</td>
						<td width="380" style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.n) %></td>
						</tr>
					<tr><td align="center">�ӂ肪��</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.k) %></td>
						</tr>
					<tr><td align="center">�Z��</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.a) %></td>
						</tr>
					<tr><td align="center">�d�b�ԍ�</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.t) %></td>
						</tr>
					<tr><td align="center">���[���A�h���X</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.m) %></td>
						</tr>
					<tr><td align="center">�w�Z��</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.sl) %></td>
						</tr>
					<tr><td align="center">�w��</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.bu) %></td>
						</tr>
					<tr><td align="center">�w��</td>
						<td style="padding:5px;background-color:#FFFFFF;">
						<% = Server.HTMLEncode(param.ka) %></td>
						</tr>
					<tr><td align="center">�ʐM��</td>
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
					<p><br /><span class="underline">����̎�t�������������܂��Ƃ��Ȃ��̃��[���A�h���X�Ɏ����I�Ɂu��t�����v��<br />
						���[�����͂��܂��B@ipl.co.jp����̃��[�����󂯎���悤�ɂ��Ă����ĉ������B</span><br />
						���傢���������A����ɁA����A�̗p�S����育�A���������グ�܂��B</p>
					<p><input type="hidden" name="post" value="1" /><br /></p>
					<p><input type="submit" name="s" value="���̓��e�ŉ��傷��" /></p>
					</form>
				<p><br />���M���ꂽ�l���Ɋւ��A���ЁA<a href="../privacy/index.html" target="_blank">�l���ی���j</a>�ɑ���A���Ȃ��̃v���C�o�V�[��ی삷�邱�ƂɍאS�̒��ӂ𕥂��A�̗p�ȊO�̖ړI�Ŏg�p���邱�Ƃ͌�����܂���B<br /><br /></p>
				
				</div>
<%
}
%>
				<div class="bodytext" style="padding:40px 12px 12px 12px;" align="center">
					<table border="1" cellspacing="0" bgcolor="#F7F7F7" style="font-size:1.0em;color: #666666;" summary="��啪��ɓ��������R�J���O���[�v EA SS IT">
					<tr><th>�̗p�Ɋւ��邨�₢���킹��</th></tr>
					<tr><td width="380" style="padding:5px;background-color:#FFFFFF;">
��162-0801<br />
�����s�V�h��R�����R�S�V���a�]�ː싴�r���W�K<br />
�̗p�S�� ���c<br />
TEL:03-5225-1147<br />
mail�Fsaiyo��ipl.co.jp <br />
(���𔼊p@�ɕύX���₢���킹���ĉ������B) <br />
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
