<xsl:stylesheet
    version="1.0" 
    exclude-result-prefixes="x d cmswrt xsl msxsl" 
    xmlns:x="http://www.w3.org/2001/XMLSchema" 
    xmlns:d="http://schemas.microsoft.com/sharepoint/dsp"
    xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:msxsl="urn:schemas-microsoft-com:xslt">
  <xsl:template name="Vertical" match="*">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+6"></xsl:variable>
    <xsl:variable name="LeafIndentWithBullet" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-header">
          <span id="header" class="headertitle">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <xsl:for-each select="child::Item">
          <div class="level-item-pos level-item level-bullet">
            <span id="header">
              <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                <xsl:value-of select="@Title"/>
              </a>
            </span>
          </div>
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="VerticalBoxedTitle" match="Level[@LevelTemplate='VerticalBoxedTitle']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+6"></xsl:variable>
    <xsl:variable name="LeafIndentWithBullet" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-band">
          <span id="header" class="headertitle-band">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <xsl:for-each select="child::Item">
          <div class="level-item-pos level-item level-bullet">
            <span id="header">
              <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                <xsl:value-of select="@Title"/>
              </a>
            </span>
          </div>
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="VerticalLargeTitle" match="Level[@LevelTemplate='VerticalLargeTitle']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+6"></xsl:variable>
    <xsl:variable name="LeafIndentWithBullet" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-header">
          <span id="header" class="headertitle-large">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <xsl:for-each select="child::Item">
          <div class="level-item-pos level-item level-bullet">
            <span id="header">
              <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                <xsl:value-of select="@Title"/>
              </a>
            </span>
          </div>
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="VerticalSmallTitle" match="Level[@LevelTemplate='VerticalSmallTitle']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+6"></xsl:variable>
    <xsl:variable name="LeafIndentWithBullet" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-header">
          <span id="header" class="headertitle-small">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <xsl:for-each select="child::Item">
          <div class="level-item-pos level-item level-bullet">
            <span id="header">
              <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                <xsl:value-of select="@Title"/>
              </a>
            </span>
          </div>
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="VerticalDescriptions" match="Level[@LevelTemplate='VerticalDescriptions']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+6"></xsl:variable>
    <xsl:variable name="LeafIndentWithBullet" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <span id="header" class="headertitle">
          <div class="level-header">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </div>
          <div class="level-description">
            <xsl:value-of select="@Description" />
          </div>
        </span>
        <xsl:for-each select="child::Item">
          <div class="level-item-pos level-item level-bullet">
            <span id="header">
              <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                <xsl:value-of select="@Title"/>
              </a>
            </span>
          </div>
          <div class="level-description-padding level-description">
            <xsl:value-of select="@Description" />
          </div>
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="Horizontal" match="Level[@LevelTemplate='Horizontal']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-header">
          <span id="header" class="headertitle">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <div class="level-item-pos level-item">
          <xsl:for-each select="child::Item">
            <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
              <xsl:value-of select="@Title"/>
            </a>
            <xsl:if test="position()!=last()">&#xa0;|&#xa0;</xsl:if>
          </xsl:for-each>
        </div>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="HorizontalBoxedTitle" match="Level[@LevelTemplate='HorizontalBoxedTitle']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-band">
          <span id="header" class="headertitle-band">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <div class="level-item-pos level-item">
          <xsl:for-each select="child::Item">
            <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
              <xsl:value-of select="@Title"/>
            </a>
            <xsl:if test="position()!=last()">&#xa0;|&#xa0;</xsl:if>
          </xsl:for-each>
        </div>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="HorizontalLargeTitle" match="Level[@LevelTemplate='HorizontalLargeTitle']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-header">
          <span id="header" class="headertitle-large">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <div class="level-item-pos level-item">
          <xsl:for-each select="child::Item">
            <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
              <xsl:value-of select="@Title"/>
            </a>
            <xsl:if test="position()!=last()">&#xa0;|&#xa0;</xsl:if>
          </xsl:for-each>
        </div>
      </div>
    </div>
  </xsl:template>
  <xsl:template name="HorizontalSmallTitle" match="Level[@LevelTemplate='HorizontalSmallTitle']">
    <xsl:variable name="LevelIndent" select="(number(@LevelNumber)-number(1))*number(14)+number(4)"></xsl:variable>
    <xsl:variable name="LeafIndent" select="$LevelIndent+14"></xsl:variable>
    <div class="level-section">
      <div style="margin-{$Alignment}:{$LevelIndent};">
        <div class="level-header">
          <span id="header" class="headertitle-small">
            <xsl:choose>
              <xsl:when test='string-length(@Path) > 0'>
                <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
                  <xsl:value-of select="@Title"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@Title"/>
              </xsl:otherwise>
            </xsl:choose>
          </span>
        </div>
        <div class="level-item-pos level-item">
          <xsl:for-each select="child::Item">
            <a href="{cmswrt:EnsureIsAllowedProtocol(string(@Path))}">
              <xsl:value-of select="@Title"/>
            </a>
            <xsl:if test="position()!=last()">&#xa0;|&#xa0;</xsl:if>
          </xsl:for-each>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
