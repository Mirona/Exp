
var IsMenuShown=false;
var itemTableDeferred=null;
var itemTable=null;
var imageCell=null;
var onKeyPress=false;
var downArrowText=null;
var currentCtx=null;
var currentEditMenu=null;
var currentItemID=null;
var currentItemAppName=null;
var currentItemProgId=null;
var currentItemIcon=null;
var currentItemOpenControl=null;
var currentItemFileUrl=null;
var currentItemFSObjType=null;
var currentItemCheckedOutUserId=null;
var currentItemCheckoutExpires=null;
var currentItemModerationStatus=null;
var currentItemUIString=null;
var currentItemCheckedoutToLocal=null;
var bIsCheckout=0;
var currentItemCanModify=null;
var currentItemPermMaskH=null;
var currentItemPermMaskL=null;
var currentItemIsEventsExcp=null;
var currentItemIsEventsDeletedExcp=null;
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
