<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/NewsList">
    <div class="container">
      <div class="head-title">
        <h1>
          <xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
        </h1>
      </div>
      <div class="row">
        <div class="col-sm-6 col-lg-6">
          <xsl:apply-templates select="News[position() = 1]" mode="Big"></xsl:apply-templates>
        </div>
        <xsl:apply-templates select="News"></xsl:apply-templates>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="News" mode="Big">
    <div class="item-news">
      <div class="card_img">
        <a class="zoom-in" href="#">
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
      <div class="content-news">
        <div class="date">
          <time>
            <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
          </time>
        </div>
        <div class="title-news">
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
          </a>
        </div>
        <div class="view-more">
          <a href="#">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:text disable-output-escaping="yes">View more</xsl:text>
          </a>
          <div class="img">
            <img src="/data/sites/1/skins/default/img/home/h-icon-blue.png" />
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="News">
    <div class="col-lg-3 col-sm-6">
      <div class="item-news-small">
        <div class="card_img">
          <a class="zoom-in" href="#">
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
        <div class="content-news-small">
          <div class="date">
            <time>
              <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
            </time>
          </div>
          <div class="title-news">
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
              <xsl:value-of select="Title"></xsl:value-of>
            </a>
          </div>
          <div class="view-more">
            <a href="#">
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
              <xsl:text disable-output-escaping="yes">View more</xsl:text>
            </a>
            <div class="img">
              <img src="/data/sites/1/skins/default/img/home/h-icon-blue.png" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>