<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema"
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime"
    exclude-result-prefixes="xsl cmswrt x">
    <xsl:output method="xml" indent="no" />
    <xsl:param name="SiteId" />
    <xsl:param name="FeedTitle" />
    <xsl:param name="FeedDescription" />
    <xsl:param name="PageUrl" />
    <xsl:param name="BlankTitle" />
    <xsl:param name="UseCopyUtil" />
    <xsl:template match="/">
        <xsl:call-template name="OuterTemplate" />
    </xsl:template>
    <xsl:template name="OuterTemplate">
        <xsl:variable name="Rows" select="/dsQueryResponse/Rows/Row" />
        <xsl:variable name="RowCount" select="count($Rows)" />
        <xsl:variable name="IsEmpty" select="$RowCount = 0" />
        <rss version="2.0">
            <channel>
                <title><xsl:value-of select="$FeedTitle"/></title> 
                <xsl:value-of select="'&lt;link&gt;'" disable-output-escaping="yes" />
                <xsl:value-of select="$PageUrl"/>
                <xsl:value-of select="'&lt;/link&gt;'" disable-output-escaping="yes" />    
                <description><xsl:value-of select="$FeedDescription"/></description> 
                <ttl>60</ttl>
                <xsl:for-each select="$Rows">
                    <item>
                        <title>
                            <xsl:if test="string-length(@Title) != 0">
                                <xsl:value-of select="@Title" />
                            </xsl:if>
                            <xsl:if test="string-length(@Title) = 0">
                                <xsl:value-of select="$BlankTitle"/>
                            </xsl:if>
                        </title>
                        <xsl:value-of select="'&lt;link&gt;'" disable-output-escaping="yes" />
                            <xsl:call-template name="OuterTemplate.GetSafeLink">
                                <xsl:with-param name="Url" select="@LinkUrl" />
                            </xsl:call-template>
                        <xsl:value-of select="'&lt;/link&gt;'" disable-output-escaping="yes" />                 
                        <description>
                            <xsl:if test="string-length(@Description) != 0">
                                <xsl:value-of disable-output-escaping="no" select="@Description" />
                            </xsl:if>
                        </description>
                        <pubDate>
                            <xsl:value-of disable-output-escaping="no" select="@PubDate" />
                        </pubDate>
                    </item>
                </xsl:for-each>
            </channel>
        </rss>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeLink">
        <xsl:param name="Url"/>
        <xsl:if test="$UseCopyUtil = 'True'">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="Url" select="concat('/_layouts/CopyUtil.aspx?Use=id&amp;Action=dispform&amp;ItemId=',@ID,'&amp;ListId=',@ListId,'&amp;WebId=',@WebId,'&amp;SiteId=',$SiteId)"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="$UseCopyUtil != 'True'">
            <xsl:call-template name="OuterTemplate.GetSafeStaticUrl">
                <xsl:with-param name="Url" select="$Url"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetSafeStaticUrl">
        <xsl:param name="Url"/>
        <xsl:value-of select="cmswrt:EnsureIsAllowedProtocol($Url)"/>
    </xsl:template>
</xsl:stylesheet>
