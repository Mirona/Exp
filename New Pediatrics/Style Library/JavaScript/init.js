
function Browseris () {
var agt=navigator.userAgent.toLowerCase();
this.osver=1.0;
if (agt)
{
var stOSVer=agt.substring(agt.indexOf("windows ")+11);
this.osver=parseFloat(stOSVer);
}
this.major=parseInt(navigator.appVersion);
this.nav=((agt.indexOf('mozilla')!=-1)&&((agt.indexOf('spoofer')==-1) && (agt.indexOf('compatible')==-1)));
this.nav6=this.nav && (this.major==5);
this.nav6up=this.nav && (this.major >=5);
this.nav7up=false;
if (this.nav6up)
{
var navIdx=agt.indexOf("netscape/");
if (navIdx >=0 )
this.nav7up=parseInt(agt.substring(navIdx+9)) >=7;
}
this.ie=(agt.indexOf("msie")!=-1);
this.aol=this.ie && agt.indexOf(" aol ")!=-1;
if (this.ie)
{
var stIEVer=agt.substring(agt.indexOf("msie ")+5);
this.iever=parseInt(stIEVer);
this.verIEFull=parseFloat(stIEVer);
}
else
this.iever=0;
this.ie4up=this.ie && (this.major >=4);
this.ie5up=this.ie && (this.iever >=5);
this.ie55up=this.ie && (this.verIEFull >=5.5);
this.ie6up=this.ie && (this.iever >=6);
this.winnt=((agt.indexOf("winnt")!=-1)||(agt.indexOf("windows nt")!=-1));
this.win32=((this.major >=4) && (navigator.platform=="Win32")) ||
(agt.indexOf("win32")!=-1) || (agt.indexOf("32bit")!=-1);
this.mac=(agt.indexOf("mac")!=-1);
this.w3c=this.nav6up;
this.safari=(agt.indexOf("safari")!=-1);
this.safari125up=false;
if (this.safari && this.major >=5)
{
var navIdx=agt.indexOf("safari/");
if (navIdx >=0)
this.safari125up=parseInt(agt.substring(navIdx+7)) >=125;
}
}
var browseris=new Browseris();
var bis=browseris;
function byid(id) { return document.getElementById(id); }
function newE(tag) { return document.createElement(tag); }
function wpf() { return document.forms[MSOWebPartPageFormName]; }
function startReplacement() {}
function GetEventSrcElement(e)
{
if (browseris.nav)
return e.target;
else
return e.srcElement;
}
function GetEventKeyCode(e)
{
if (browseris.nav)
return e.which;
else
return e.keyCode;
}
function GetInnerText(e)
{
if (browseris.safari)
return e.innerHTML;
else if (browseris.nav)
return e.textContent;
else
return e.innerText;
}
var UTF8_1ST_OF_2=0xc0 ;
var UTF8_1ST_OF_3=0xe0 ;
var UTF8_1ST_OF_4=0xf0 ;
var UTF8_TRAIL=0x80 ;
var HIGH_SURROGATE_BITS=0xD800 ;
var LOW_SURROGATE_BITS=0xDC00 ;
var SURROGATE_6_BIT=0xFC00 ;
var SURROGATE_ID_BITS=0xF800 ;
var SURROGATE_OFFSET=0x10000;
function escapeProperlyCoreCore(str, bAsUrl, bForFilterQuery, bForCallback)
{
var strOut="";
var strByte="";
var ix=0;
var strEscaped=" \"%<>\'&";
if (typeof(str)=="undefined")
return "";
for (ix=0; ix < str.length; ix++)
{
var charCode=str.charCodeAt(ix);
var curChar=str.charAt(ix);
if(bAsUrl && (curChar=='#' || curChar=='?') )
{
strOut+=str.substr(ix);
break;
}
if (bForFilterQuery && curChar=='&')
{
strOut+=curChar;
continue;
}
if (charCode <=0x7f)
{
if (bForCallback)
{
strOut+=curChar;
}
else
{
if ( (charCode >=97 && charCode <=122) ||
(charCode >=65 && charCode <=90) ||
(charCode >=48 && charCode <=57) ||
(bAsUrl && (charCode >=32 && charCode <=95) && strEscaped.indexOf(curChar) < 0))
{
strOut+=curChar;
}
else if (charCode <=0x0f)
{
strOut+="%0"+charCode.toString(16).toUpperCase();
}
else if (charCode <=0x7f)
{
strOut+="%"+charCode.toString(16).toUpperCase();
}
}
}
else if (charCode <=0x07ff)
{
strByte=UTF8_1ST_OF_2 | (charCode >> 6);
strOut+="%"+strByte.toString(16).toUpperCase() ;
strByte=UTF8_TRAIL | (charCode & 0x003f);
strOut+="%"+strByte.toString(16).toUpperCase();
}
else if ((charCode & SURROGATE_6_BIT) !=HIGH_SURROGATE_BITS)
{
strByte=UTF8_1ST_OF_3 | (charCode >> 12);
strOut+="%"+strByte.toString(16).toUpperCase();
strByte=UTF8_TRAIL | ((charCode & 0x0fc0) >> 6);
strOut+="%"+strByte.toString(16).toUpperCase();
strByte=UTF8_TRAIL | (charCode & 0x003f);
strOut+="%"+strByte.toString(16).toUpperCase();
}
else if (ix < str.length - 1)
{
var charCode=(charCode & 0x03FF) << 10;
ix++;
var nextCharCode=str.charCodeAt(ix);
charCode |=nextCharCode & 0x03FF;
charCode+=SURROGATE_OFFSET;
strByte=UTF8_1ST_OF_4 | (charCode >> 18);
strOut+="%"+strByte.toString(16).toUpperCase();
strByte=UTF8_TRAIL | ((charCode & 0x3f000) >> 12);
strOut+="%"+strByte.toString(16).toUpperCase();
strByte=UTF8_TRAIL | ((charCode & 0x0fc0) >> 6);
strOut+="%"+strByte.toString(16).toUpperCase();
strByte=UTF8_TRAIL | (charCode & 0x003f);
strOut+="%"+strByte.toString(16).toUpperCase();
}
}
return strOut;
}
function escapeProperly(str)
{
return escapeProperlyCoreCore(str, false, false, false);
}
function escapeProperlyCore(str, bAsUrl)
{
return escapeProperlyCoreCore(str, bAsUrl, false, false);
}
function escapeUrlForCallback(str)
{
var iPound=str.indexOf("#");
var iQues=str.indexOf("?");
if ((iPound > 0) && ((iQues==-1) || (iPound < iQues)))
{
var strNew=str.substr(0, iPound);
if (iQues > 0)
{
strNew+=str.substr(iQues);
}
str=strNew;
}
return escapeProperlyCoreCore(str, true, false, true);
}
function PageUrlValidation(url)
{
if (url.substr(0, 4) !="http" && url.substr(0,1) !="/")
{
var L_InvalidPageUrl_Text="Invalid page URL: ";
// JavaScript Document