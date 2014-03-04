<xsl:stylesheet
    version="1.0" 
    exclude-result-prefixes="x d ddwrt slwrt xsl msxsl slwp cmswrt" 
    xmlns:x="http://www.w3.org/2001/XMLSchema" 
    xmlns:d="http://schemas.microsoft.com/sharepoint/dsp"
    xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" 
    xmlns:slwrt="http://schemas.microsoft.com/WebPart/v3/SummaryLink/runtime"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:slwp="urn:schemas-microsoft-com:TableOfContentsWebPart"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime">
    <xsl:output method="html" indent="no" />
    <xsl:param name="slw_columnwidth" />
    <xsl:param name="slw_iseditmode" />
    <xsl:param name="slw_viewemptytext" />
    <xsl:param name="Alignment" />
    <xsl:variable name="Group" select="'Group'" />
    <xsl:variable name="GroupType" select="''" />
    <xsl:variable name="nbsp" select="string('&amp;nbsp;')" />
    <xsl:template match="/Levels">
      <xsl:variable name="HeaderText" select="@Group" />
      <xsl:if test="string-length(normalize-space($HeaderText)) != 0">
        <table cellspacing="0px" cellpadding="0px" class="toc-layout-main">
          <tr><td>
             <xsl:call-template name="CallHeaderTemplate"/>
          </td></tr>
        </table>
      </xsl:if>
      <xsl:call-template name="OuterTemplate" />
    </xsl:template>
    <xsl:template name="OuterTemplate">
      <xsl:variable name="Levels" select="/Levels/Level" />
      <xsl:variable name="TopLevelCount" select="count($Levels)" />
      <xsl:variable name="IsEmpty" select="$TopLevelCount= 0" />
      <xsl:choose>
          <xsl:when test="$IsEmpty and $slw_iseditmode = 'True'">
              <xsl:call-template name="OuterTemplate.EmptyEditMode" />
          </xsl:when>
          <xsl:when test="$IsEmpty">
              <xsl:call-template name="OuterTemplate.EmptyRuntimeMode" />
          </xsl:when>
          <xsl:otherwise>
              <xsl:call-template name="OuterTemplate.Body"/>
          </xsl:otherwise>
      </xsl:choose>
    </xsl:template>
    <xsl:template name="OuterTemplate.EmptyEditMode">
      <table id="tocwp" cellspacing="0px" cellpadding="0px" class="toc-layout-main">
        <tr>
          <td>
            <div class="wp-content description">
              <xsl:value-of disable-output-escaping="yes" select="$slw_viewemptytext" />
            </div>
          </td>
        </tr>
      </table>
    </xsl:template>
    <xsl:template name="OuterTemplate.EmptyRuntimeMode">
      <table id="tocwp" cellspacing="0px" cellpadding="0px" class="toc-layout-main">
        <tr><td></td></tr>
      </table>
    </xsl:template>
  <xsl:template name="OuterTemplate.Body">
      <xsl:variable name="BeginColumn1" select="string('&lt;td id=&quot;column&quot; width=&quot;')" />
      <xsl:variable name="BeginColumn2" select="string('%&quot; valign=&quot;top&quot;&gt;')" />
      <xsl:variable name="BeginColumn" select="concat($BeginColumn1, $slw_columnwidth, $BeginColumn2)" />
      <xsl:variable name="EndColumn" select="string('&lt;/td &gt;')" />
      <table id="tocwp" cellspacing="0px" cellpadding="0px" class="toc-layout-main">
        <tr>
              <xsl:for-each select="Level">
                  <xsl:variable name="StartNewColumn" select="@BeginColumn = 'true'" />
                  <xsl:variable name="CurPosition" select="position()" />
                  <xsl:if test="$StartNewColumn">
                      <xsl:choose>
                          <xsl:when test="$CurPosition = 1">
                              <xsl:value-of disable-output-escaping="yes" select="$BeginColumn" />
                          </xsl:when>
                          <xsl:otherwise>
                              <xsl:value-of disable-output-escaping="yes" select="concat($EndColumn, $BeginColumn)" />
                          </xsl:otherwise>
                      </xsl:choose>
                  </xsl:if>
                  <xsl:apply-templates select="." />
                  <xsl:call-template name="OuterTemplate.RecurseLevel"/>
              </xsl:for-each>
              <xsl:value-of disable-output-escaping="yes" select="$EndColumn" />
          </tr>
      </table>
    </xsl:template>
    <xsl:template name="OuterTemplate.RecurseLevel">
      <xsl:for-each select="Level">
          <xsl:apply-templates select="." />
          <xsl:call-template name="OuterTemplate.RecurseLevel"/>
      </xsl:for-each>
    </xsl:template>
    <xsl:template name="CallHeaderTemplate">
      <div>
      <xsl:apply-templates select="." mode="header" />
      </div>
    </xsl:template>
    <xsl:template name="OuterTemplate.GetGroupName">
        <xsl:param name="GroupName"/>
        <xsl:param name="GroupType"/>
        <xsl:choose>
            <xsl:when test="string-length(normalize-space($GroupName)) = 0">
                <br/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$GroupName" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
