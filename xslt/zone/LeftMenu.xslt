<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/ZoneList">
    <xsl:if test="count(Zone) > 0">
      <div class="item-product-list">
        <div class="sub-title-product">
          <h2>
            <xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
          </h2>
        </div>
        <div class="content">
          <ul>
            <xsl:apply-templates select="Zone"></xsl:apply-templates>
          </ul>
        </div>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Zone">
    <li>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>pro</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <div class="title-pro-zone">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
          </xsl:attribute>
          <xsl:text> </xsl:text>
          <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </a>
        <span class="ri-arrow-down-s-line"></span>
      </div>
      <xsl:if test="count(Zone) > 0">
        <ul class="sub-product">
          <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
        </ul>
      </xsl:if>
    </li>
  </xsl:template>

  <xsl:template match="Zone" mode="Child">
    <li class="pro">
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>pro active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="target">
          <xsl:value-of select="Target"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a>
    </li>
  </xsl:template>

</xsl:stylesheet>