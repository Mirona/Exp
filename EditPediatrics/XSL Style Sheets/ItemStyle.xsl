<xsl:stylesheet 
  version="1.0" 
  exclude-result-prefixes="x d xsl msxsl cmswrt"
  xmlns:x="http://www.w3.org/2001/XMLSchema" 
  xmlns:d="http://schemas.microsoft.com/sharepoint/dsp" 
  xmlns:cmswrt="http://schemas.microsoft.com/WebParts/v3/Publishing/runtime"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt">
    <xsl:template name="Default" match="*" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-left"> 
                    <a href="{$SafeLinkUrl}" target="{$LinkTarget}">
                        <img class="image" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}" />
                    </a>
                </div>
            </xsl:if>
            <div class="link-item">
	            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>     
                <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                    <xsl:value-of select="$DisplayTitle"/>
                </a>
                <div class="description">
                    <xsl:value-of select="@Description" />
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template name="NoImage" match="Row[@Style='NoImage']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item link-item">
            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
            <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                <xsl:value-of select="$DisplayTitle"/>
            </a>
            <div class="description">
                <xsl:value-of select="@Description" />
            </div>
        </div>
    </xsl:template>
    <xsl:template name="TitleOnly" match="Row[@Style='TitleOnly']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item link-item">
            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
            <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                <xsl:value-of select="$DisplayTitle"/>
            </a>
        </div>
    </xsl:template>
    <xsl:template name="TitleWithBackground" match="Row[@Style='TitleWithBackground']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div class="title-With-Background">
            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
            <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                <xsl:value-of select="$DisplayTitle"/>
            </a>
        </div>
    </xsl:template>
    <xsl:template name="Bullets" match="Row[@Style='Bullets']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item link-item bullet">
            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
            <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                <xsl:value-of select="$DisplayTitle"/>
            </a>
        </div>
    </xsl:template>
    <xsl:template name="ImageRight" match="Row[@Style='ImageRight']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-right">
                    <a href="{$SafeLinkUrl}" target="{$LinkTarget}">
                        <img class="image" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}" />
                    </a>
                </div>
            </xsl:if>
            <div class="link-item">
	        <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
                <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                    <xsl:value-of select="$DisplayTitle"/>
                </a>
                <div class="description">
                    <xsl:value-of select="@Description" />
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template name="ImageTop" match="Row[@Style='ImageTop']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="Url" select="@LinkUrl"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-top">
                    <a href="{$SafeLinkUrl}" target="{$LinkTarget}">
                        <img class="image" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}" />
                    </a>
                </div>
            </xsl:if>
            <div class="link-item">
	            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
                <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                    <xsl:value-of select="$DisplayTitle"/>
                </a>
                <div class="description">
                    <xsl:value-of select="@Description" />
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template name="ImageTopCentered" match="Row[@Style='ImageTopCentered']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item centered">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-top">
                    <a href="{$SafeLinkUrl}" target="{$LinkTarget}">
                        <img class="image" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}" />
                    </a>
                </div>
            </xsl:if>
            <div class="link-item">
                <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
                <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                    <xsl:value-of select="$DisplayTitle"/>
                </a>
                <div class="description">
                    <xsl:value-of select="@Description" />
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template name="LargeTitle" match="Row[@Style='LargeTitle']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-left">
                    <a href="{$SafeLinkUrl}" target="{$LinkTarget}">
                        <img class="image" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}" />
                    </a>
                </div>
            </xsl:if>
            <div class="link-item-large">
	            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
                <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                    <xsl:value-of select="$DisplayTitle"/>
                </a>
                <div class="description">
                    <xsl:value-of select="@Description" />
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template name="ClickableImage" match="Row[@Style='ClickableImage']" mode="itemstyle">
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-left">
                    <a href="{$SafeLinkUrl}" target="{$LinkTarget}">
                        <img class="image" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}" />
                    </a>
                </div>
            </xsl:if>
        </div>
    </xsl:template>
    <xsl:template name="NotClickableImage" match="Row[@Style='NotClickableImage']" mode="itemstyle">
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <div id="linkitem" class="item">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-left">
                    <img class="image" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}" />
                </div>
            </xsl:if>
        </div>
    </xsl:template>
    <xsl:template name="FixedImageSize" match="Row[@Style='FixedImageSize']" mode="itemstyle">
        <xsl:variable name="SafeImageUrl">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="UrlColumnName" select="'ImageUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="SafeLinkUrl">
            <xsl:call-template name="OuterTemplate.GetSafeLink">
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="DisplayTitle">
            <xsl:call-template name="OuterTemplate.GetTitle">
                <xsl:with-param name="Title" select="@Title"/>
                <xsl:with-param name="UrlColumnName" select="'LinkUrl'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="LinkTarget">
            <xsl:if test="@OpenInNewWindow = 'True'" >_blank</xsl:if>
        </xsl:variable>
        <div id="linkitem" class="item">
            <xsl:if test="string-length($SafeImageUrl) != 0">
                <div class="image-area-left">
                    <a href="{$SafeLinkUrl}" target="{$LinkTarget}">
                        <img class="image-fixed-width" src="{$SafeImageUrl}" alt="{@ImageUrlAltText}"/>
                    </a>
                </div>
            </xsl:if>
            <div class="link-item">
	            <xsl:call-template name="OuterTemplate.CallPresenceStatusIconTemplate"/>
                <a href="{$SafeLinkUrl}" target="{$LinkTarget}" title="{@LinkToolTip}">
                    <xsl:value-of select="$DisplayTitle"/>
                </a>
                <div class="description">
                    <xsl:value-of select="@Description" />
                </div>
            </div>
        </div>
	</xsl:template>	
</xsl:stylesheet>
