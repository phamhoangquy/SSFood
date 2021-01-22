<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/NewsDetail">
    <div class="news-detail">
      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <div class="card-title">
              <h1>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
              </h1>
              <div class="bottom-wrapper-news-detail">
                <time>
                  <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                </time>
                <div class="social-network-share">
                  <div class="icon">
                    <a href="#">
                      <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">
                          https://www.facebook.com/sharer/sharer.php?u=
                        </xsl:text>
                        <xsl:value-of disable-output-escaping="yes" select="FullUrl">
                        </xsl:value-of>
                      </xsl:attribute>
                      <span class="ri-facebook-fill"></span>
                    </a>
                    <a href="#">
                      <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">
                          https://twitter.com/home?status=
                        </xsl:text>
                        <xsl:value-of disable-output-escaping="yes" select="FullUrl">
                        </xsl:value-of>
                      </xsl:attribute>
                      <span class="ri-twitter-fill"></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="card_body">
              <div class="fullcontent">
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="other-news-detail">
      <div class="container">
        <div class="title-other">
          <h2>Related News</h2>
        </div>
        <div class="row">
          <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
        </div>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="NewsOther">
    <div class="col-lg-3">
      <div class="item-news-other">
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
        <div class="content-news-other">
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

  <!--<xsl:template match="NewsAttributes" mode="tabs">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:text>#tab</xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
  <xsl:template match="NewsAttributes" mode="tabcontent">
    <div class="tab-content">
      <xsl:attribute name="id">
        <xsl:text>tab</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
    </div>
  </xsl:template>
  <xsl:template match="NewsImages">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <img width="80" height="71">
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </a>
    </li>
  </xsl:template>-->
</xsl:stylesheet>