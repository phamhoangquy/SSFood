<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/BannerList">
    <section class="home-banner">
      <div class="container-fuild">
        <div class="banner-slide-swiper-wrapper">
          <div class="nav-arrow-prev"><em class="ri-arrow-left-s-line"></em></div>
          <div class="nav-arrow-next"><em class="ri-arrow-right-s-line"></em></div>
          <div class="swiper-container">
            <div class="swiper-wrapper">
              <xsl:apply-templates select="Banner"></xsl:apply-templates>
            </div>
          </div>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="Banner">
    <div class="swiper-slide">
      <div class="wrapper">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <img>
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          </img>
        </a>
      </div>
      <div class="caption">
        <h2 class="title-caption">
          <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </h2>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>