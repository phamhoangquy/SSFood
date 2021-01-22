<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsList">
		<div class="head-title">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
			</h2>
		</div>
		<div class="home-certificates-swiper-wrapper">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="wrapper zoom-in">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>